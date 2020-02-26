"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLWorkspaceShell
	instanceVariableNames: 'workspaceComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWorkspaceShell guid: (GUID fromString: '{1e507269-acef-40b9-8b51-cab1a13f0c83}')!
UMLWorkspaceShell comment: ''!
!UMLWorkspaceShell categoriesForClass!MVP-Resources-UFabrik! !
!UMLWorkspaceShell methodsFor!

createComponents

	super createComponents.

	workspaceComposite := self add: UMLBasicWorkspaceComposite new name: 'workspace'.!

hasSelectedClass
	^false!

mainComposite

	^workspaceComposite!

model: anUMLVirtualMachine

	super model: anUMLVirtualMachine.

	workspaceComposite model: anUMLVirtualMachine.!

onViewOpened

	super onViewOpened.

	view menuBar: workspaceComposite menuBar!

selectedObject
	^self defaultVirtualMachine nilObject!

setText: aString

	^workspaceComposite setText: aString! !
!UMLWorkspaceShell categoriesFor: #createComponents!public! !
!UMLWorkspaceShell categoriesFor: #hasSelectedClass!public! !
!UMLWorkspaceShell categoriesFor: #mainComposite!public! !
!UMLWorkspaceShell categoriesFor: #model:!public! !
!UMLWorkspaceShell categoriesFor: #onViewOpened!public! !
!UMLWorkspaceShell categoriesFor: #selectedObject!public! !
!UMLWorkspaceShell categoriesFor: #setText:!public! !

!UMLWorkspaceShell class methodsFor!

icon

	^UMLParsedImplementation icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  1301 721 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 656 0 482 8 4278190080 0 7 0 0 0 656 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLBasicWorkspaceComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 1 1 530 1269 605 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 122 2 0 0 46 1 0 0] 608 530 193 193 0 27 8 'workspace' 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 1 265030 4 ##(Smalltalk.Menu)  0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 18323 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 834 202 208 98 3 898 928 98 2 530 3199 21 530 1301 721 416 898 8 #text: 98 1 8 'Workspace of UML Scripts' 416 898 8 #updateMenuBar 608 416 994 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 201 8 0 0 114 1 0 0] 98 1 656 1040 0 27 )! !
!UMLWorkspaceShell class categoriesFor: #icon!public! !
!UMLWorkspaceShell class categoriesFor: #resource_Default_view!public!resources-views! !

