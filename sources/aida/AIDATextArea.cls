"Filed out from Dolphin Smalltalk 7"!

AIDASimpleAspectComponent subclass: #AIDATextArea
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDATextArea guid: (GUID fromString: '{bdcaac06-3c24-4a59-92a0-e7768671c6da}')!
AIDATextArea comment: ''!
!AIDATextArea categoriesForClass!Unclassified! !
!AIDATextArea methodsFor!

addAIDAElementTo: aWebElement value: anObject

	aidaComponent := self webClass new aspect: selector for: self object.
	self setAspects.
	aidaComponent setValue: anObject.
	self setDefaultBackground.
	aWebElement add: aidaComponent!

setSize

	aidaComponent size: 1@1.!

webClass

	^WebTextArea! !
!AIDATextArea categoriesFor: #addAIDAElementTo:value:!public! !
!AIDATextArea categoriesFor: #setSize!public! !
!AIDATextArea categoriesFor: #webClass!public! !

