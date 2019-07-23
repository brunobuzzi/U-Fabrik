"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLOrbeonFormDefinitionConfigurationComposite
	instanceVariableNames: 'isGemStoneFormPresenter applicationNamePresenter formNamePresenter fieldsPerColumnPresenter attributesPresenter'
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
	fieldsPerColumnPresenter := self add: NumberPresenter new name: 'fieldsPerColumn'.
	attributesPresenter := self add: ListPresenter new name: 'attributes'.!

generateOrbeonForm

	model 
		applicationName: applicationNamePresenter value;
		formName: formNamePresenter value;
		isGemStoneForm: isGemStoneFormPresenter value;
		fieldsPerColumn: fieldsPerColumnPresenter value.

	model generateXMLDocument.

	(XmlPad showOn: model xmlString) reformatXml!

model: anOrbeonFormGeneratorConfiguration

	super model: anOrbeonFormGeneratorConfiguration.

	isGemStoneFormPresenter model: (anOrbeonFormGeneratorConfiguration aspectValue: #isGemStoneForm).
	applicationNamePresenter model: (anOrbeonFormGeneratorConfiguration aspectValue: #applicationName).
	formNamePresenter model: (anOrbeonFormGeneratorConfiguration aspectValue: #formName).
	fieldsPerColumnPresenter model: (anOrbeonFormGeneratorConfiguration aspectValue: #fieldsPerColumn).

	attributesPresenter model: (ListModel on: anOrbeonFormGeneratorConfiguration basicVariables).
	!

setSection
	| sectionName oldSection |

	attributesPresenter hasSelection ifFalse: [^self].

	oldSection := attributesPresenter selection sectionName.

	sectionName := Prompter on: oldSection asValue prompt: 'Section Name' caption: 'Set Section for Selected Attribute'.

	attributesPresenter selection sectionName: sectionName.

	model configuration add: attributesPresenter selection to: sectionName removeFrom: oldSection! !
!UMLOrbeonFormDefinitionConfigurationComposite categoriesFor: #createComponents!public! !
!UMLOrbeonFormDefinitionConfigurationComposite categoriesFor: #generateOrbeonForm!public! !
!UMLOrbeonFormDefinitionConfigurationComposite categoriesFor: #model:!public! !
!UMLOrbeonFormDefinitionConfigurationComposite categoriesFor: #setSection!public! !

!UMLOrbeonFormDefinitionConfigurationComposite class methodsFor!

defaultModel

	^OrbeonFormGeneratorConfiguration new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil 721158 ##(Smalltalk.SystemColor) 31 nil 5 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() true 170 192 560 nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 2 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1933 21 706 1201 801 416 658 #text: 34 1 8 'Configuration' 416 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 198 3 0 0 10 0 0 0 30 6 0 0 154 1 0 0] 34 3 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 864 nil nil nil 5 nil nil nil 864 656390 ##(Smalltalk.GridLayout) 9 3 1 1 170 192 560 nil 594 138 144 34 1 658 #createAt:extent: 34 2 706 1 1 706 1201 395 864 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 197 0 0 0] 34 4 410 ##(Smalltalk.ContainerView) 34 15 nil 864 34 2 8 1140850688 131073 1136 nil nil nil 5 nil nil nil 1136 nil 170 192 34 2 410 ##(Smalltalk.TextEdit) 34 16 nil 1136 34 2 8 1140916352 1025 1232 nil 786694 ##(Smalltalk.ColorDefault) 8 4278190080 nil 5 nil nil nil 1232 nil 8 1918016171 852486 ##(Smalltalk.NullConverter) nil nil 1 594 138 144 34 1 658 #createAt:extent: 34 2 706 261 23 706 441 51 1232 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 130 0 0 0 11 0 0 0 94 1 0 0 36 0 0 0] 8 #() 706 193 193 nil 27 8 'applicationName' nil 594 138 144 34 1 658 #createAt:extent: 34 2 706 1 1 706 1201 99 1136 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 49 0 0 0] 34 2 410 ##(Smalltalk.StaticText) 34 16 nil 1136 34 2 8 1140850944 65 1744 nil nil nil 5 nil nil nil 1744 nil 8 1917791570 1362 nil nil nil 594 138 144 34 2 658 #createAt:extent: 34 2 706 17 23 706 241 39 1744 658 #text: 34 1 8 'Application Name' 1744 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 8 0 0 0 11 0 0 0 128 0 0 0 30 0 0 0] 8 #() 1552 nil 27 1232 1552 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 864 34 2 8 1140850688 131073 2048 nil nil nil 5 nil nil nil 2048 nil 170 192 34 2 410 ##(Smalltalk.TextEdit) 34 16 nil 2048 34 2 8 1140916352 1025 2144 nil 1312 nil 5 nil nil nil 2144 nil 8 1918016171 1362 nil nil 1 594 138 144 34 1 658 #createAt:extent: 34 2 706 261 21 706 441 51 2144 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 130 0 0 0 10 0 0 0 94 1 0 0 35 0 0 0] 8 #() 1552 nil 27 8 'formName' nil 594 138 144 34 1 658 #createAt:extent: 34 2 706 1 99 706 1201 101 2048 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 49 0 0 0 88 2 0 0 99 0 0 0] 34 2 410 ##(Smalltalk.StaticText) 34 16 nil 2048 34 2 8 1140850944 65 2576 nil nil nil 5 nil nil nil 2576 nil 8 1917791570 1362 nil nil nil 594 138 144 34 2 658 #createAt:extent: 34 2 706 17 19 706 241 167 2576 658 #text: 34 1 8 'Form Name' 2576 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 8 0 0 0 9 0 0 0 128 0 0 0 92 0 0 0] 8 #() 1552 nil 27 2144 1552 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 864 34 2 8 1140850688 131073 2880 nil nil nil 5 nil nil nil 2880 nil 170 192 34 2 410 ##(Smalltalk.TextEdit) 34 16 nil 2880 34 2 8 1140916224 1025 2976 nil 1312 nil 5 nil nil nil 2976 nil 8 1918016171 787206 ##(Smalltalk.NumberToText) nil 8 '' nil 1 594 138 144 34 1 658 #createAt:extent: 34 2 706 261 21 706 441 51 2976 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 130 0 0 0 10 0 0 0 94 1 0 0 35 0 0 0] 8 #() 1552 nil 27 8 'fieldsPerColumn' nil 594 138 144 34 1 658 #createAt:extent: 34 2 706 1 199 706 1201 99 2880 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 99 0 0 0 88 2 0 0 148 0 0 0] 34 2 410 ##(Smalltalk.StaticText) 34 16 nil 2880 34 2 8 1140850944 65 3440 nil nil nil 5 nil nil nil 3440 nil 8 1917791570 1362 nil nil nil 594 138 144 34 2 658 #createAt:extent: 34 2 706 21 21 706 241 39 3440 658 #text: 34 1 8 'Fields per Column' 3440 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 130 0 0 0 29 0 0 0] 8 #() 1552 nil 27 2976 1552 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 864 34 2 8 1140850688 131073 3744 nil nil nil 5 nil nil nil 3744 nil 170 192 34 2 410 ##(Smalltalk.CheckBox) 34 16 nil 3744 34 2 8 1409363203 1 3840 721990 2 ##(Smalltalk.ValueHolder) nil false 1114118 ##(Smalltalk.NeverSearchPolicy) false nil nil 5 nil nil nil 3840 nil 8 1917878668 1362 nil nil nil 594 138 144 34 2 658 #createAt:extent: 34 2 706 25 25 706 501 43 3840 658 #text: 34 1 8 'Is GemStone/S Form' 3840 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 12 0 0 0 12 0 0 0 6 1 0 0 33 0 0 0] 8 #() 1552 nil 27 8 'isGemStoneForm' nil 594 138 144 34 1 658 #createAt:extent: 34 2 706 1 297 706 1201 99 3744 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 148 0 0 0 88 2 0 0 197 0 0 0] 34 1 3840 1552 nil 27 1552 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 416 34 2 8 1140850688 1 4384 nil 1312 nil 517 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 4384 nil 1 #left nil nil nil 706 1 1 706 9 9 nil 4480 nil 594 138 144 34 1 658 #createAt:extent: 34 2 706 1 395 706 1201 11 4384 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 197 0 0 0 88 2 0 0 202 0 0 0] 8 #() 1552 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 4672 nil nil nil 5 nil nil nil 4672 788230 ##(Smalltalk.BorderLayout) 1 1 nil 410 ##(Smalltalk.ContainerView) 34 15 nil 4672 34 2 8 1140850688 131073 4768 nil nil nil 5 nil nil nil 4768 nil 170 192 560 nil 594 138 144 34 1 658 #createAt:extent: 34 2 706 1 317 706 1201 81 4768 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 158 0 0 0 88 2 0 0 198 0 0 0] 34 1 410 ##(Smalltalk.PushButton) 34 20 nil 4768 34 2 8 1140924416 1 5008 nil nil nil 5 nil nil nil 5008 nil 8 1917878668 1180998 4 ##(Smalltalk.CommandDescription) #generateOrbeonForm 8 'Generate Orbeon Form' 1 1 nil nil false nil nil nil 594 138 144 34 3 658 #createAt:extent: 34 2 706 841 21 706 321 51 5008 658 #isEnabled: 8 #(false) 5008 658 #text: 34 1 8 'Generate Orbeon Form' 5008 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 164 1 0 0 10 0 0 0 68 2 0 0 35 0 0 0] 8 #() 1552 nil 29 1552 nil 27 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 4672 34 2 8 1140850688 131073 5376 nil nil nil 5 nil nil nil 5376 514 170 176 560 false 170 192 34 2 410 ##(Smalltalk.ReferenceView) 34 14 nil 5376 34 2 8 1140850688 131073 5504 nil 1312 nil 5 nil nil nil 5504 1180230 1 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.ListPresenter) #resource_UMLAttributes_for_Orbeon_view nil 594 138 144 34 1 658 #createAt:extent: 34 2 706 1 1 706 1201 317 5504 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 158 0 0 0] 560 1552 nil 27 8 'attributes' nil 594 138 144 34 1 658 #createAt:extent: 34 2 706 1 1 706 1201 317 5376 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 158 0 0 0] 34 1 5504 1552 nil 27 170 192 560 nil 594 138 144 34 1 658 #createAt:extent: 34 2 706 1 405 706 1201 397 4672 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 202 0 0 0 88 2 0 0 144 1 0 0] 34 2 5376 4768 1552 nil 27 1552 nil 27 )! !
!UMLOrbeonFormDefinitionConfigurationComposite class categoriesFor: #defaultModel!public! !
!UMLOrbeonFormDefinitionConfigurationComposite class categoriesFor: #resource_Default_view!public!resources-views! !

