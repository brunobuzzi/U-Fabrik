"Filed out from Dolphin Smalltalk 7"!

WebContext subclass: #WebContextFirst
	instanceVariableNames: 'view mainSemaphore'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebContextFirst guid: (GUID fromString: '{4801176d-d80f-4811-b0cc-0ac3099cdd35}')!
WebContextFirst comment: 'WebContextFirst is the first, top context in context chain.'!
!WebContextFirst categoriesForClass!Unclassified! !
!WebContextFirst methodsFor!

app
	"the instance of WebApplication on which this context is executing"
	^self parent!

close
	"close process if any, and release other things. It also removes itself from context chain"
	super close.!

first
	"first context up in the chain. In this case is me"
	^self!

initMainSemaphore
	mainSemaphore := Semaphore new.!

initWindow
	window := WebPage new  "as subclass of WebWindow"
		parent: self!

isFirst
	"is this first/upper context in the chain?"
	^true!

level
	"on which level this context is in context chain. First one has level 0"
	^0!

mainSemaphore
	"main process is waiting on this semaphire for context's process to signaling back the finishment"
	mainSemaphore isNil ifTrue: [self initMainSemaphore].
	^mainSemaphore!

parent: aWebApplication
	parent := aWebApplication!

printString
	^'aWebContextFirst 
	view: ' , self view printString , '
	id: ', self id printString!

view
	"view on which context is executed"
	^view!

view: aSymbol
	"view on which context is executed. #main is default"
	view := aSymbol isNil 
		ifTrue: [#main] 
		ifFalse: [aSymbol]! !
!WebContextFirst categoriesFor: #app!accessing!public! !
!WebContextFirst categoriesFor: #close!executing!public! !
!WebContextFirst categoriesFor: #first!accessing!public! !
!WebContextFirst categoriesFor: #initMainSemaphore!initialize-release!public! !
!WebContextFirst categoriesFor: #initWindow!initialize-release!public! !
!WebContextFirst categoriesFor: #isFirst!public!testing! !
!WebContextFirst categoriesFor: #level!accessing!public! !
!WebContextFirst categoriesFor: #mainSemaphore!private-process!public! !
!WebContextFirst categoriesFor: #parent:!accessing!public! !
!WebContextFirst categoriesFor: #printString!private! !
!WebContextFirst categoriesFor: #view!accessing!public! !
!WebContextFirst categoriesFor: #view:!accessing!public! !

!WebContextFirst class methodsFor!

newOn: aWebApplication
	^super new 
		parent: aWebApplication;
		setNoProcessState "an initial state"! !
!WebContextFirst class categoriesFor: #newOn:!instance creation!public! !

