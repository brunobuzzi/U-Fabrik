"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLVirtualMachineOptionsShell
	instanceVariableNames: 'vmOptionsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineOptionsShell guid: (GUID fromString: '{23985449-c39e-4d98-8a8d-739c61b5393c}')!
UMLVirtualMachineOptionsShell comment: ''!
!UMLVirtualMachineOptionsShell categoriesForClass!Unclassified! !
!UMLVirtualMachineOptionsShell methodsFor!

model: anUMLVirtualMachine

	super model: anUMLVirtualMachine.

	vmOptionsPresenter model: anUMLVirtualMachine! !
!UMLVirtualMachineOptionsShell categoriesFor: #model:!public! !

!UMLVirtualMachineOptionsShell class methodsFor!

defaultModel

	^UMLVirtualMachine default!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ShellView) 34 27 nil nil 8 #(13565952 65536) 416 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 39 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() false 170 192 560 nil nil nil nil nil 1 nil nil nil nil 1 nil nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 3 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 2719 21 706 591 631 416 658 #text: 34 1 8 'Virtual Machine Options' 416 658 #updateMenuBar 560 416 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 118 6 0 0 69 1 0 0] 34 1 410 ##(Smalltalk.ReferenceView) 34 14 nil 416 34 2 8 1140850688 131073 880 nil 466 8 4278190080 nil 7 nil nil nil 880 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.UMLVirtualMachineOptionsComposite) #resource_Default_view nil 594 138 144 34 1 658 #createAt:extent: 34 2 706 1 1 706 559 553 880 818 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 23 1 0 0 20 1 0 0] 560 706 193 193 nil 27 1152 nil 27 )! !
!UMLVirtualMachineOptionsShell class categoriesFor: #defaultModel!public! !
!UMLVirtualMachineOptionsShell class categoriesFor: #resource_Default_view!public!resources-views! !

