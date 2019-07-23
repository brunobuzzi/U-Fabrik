"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLOrbeonFormDefinitionConfigurationComposite
	instanceVariableNames: 'isGemStoneFormPresenter applicationNamePresenter formNamePresenter fieldsPerColumnPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLOrbeonFormDefinitionConfigurationComposite guid: (GUID fromString: '{8bf7aee3-e298-4721-b82a-cc6c81bab3b4}')!
UMLOrbeonFormDefinitionConfigurationComposite comment: ''!
!UMLOrbeonFormDefinitionConfigurationComposite categoriesForClass!Unclassified! !
!UMLOrbeonFormDefinitionConfigurationComposite methodsFor!

createComponents

	super createComponents.

	isGemStoneFormPresenter := self add: BooleanPresenter new name: 'isGemStoneForm'.
	applicationNamePresenter := self add: TextPresenter new name: 'applicationName'.
	formNamePresenter := self add: TextPresenter new name: 'formName'.
	fieldsPerColumnPresenter := self add: NumberPresenter new name: 'fieldsPerColumn'.!

model: anOrbeonFormGeneratorConfiguration

	super model: anOrbeonFormGeneratorConfiguration.

	isGemStoneFormPresenter model: (anOrbeonFormGeneratorConfiguration aspectValue: #isGemStoneForm).
	applicationNamePresenter model: (anOrbeonFormGeneratorConfiguration aspectValue: #applicationName).
	formNamePresenter model: (anOrbeonFormGeneratorConfiguration aspectValue: #formName).
	fieldsPerColumnPresenter model: (anOrbeonFormGeneratorConfiguration aspectValue: #fieldsPerColumn).

! !
!UMLOrbeonFormDefinitionConfigurationComposite categoriesFor: #createComponents!public! !
!UMLOrbeonFormDefinitionConfigurationComposite categoriesFor: #model:!public! !

!UMLOrbeonFormDefinitionConfigurationComposite class methodsFor!

defaultModel

	^OrbeonFormGeneratorConfiguration new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() true 170 192 528 nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 2 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 2719 21 674 701 701 416 626 #text: 34 1 8 'Configuration' 416 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 173 6 0 0 104 1 0 0] 34 3 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 832 nil nil nil 5 nil nil nil 832 656390 ##(Smalltalk.GridLayout) 9 3 1 1 170 192 528 nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 1 674 701 345 832 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 94 1 0 0 172 0 0 0] 34 4 410 ##(Smalltalk.ContainerView) 34 15 nil 832 34 2 8 1140850688 131073 1104 nil nil nil 5 nil nil nil 1104 nil 170 192 34 2 410 ##(Smalltalk.TextEdit) 34 16 nil 1104 34 2 8 1140916352 1025 1200 nil 786694 ##(Smalltalk.ColorDefault) 8 4278190080 nil 5 nil nil nil 1200 nil 8 1918016171 852486 ##(Smalltalk.NullConverter) nil nil 1 562 138 144 34 1 626 #createAt:extent: 34 2 674 231 23 674 441 51 1200 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 115 0 0 0 11 0 0 0 79 1 0 0 36 0 0 0] 8 #() 674 193 193 nil 27 8 'applicationName' nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 1 674 701 87 1104 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 94 1 0 0 43 0 0 0] 34 2 410 ##(Smalltalk.StaticText) 34 16 nil 1104 34 2 8 1140850944 65 1712 nil nil nil 5 nil nil nil 1712 nil 8 1917791570 1330 nil nil nil 562 138 144 34 2 626 #createAt:extent: 34 2 674 17 23 674 241 39 1712 626 #text: 34 1 8 'Application Name' 1712 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 8 0 0 0 11 0 0 0 128 0 0 0 30 0 0 0] 8 #() 1520 nil 27 1200 1520 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 832 34 2 8 1140850688 131073 2016 nil nil nil 5 nil nil nil 2016 nil 170 192 34 2 410 ##(Smalltalk.TextEdit) 34 16 nil 2016 34 2 8 1140916352 1025 2112 nil 1280 nil 5 nil nil nil 2112 nil 8 1918016171 1330 nil nil 1 562 138 144 34 1 626 #createAt:extent: 34 2 674 231 21 674 441 51 2112 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 115 0 0 0 10 0 0 0 79 1 0 0 35 0 0 0] 8 #() 1520 nil 27 8 'formName' nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 87 674 701 87 2016 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 43 0 0 0 94 1 0 0 86 0 0 0] 34 2 410 ##(Smalltalk.StaticText) 34 16 nil 2016 34 2 8 1140850944 65 2544 nil nil nil 5 nil nil nil 2544 nil 8 1917791570 1330 nil nil nil 562 138 144 34 2 626 #createAt:extent: 34 2 674 17 19 674 701 167 2544 626 #text: 34 1 8 'Form Name' 2544 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 8 0 0 0 9 0 0 0 102 1 0 0 92 0 0 0] 8 #() 1520 nil 27 2112 1520 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 832 34 2 8 1140850688 131073 2848 nil nil nil 5 nil nil nil 2848 nil 170 192 34 2 410 ##(Smalltalk.TextEdit) 34 16 nil 2848 34 2 8 1140916224 1025 2944 nil 1280 nil 5 nil nil nil 2944 nil 8 1918016171 787206 ##(Smalltalk.NumberToText) nil 8 '' nil 1 562 138 144 34 1 626 #createAt:extent: 34 2 674 231 21 674 441 51 2944 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 115 0 0 0 10 0 0 0 79 1 0 0 35 0 0 0] 8 #() 1520 nil 27 8 'fieldsPerColumn' nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 173 674 701 87 2848 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 86 0 0 0 94 1 0 0 129 0 0 0] 34 2 410 ##(Smalltalk.StaticText) 34 16 nil 2848 34 2 8 1140850944 65 3408 nil nil nil 5 nil nil nil 3408 nil 8 1917791570 1330 nil nil nil 562 138 144 34 2 626 #createAt:extent: 34 2 674 21 21 674 241 39 3408 626 #text: 34 1 8 'Fields per Column' 3408 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 130 0 0 0 29 0 0 0] 8 #() 1520 nil 27 2944 1520 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 832 34 2 8 1140850688 131073 3712 nil nil nil 5 nil nil nil 3712 nil 170 192 34 2 410 ##(Smalltalk.CheckBox) 34 16 nil 3712 34 2 8 1409363203 1 3808 721990 2 ##(Smalltalk.ValueHolder) nil false 1114118 ##(Smalltalk.NeverSearchPolicy) true nil nil 5 nil nil nil 3808 nil 8 1917878668 1330 nil nil nil 562 138 144 34 2 626 #createAt:extent: 34 2 674 25 25 674 501 43 3808 626 #text: 34 1 8 'Is GemStone/S Form' 3808 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 12 0 0 0 12 0 0 0 6 1 0 0 33 0 0 0] 8 #() 1520 nil 27 8 'isGemStoneForm' nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 259 674 701 87 3712 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 129 0 0 0 94 1 0 0 172 0 0 0] 34 1 3808 1520 nil 27 1520 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 416 34 2 8 1140850688 1 4352 nil 1280 nil 517 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 4352 nil 1 #left nil nil nil 674 1 1 674 9 9 nil 4448 nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 345 674 701 11 4352 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 172 0 0 0 94 1 0 0 177 0 0 0] 8 #() 1520 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 4640 nil nil nil 5 nil nil nil 4640 nil 170 192 528 nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 355 674 701 347 4640 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 177 0 0 0 94 1 0 0 94 1 0 0] 8 #() 1520 nil 27 1520 nil 27 )! !
!UMLOrbeonFormDefinitionConfigurationComposite class categoriesFor: #defaultModel!public! !
!UMLOrbeonFormDefinitionConfigurationComposite class categoriesFor: #resource_Default_view!public!resources-views! !

