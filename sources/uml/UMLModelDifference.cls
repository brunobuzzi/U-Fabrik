"Filed out from Dolphin Smalltalk 7"!

UMLElementDifference subclass: #UMLModelDifference
	instanceVariableNames: 'classesDifference'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModelDifference guid: (GUID fromString: '{5788c79e-e412-4559-85f3-2f049c643203}')!
UMLModelDifference comment: ''!
!UMLModelDifference categoriesForClass!Unclassified! !
!UMLModelDifference methodsFor!

addClassDifference: anUMLClassDifference

	^classesDifference add: anUMLClassDifference!

classesDifference
	^classesDifference!

classesDifference: anObject
	classesDifference := anObject!

initialize

	super initialize.

	classesDifference := OrderedCollection new.!

typeString

	^'Model Changes'! !
!UMLModelDifference categoriesFor: #addClassDifference:!public! !
!UMLModelDifference categoriesFor: #classesDifference!accessing!private! !
!UMLModelDifference categoriesFor: #classesDifference:!accessing!private! !
!UMLModelDifference categoriesFor: #initialize!public! !
!UMLModelDifference categoriesFor: #typeString!public! !

