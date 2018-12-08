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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 nil 170 192 34 8 410 ##(Smalltalk.CheckBox) 34 16 nil 416 34 2 8 1409363203 1 512 721990 2 ##(Smalltalk.ValueHolder) nil nil 1114118 ##(Smalltalk.NeverSearchPolicy) false nil nil 5 nil nil nil 512 nil 8 1911259532 852486 ##(Smalltalk.NullConverter) nil nil nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 2 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 31 151 802 391 41 512 754 #text: 34 1 8 'Is Instance Behavior Enabled' 512 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 75 0 0 0 210 0 0 0 95 0 0 0] 8 #() 802 193 193 nil 27 8 'isInstanceBehaviorEnabled' 410 ##(Smalltalk.CheckBox) 34 16 nil 416 34 2 8 1409363203 1 992 578 nil nil 624 false nil nil 5 nil nil nil 992 nil 8 1911259532 658 nil nil nil 690 138 144 34 2 754 #createAt:extent: 34 2 802 31 271 802 401 41 992 754 #text: 34 1 8 'Is Re-entrant Blocks is Enabled' 992 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 135 0 0 0 215 0 0 0 155 0 0 0] 8 #() 960 nil 27 8 'isReEntrantBlockEnabled' 410 ##(Smalltalk.TextEdit) 34 16 nil 416 34 2 8 1140924416 1025 1328 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 nil nil nil 1328 nil 8 1911397035 852742 ##(Smalltalk.IntegerToText) nil 8 '' nil 1 690 138 144 34 1 754 #createAt:extent: 34 2 802 31 401 802 231 51 1328 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 200 0 0 0 130 0 0 0 225 0 0 0] 8 #() 960 nil 27 8 'infiniteLoopThreshold' 410 ##(Smalltalk.CheckBox) 34 16 nil 416 34 2 8 1409363203 1 1680 578 nil nil 624 false nil nil 5 nil nil nil 1680 nil 8 1911259532 658 nil nil nil 690 138 144 34 2 754 #createAt:extent: 34 2 802 31 51 802 227 43 1680 754 #text: 34 1 8 'Is Deployment' 1680 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 25 0 0 0 128 0 0 0 46 0 0 0] 8 #() 960 nil 27 8 'isDeployment' nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 2719 21 802 741 871 416 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 193 6 0 0 189 1 0 0] 34 5 1680 512 992 410 ##(Smalltalk.StaticText) 34 16 nil 416 34 2 8 1140850944 65 2176 nil nil nil 5 nil nil nil 2176 nil 8 1911172434 658 nil nil nil 690 138 144 34 2 754 #createAt:extent: 34 2 802 31 361 802 321 41 2176 754 #text: 34 1 8 'Infinite Loop Threshold
' 2176 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 180 0 0 0 175 0 0 0 200 0 0 0] 8 #() 960 nil 27 1328 960 nil 27 )! !
!UMLVirtualMachineOptionsComposite class categoriesFor: #defaultModel!public! !
!UMLVirtualMachineOptionsComposite class categoriesFor: #resource_Default_view!public!resources-views! !

