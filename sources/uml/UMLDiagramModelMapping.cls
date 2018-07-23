"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLDiagramModelMapping
	instanceVariableNames: 'mapping'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'current'!
UMLDiagramModelMapping guid: (GUID fromString: '{c82fded1-72bb-4114-821d-a4be6219090d}')!
UMLDiagramModelMapping comment: ''!
!UMLDiagramModelMapping categoriesForClass!Unclassified! !
!UMLDiagramModelMapping methodsFor!

initialize

	super initialize.

	mapping := LookupTable new.!

mapping
	^mapping!

mapping: anObject
	mapping := anObject! !
!UMLDiagramModelMapping categoriesFor: #initialize!public! !
!UMLDiagramModelMapping categoriesFor: #mapping!accessing!private! !
!UMLDiagramModelMapping categoriesFor: #mapping:!accessing!private! !

!UMLDiagramModelMapping class methodsFor!

current

	current ifNil: [current := super new initialize].
	^current!

current: anObject
	current := anObject! !
!UMLDiagramModelMapping class categoriesFor: #current!accessing!private! !
!UMLDiagramModelMapping class categoriesFor: #current:!accessing!private! !

