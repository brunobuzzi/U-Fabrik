"Filed out from Dolphin Smalltalk 7"!

DBElementDifference subclass: #DBAttributeDifference
	instanceVariableNames: 'attribute'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBAttributeDifference guid: (GUID fromString: '{63d454f0-bcbf-43ad-b41f-4f61ce2fb8f7}')!
DBAttributeDifference comment: ''!
!DBAttributeDifference categoriesForClass!Unclassified! !
!DBAttributeDifference methodsFor!

attribute
	^attribute!

attribute: anObject
	attribute := anObject!

table

	^attribute table! !
!DBAttributeDifference categoriesFor: #attribute!accessing!private! !
!DBAttributeDifference categoriesFor: #attribute:!accessing!private! !
!DBAttributeDifference categoriesFor: #table!public! !

!DBAttributeDifference class methodsFor!

attributeName: aString

	^super new initialize
		attributeName: aString;
		yourself.! !
!DBAttributeDifference class categoriesFor: #attributeName:!public! !

