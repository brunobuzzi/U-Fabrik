"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLDoesNotUnderstadComposite
	instanceVariableNames: 'classNamePresenter messageNamePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDoesNotUnderstadComposite guid: (GUID fromString: '{d78e9f3a-7b60-43ba-961f-233a93e9a371}')!
UMLDoesNotUnderstadComposite comment: ''!
!UMLDoesNotUnderstadComposite categoriesForClass!Unclassified! !
!UMLDoesNotUnderstadComposite methodsFor!

caption: aString

	self topShell view caption: aString!

className

	model ifNil: [^'UndefinedObject'].

	^self model fourth "OrderedCollection at: 4 - indicates if it is a -super- send"
	ifTrue: [self model second getMetaclass umlSuperclass className] 
	ifFalse: [self model second className]!

createComponents

	super createComponents.

	classNamePresenter := self add: TextPresenter new name: 'classNamePresenter'.
	messageNamePresenter := self add: TextPresenter new name: 'messageNamePresenter'.!

createSnapshot
	| snapshot methodName object arguments argumentsLookup implementation |

	methodName := self model first.
	object := self model second.
	arguments := self model at: 5.
	argumentsLookup := LookupTable new.
	arguments do: [:each | argumentsLookup at: each printString put: each].
	
	implementation := UMLParsedImplementation newWithCode: self getEmptyMethodCode.
	implementation methodName: methodName;
		methodClass: object umlClass.

	snapshot := UMLImplementationExecutionSnapshot activateSnapshotWith: implementation receiver: object arguments: argumentsLookup virtualMachine: self. 

	snapshot parentSnapshot: nil.

	^snapshot!

debug
	| methodName object executionSnapshot node targetNodes |

	methodName := self model first.
	object := self model second.
	executionSnapshot := self model third.
	executionSnapshot ifNil: [executionSnapshot := self createSnapshot].
	targetNodes := executionSnapshot sequence nodes select: [:each | each isMessage and: [each selector = methodName]].

	node := targetNodes isEmpty 
				ifFalse: [targetNodes first]
				ifTrue: [executionSnapshot sequence nodes isEmpty 
						ifFalse: [executionSnapshot sequence nodes first]
						ifTrue: [^MessageBox notify: 'Empty method' caption: self applicationName]].
	self topShell exit.

	[self defaultVirtualMachine 
		processPrimitiveCall_501: object
		withArguments: (Array with: node)
		snapshot: executionSnapshot
		isScript: executionSnapshot isScript] 
			forkAt: 4!

getEmptyMethodCode
	| methodName arguments methodCode |

	methodCode := WriteStream on: String new.
	methodName := self model first.
	arguments := self model at: 5.

	arguments isEmpty ifTrue: [^'vmScript ', String lineDelimiter , String tab,methodName].

	methodCode nextPutAll: 'vmScript', String lineDelimiter , String tab;
		nextPutAll: '"Configuration Error: This Method does NOT exist <', methodName ,'>"';
		cr;
		nextPutAll:  'self '.

	(methodName subStrings: ':') keysAndValuesDo: [:eachKey :eachValue | 
		methodCode nextPutAll: eachValue, ': ', (arguments at: eachKey) printString.
		methodCode nextPutAll:  ' '.
	].

	^methodCode contents!

model: anOrderedCollection
	"The object <anOrderedCollection> is composed as follow at: 
	1. failedMethodName
	2. receiver object
	3. the snapshot that fail"

	super model: anOrderedCollection.

	classNamePresenter value: self className.
	messageNamePresenter value: anOrderedCollection first.!

onViewOpened
	super onViewOpened.

	model ifNil: [^self].

	self caption: 'UML Step by Step Real Time Assistant on: <', self className, '> for message: <', self model first, '>'.
!

terminateUMLProcess

	self topShell answer.
	self topShell exit.! !
