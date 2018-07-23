"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebTransactionMonitor
	instanceVariableNames: ''
	classVariableNames: 'BusySessions LocalServers NotificationSent Transactions'
	poolDictionaries: ''
	classInstanceVariableNames: 'Lock'!
WebTransactionMonitor guid: (GUID fromString: '{452db1da-de1b-404b-896a-a014a0d9ac3b}')!
WebTransactionMonitor comment: ''!
!WebTransactionMonitor categoriesForClass!Unclassified! !
!WebTransactionMonitor class methodsFor!

addServer: aWebServer

	self localServers add: aWebServer!

beginTransaction

	"Mark the beginning of transaction on current process. 
	Mark the end with commit or cancelTransaction"

	self beginTransactionOn: Processor activeProcess.!

beginTransactionOn: aProcess

	"Mark the beginning of transaction. Mark the end with commit or cancelTransaction"

	self critical: 
		[self transactions add: aProcess]!

busySessions

	"a collection of database sessions, which are busy on that moment"

	BusySessions isNil ifTrue: [self initBusySessions].
	^BusySessions!

cancelTransaction

	"cancel the transaction without commiting on current process. 
	Used in exception handling routines"

	self cancelTransactionOn: Processor activeProcess!

cancelTransactionOn: aProcess

	"cancel the transaction without commiting. Used in exception handling routines"

	self critical: 
		[self transactions remove: aProcess ifAbsent: []].!

clearHangedProcesses

	"remove all processes with hanged  suspended context from set of transactions. "
	"WebTransactionMonitor clearHangedProcesses"
