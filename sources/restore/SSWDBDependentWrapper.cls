"Filed out from Dolphin Smalltalk 7"!

SSWDBWrapper subclass: #SSWDBDependentWrapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBDependentWrapper guid: (GUID fromString: '{61531103-b0e9-11d5-b1e0-444553540000}')!
SSWDBDependentWrapper comment: ''!
!SSWDBDependentWrapper categoriesForClass!Unclassified! !
!SSWDBDependentWrapper methodsFor!

defineAs: aSymbol in: aDBTable

	"24/9/2001

	Define the wrapped object, making the resulting object dependent"
		
	^(self dependentObject defineAs: aSymbol in: aDBTable) 
		beDependent;
		yourself!

dependentObject

	"24/9/2001

	dependentObject stores the object for which the receiver represents a database-dependent variant.
	'dependent' in this sense means the object is dependent on another object for its existence in a DB"

	^self object! !
!SSWDBDependentWrapper categoriesFor: #defineAs:in:!defining!public! !
!SSWDBDependentWrapper categoriesFor: #dependentObject!accessing!public! !

