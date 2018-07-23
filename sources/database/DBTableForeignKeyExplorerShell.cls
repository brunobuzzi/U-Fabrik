"Filed out from Dolphin Smalltalk 7"!

DBShell subclass: #DBTableForeignKeyExplorerShell
	instanceVariableNames: 'foreignKeyComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBTableForeignKeyExplorerShell guid: (GUID fromString: '{81affabb-4972-446b-af06-27ba29052cb3}')!
DBTableForeignKeyExplorerShell comment: ''!
!DBTableForeignKeyExplorerShell categoriesForClass!Unclassified! !
!DBTableForeignKeyExplorerShell methodsFor!

createComponents

	super createComponents.

	foreignKeyComposite := self add: DBForeignKeyExplorerComposite new name: 'foreignKeyComposite'!

model: aBBDBTable

	super model: aBBDBTable.

	foreignKeyComposite model: aBBDBTable
	!

onViewOpened

	super onViewOpened.

	view caption: 'Foreign Keys Reference Tree for Table <', model name, '>'!

openNewFKBrowser

	self class showOn: self model! !
!DBTableForeignKeyExplorerShell categoriesFor: #createComponents!public! !
!DBTableForeignKeyExplorerShell categoriesFor: #model:!public! !
!DBTableForeignKeyExplorerShell categoriesFor: #onViewOpened!public! !
!DBTableForeignKeyExplorerShell categoriesFor: #openNewFKBrowser!public! !

!DBTableForeignKeyExplorerShell class methodsFor!

icon

	^BBDBForeignKey icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 624 0 482 8 4278190080 0 7 0 0 0 624 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.DBForeignKeyExplorerComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 930 1809 1239 624 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 136 3 0 0 107 2 0 0] 576 930 193 193 0 27 8 'foreignKeyComposite' 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 1 265030 4 ##(Smalltalk.Menu)  0 16 98 3 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #openNewFKBrowser 8 'Open New FK Browser' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 1154 1 1186 8 #exit 8 'Exit' 1 1 0 0 0 8 'Browsing' 0 134217729 0 0 37523 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 802 202 208 98 2 866 896 98 2 930 2879 21 930 1841 1351 416 866 8 #updateMenuBar 576 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 55 9 0 0 173 2 0 0] 98 1 624 1024 0 27 )! !
!DBTableForeignKeyExplorerShell class categoriesFor: #icon!public! !
!DBTableForeignKeyExplorerShell class categoriesFor: #resource_Default_view!public!resources-views! !