" TEMORARY, vw5i4 sender unknown !! "
	self transactions copy do: 
		[:each | (each suspendedContext notNil and:
""
			[(each suspendedContext sender selector = #readWait) | 
			(each suspendedContext sender selector = #writeWait)] )
""
				ifTrue:
					[each terminate.
					self transactions remove: each] ].
""!

clearNilProcesses

	"remove all processes with nil  suspended context from set of transactions. Such processes
	died somewhere and were not removed with method cancelTransaction"

	self transactions copy do: 
		[:each | each suspendedContext isNil 
			ifTrue:
				[self transactions remove: each] ].!

commit

	"commit the transaction if there is no more pending transactions, otherwise defer commit to
	the next call of this method."
	"WebTransactionMonitor commit"
	self critical: 
		[self clearNilProcesses.
		"self transactions isEmpty" true
			ifTrue: 
				["WebServer default diagnostics ifTrue: [Transcript show: ' comm.']."
"				Swazoo.SwazooServer isPersistent ifTrue: [self gemstoneCommit].  "
				"WebServer default diagnostics ifTrue: [Transcript show: '.ited ']."
				self setLastCommit. ]
			ifFalse: 
				[self clearHangedProcesses.
				self transactions notEmpty ifTrue: 
					[self noCommitFor10min ifTrue: 
						[self notifyNoCommiting.
"						Swazoo.SwazooServer isPersistent ifTrue: [self gemstoneCommit] "]
					]
				]
		].

"WebTransactionMonitor commit"!

commitTransaction

	"commit the transaction on current process if there is no more pending transactions, 
	otherwise defer commit to the next call of this method."

	self commitTransactionOn: Processor activeProcess!

commitTransactionOn: aProcess

	"commit the transaction if there is no more pending transactions, otherwise defer commit to
	the next call of this method."

	self critical: 
		[self cancelTransactionOn: aProcess.
		self commit].!

critical: aBlock
	"For protecting critical sections in parallel execution of web requests. Use it always
	when you do things, which cannot be disturbed by another request. Example:
		WebTransactionMonitor critical: [<a block with critical section>]. "

	^self lock critical: aBlock.!

initBusySessions

	BusySessions := Set new.!

initialize
	self initTransactions.
	self initBusySessions.

"WebTransactionMonitor initialize"!

initTransactions

	Transactions := Set new.!

isNotificationSent

	NotificationSent isNil ifTrue: [self resetNotificationSent].
	^NotificationSent!

lastCommit

	"return the time of last real odb commit"

	^AIDASite default lastCommitTimestamp.!

localServers
	"all active web servers, whose are running on local image"
	LocalServers isNil ifTrue: [LocalServers := Set new].
	self removeNonactiveServers.
	^LocalServers!

notifyNoCommiting

	"if there is no odb commit for more than 10min then an e-mail message is sent to a 
	specified address (from settings in WebServer)"
	"WebTransactionMonitor notifyNoCommiting"



	| subject body |

	self isNotificationSent ifTrue: [^self].
"
	subject := 'AIDAWeb Urgent: No odb commit!!'.
	body := 'No commit for more than 10 minutes!!'.
	WebServer default urgentEMailSubject: subject body: body.
"
	self setNotificationSent.!

onFreeSessionFor: anObject remotePerform: aSelector

	^self onFreeSessionFor: anObject remotePerform: aSelector withArgs: #()


"WebTransactionMonitor onFreeSessionFor: AIDARoot remotePerform: #copy"!

onFreeSessionFor: anObject remotePerform: aSelector with: anArgument

	^self onFreeSessionFor: anObject remotePerform: aSelector withArgs: (Array with: anArgument)

"WebTransactionMonitor onFreeSessionFor: AIDARoot remotePerform: #at: with: 'planid' "!

onFreeSessionFor: anObject remotePerform: aSelector withArgs: argsArray

	| session gsObject result |
	session := self freeSession.
	[	
		self busySessions add: session.
		gsObject := anObject asGSObjectInSession: session .
		result := gsObject remotePerform: aSelector withArgs: argsArray.
		result := gsObject remotePerform: aSelector withArgs: argsArray.
		result := result asLocalObject.
		session commitTransaction
	] valueNowOrOnUnwindDo: 
		[self busySessions remove: session ifAbsent: [].
		 session disconnectST: anObject fromGS: gsObject].
	^result

"WebTransactionMonitor onFreeSessionFor: WebServer default remotePerform: #settings withArgs: #()"!

removeNonactiveServers
	LocalServers copy do: [:srv | 
		srv isServing ifFalse: [LocalServers remove: srv ifAbsent: []] ]!

removeServer: aWebServer

	self localServers remove: aWebServer ifAbsent: []!

resetNotificationSent

	NotificationSent := false.!

setLastCommit

	"set the time of last real odb commit to time now"
	
	self localServers do: [:each | each setLastCommitTimestamp].
	self resetNotificationSent!

setNotificationSent

	NotificationSent := true.!

transactions

	"a collection of all processes with open transactions . Such a process is 
	addded with method beginTransaction and removed with commit or cancelTransaction"
	"WebTransactionMonitor transactions"
	Transactions isNil ifTrue: [self initTransactions].
	^Transactions!

versantCommit

"	ODBInterface checkpointCommit "! !
!WebTransactionMonitor class categoriesFor: #addServer:!local servers!public! !
!WebTransactionMonitor class categoriesFor: #beginTransaction!public!transactions! !
!WebTransactionMonitor class categoriesFor: #beginTransactionOn:!public!transactions! !
!WebTransactionMonitor class categoriesFor: #busySessions!accessing!public! !
!WebTransactionMonitor class categoriesFor: #cancelTransaction!public!transactions! !
!WebTransactionMonitor class categoriesFor: #cancelTransactionOn:!public!transactions! !
!WebTransactionMonitor class categoriesFor: #clearHangedProcesses!public!transactions! !
!WebTransactionMonitor class categoriesFor: #clearNilProcesses!public!transactions! !
!WebTransactionMonitor class categoriesFor: #commit!public!transactions! !
!WebTransactionMonitor class categoriesFor: #commitTransaction!public!transactions! !
!WebTransactionMonitor class categoriesFor: #commitTransactionOn:!public!transactions! !
!WebTransactionMonitor class categoriesFor: #critical:!critical sections!public! !
!WebTransactionMonitor class categoriesFor: #initBusySessions!initialize!public! !
!WebTransactionMonitor class categoriesFor: #initialize!initialize!public! !
!WebTransactionMonitor class categoriesFor: #initTransactions!initialize!public! !
!WebTransactionMonitor class categoriesFor: #isNotificationSent!accessing!public! !
!WebTransactionMonitor class categoriesFor: #lastCommit!accessing!public! !
!WebTransactionMonitor class categoriesFor: #localServers!private! !
!WebTransactionMonitor class categoriesFor: #notifyNoCommiting!error notifying!public! !
!WebTransactionMonitor class categoriesFor: #onFreeSessionFor:remotePerform:!odb specific!public! !
!WebTransactionMonitor class categoriesFor: #onFreeSessionFor:remotePerform:with:!odb specific!public! !
!WebTransactionMonitor class categoriesFor: #onFreeSessionFor:remotePerform:withArgs:!odb specific!public! !
!WebTransactionMonitor class categoriesFor: #removeNonactiveServers!private! !
!WebTransactionMonitor class categoriesFor: #removeServer:!local servers!public! !
!WebTransactionMonitor class categoriesFor: #resetNotificationSent!accessing!public! !
!WebTransactionMonitor class categoriesFor: #setLastCommit!accessing!public! !
!WebTransactionMonitor class categoriesFor: #setNotificationSent!accessing!public! !
!WebTransactionMonitor class categoriesFor: #transactions!private! !
!WebTransactionMonitor class categoriesFor: #versantCommit!odb specific!public! !

