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

initialize

	super initialize.

	stamp := TimeStamp now.!

methodName
	^methodName!

methodName: anObject
	methodName := anObject!

printOn: target

	target 
		nextPutAll: 'Log: ';
		nextPutAll: umlReceiver printString , ' ', methodName, ' [', stamp printShortFormat, ']'!

receiverName

	^umlReceiver name!

snapshot
	^snapshot!

snapshot: anObject
	snapshot := anObject!

stamp
	^stamp!

stamp: anObject
	stamp := anObject!

umlParameters
	^umlParameters!

umlParameters: anObject
	umlParameters := anObject!

umlReceiver
	^umlReceiver!

umlReceiver: anObject
	umlReceiver := anObject! !
!UMLVMLog categoriesFor: #initialize!public! !
!UMLVMLog categoriesFor: #methodName!accessing!private! !
!UMLVMLog categoriesFor: #methodName:!accessing!private! !
!UMLVMLog categoriesFor: #printOn:!public! !
!UMLVMLog categoriesFor: #receiverName!public! !
!UMLVMLog categoriesFor: #snapshot!accessing!private! !
!UMLVMLog categoriesFor: #snapshot:!accessing!private! !
!UMLVMLog categoriesFor: #stamp!accessing!private! !
!UMLVMLog categoriesFor: #stamp:!accessing!private! !
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
		yourself.! !
!UMLVMLog class categoriesFor: #for:methodName:args:!public! !
!UMLVMLog class categoriesFor: #for:methodName:args:snap:!public! !

