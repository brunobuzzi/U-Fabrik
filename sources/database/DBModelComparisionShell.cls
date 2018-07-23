"Filed out from Dolphin Smalltalk 7"!

DBShell subclass: #DBModelComparisionShell
	instanceVariableNames: 'dbmodelComparisionComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBModelComparisionShell guid: (GUID fromString: '{1f8f7233-f1e7-43db-a9d3-dca02bd8a4fd}')!
DBModelComparisionShell comment: ''!
!DBModelComparisionShell categoriesForClass!Unclassified! !
!DBModelComparisionShell methodsFor!

createComponents

	super createComponents.

	dbmodelComparisionComposite := self add: DBModelComparisionComposite new name: 'dbmodelComparisionComposite'.!

model: aDBModelComparision

	super model: aDBModelComparision.

	dbmodelComparisionComposite model: aDBModelComparision.! !
!DBModelComparisionShell categoriesFor: #createComponents!public! !
!DBModelComparisionShell categoriesFor: #model:!public! !

!DBModelComparisionShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 624 0 482 8 4278190080 0 7 0 0 0 624 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.DBModelComparisionComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 930 1929 1349 624 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 196 3 0 0 162 2 0 0] 576 930 193 193 0 27 8 'dbmodelComparisionComposite' 0 0 0 0 0 1 0 0 0 0 1 0 0 802 202 208 98 3 866 896 98 2 930 2879 21 930 1961 1421 416 866 8 #text: 98 1 8 'Database Comparision Browser' 416 866 8 #updateMenuBar 576 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 115 9 0 0 208 2 0 0] 98 1 624 1024 0 27 )! !
!DBModelComparisionShell class categoriesFor: #resource_Default_view!public!resources-views! !

