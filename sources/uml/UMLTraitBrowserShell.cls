"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLTraitBrowserShell
	instanceVariableNames: 'traitBrowserComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTraitBrowserShell guid: (GUID fromString: '{c5ec27aa-d973-4217-8115-224553090fab}')!
UMLTraitBrowserShell comment: ''!
!UMLTraitBrowserShell categoriesForClass!MVP-Resources-UFabrik! !
!UMLTraitBrowserShell methodsFor!

createComponents

	super createComponents.

	traitBrowserComposite := self add: UMLTraitBrowserComposite new name: 'traitBrowserComposite'.!

mainComposite

	^traitBrowserComposite!

model: anUMLVirtualMachine

	super model: anUMLVirtualMachine.

	traitBrowserComposite model: anUMLVirtualMachine.!

selectedClass
	^traitBrowserComposite selectedClass!

selectTrait: anUMLTrait
 
	^traitBrowserComposite selectTrait: anUMLTrait! !
!UMLTraitBrowserShell categoriesFor: #createComponents!public! !
!UMLTraitBrowserShell categoriesFor: #mainComposite!public! !
!UMLTraitBrowserShell categoriesFor: #model:!public! !
!UMLTraitBrowserShell categoriesFor: #selectedClass!public! !
!UMLTraitBrowserShell categoriesFor: #selectTrait:!public! !

!UMLTraitBrowserShell class methodsFor!

defaultModel

	^UMLVirtualMachine default!

icon

	^UMLTrait icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 560 0 721158 ##(Smalltalk.SystemColor)  31 0 7 0 0 0 560 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 720 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 882 1659 51 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 61 3 0 0 25 0 0 0] 98 1 410 8 ##(Smalltalk.ReferenceView)  98 14 0 560 98 2 8 1140850688 131073 992 0 482 8 4278190080 0 7 0 0 0 992 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_UML_Common 0 754 202 208 98 1 818 848 98 2 882 1 1 882 1659 51 992 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 61 3 0 0 25 0 0 0] 720 882 193 193 0 27 1312 0 27 0 0 0 410 576 98 15 0 416 98 2 8 1140850688 131073 1328 0 642 31 0 7 0 0 0 1328 674 234 240 720 32 234 256 98 2 410 1008 98 14 0 1328 98 2 8 1140850688 131073 1472 0 482 1088 0 7 0 0 0 1472 1106 8 ##(Smalltalk.UMLTraitBrowserComposite)  8 #resource_Default_view 0 754 202 208 98 1 818 848 98 2 882 1 1 882 1659 1069 1472 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 61 3 0 0 22 2 0 0] 720 1312 0 27 8 'traitBrowserComposite' 0 754 202 208 98 1 818 848 98 2 882 1 51 882 1659 1069 1328 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 61 3 0 0 47 2 0 0] 98 1 1472 1312 0 27 234 256 720 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 1 265030 4 ##(Smalltalk.Menu)  0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 37539 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 754 202 208 98 3 818 848 98 2 882 2879 21 882 1691 1231 416 818 8 #text: 98 1 8 'TRAIT Browser' 416 818 8 #updateMenuBar 720 416 930 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 236 8 0 0 113 2 0 0] 98 2 560 1328 1312 0 27 )! !
!UMLTraitBrowserShell class categoriesFor: #defaultModel!public! !
!UMLTraitBrowserShell class categoriesFor: #icon!public! !
!UMLTraitBrowserShell class categoriesFor: #resource_Default_view!public!resources-views! !

