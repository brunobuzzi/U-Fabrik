"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLVirtualMachineOptionsComposite
	instanceVariableNames: 'isDeploymentPresenter isInstanceBehaviorEnabledPresenter isReEntrantBlockEnabledPresenter infiniteLoopThresholdPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineOptionsComposite guid: (GUID fromString: '{9c9e5979-b334-49fa-b360-18fa0f28b4ed}')!
UMLVirtualMachineOptionsComposite comment: ''!
!UMLVirtualMachineOptionsComposite categoriesForClass!Unclassified! !
!UMLVirtualMachineOptionsComposite methodsFor!

closeWindow

	parentPresenter view destroy!

createComponents

	super createComponents.

	isDeploymentPresenter := self add: BooleanPresenter new name: 'isDeployment'. 
	isInstanceBehaviorEnabledPresenter := self add: BooleanPresenter new name: 'isInstanceBehaviorEnabled'. 
	isReEntrantBlockEnabledPresenter := self add: BooleanPresenter new name: 'isReEntrantBlockEnabled'. 
	infiniteLoopThresholdPresenter := self add: NumberPresenter new name: 'infiniteLoopThreshold'. !

model: anUMLVirtualMachine

	super model: anUMLVirtualMachine.

	isDeploymentPresenter model: (anUMLVirtualMachine aspectValue: #isDeployment). 
	isInstanceBehaviorEnabledPresenter model: (anUMLVirtualMachine aspectValue: #isInstanceBehaviorAvailable). 
	isReEntrantBlockEnabledPresenter model: (anUMLVirtualMachine aspectValue: #reEntrantBlocksIsEnabled). 
	infiniteLoopThresholdPresenter model: (anUMLVirtualMachine aspectValue: #infiniteLoopThreshold). ! !
!UMLVirtualMachineOptionsComposite categoriesFor: #closeWindow!public! !
!UMLVirtualMachineOptionsComposite categoriesFor: #createComponents!public! !
!UMLVirtualMachineOptionsComposite categoriesFor: #model:!public! !

!UMLVirtualMachineOptionsComposite class methodsFor!

defaultModel

	^UMLVirtualMachine default!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil 721158 ##(Smalltalk.SystemColor) 31 328198 ##(Smalltalk.Point) 591 571 5 nil nil nil 416 788230 ##(Smalltalk.BorderLayout) 1 1 nil 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 576 nil nil nil 5 nil nil nil 576 nil 170 192 8 #() nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 514 1 471 514 571 101 576 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 235 0 0 0 29 1 0 0 29 1 0 0] 34 2 410 ##(Smalltalk.PushButton) 34 20 nil 576 34 2 8 1140924416 1 880 nil nil nil 5 nil nil nil 880 nil 8 1911259532 1180998 4 ##(Smalltalk.CommandDescription) #closeWindow 8 'Close' 1 1 nil nil false nil nil nil 674 138 144 34 3 738 #createAt:extent: 34 2 514 311 21 514 221 51 880 738 #isEnabled: 8 #(false) 880 738 #text: 34 1 8 'Close' 880 818 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 155 0 0 0 10 0 0 0 9 1 0 0 35 0 0 0] 8 #() 514 193 193 nil 29 410 ##(Smalltalk.PushButton) 34 20 nil 576 34 2 8 1140924416 1 1264 nil nil nil 5 nil nil nil 1264 nil 8 1911259532 962 #defineAttributeTypeMapping 8 'Type Mapping' 1 1 nil nil false nil nil nil 674 138 144 34 3 738 #createAt:extent: 34 2 514 21 21 514 221 51 1264 738 #isEnabled: 8 #(false) 1264 738 #text: 34 1 8 'Type Mapping' 1264 818 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 120 0 0 0 35 0 0 0] 8 #() 1248 nil 29 1248 nil 27 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 1616 nil nil nil 5 nil nil nil 1616 nil 170 192 34 8 410 ##(Smalltalk.CheckBox) 34 16 nil 1616 34 2 8 1409363203 1 1712 721990 2 ##(Smalltalk.ValueHolder) nil nil 1114118 ##(Smalltalk.NeverSearchPolicy) false nil nil 5 nil nil nil 1712 nil 8 1911259532 852486 ##(Smalltalk.NullConverter) nil nil nil 674 138 144 34 2 738 #createAt:extent: 34 2 514 51 91 514 227 43 1712 738 #text: 34 1 8 'Is Deployment' 1712 818 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 45 0 0 0 138 0 0 0 66 0 0 0] 8 #() 1248 nil 27 8 'isDeployment' 410 ##(Smalltalk.CheckBox) 34 16 nil 1616 34 2 8 1409363203 1 2112 1778 nil nil 1824 false nil nil 5 nil nil nil 2112 nil 8 1911259532 1858 nil nil nil 674 138 144 34 2 738 #createAt:extent: 34 2 514 51 251 514 401 41 2112 738 #text: 34 1 8 'Is Re-entrant Blocks Enabled' 2112 818 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 125 0 0 0 225 0 0 0 145 0 0 0] 8 #() 1248 nil 27 8 'isReEntrantBlockEnabled' 410 ##(Smalltalk.TextEdit) 34 16 nil 1616 34 2 8 1140924416 1025 2448 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 nil nil nil 2448 nil 8 1911397035 852742 ##(Smalltalk.IntegerToText) nil 8 '' nil 1 674 138 144 34 1 738 #createAt:extent: 34 2 514 51 361 514 231 51 2448 818 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 180 0 0 0 140 0 0 0 205 0 0 0] 8 #() 1248 nil 27 8 'infiniteLoopThreshold' 410 ##(Smalltalk.CheckBox) 34 16 nil 1616 34 2 8 1409363203 1 2800 1778 nil nil 1824 false nil nil 5 nil nil nil 2800 nil 8 1911259532 1858 nil nil nil 674 138 144 34 2 738 #createAt:extent: 34 2 514 51 171 514 391 41 2800 738 #text: 34 1 8 'Is Instance Behavior Enabled' 2800 818 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 85 0 0 0 220 0 0 0 105 0 0 0] 8 #() 1248 nil 27 8 'isInstanceBehaviorEnabled' nil 674 138 144 34 1 738 #createAt:extent: 34 2 514 1 1 514 571 471 1616 818 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 29 1 0 0 235 0 0 0] 34 6 1712 2800 2112 410 ##(Smalltalk.StaticText) 34 16 nil 1616 34 2 8 1140850944 65 3296 nil nil nil 5 nil nil nil 3296 nil 8 1911172434 1858 nil nil nil 674 138 144 34 2 738 #createAt:extent: 34 2 514 51 321 514 321 41 3296 738 #text: 34 1 8 'Infinite Loop Threshold
' 3296 818 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 160 0 0 0 185 0 0 0 180 0 0 0] 8 #() 1248 nil 27 2448 410 ##(Smalltalk.GroupBox) 34 14 nil 1616 34 2 8 1140850695 65 3600 nil 2514 8 4278190080 nil 5 nil nil nil 3600 nil 8 1911259532 674 138 144 34 2 738 #createAt:extent: 34 2 514 21 21 514 521 421 3600 738 #text: 34 1 8 'Virtual Machine Options' 3600 818 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 14 1 0 0 220 0 0 0] 8 #() 1248 nil 27 1248 nil 27 170 192 656 nil 674 138 144 34 1 738 #createAt:extent: 34 2 514 2719 21 514 571 571 416 818 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 108 6 0 0 39 1 0 0] 34 2 1616 576 1248 nil 27 )! !
!UMLVirtualMachineOptionsComposite class categoriesFor: #defaultModel!public! !
!UMLVirtualMachineOptionsComposite class categoriesFor: #resource_Default_view!public!resources-views! !

