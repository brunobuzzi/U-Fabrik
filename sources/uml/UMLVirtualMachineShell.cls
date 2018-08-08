"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLVirtualMachineShell
	instanceVariableNames: 'virtualMachineBrowser'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineShell guid: (GUID fromString: '{66cb2916-e436-43e6-a67e-a46c84d6a217}')!
UMLVirtualMachineShell comment: ''!
!UMLVirtualMachineShell categoriesForClass!Unclassified! !
!UMLVirtualMachineShell methodsFor!

createComponents

	super createComponents.

	virtualMachineBrowser := self add: UMLVirtualMachineBrowser new name: 'virtualMachineBrowser'.!

hasSelectedClass
	^virtualMachineBrowser hasSelectedClass!

hasSelectedImplementation
	^virtualMachineBrowser hasSelectedImplementation!

isClassSideSelected
	^virtualMachineBrowser isClassSideSelected!

mainComposite

	^virtualMachineBrowser!

onClassListChanged
	^virtualMachineBrowser onClassListChanged!

onUMLModelClassChanged
	^virtualMachineBrowser onUMLModelClassChanged!

onViewOpened

	super onViewOpened.

	view menuBar: virtualMachineBrowser menuBar!

selectedClass
	^virtualMachineBrowser selectedClass!

selectedClassIsMetaclass
	^virtualMachineBrowser selectedClassIsMetaclass!

selectImplementation: anUMLImplementation 

	^virtualMachineBrowser selectImplementation: anUMLImplementation! !
!UMLVirtualMachineShell categoriesFor: #createComponents!public! !
!UMLVirtualMachineShell categoriesFor: #hasSelectedClass!public! !
!UMLVirtualMachineShell categoriesFor: #hasSelectedImplementation!public! !
!UMLVirtualMachineShell categoriesFor: #isClassSideSelected!public! !
!UMLVirtualMachineShell categoriesFor: #mainComposite!public! !
!UMLVirtualMachineShell categoriesFor: #onClassListChanged!public! !
!UMLVirtualMachineShell categoriesFor: #onUMLModelClassChanged!public! !
!UMLVirtualMachineShell categoriesFor: #onViewOpened!public! !
!UMLVirtualMachineShell categoriesFor: #selectedClass!public! !
!UMLVirtualMachineShell categoriesFor: #selectedClassIsMetaclass!public! !
!UMLVirtualMachineShell categoriesFor: #selectImplementation:!public! !

!UMLVirtualMachineShell class methodsFor!

defaultModel

	^UMLVirtualMachine default!

icon

	^UMLVirtualMachine icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ShellView) 34 27 nil nil 8 #(13565952 65536) 416 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 551 nil nil nil 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 ##(Smalltalk.ReferenceView) 34 14 nil 416 34 2 8 1140850688 131073 544 nil 466 8 4278190080 nil 7 nil nil nil 544 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.Toolbar) #resource_UML_Common nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 786 1469 51 544 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 222 2 0 0 25 0 0 0] 8 #() 786 193 193 nil 27 nil nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 416 34 2 8 1140850688 131073 912 nil 466 624 nil 7 nil nil nil 912 642 ##(Smalltalk.UMLVirtualMachineBrowser) #resource_Default_view nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 51 786 1469 793 912 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 222 2 0 0 165 1 0 0] 880 896 nil 27 170 192 34 2 912 8 'virtualMachineBrowser' nil 461638 4 ##(Smalltalk.MenuBar) nil true 34 2 265030 4 ##(Smalltalk.Menu) nil true 34 7 984134 2 ##(Smalltalk.CommandMenuItem) 1 1180998 4 ##(Smalltalk.CommandDescription) #fileOutVirtualMachine 8 'File out Virtual Machine' 1 1 nil nil nil 1298 1 1330 #fileInVirtualMachine 8 'File in Virtual Machine' 1 1 nil nil nil 983366 1 ##(Smalltalk.DividerMenuItem) 4097 1298 1 1330 #fileOutVirtualMachineAsXml 8 'File out Virtual Machine code as XML' 1 1 nil nil nil 1298 1 1330 #fileInVirtualMachineFromXml 8 'File in Virtual Machine code from XML' 1 1 nil nil nil 1426 4097 1298 1 1330 #exit 8 'Exit' 1 1 nil nil nil 8 'File' nil 134217729 nil nil 26163 nil nil 1250 nil true 34 6 1298 1 1330 #searchClassNamed 8 'Class Named' 1 1 nil nil nil 1426 4097 1298 1 1330 #searchImplementationWithDescription 8 'Implementation with Description' 1 1 nil nil nil 1426 4097 1298 1 1330 #searchInstVarNamed 8 'Inst Var Named' 1 1 nil nil nil 1298 1 1330 #searchInstVarWithOriginalType 8 'Inst Var with Original Type' 1 1 nil nil nil 8 'Search' nil 134217729 nil nil 26173 nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil nil 1 nil nil nil nil 1 nil nil 674 138 144 34 3 738 #createAt:extent: 34 2 786 2719 21 786 1501 961 416 738 #text: 34 1 8 'UML Virtual Machine Browser' 416 738 #updateMenuBar 880 416 834 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 61 8 0 0 234 1 0 0] 34 2 544 912 896 nil 27 )! !
!UMLVirtualMachineShell class categoriesFor: #defaultModel!public! !
!UMLVirtualMachineShell class categoriesFor: #icon!public! !
!UMLVirtualMachineShell class categoriesFor: #resource_Default_view!public!resources-views! !

