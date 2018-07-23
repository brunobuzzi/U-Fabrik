"Filed out from Dolphin Smalltalk 7"!

AIDASimpleAspectComponent subclass: #AIDAText
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAText guid: (GUID fromString: '{3b59f745-dfba-4858-87a7-a3a401ebbe0f}')!
AIDAText comment: ''!
!AIDAText categoriesForClass!Unclassified! !
!AIDAText methodsFor!

addAIDAElementTo: aWebElement value: anObject

	aidaComponent := self webClass new aspect: selector for: self object.
	self setAspects.
	aidaComponent setValue: anObject.
	self setDefaultBackground.
	aWebElement add: aidaComponent!

setAspects

	super setAspects.

	aidaComponent attributesAt: #style put: 'border-style:inset;'.
	!

setSize

	aidaComponent size: 30.!

webClass

	^WebInputField! !
!AIDAText categoriesFor: #addAIDAElementTo:value:!public! !
!AIDAText categoriesFor: #setAspects!public! !
!AIDAText categoriesFor: #setSize!public! !
!AIDAText categoriesFor: #webClass!public! !

