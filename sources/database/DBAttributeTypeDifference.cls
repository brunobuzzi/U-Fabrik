"Filed out from Dolphin Smalltalk 7"!

DBAttributeDifference subclass: #DBAttributeTypeDifference
	instanceVariableNames: 'typeValue'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBAttributeTypeDifference guid: (GUID fromString: '{501c4ecc-6a23-4299-9006-d863681bcbc9}')!
DBAttributeTypeDifference comment: ''!
!DBAttributeTypeDifference categoriesForClass!Unclassified! !
!DBAttributeTypeDifference methodsFor!

comparedElement

	^attribute!

oppositeComparedElement

	^self oppositeTable getAttributeNamed: attribute name!

oppositeTable

	^(attribute table == self firstElement) ifTrue: [self secondElement] ifFalse: [self firstElement]!

rtfDetail

	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fnil Segoe UI;}}
{\colortbl ;\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red255\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1033\b\f0\fs24 The attribute named \cf2 ', attribute tableName, '\cf3 .', attribute name, ' \cf4 has changed \cf1 type to \cf3 ', typeValue ,'\cf1  in model\cf3  \cf1  \cf3 ',self table modelName,'\cf0\lang2057\b0\f1\fs18 \par }'.!

typeString

	^'The attribute named <', attribute tableName, '.', attribute name,' > has changed type to <', typeValue ,'>  in model <',self table modelName,'>'!

typeValue
	^typeValue!

typeValue: anObject
	typeValue := anObject! !
!DBAttributeTypeDifference categoriesFor: #comparedElement!public! !
!DBAttributeTypeDifference categoriesFor: #oppositeComparedElement!public! !
!DBAttributeTypeDifference categoriesFor: #oppositeTable!public! !
!DBAttributeTypeDifference categoriesFor: #rtfDetail!public! !
!DBAttributeTypeDifference categoriesFor: #typeString!public! !
!DBAttributeTypeDifference categoriesFor: #typeValue!accessing!private! !
!DBAttributeTypeDifference categoriesFor: #typeValue:!accessing!private! !

!DBAttributeTypeDifference class methodsFor!

attribute: aBBDBAttribute typeValue: stringType comparator: aDBElementComparision

	^super new initialize
		attribute: aBBDBAttribute;
		typeValue: stringType;
		comparator: aDBElementComparision;
		yourself.!

icon

	^Notification icon!

isComboSelectable

	^true!

printComboName
	^'Attribute has different type'! !
!DBAttributeTypeDifference class categoriesFor: #attribute:typeValue:comparator:!public! !
!DBAttributeTypeDifference class categoriesFor: #icon!public! !
!DBAttributeTypeDifference class categoriesFor: #isComboSelectable!public! !
!DBAttributeTypeDifference class categoriesFor: #printComboName!public! !

