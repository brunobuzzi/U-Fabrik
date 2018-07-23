"Filed out from Dolphin Smalltalk 7"!

SSWAccessor subclass: #SSWDBPrivateAccessor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBPrivateAccessor guid: (GUID fromString: '{266e4dc2-398e-11d5-b1df-444553540000}')!
SSWDBPrivateAccessor comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBPrivateAccessor categoriesForClass!Unclassified! !
!SSWDBPrivateAccessor methodsFor!

access: aSymbol in: aClass

	"19/8/2000
	
	Do nothing - the receiver is hard-wired to access a private aspect of an object"
	
	^self !

accesses: aSymbol

	"14/8/2000
	
	Check against the specialSymbol"
	
	^aSymbol == self specialSymbol!

name

	"29/4/2001

	Use the specialSymbol for this"

	^self specialSymbol!

nameInDB

	"19/8/2001

	Return the name of the receiver as used for the basis of its (field) name in the database.
	Default - the specialSymbol (same as name).
	Classes with other requirements may override"

	^self specialSymbol!

specialSymbol

	"29/4/2001

	Return a 'special' symbol denoting the private aspect 'accessed' by the receiver.
	This will usually be prefixed with an underscore to avoid confusion with inst vars"

	^self subclassResponsibility! !
!SSWDBPrivateAccessor categoriesFor: #access:in:!initializing!public! !
!SSWDBPrivateAccessor categoriesFor: #accesses:!public!testing! !
!SSWDBPrivateAccessor categoriesFor: #name!constants!public! !
!SSWDBPrivateAccessor categoriesFor: #nameInDB!constants!public! !
!SSWDBPrivateAccessor categoriesFor: #specialSymbol!constants!public! !

