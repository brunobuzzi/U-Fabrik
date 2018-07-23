"Filed out from Dolphin Smalltalk 7"!

Error subclass: #SSWDBParseError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBParseError guid: (GUID fromString: '{b65cbbf0-3145-4c8f-aec4-d48637941996}')!
SSWDBParseError comment: ''!
!SSWDBParseError categoriesForClass!Kernel-Exception Handling! !
!SSWDBParseError methodsFor!

isFinalFieldError

	^self tag = #finalField!

isResumable

	^self isFinalFieldError! !
!SSWDBParseError categoriesFor: #isFinalFieldError!public!testing! !
!SSWDBParseError categoriesFor: #isResumable!public!testing! !

