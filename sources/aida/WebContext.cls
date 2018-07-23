"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebContext
	instanceVariableNames: 'id parent child state window ids process semaphore request answer result'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebContext guid: (GUID fromString: '{47fcedf5-e232-419c-8c21-80a499da9d86}')!
WebContext comment: 'WebContext holds an execution context for a web request. Contexts can be linked in a stack like structure for tree-like control flow (like a confirmation dialog as popup of some delete action)

Instance Variables:
	id		<Integer>	unique id of the context inside one App instance
	parent	<WebContext or WebApplication>	parent in context chain
	child	<WebContext> chils in context chain, if any
	form		<WebForm>	a web form with input fields of this context
	ids		<Dictionary>	 the elements which have id defined, for fast access to them from AJAX requests"'!
!WebContext categoriesForClass!Unclassified! !
!WebContext methodsFor!

activeContext
	"active is always the last context in the chain"
	^self isLast
		ifTrue: [self]
		ifFalse: [self child activeContext]!

announceReplacementWith: anOldElement
	"next #registerId should replace the next element with old one in ids"
	"for robustness svae also the process it announced that!! "
	self replacementAnnouncements at: Processor activeProcess put: anOldElement!

answer
	"answer by the widget called in #ask: or similar methods"
	^answer!

answer: anObject
	"answer by the widget called in #ask: or similar methods"
	answer := anObject!

app
	"the instance of WebApplication on which this context is executing"
	^self parent app!

cancelReplacement
	"cancel next #registerId to replace the next element with old one in ids"

	self replacementAnnouncements removeKey: Processor activeProcess ifAbsent: []!

checkProcessState
	"this is temporary, it must be improved!! "
	"called from #executeRequest: to check if process is in a state to be closed and initialized instead"
	self isInterrupted ifTrue: 
		[self isLast not ifTrue: [self child close].
		self stopProcess; startProcess].!

child
	"another context in the chain, if any"
	^child!

child: aContext
	"add another context in the chain"
	(child notNil and: [aContext notNil]) ifTrue: [child close]. "and remove from app contexts etc."
	child := aContext.
	aContext notNil ifTrue: [aContext parent: self]!

close
	"close process if any and pass control to parent context, which will continue executing itrs process if any" 
	"It also removes itself from context chain"
	self app removeContext: self.
	self isFirst not ifTrue: 
		[self parent child: nil.
		self request notNil ifTrue: 	  " parent context will now continue executing our req (and its old req if different)"
			[self request context: self parent.    "just to be sure" 
			self parent request notNil ifTrue: [self parent request context: self parent]]. 
		self parent isInterrupted 
			ifTrue: [self parent signal] ]. "to continue executing there"
	self request: nil; answer: nil.
	self stopProcess. "can accidentally terminate process on which we are right now executing?"
	self setClosed.!

createNewContext
	"create and add as a child to receiver, also to the app"
	| ctx |
	ctx := WebContext newOn: self.
	self child: ctx.
	self app addContext: ctx.
	^ctx!

currentReplacement
	"an old element to be replaced with a new one"
	^self replacementAnnouncements at:  Processor activeProcess ifAbsent: [nil]!

elementForMethod: aSymbol
	^self registeredSet detect: [:each | each method = aSymbol] ifNone: [nil]!

elementId: aSymbol
	^self ids at: aSymbol ifAbsent: [nil].!

executeRequest: aRequest
	self checkProcessState. "and init processes if deadlocked or something. TEMPORARY!! "
	aRequest context: self. self request: aRequest. "to be sure!!"
	self signal "to wakeup the process which will execute it, see #processLoop"!

finalizeExecutionOf: aRequest
	"do all necessary cleanup after request was composed and HTML streamed to response"
	self request: nil.
	aRequest context: nil.
	self answer: nil; result: nil.!

first
	"first context up in the chain"
	^self parent first!

form
	"a web form with input fields of this context"
	^self window form!

id
	"unique identifier of the context inside the app instance"
	id isNil ifTrue: [self setId].
	^id!

ids
	"dictionary of elements which have id defined, for fast access to them from AJAX requests"
	ids isNil ifTrue: [self initIds].
	^ids!

