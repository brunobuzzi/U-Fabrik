"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLState
	instanceVariableNames: 'name id transitions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLState guid: (GUID fromString: '{1cc3ad22-dcd8-49cd-895d-99b8cf76e97a}')!
UMLState comment: ''!
!UMLState categoriesForClass!Unclassified! !
!UMLState methodsFor!

addTransition: anUMLTransition

	^transitions add: anUMLTransition

	!

createInstanceOf: anUMLClass nameMessage: aSymbol
	| instance |

	instance := anUMLClass newInstance.
	instance storeAsGlobalObject.
	instance vmPerform: #initialize.
	instance vmPerform: (aSymbol,':') asSymbol withArguments: (Array with: (name asUMLObject: self defaultVirtualMachine)).
	^instance!

id
	^id!

id: anObject
	id := anObject!

includesTransitionId: aString

	^transitions anySatisfy: [:each | each id = aString]!

initialize

	super initialize.

	transitions := OrderedCollection new.!

name
	^name!

name: anObject
	name := anObject!

printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: (' [', name, ']')!

removeTransition: anUMLTransition

	^transitions remove: anUMLTransition

	!

transitions
	^transitions!

transitions: anObject
	transitions := anObject! !
!UMLState categoriesFor: #addTransition:!public! !
!UMLState categoriesFor: #createInstanceOf:nameMessage:!public! !
!UMLState categoriesFor: #id!accessing!private! !
!UMLState categoriesFor: #id:!accessing!private! !
!UMLState categoriesFor: #includesTransitionId:!public! !
!UMLState categoriesFor: #initialize!public! !
!UMLState categoriesFor: #name!accessing!private! !
!UMLState categoriesFor: #name:!accessing!private! !
!UMLState categoriesFor: #printOn:!public! !
!UMLState categoriesFor: #removeTransition:!public! !
!UMLState categoriesFor: #transitions!accessing!private! !
!UMLState categoriesFor: #transitions:!accessing!private! !

!UMLState class methodsFor!

name: stringName id: id

	^super new initialize
		name: stringName;
		id: id;
		yourself.! !
!UMLState class categoriesFor: #name:id:!public! !

