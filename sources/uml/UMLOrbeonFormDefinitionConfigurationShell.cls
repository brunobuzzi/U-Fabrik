"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLOrbeonFormDefinitionConfigurationShell
	instanceVariableNames: 'configurationComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLOrbeonFormDefinitionConfigurationShell guid: (GUID fromString: '{9742c4dc-4a51-48ac-91c3-a0d1c038ad8a}')!
UMLOrbeonFormDefinitionConfigurationShell comment: ''!
!UMLOrbeonFormDefinitionConfigurationShell categoriesForClass!Unclassified! !
!UMLOrbeonFormDefinitionConfigurationShell methodsFor!

createComponents

	super createComponents.

	configurationComposite := self add: UMLOrbeonFormDefinitionConfigurationComposite new name: 'configurationComposite'.!

generateOrbeonForm

	^configurationComposite generateOrbeonForm!

model: anOrbeonFormGeneratorConfiguration

	super model: anOrbeonFormGeneratorConfiguration.

	configurationComposite model: anOrbeonFormGeneratorConfiguration.! !
!UMLOrbeonFormDefinitionConfigurationShell categoriesFor: #createComponents!public! !
!UMLOrbeonFormDefinitionConfigurationShell categoriesFor: #generateOrbeonForm!public! !
!UMLOrbeonFormDefinitionConfigurationShell categoriesFor: #model:!public! !

!UMLOrbeonFormDefinitionConfigurationShell class methodsFor!

defaultModel

	^OrbeonFormGeneratorConfiguration new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ShellView) 34 27 nil nil 8 #(13565952 65536) 416 nil 786694 ##(Smalltalk.ColorDefault) 8 4278190080 nil 37 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() false 170 192 34 2 410 ##(Smalltalk.ReferenceView) 34 14 nil 416 34 2 8 1140850688 131073 608 nil 480 nil 7 nil nil nil 608 1180230 1 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.UMLOrbeonFormDefinitionConfigurationComposite) #resource_Default_view nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 818 769 713 608 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 128 1 0 0 100 1 0 0] 560 818 193 193 nil 27 8 'comfigurationComposite' nil nil nil nil nil 1 nil nil nil nil 1 nil nil 706 138 144 34 2 770 #createAt:extent: 34 2 818 3059 21 818 801 791 416 770 #updateMenuBar 560 416 866 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 249 5 0 0 10 0 0 0 137 7 0 0 149 1 0 0] 34 1 608 912 nil 27 )! !
!UMLOrbeonFormDefinitionConfigurationShell class categoriesFor: #defaultModel!public! !
!UMLOrbeonFormDefinitionConfigurationShell class categoriesFor: #resource_Default_view!public!resources-views! !

