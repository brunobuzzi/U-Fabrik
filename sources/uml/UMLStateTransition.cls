"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLStateTransition
	instanceVariableNames: 'name id startState endState'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLStateTransition guid: (GUID fromString: '{90b59abd-8928-4078-b9a3-6106461bf11c}')!
UMLStateTransition comment: ''!
!UMLStateTransition categoriesForClass!Unclassified! !
!UMLStateTransition methodsFor!

createInstanceOf: anUMLClass nameMessage: aSymbol
	| instance |

	instance := anUMLClass newInstance.
	instance storeAsGlobalObject.
	instance vmPerform: #initialize.
	instance vmPerform: (aSymbol,':') asSymbol withArguments: (Array with: (name asUMLObject: self defaultVirtualMachine)).
	^instance!

endState
	^endState!

endState: anObject
	endState := anObject!

id
	^id!

id: anObject
	id := anObject!

isEndState

	^endState isNil!

isStartState

	^startState isNil!

name
	^name!

name: anObject
	name := anObject!

printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: (' [', name, ']')!

startState
	^startState!

startState: anObject
	startState := anObject! !
!UMLStateTransition categoriesFor: #createInstanceOf:nameMessage:!public! !
!UMLStateTransition categoriesFor: #endState!accessing!private! !
!UMLStateTransition categoriesFor: #endState:!accessing!private! !
!UMLStateTransition categoriesFor: #id!accessing!private! !
!UMLStateTransition categoriesFor: #id:!accessing!private! !
!UMLStateTransition categoriesFor: #isEndState!public! !
!UMLStateTransition categoriesFor: #isStartState!public! !
!UMLStateTransition categoriesFor: #name!accessing!private! !
!UMLStateTransition categoriesFor: #name:!accessing!private! !
!UMLStateTransition categoriesFor: #printOn:!public! !
!UMLStateTransition categoriesFor: #startState!accessing!private! !
!UMLStateTransition categoriesFor: #startState:!accessing!private! !

!UMLStateTransition class methodsFor!

name: stringName id: id

	^super new initialize
		name: stringName;
		id: id;
		yourself.!

name: stringName id: id start: anUMLState end: endUMLState

	^super new initialize
		name: stringName;
		id: id;
		startState: anUMLState;
		endState: endUMLState;
		yourself.! !
!UMLStateTransition class categoriesFor: #name:id:!public! !
!UMLStateTransition class categoriesFor: #name:id:start:end:!public! !

