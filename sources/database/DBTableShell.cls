"Filed out from Dolphin Smalltalk 7"!

DBShell subclass: #DBTableShell
	instanceVariableNames: 'tableComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBTableShell guid: (GUID fromString: '{6282e446-45f5-4baf-851e-c108f5c8722a}')!
DBTableShell comment: ''!
!DBTableShell categoriesForClass!Unclassified! !
!DBTableShell methodsFor!

createComponents

	super createComponents.

	tableComposite := self add: DBTableComposite new name: 'tableComposite'!

model: aBBDBTable

	super model: aBBDBTable.

	tableComposite model: aBBDBTable.!

showTableReferenes

	^DBTableForeignKeyExplorerShell showOn: model! !
!DBTableShell categoriesFor: #createComponents!public! !
!DBTableShell categoriesFor: #model:!public! !
!DBTableShell categoriesFor: #showTableReferenes!public! !

!DBTableShell class methodsFor!

defaultModel

	^BBDBTable new!

icon

	^BBDBTable icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.Toolbar)  98 25 0 416 98 2 8 1409288972 131137 560 0 482 8 4278190080 0 519 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 560 482 656 8 4294902249 234 256 98 0 234 256 98 2 61291 1115910 ##(Smalltalk.ToolbarIconButton)  61291 0 560 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #showTableReferenes 8 'Show Selected Table References' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.ImageRelativeFileLocator)  8 #current 8 'MoenTreeView.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 754 33 33 1 98 1 896 234 240 98 2 1152 1 0 1 0 754 33 33 754 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 754 1 1 754 1909 51 560 1362 8 #updateSize 832 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 186 3 0 0 25 0 0 0] 98 0 754 193 193 0 27 0 0 0 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 1568 0 482 8 4278190080 0 7 0 0 0 1568 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.DBTableComposite)  8 #resource_Default_view 0 1298 202 208 98 1 1362 1392 98 2 754 1 51 754 1909 1149 1568 1490 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 186 3 0 0 87 2 0 0] 832 1552 0 27 234 256 98 2 1568 8 'tableComposite' 0 0 0 0 0 1 0 0 0 0 1 0 0 1298 202 208 98 3 1362 1392 98 2 754 2879 21 754 1941 1271 416 1362 8 #text: 98 1 8 'Table Inspector' 416 1362 8 #updateMenuBar 832 416 1490 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 105 9 0 0 133 2 0 0] 98 2 560 1568 1552 0 27 )! !
!DBTableShell class categoriesFor: #defaultModel!public! !
!DBTableShell class categoriesFor: #icon!public! !
!DBTableShell class categoriesFor: #resource_Default_view!public!resources-views! !

