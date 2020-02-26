"Filed out from Dolphin Smalltalk 7"!

UMLParametricObjectsShell subclass: #UMLModelGlobalsShell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModelGlobalsShell guid: (GUID fromString: '{4ed82049-7b91-4469-8b88-02495e12d3d3}')!
UMLModelGlobalsShell comment: ''!
!UMLModelGlobalsShell categoriesForClass!MVP-Resources-UFabrik! !
!UMLModelGlobalsShell methodsFor!

addToRepository: anUMLInstance 

	anUMLInstance storeAsGlobalObject.
	self onGlobalNameChanged.!

defaultComposite

	^UMLModelGlobalsBrowserComposite!

defaultContainerName

	^'globals'!

removeFromRepository: anUMLInstance 

	anUMLInstance removeFromGlobalObjects.
	self onGlobalNameChanged.! !
!UMLModelGlobalsShell categoriesFor: #addToRepository:!public! !
!UMLModelGlobalsShell categoriesFor: #defaultComposite!public! !
!UMLModelGlobalsShell categoriesFor: #defaultContainerName!public! !
!UMLModelGlobalsShell categoriesFor: #removeFromRepository:!public! !

!UMLModelGlobalsShell class methodsFor!

icon

	^UMLInstance icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 576 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 2 265030 4 ##(Smalltalk.Menu)  0 16 98 6 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #addGlobalClass 8 'Add Class' 1 1 0 0 0 706 1 738 8 #removeSelectedClassAsGlobal 8 'Remove Class' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 706 1 738 8 #addNewInstance 8 'Add New Instance' 1 1 0 0 0 866 4097 706 1 738 8 #createInstanceForAll 8 'Create an Instance for All' 1 1 0 0 0 8 'Cache' 0 134217729 0 0 40553 0 0 658 0 16 98 5 706 1 738 8 #createAccessorMethods 8 'Create Accessor Methods' 1 1 0 0 0 706 1 738 8 #createCreationMethods 8 'Create Creation Methods' 1 1 0 0 0 866 4097 706 1 738 8 #createDBCreationMethods 8 'Create Database Creation Methods' 1 1 0 0 0 706 1 738 8 #createDBAccessorMethods 8 'Create Database Accesor Methods' 1 1 0 0 0 8 'Create Method Access' 0 134217729 0 0 40563 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  2731 21 1522 1451 971 416 1458 8 #text: 98 1 8 'UML Model - Globals Browser' 416 1458 8 #updateMenuBar 576 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 85 5 0 0 10 0 0 0 42 8 0 0 239 1 0 0] 98 1 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 1728 0 0 0 7 0 0 0 1728 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ReferenceView)  98 14 0 1728 98 2 8 1140850688 131073 1840 0 482 8 4278190080 0 7 0 0 0 1840 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_UML_Common 0 1394 202 208 98 1 1458 1488 98 2 1522 1 1 1522 1419 51 1840 1666 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 197 2 0 0 25 0 0 0] 576 1522 193 193 0 27 0 0 0 410 1856 98 14 0 1728 98 2 8 1140850688 131073 2176 0 482 8 4278190080 0 7 0 0 0 2176 1954 8 ##(Smalltalk.UMLModelGlobalsBrowserComposite)  8 #resource_Default_view 0 1394 202 208 98 1 1458 1488 98 2 1522 1 51 1522 1419 803 2176 1666 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 197 2 0 0 170 1 0 0] 576 2160 0 27 234 256 98 2 2176 8 'globals' 0 1394 202 208 98 1 1458 1488 98 2 1522 1 1 1522 1419 853 1728 1666 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 197 2 0 0 170 1 0 0] 98 2 1840 2176 2160 0 27 2160 0 27 )! !
!UMLModelGlobalsShell class categoriesFor: #icon!public! !
!UMLModelGlobalsShell class categoriesFor: #resource_Default_view!public!resources-views! !

