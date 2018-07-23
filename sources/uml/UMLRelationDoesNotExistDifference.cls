"Filed out from Dolphin Smalltalk 7"!

UMLRelationAbstractDifference subclass: #UMLRelationDoesNotExistDifference
	instanceVariableNames: 'absentModel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLRelationDoesNotExistDifference guid: (GUID fromString: '{db75a2da-8a8c-4b9f-8ccd-739a26775dd5}')!
UMLRelationDoesNotExistDifference comment: ''!
!UMLRelationDoesNotExistDifference categoriesForClass!Unclassified! !
!UMLRelationDoesNotExistDifference methodsFor!

absentModel
	^absentModel!

absentModel: anObject
	absentModel := anObject!

absentModelName

	absentModel ifNil: [^''].

	^absentModel name! !
!UMLRelationDoesNotExistDifference categoriesFor: #absentModel!accessing!private! !
!UMLRelationDoesNotExistDifference categoriesFor: #absentModel:!accessing!private! !
!UMLRelationDoesNotExistDifference categoriesFor: #absentModelName!public! !

