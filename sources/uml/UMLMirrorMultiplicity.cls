"Filed out from Dolphin Smalltalk 7"!

UMLAssociationMultiplicity subclass: #UMLMirrorMultiplicity
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLMirrorMultiplicity guid: (GUID fromString: '{3f001e69-9ee0-42e8-ace4-6c0442dc0fb9}')!
UMLMirrorMultiplicity comment: ''!
!UMLMirrorMultiplicity categoriesForClass!Unclassified! !
!UMLMirrorMultiplicity methodsFor!

hasMultipleInstances: anUMLClass 
	^self subclassResponsibility!

isOneToManyOrManyToOne

	^true!

presentationColorFor: anUMLClass

	(self hasMultipleInstances: anUMLClass) ifTrue: [^Color darkGreen].

	^Color blue!

printClassHeadName

	^'N <> 1 | 1 <> N'! !
!UMLMirrorMultiplicity categoriesFor: #hasMultipleInstances:!public! !
!UMLMirrorMultiplicity categoriesFor: #isOneToManyOrManyToOne!public! !
!UMLMirrorMultiplicity categoriesFor: #presentationColorFor:!public! !
!UMLMirrorMultiplicity categoriesFor: #printClassHeadName!public! !