!UMLDoesNotUnderstadComposite categoriesFor: #caption:!public! !
!UMLDoesNotUnderstadComposite categoriesFor: #className!public! !
!UMLDoesNotUnderstadComposite categoriesFor: #createComponents!public! !
!UMLDoesNotUnderstadComposite categoriesFor: #createSnapshot!public! !
!UMLDoesNotUnderstadComposite categoriesFor: #debug!public! !
!UMLDoesNotUnderstadComposite categoriesFor: #getEmptyMethodCode!public! !
!UMLDoesNotUnderstadComposite categoriesFor: #model:!public! !
!UMLDoesNotUnderstadComposite categoriesFor: #onViewOpened!public! !
!UMLDoesNotUnderstadComposite categoriesFor: #terminateUMLProcess!public! !

!UMLDoesNotUnderstadComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 416 0 234 256 98 4 410 8 ##(Smalltalk.StaticText)  98 16 0 416 98 2 8 1140850944 262145 560 0 0 0 5 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 560 786694 ##(Smalltalk.IndexedColor)  33554441 8 4294903911 852486 ##(Smalltalk.NullConverter)  0 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 722 321 41 722 411 51 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 160 0 0 0 20 0 0 0 109 1 0 0 45 0 0 0] 98 0 722 193 193 0 27 8 'classNamePresenter' 410 576 98 16 0 416 98 2 8 1140850944 262145 1088 0 0 0 5 0 642 0 16 674 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 736 0 1088 768 8 4294903911 802 0 0 0 834 202 208 98 1 898 928 98 2 722 21 111 722 661 51 1088 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 55 0 0 0 84 1 0 0 80 0 0 0] 98 0 1056 0 27 8 'messageNamePresenter' 0 834 202 208 98 1 898 928 98 2 722 3199 21 722 1361 271 416 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 231 8 0 0 145 0 0 0] 98 6 410 576 98 16 0 416 98 2 8 1140850944 1 1568 0 0 0 5 0 642 0 16 674 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 736 0 1568 0 8 4294903911 802 0 0 0 834 202 208 98 2 898 928 98 2 722 21 41 722 301 51 1568 898 8 #text: 98 1 8 'The Class Named' 1568 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 20 0 0 0 160 0 0 0 45 0 0 0] 98 0 1056 0 27 1088 560 410 576 98 16 0 416 98 2 8 1140850944 1 1936 0 0 0 5 0 642 0 16 674 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 736 0 1936 0 8 4294903911 802 0 0 0 834 202 208 98 2 898 928 98 2 722 741 41 722 601 51 1936 898 1840 98 1 8 'does NOT understand the message' 1936 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 114 1 0 0 20 0 0 0 158 2 0 0 45 0 0 0] 98 0 1056 0 27 410 8 ##(Smalltalk.PushButton)  98 20 0 416 98 2 8 1140924416 1 2288 0 0 0 5 0 0 0 2288 0 8 4294904923 1180998 4 ##(Smalltalk.CommandDescription)  8 #terminateUMLProcess 8 'Terminate UML Process' 1 1 0 0 32 0 0 0 834 202 208 98 3 898 928 98 2 722 901 151 722 201 91 2288 898 8 #isEnabled: 98 1 32 2288 898 1840 98 1 8 'Terminate UML Process' 2288 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 194 1 0 0 75 0 0 0 38 2 0 0 120 0 0 0] 98 0 1056 0 29 410 2304 98 20 0 416 98 2 8 1140924416 1 2704 0 0 0 5 0 0 0 2704 0 8 4294904923 2386 8 #debug 8 'Open Real Time Assistant' 1 1 0 0 32 0 0 0 834 202 208 98 3 898 928 98 2 722 1151 151 722 201 91 2704 898 2576 98 1 32 2704 898 1840 98 1 8 'Open Real Time Assistant' 2704 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 2 0 0 75 0 0 0 163 2 0 0 120 0 0 0] 98 0 1056 0 29 1056 0 27 )! !
!UMLDoesNotUnderstadComposite class categoriesFor: #resource_Default_view!public!resources-views! !

