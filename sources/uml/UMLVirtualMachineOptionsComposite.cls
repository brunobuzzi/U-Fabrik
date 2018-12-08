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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil 721158 ##(Smalltalk.SystemColor) 31 328198 ##(Smalltalk.Point) 591 571 5 nil nil nil 416 nil 170 192 34 8 410 ##(Smalltalk.CheckBox) 34 16 nil 416 34 2 8 1409363203 1 576 721990 2 ##(Smalltalk.ValueHolder) nil nil 1114118 ##(Smalltalk.NeverSearchPolicy) false nil nil 5 nil nil nil 576 nil 8 1911259532 852486 ##(Smalltalk.NullConverter) nil nil nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 2 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 514 31 151 514 391 41 576 818 #text: 34 1 8 'Is Instance Behavior Enabled' 576 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 75 0 0 0 210 0 0 0 95 0 0 0] 8 #() 514 193 193 nil 27 8 'isInstanceBehaviorEnabled' 410 ##(Smalltalk.CheckBox) 34 16 nil 416 34 2 8 1409363203 1 1040 642 nil nil 688 false nil nil 5 nil nil nil 1040 nil 8 1911259532 722 nil nil nil 754 138 144 34 2 818 #createAt:extent: 34 2 514 31 271 514 401 41 1040 818 #text: 34 1 8 'Is Re-entrant Blocks is Enabled' 1040 946 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 135 0 0 0 215 0 0 0 155 0 0 0] 8 #() 1008 nil 27 8 'isReEntrantBlockEnabled' 410 ##(Smalltalk.CheckBox) 34 16 nil 416 34 2 8 1409363203 1 1376 642 nil nil 688 false nil nil 5 nil nil nil 1376 nil 8 1911259532 722 nil nil nil 754 138 144 34 2 818 #createAt:extent: 34 2 514 31 51 514 227 43 1376 818 #text: 34 1 8 'Is Deployment' 1376 946 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 25 0 0 0 128 0 0 0 46 0 0 0] 8 #() 1008 nil 27 8 'isDeployment' 410 ##(Smalltalk.TextEdit) 34 16 nil 416 34 2 8 1140924416 1025 1712 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 nil nil nil 1712 nil 8 1911397035 852742 ##(Smalltalk.IntegerToText) nil 8 '' nil 1 754 138 144 34 1 818 #createAt:extent: 34 2 514 31 401 514 231 51 1712 946 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 200 0 0 0 130 0 0 0 225 0 0 0] 8 #() 1008 nil 27 8 'infiniteLoopThreshold' nil 754 138 144 34 1 818 #createAt:extent: 34 2 514 2719 21 514 591 571 416 946 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 118 6 0 0 39 1 0 0] 34 5 1376 576 1040 410 ##(Smalltalk.StaticText) 34 16 nil 416 34 2 8 1140850944 65 2224 nil nil nil 5 nil nil nil 2224 nil 8 1911172434 722 nil nil nil 754 138 144 34 2 818 #createAt:extent: 34 2 514 31 361 514 321 41 2224 818 #text: 34 1 8 'Infinite Loop Threshold
' 2224 946 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 180 0 0 0 175 0 0 0 200 0 0 0] 8 #() 1008 nil 27 1712 1008 nil 27 )! !
!UMLVirtualMachineOptionsComposite class categoriesFor: #defaultModel!public! !
!UMLVirtualMachineOptionsComposite class categoriesFor: #resource_Default_view!public!resources-views! !

