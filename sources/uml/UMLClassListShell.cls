"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLClassListShell
	instanceVariableNames: 'classListComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLClassListShell guid: (GUID fromString: '{fd38d68f-9b03-4b2f-9878-ee7a789f773e}')!
UMLClassListShell comment: ''!
!UMLClassListShell categoriesForClass!MVP-Resources-UFabrik! !
!UMLClassListShell methodsFor!

createComponents
	super createComponents.
	classListComposite := self add: UMLClassDefinitionListComposite new name: 'classes'!

mainComposite

	^classListComposite!

model: aModel

	super model: aModel.

	classListComposite model: aModel! !
!UMLClassListShell categoriesFor: #createComponents!public! !
!UMLClassListShell categoriesFor: #mainComposite!public! !
!UMLClassListShell categoriesFor: #model:!public! !

!UMLClassListShell class methodsFor!

defaultModel

	^UMLVirtualMachine default getUMLClasses!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 560 0 482 8 4278190080 0 7 0 0 0 560 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_UML_Common 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 866 1759 51 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 111 3 0 0 25 0 0 0] 98 0 866 193 193 0 27 0 0 0 410 576 98 14 0 416 98 2 8 1140850688 131073 992 0 482 8 4278190080 0 7 0 0 0 992 674 8 ##(Smalltalk.UMLClassDefinitionListComposite)  8 #resource_Default_view 0 738 202 208 98 1 802 832 98 2 866 1 51 866 1759 1199 992 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 111 3 0 0 112 2 0 0] 960 976 0 27 234 256 98 2 992 8 'classes' 0 0 0 0 0 1 0 0 0 0 1 0 0 738 202 208 98 3 802 832 98 2 866 2879 21 866 1791 1321 416 802 8 #text: 98 1 8 'Class List Browser' 416 802 8 #updateMenuBar 960 416 914 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 30 9 0 0 158 2 0 0] 98 2 560 992 976 0 27 )! !
!UMLClassListShell class categoriesFor: #defaultModel!public! !
!UMLClassListShell class categoriesFor: #resource_Default_view!public!resources-views! !

