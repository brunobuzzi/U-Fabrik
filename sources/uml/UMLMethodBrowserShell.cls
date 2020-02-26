"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLMethodBrowserShell
	instanceVariableNames: 'methodsComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLMethodBrowserShell guid: (GUID fromString: '{c23982ed-766e-4070-9ea2-dae0232561b2}')!
UMLMethodBrowserShell comment: ''!
!UMLMethodBrowserShell categoriesForClass!MVP-Resources-UFabrik! !
!UMLMethodBrowserShell methodsFor!

checkSelectedMethod
	^methodsComposite checkSelectedMethod!

createComponents

	super createComponents.

	methodsComposite := self add: UMLMethodBrowserComposite new name: 'methodsComposite'.!

hasSelectedClass
	^methodsComposite hasSelectedClass!

invalidateCategories
	^self!

isClassSideSelected

	^methodsComposite selectedImplementation methodClass isMetaclass not!

isMethodBrowser

	^true!

mainComposite

	^methodsComposite!

model: anOrderedCollection

	super model: anOrderedCollection.

	methodsComposite model: anOrderedCollection.!

onViewOpened

	super onViewOpened.

	view menuBar: methodsComposite menuBar!

selectedClass
	^methodsComposite selectedClass!

selectedElement
	^methodsComposite selectedElement! !
!UMLMethodBrowserShell categoriesFor: #checkSelectedMethod!public! !
!UMLMethodBrowserShell categoriesFor: #createComponents!public! !
!UMLMethodBrowserShell categoriesFor: #hasSelectedClass!public! !
!UMLMethodBrowserShell categoriesFor: #invalidateCategories!public! !
!UMLMethodBrowserShell categoriesFor: #isClassSideSelected!public! !
!UMLMethodBrowserShell categoriesFor: #isMethodBrowser!public! !
!UMLMethodBrowserShell categoriesFor: #mainComposite!public! !
!UMLMethodBrowserShell categoriesFor: #model:!public! !
!UMLMethodBrowserShell categoriesFor: #onViewOpened!public! !
!UMLMethodBrowserShell categoriesFor: #selectedClass!public! !
!UMLMethodBrowserShell categoriesFor: #selectedElement!public! !

!UMLMethodBrowserShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 7 0 0 0 560 530 1 1 0 0 0 410 8 ##(Smalltalk.Toolbar)  98 25 0 560 98 2 8 1409288972 131137 656 0 482 8 4278190080 0 7 0 0 0 656 482 752 8 4294907039 234 256 98 0 234 256 98 4 62649 1115910 ##(Smalltalk.ToolbarIconButton)  62649 0 656 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #fileOutMethods 8 'File out methods' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator)  8 'FileSave.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 328198 ##(Smalltalk.Point)  33 33 1 62651 866 62651 0 656 1 898 8 #fileInMethods 8 'File in methods' 1 1 962 0 16 1008 8 'FileOpen.ico' 1056 1090 0 16 0 0 0 0 3 1122 33 33 1 98 2 880 1152 234 240 98 4 1104 1 1248 3 0 1 0 1122 33 33 1122 45 45 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 1122 1 1 1122 101 51 656 1426 8 #updateSize 816 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 50 0 0 0 25 0 0 0] 98 0 1122 193 193 0 27 410 8 ##(Smalltalk.ReferenceView)  98 14 0 560 98 2 8 1140850688 131073 1632 0 482 8 4278190080 0 7 0 0 0 1632 1180166 ##(Smalltalk.ResourceIdentifier)  672 8 #resource_UML_Common 0 1362 202 208 98 1 1426 1456 98 2 1122 101 1 1122 1619 51 1632 1554 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 50 0 0 0 0 0 0 0 91 3 0 0 25 0 0 0] 816 1616 0 27 234 256 816 0 1362 202 208 98 1 1426 1456 98 2 1122 1 1 1122 1719 51 560 1554 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 91 3 0 0 25 0 0 0] 98 2 656 1632 1616 0 27 0 0 0 410 1648 98 14 0 416 98 2 8 1140850688 131073 2112 0 482 8 4278190080 0 7 0 0 0 2112 1746 8 ##(Smalltalk.UMLMethodBrowserComposite)  8 #resource_Default_view 0 1362 202 208 98 1 1426 1456 98 2 1122 1 51 1122 1719 1069 2112 1554 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 91 3 0 0 47 2 0 0] 816 1616 0 27 234 256 98 2 2112 8 'methodsComposite' 0 0 0 0 0 1 0 0 0 0 1 0 0 1362 202 208 98 3 1426 1456 98 2 1122 2879 21 1122 1751 1191 416 1426 8 #text: 98 1 8 'Method Browser' 416 1426 8 #updateMenuBar 816 416 1554 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 10 9 0 0 93 2 0 0] 98 2 560 2112 1616 0 27 )! !
!UMLMethodBrowserShell class categoriesFor: #resource_Default_view!public!resources-views! !

