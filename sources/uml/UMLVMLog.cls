"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLVMLog
	instanceVariableNames: 'stamp methodName umlReceiver umlParameters snapshot'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVMLog guid: (GUID fromString: '{9d5fec68-2088-48f5-87b7-804753ede75c}')!
UMLVMLog comment: ''!
!UMLVMLog categoriesForClass!Unclassified! !
!UMLVMLog methodsFor!

hasDNU

	^snapshot ifNil: [false] ifNotNil: [snapshot hasDNU]!

hasInfiniteLoop

	^snapshot ifNil: [false] ifNotNil: [snapshot hasInfiniteLoop]!

hasOnErrorDo

	^snapshot ifNil: [false] ifNotNil: [snapshot hasOnErrorDo]!

initialize

	super initialize.

	stamp := TimeStamp now.!

isCurtailed

	^snapshot ifNil: [false] ifNotNil: [snapshot isCurtailed]!

methodName
	^methodName!

methodName: anObject
	methodName := anObject!

printOn: target

	target 
		nextPutAll: 'Log: ';
		nextPutAll: umlReceiver printString , ' ', methodName, ' [', stamp printShortFormat, ']'!

printParameters

	^umlParameters printString!

receiverName
	| prefix |

	prefix := umlReceiver isUMLInstance ifTrue: [umlReceiver name first isVowel ifTrue: ['an'] ifFalse: ['a']] ifFalse: ['']. 

	^prefix, umlReceiver name!

snapshot
	^snapshot!

snapshot: anObject
	snapshot := anObject!

stamp
	^stamp!

stamp: anObject
	stamp := anObject!

timeStampAsMilliseconds

	^stamp asMilliseconds!

umlParameters
	^umlParameters!

umlParameters: anObject
	umlParameters := anObject!

umlReceiver
	^umlReceiver!

umlReceiver: anObject
	umlReceiver := anObject! !
!UMLVMLog categoriesFor: #hasDNU!public! !
!UMLVMLog categoriesFor: #hasInfiniteLoop!public! !
!UMLVMLog categoriesFor: #hasOnErrorDo!public! !
!UMLVMLog categoriesFor: #initialize!public! !
!UMLVMLog categoriesFor: #isCurtailed!public! !
!UMLVMLog categoriesFor: #methodName!accessing!private! !
!UMLVMLog categoriesFor: #methodName:!accessing!private! !
!UMLVMLog categoriesFor: #printOn:!public! !
!UMLVMLog categoriesFor: #printParameters!public! !
!UMLVMLog categoriesFor: #receiverName!public! !
!UMLVMLog categoriesFor: #snapshot!accessing!private! !
!UMLVMLog categoriesFor: #snapshot:!accessing!private! !
!UMLVMLog categoriesFor: #stamp!accessing!private! !
!UMLVMLog categoriesFor: #stamp:!accessing!private! !
!UMLVMLog categoriesFor: #timeStampAsMilliseconds!public! !
!UMLVMLog categoriesFor: #umlParameters!accessing!private! !
!UMLVMLog categoriesFor: #umlParameters:!accessing!private! !
!UMLVMLog categoriesFor: #umlReceiver!accessing!private! !
!UMLVMLog categoriesFor: #umlReceiver:!accessing!private! !

!UMLVMLog class methodsFor!

for: receiver  methodName: methodName args: args

	^super new initialize
		methodName: methodName;
		umlReceiver: receiver;
		umlParameters: args;
		yourself.!

for: receiver methodName: methodName args: args snap: anUMLExecutionSnapshot

	^super new initialize
		methodName: methodName;
		umlReceiver: receiver;
		umlParameters: args;
		snapshot: anUMLExecutionSnapshot;
		yourself.!

icon

	^UMLParsedImplementation icon! !
!UMLVMLog class categoriesFor: #for:methodName:args:!public! !
!UMLVMLog class categoriesFor: #for:methodName:args:snap:!public! !
!UMLVMLog class categoriesFor: #icon!public! !