idt
	"id text, with f at start if first/top context. For debugging"
	^(self isFirst ifTrue: ['f'] ifFalse: ['']), self id printString!

initIds
	ids := Dictionary new.!

initRegisteredSet
	^self ids at: #setOfRegisteredElements put: Set new.!

initReplacementAnnouncements
	^self ids at: #replacementAnnouncements put: Dictionary new.!

initSemaphore
	self semaphore: Semaphore new.!

initWindow
	self window: (WebWindow new parent: self)!

isBusy
	^self isExecuting | self isInterrupted!

isClosed
	"a context is already closed"
	^self state = #closed!

isExecuting
	"a context's process is executing the request"
	^self state = #executing!

isExecutingInOwnProcess
	"context's process will execute the request only if needed, that is, if we have two (or more)
	contexts because first is waiting for second to return some value (like in confirmation dialog)"
	^self process notNil!

isFirst
	"is this first/upper context in the chain?"
	^false!

isIdle
	"a context's process is in idle state, waiting to get a signal to execute next request"
	^self state = #idle!

isInterrupted
	"a context's process is in an interrupted state, waiting for subcontext to finish and close"
	^self state = #interrupted!

isLast
	"is this last/lower context in the chain?"
	^self child isNil!

isNoProcess
	"a context doesn't haveits own process to execute a request"
	^self state = #noprocess!

isRegistered: anElement
	^self registeredSet includes: anElement!

isRegisteredMethod: aSymbol
	aSymbol = #'doesNotUnderstand:' ifTrue: [^false]. "WebStyle methods are somehow such"
	^self registeredSet contains: [:each | each method = aSymbol].!

isWebElement
	"because some elements (like WebWindow, WebPage)  have a context as the parent"
	^false!

level
	"on which level this context is in context chain. First one has level 0"
	^self parent level + 1!

nextId
	" example: #id9. 
	Consider also already registered ids in contexts above in chain if any "
	^'id', (self nextIdNumber printString) asSymbol!

nextIdNumber
	"considering also already registered ids on above contexts"
	| nr |
	nr := self isFirst not ifTrue: [self parent nextIdNumber - 1] ifFalse: [0].
	^nr + self ids size + 1!

page
	"a web page on which we are executing. This is always a window of first context in hte chain"
	^self first window!

parent
	"parent context up in the chain, but an app on the first context"
	^parent!

parent: aContext
	parent := aContext!

printString
	^'aWebContext id ', self id printString!

process
	"a process which executes the request in this context. It can be interrupted and handled to a process from 
	child context. In such case this process is waiting on semaphore for child process to finish and return 
	some value"
	^process!

process: aProcess
	process := aProcess!

processLoop
	[true] whileTrue:
		[self setIdleState.
		self semaphore wait.
		self setExecutingState.
		self request context: self. "to be sure"
		self result: (self app printWebPageStepTwoFor: self request).
		self isFirst
			ifTrue: [self first mainSemaphore signal] "for main connection's process to proceed"
			ifFalse: [self parent answer notNil "if any answer, close me and signal parent"
				ifTrue: [self close] "which will also signal interrupted parent context to continue"		
				ifFalse: [self first mainSemaphore signal]] ] "for main connection's process to proceed"!

processPriority
	^Processor userSchedulingPriority!

registeredSet
	^self ids at: #setOfRegisteredElements ifAbsent: [self initRegisteredSet]!

registerIdFor: anElement
	anElement id isNil ifTrue: [anElement id: self nextId]. "auto id if not manually defined!! "
	(self isRegistered: anElement) ifTrue: [^nil].
	(self ids includesKey: anElement id) ifTrue: 
		[self registeredSet remove: (self ids at: anElement id)]. "to replace with a new one"
	self ids at: anElement id put: anElement.
	self registeredSet add: anElement.!

removeId: aSymbol
	| element |
	element := self ids at: aSymbol ifAbsent: [^nil].
	self ids removeKey: aSymbol.
	self registeredSet remove: element ifAbsent: [].!

