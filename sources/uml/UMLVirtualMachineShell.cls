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

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 560 0 482 8 4278190080 0 7 0 0 0 560 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_UML_Common 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 866 1469 51 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 222 2 0 0 25 0 0 0] 98 0 866 193 193 0 27 0 0 0 410 576 98 14 0 416 98 2 8 1140850688 131073 992 0 482 656 0 7 0 0 0 992 674 8 ##(Smalltalk.UMLVirtualMachineBrowser)  8 #resource_Default_view 0 738 202 208 98 1 802 832 98 2 866 1 51 866 1469 799 992 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 222 2 0 0 168 1 0 0] 960 976 0 27 234 256 98 2 992 8 'virtualMachineBrowser' 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 2 265030 4 ##(Smalltalk.Menu)  0 16 98 4 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #fileOutVirtualMachine 8 'File out Virtual Machine' 1 1 0 0 0 1410 1 1442 8 #fileInVirtualMachine 8 'File in Virtual Machine' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 1410 1 1442 8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 60471 0 0 1362 0 16 98 6 1410 1 1442 8 #searchClassNamed 8 'Class Named' 1 1 0 0 0 1570 4097 1410 1 1442 8 #searchImplementationWithDescription 8 'Implementation with Description' 1 1 0 0 0 1570 4097 1410 1 1442 8 #searchInstVarNamed 8 'Inst Var Named' 1 1 0 0 0 1410 1 1442 8 #searchInstVarWithOriginalType 8 'Inst Var with Original Type' 1 1 0 0 0 8 'Search' 0 134217729 0 0 60481 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 738 202 208 98 3 802 832 98 2 866 2879 21 866 1501 961 416 802 8 #text: 98 1 8 'UML Virtual Machine Browser' 416 802 8 #updateMenuBar 960 416 914 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 141 8 0 0 234 1 0 0] 98 2 560 992 976 0 27 )! !
!UMLVirtualMachineShell class categoriesFor: #defaultModel!public! !
!UMLVirtualMachineShell class categoriesFor: #icon!public! !
!UMLVirtualMachineShell class categoriesFor: #resource_Default_view!public!resources-views! !

