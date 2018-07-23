"Filed out from Dolphin Smalltalk 7"!

AIDASimpleAspectComponent subclass: #AIDACheckBox
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDACheckBox guid: (GUID fromString: '{4195473b-ddd4-4de4-af7a-1fbe5d032b2e}')!
AIDACheckBox comment: ''!
!AIDACheckBox categoriesForClass!Unclassified! !
!AIDACheckBox methodsFor!

addAIDAElementTo: aWebElement value: anObject

	aidaComponent := self webClass new aspect: selector for: self object.

	aidaComponent checked: anObject.
	self setAspects.
	self setDefaultBackground.
	aWebElement add: aidaComponent.
	aidaComponent checked: anObject.! !
!AIDACheckBox categoriesFor: #addAIDAElementTo:value:!public! !

