"Filed out from Dolphin Smalltalk 7"!

SSWDBStaticCollectionSpec subclass: #SSWDBStaticCacheDictionarySpec
	instanceVariableNames: 'keyAccessor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBStaticCacheDictionarySpec guid: (GUID fromString: '{fb382c11-7c2e-11d5-b1df-0010a70883e2}')!
SSWDBStaticCacheDictionarySpec comment: ''!
!SSWDBStaticCacheDictionarySpec categoriesForClass!Unclassified! !
!SSWDBStaticCacheDictionarySpec methodsFor!

createNonProxiedInstanceFromRow: aDBRow

	"Overridden to set keyAccessor (issue#0001)"

	^(super createNonProxiedInstanceFromRow: aDBRow)
		keyAccessor: self keyAccessor;
		yourself!

entryClass

	"19/7/2001
	
	Return the class of collection entry appropriate for the receiver"
	
	^SSWDBDictionaryEntry!

keyAccessor

	"19/7/2001

	keyAccessor stores an SSWInstVarAccessor that accesses the attribute of an object
	that is the key at which that object should be stored in the dictionary"

	^keyAccessor!

keyAccessor: anSSWInstVarAccessor

	"19/7/2001

	keyAccessor stores an SSWInstVarAccessor that accesses the attribute of an object
	that is the key at which that object should be stored in the dictionary"

	keyAccessor := anSSWInstVarAccessor!

keyedOn: aSymbol

	"30/9/2001"

	self keyAccessor: (SSWInstVarAccessor toAccess: aSymbol in: self targetClass)! !
!SSWDBStaticCacheDictionarySpec categoriesFor: #createNonProxiedInstanceFromRow:!actions!public! !
!SSWDBStaticCacheDictionarySpec categoriesFor: #entryClass!constants!public! !
!SSWDBStaticCacheDictionarySpec categoriesFor: #keyAccessor!accessing!public! !
!SSWDBStaticCacheDictionarySpec categoriesFor: #keyAccessor:!accessing!public! !
!SSWDBStaticCacheDictionarySpec categoriesFor: #keyedOn:!accessing!public! !

