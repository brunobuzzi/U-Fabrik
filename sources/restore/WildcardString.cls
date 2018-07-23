"Filed out from Dolphin Smalltalk 7"!

String variableByteSubclass: #WildcardString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WildcardString guid: (GUID fromString: '{6e79ebe9-9e7d-40c0-bda9-e0ef53a60d8d}')!
WildcardString isNullTerminated: true!
WildcardString comment: ''!
!WildcardString categoriesForClass!Collections-Text! !
!WildcardString methodsFor!

similarityComparator

	"Private - The receiver is just a String for which the similarity is defined by like:"

	^#matches:! !
!WildcardString categoriesFor: #similarityComparator!private! !