replaceIdIn: anElement with: anOldElement
	"new anElement should have same id as an old one"
	anOldElement isNil ifTrue: [^nil].
	self registeredSet 
		remove: anOldElement ifAbsent: []; 
		add: anElement.
	self ids removeKey: anOldElement id ifAbsent: [].
	anElement attributesAt: #id put: anOldElement id. "anElement id: would deadlock!! "
	self ids at: anElement id put: anElement.!

replacementAnnouncements
	"current elememnt id replacement announcements"
	^self ids at: #replacementAnnouncements ifAbsent: [self initReplacementAnnouncements]!

request
	"current, later last request executed on that context"
	^request!

request: aRequest
	"current, later last request executed on that context"
	request := aRequest!

result
	"resulted web element of executing the context"
	^result!

result: aWebElement
	result := aWebElement!

semaphore
	"on this semaphore the context process is waiting for child process to signal finishing its execution and 
	returning a result value"
	semaphore isNil ifTrue: [self initSemaphore].
	^semaphore!

semaphore: aSemaphore
	semaphore := aSemaphore!

serialize: aRequest
	"Serialize execution if some other request is already executing"
	"for now just wait until previous request finish execution"
	[self isBusy ] 
		whileTrue: [(Delay forMilliseconds: 200) wait].!

session
	^self app session!

setClosed
	"a context is already closed"
	self state:  #closed!

setExecutingState
	"a context's process is executing the request"
	self state: #executing!

setId
	"set a random number and check it for uniquines"
	id := (AIDASite random next * 100000) truncated.
	(self app contexts includesKey: self id) ifTrue: [^self setId]  "repeat until unique"!

setIdleState
	"a context's process is in idle state, waiting to get a signal to execute next request"
	self state: #idle!

setInterruptedState
	"a context's process is in an interrupted state, waiting for subcontext to finish and close"
	self state: #interrupted!

setNoProcessState
	"a context doesn't haveits own process to execute a request"
	self state: #noprocess!

signal
	"signal a process to continue"
	self semaphore signal!

startProcess
	self process notNil ifTrue: [^nil].
	self process: ([self processLoop] forkAt: self processPriority)!

state
	" #noprocess #idle #executing #interrupted "
	state isNil ifTrue: [self setNoProcessState].
	^state!

state: aSymbol
	" #noprocess #idle #interrupted "
	state := aSymbol!

stopProcess

	self process isNil ifTrue: [^nil].
	self process terminate.
	self process: nil; semaphore: nil.
	self setNoProcessState!

view
	"view on which context is executed"
	^self first view!

wait
	"a process will be interrupted here until the next signal come"
	self setInterruptedState.
	self initSemaphore. "otherwise it doesn't wait, why?"
	self semaphore wait.
	self setExecutingState.!

window
	"a window (or web page) in which this context execute the request"
	window isNil ifTrue: [self initWindow].
	^window!

window: aWebWindow
	"a window (or web page) in which this context execute the request"
	window := aWebWindow! !
