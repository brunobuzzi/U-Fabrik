"Filed out from Dolphin Smalltalk 7"!

AIDAWebObjectAspect subclass: #AIDASimpleAspectComponent
	instanceVariableNames: 'aidaComponent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDASimpleAspectComponent guid: (GUID fromString: '{1d26ac03-4181-48bc-b8ba-066af017dcfe}')!
AIDASimpleAspectComponent comment: ''!
!AIDASimpleAspectComponent categoriesForClass!Unclassified! !
!AIDASimpleAspectComponent methodsFor!

addAIDAElementTo: aWebElement value: anObject

	aidaComponent := self webClass new aspect: selector for: self object.
	self setAspects.
	aidaComponent setValue: anObject.
	self setDefaultBackground.
	aWebElement add: aidaComponent!

aidaComponent
	^aidaComponent!

aidaComponent: anObject
	aidaComponent := anObject!

setAspects

	self setSize.!

setDefaultBackground

	aidaComponent attributesAt: #style put: ('background: ', backgroundColor).!

setSize
!

webClass

	^self subclassResponsibility! !
!AIDASimpleAspectComponent categoriesFor: #addAIDAElementTo:value:!public! !
!AIDASimpleAspectComponent categoriesFor: #aidaComponent!accessing!private! !
!AIDASimpleAspectComponent categoriesFor: #aidaComponent:!accessing!private! !
!AIDASimpleAspectComponent categoriesFor: #setAspects!public! !
!AIDASimpleAspectComponent categoriesFor: #setDefaultBackground!public!web background! !
!AIDASimpleAspectComponent categoriesFor: #setSize!public! !
!AIDASimpleAspectComponent categoriesFor: #webClass!public! !

