"Filed out from Dolphin Smalltalk 7"!

UMLSimpleListComposite subclass: #UMLCommandListComposite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLCommandListComposite guid: (GUID fromString: '{3d30ff77-d835-4355-a005-58483170a296}')!
UMLCommandListComposite comment: ''!
!UMLCommandListComposite categoriesForClass!MVP-Resources-UFabrik! !
!UMLCommandListComposite methodsFor!

exitInspector

	self topShell exitInspector! !
!UMLCommandListComposite categoriesFor: #exitInspector!public! !

!UMLCommandListComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 592 0 0 0 5 0 0 0 592 788230 ##(Smalltalk.BorderLayout)  1 1 0 410 432 98 15 0 592 98 2 8 1140850688 131073 688 0 0 0 5 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[237 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 688 0 234 256 544 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 834 1 831 834 1331 91 688 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 159 1 0 0 153 2 0 0 204 1 0 0] 98 1 410 8 ##(Smalltalk.SWLinkButton)  98 28 0 688 98 2 8 1140850688 1 1104 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 1104 0 0 11 834 33 33 1180998 4 ##(Smalltalk.CommandDescription)  8 #exitInspector 8 'Close' 1 1 0 8 #out 196934 1 ##(Smalltalk.RGB)  25231617 786694 ##(Smalltalk.IndexedColor)  33554441 1362 33554447 0 0 0 0 0 0 0 882 202 208 98 2 946 976 98 2 834 23 17 834 219 51 1104 946 8 #text: 98 1 8 'Close' 1104 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 11 0 0 0 8 0 0 0 120 0 0 0 33 0 0 0] 98 0 834 193 193 0 27 1632 0 27 0 0 410 8 ##(Smalltalk.ListView)  98 30 0 592 98 2 8 1140920397 1025 1648 590662 2 ##(Smalltalk.ListModel)  202 208 544 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  1186 8 4278190080 0 29 265030 4 ##(Smalltalk.Menu)  0 16 98 5 984134 2 ##(Smalltalk.CommandMenuItem)  1 1250 8 #initializeObject 8 'Initialize Object' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 1890 1 1250 8 #inspectObjectForDesignGUI 8 'Inspect Object for Design GUI' 1 1 0 0 0 1970 4097 1890 1 1250 8 #inspectGlobalObject 8 'Inspect Global Object' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 1648 0 8 4294902735 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Column 1' 201 8 #left 2178 2208 2224 8 ##(Smalltalk.SortedCollection)  0 0 1648 0 1 0 0 8 #report 544 0 131171 0 0 882 202 208 98 3 946 976 98 2 834 1 1 834 1331 831 1648 946 8 #contextMenu: 98 1 1856 1648 946 1536 98 1 8 'Column 1' 1648 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 153 2 0 0 159 1 0 0] 98 0 1632 0 27 234 256 98 2 1648 8 'objectList' 0 882 202 208 98 1 946 976 98 2 834 1 1 834 1331 921 592 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 153 2 0 0 204 1 0 0] 98 2 1648 688 1632 0 27 8 'listContainer' 0 882 202 208 98 1 946 976 98 2 834 2879 21 834 1331 921 416 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 56 8 0 0 214 1 0 0] 98 1 592 1632 0 27 )! !
!UMLCommandListComposite class categoriesFor: #resource_Default_view!public!resources-views! !