!WebContext categoriesFor: #activeContext!accessing!public! !
!WebContext categoriesFor: #announceReplacementWith:!private-ids!public! !
!WebContext categoriesFor: #answer!accessing!public! !
!WebContext categoriesFor: #answer:!private! !
!WebContext categoriesFor: #app!accessing!public! !
!WebContext categoriesFor: #cancelReplacement!private-ids!public! !
!WebContext categoriesFor: #checkProcessState!private-process!public! !
!WebContext categoriesFor: #child!accessing!public! !
!WebContext categoriesFor: #child:!private! !
!WebContext categoriesFor: #close!executing!public! !
!WebContext categoriesFor: #createNewContext!executing!public! !
!WebContext categoriesFor: #currentReplacement!private-ids!public! !
!WebContext categoriesFor: #elementForMethod:!private-ids!public! !
!WebContext categoriesFor: #elementId:!private-ids!public! !
!WebContext categoriesFor: #executeRequest:!executing!public! !
!WebContext categoriesFor: #finalizeExecutionOf:!executing!public! !
!WebContext categoriesFor: #first!accessing!public! !
!WebContext categoriesFor: #form!accessing!public! !
!WebContext categoriesFor: #id!accessing!public! !
!WebContext categoriesFor: #ids!private-ids!public! !
!WebContext categoriesFor: #idt!private! !
!WebContext categoriesFor: #initIds!initialize-release!public! !
!WebContext categoriesFor: #initRegisteredSet!initialize-release!public! !
!WebContext categoriesFor: #initReplacementAnnouncements!initialize-release!public! !
!WebContext categoriesFor: #initSemaphore!initialize-release!public! !
!WebContext categoriesFor: #initWindow!initialize-release!public! !
!WebContext categoriesFor: #isBusy!public!testing! !
!WebContext categoriesFor: #isClosed!public!testing-states! !
!WebContext categoriesFor: #isExecuting!public!testing-states! !
!WebContext categoriesFor: #isExecutingInOwnProcess!public!testing! !
!WebContext categoriesFor: #isFirst!public!testing! !
!WebContext categoriesFor: #isIdle!public!testing-states! !
!WebContext categoriesFor: #isInterrupted!public!testing-states! !
!WebContext categoriesFor: #isLast!public!testing! !
!WebContext categoriesFor: #isNoProcess!public!testing-states! !
!WebContext categoriesFor: #isRegistered:!private-ids!public! !
!WebContext categoriesFor: #isRegisteredMethod:!private-ids!public! !
!WebContext categoriesFor: #isWebElement!public!testing! !
!WebContext categoriesFor: #level!accessing!public! !
!WebContext categoriesFor: #nextId!private-ids!public! !
!WebContext categoriesFor: #nextIdNumber!private-ids!public! !
!WebContext categoriesFor: #page!accessing!public! !
!WebContext categoriesFor: #parent!accessing!public! !
!WebContext categoriesFor: #parent:!private! !
!WebContext categoriesFor: #printString!printing!public! !
!WebContext categoriesFor: #process!private-process!public! !
!WebContext categoriesFor: #process:!private-process!public! !
!WebContext categoriesFor: #processLoop!private-process!public! !
!WebContext categoriesFor: #processPriority!private-process!public! !
!WebContext categoriesFor: #registeredSet!private-ids!public! !
!WebContext categoriesFor: #registerIdFor:!private-ids!public! !
!WebContext categoriesFor: #removeId:!private-ids!public! !
!WebContext categoriesFor: #replaceIdIn:with:!private-ids!public! !
!WebContext categoriesFor: #replacementAnnouncements!private-ids!public! !
!WebContext categoriesFor: #request!accessing!public! !
!WebContext categoriesFor: #request:!accessing!public! !
!WebContext categoriesFor: #result!accessing!public! !
!WebContext categoriesFor: #result:!private! !
!WebContext categoriesFor: #semaphore!private-process!public! !
!WebContext categoriesFor: #semaphore:!private-process!public! !
!WebContext categoriesFor: #serialize:!executing!public! !
!WebContext categoriesFor: #session!accessing!public! !
!WebContext categoriesFor: #setClosed!private-states!public! !
!WebContext categoriesFor: #setExecutingState!private-states!public! !
!WebContext categoriesFor: #setId!initialize-release!public! !
!WebContext categoriesFor: #setIdleState!private-states!public! !
!WebContext categoriesFor: #setInterruptedState!private-states!public! !
!WebContext categoriesFor: #setNoProcessState!private-states!public! !
!WebContext categoriesFor: #signal!private-process!public! !
!WebContext categoriesFor: #startProcess!private-process!public! !
!WebContext categoriesFor: #state!private-states!public! !
!WebContext categoriesFor: #state:!private-states!public! !
!WebContext categoriesFor: #stopProcess!private-process!public! !
!WebContext categoriesFor: #view!accessing!public! !
!WebContext categoriesFor: #wait!private-process!public! !
!WebContext categoriesFor: #window!accessing!public! !
!WebContext categoriesFor: #window:!private! !

!WebContext class methodsFor!

contextIdName
	"query name for contexts in in URLs: 'aidaCtx=1456' "
	^'aidaCtx'!

newOn: aContext
	^super new 
		parent: aContext;
		setNoProcessState "an initial state"! !
!WebContext class categoriesFor: #contextIdName!accessing!public! !
!WebContext class categoriesFor: #newOn:!instance creation!public! !

