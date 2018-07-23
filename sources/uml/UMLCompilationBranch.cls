"Filed out from Dolphin Smalltalk 7"!

UMLSanityCheck subclass: #UMLCompilationBranch
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLCompilationBranch guid: (GUID fromString: '{37c3bb8a-35f4-45fa-a218-0396ef4bc0b7}')!
UMLCompilationBranch comment: ''!
!UMLCompilationBranch categoriesForClass!Unclassified! !
!UMLCompilationBranch methodsFor!

name
	^name!

name: anObject
	name := anObject! !
!UMLCompilationBranch categoriesFor: #name!accessing!private! !
!UMLCompilationBranch categoriesFor: #name:!accessing!private! !

!UMLCompilationBranch class methodsFor!

icon

	^Exception icon!

name: aString

	^super new initialize
		name: aString;
		yourself.! !
!UMLCompilationBranch class categoriesFor: #icon!public! !
!UMLCompilationBranch class categoriesFor: #name:!public! !

