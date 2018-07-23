"Filed out from Dolphin Smalltalk 7"!

SSWDBCollectionEntry subclass: #SSWDBDictionaryEntry
	instanceVariableNames: 'keyAccessor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBDictionaryEntry guid: (GUID fromString: '{fb382c12-7c2e-11d5-b1df-0010a70883e2}')!
SSWDBDictionaryEntry comment: ''!
!SSWDBDictionaryEntry categoriesForClass!Unclassified! !
!SSWDBDictionaryEntry methodsFor!

addTargetTo: aCollection

	"19/7/2001"

	aCollection directAt: (self keyAccessor valueIn: self target) put: self target!

keyAccessor

	"19/7/2001

	keyAccessor stores an SSWInstVarAccessor that accesses the attribute of targetObject
	that is the key at which that object should be stored in the dictionary"

	^keyAccessor!

keyAccessor: anSSWInstVarAccessor

	"19/7/2001

	keyAccessor stores an SSWInstVarAccessor that accesses the attribute of targetObject
	that is the key at which that object should be stored in the dictionary"

	keyAccessor := anSSWInstVarAccessor! !
!SSWDBDictionaryEntry categoriesFor: #addTargetTo:!actions!public! !
!SSWDBDictionaryEntry categoriesFor: #keyAccessor!accessing!public! !
!SSWDBDictionaryEntry categoriesFor: #keyAccessor:!accessing!public! !

