"Filed out from Dolphin Smalltalk 7"!

Object subclass: #BBObjectIdHolder
	instanceVariableNames: 'instanceVariablesId copiedValues'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBObjectIdHolder guid: (GUID fromString: '{f8a41161-956f-455e-98a2-ac11bade0531}')!
BBObjectIdHolder comment: ''!
!BBObjectIdHolder categoriesForClass!Unclassified! !
!BBObjectIdHolder methodsFor!

copiedValues
	^copiedValues!

copiedValues: anObject
	copiedValues := anObject!

instanceVariablesId
	^instanceVariablesId!

instanceVariablesId: anObject
	instanceVariablesId := anObject! !
!BBObjectIdHolder categoriesFor: #copiedValues!accessing!private! !
!BBObjectIdHolder categoriesFor: #copiedValues:!accessing!private! !
!BBObjectIdHolder categoriesFor: #instanceVariablesId!accessing!private! !
!BBObjectIdHolder categoriesFor: #instanceVariablesId:!accessing!private! !

!BBObjectIdHolder class methodsFor!

withAll: anArray on: anObject

	^super new initialize createValuesWith: anArray on: anObject! !
!BBObjectIdHolder class categoriesFor: #withAll:on:!public! !

