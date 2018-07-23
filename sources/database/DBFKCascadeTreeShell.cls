"Filed out from Dolphin Smalltalk 7"!

DBShell subclass: #DBFKCascadeTreeShell
	instanceVariableNames: 'fkCascadeComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBFKCascadeTreeShell guid: (GUID fromString: '{1fdd9402-0e01-46c1-9719-0c50edc883e5}')!
DBFKCascadeTreeShell comment: ''!
!DBFKCascadeTreeShell categoriesForClass!Unclassified! !
!DBFKCascadeTreeShell methodsFor!

createComponents

	super createComponents.

	fkCascadeComposite := self add: DBFKCascadeTreeComposite new name: 'fkCascadeComposite'!

model: anOrderedCollection

	super model: anOrderedCollection.

	fkCascadeComposite model: anOrderedCollection.!

setFKTreeFor: aBBDBTable

	^fkCascadeComposite setFKTreeFor: aBBDBTable! !
!DBFKCascadeTreeShell categoriesFor: #createComponents!public! !
!DBFKCascadeTreeShell categoriesFor: #model:!public! !
!DBFKCascadeTreeShell categoriesFor: #setFKTreeFor:!public! !

!DBFKCascadeTreeShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 624 0 482 8 4278190080 0 7 0 0 0 624 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.DBFKCascadeTreeComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 930 1639 1079 624 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 51 3 0 0 27 2 0 0] 576 930 193 193 0 27 8 'fkCascadeComposite' 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 1 265030 4 ##(Smalltalk.Menu)  0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #copyDeleteScriptToClipboard 8 'Copy Delete Script to Clipboard' 1 1 0 0 0 8 'Scripts' 0 134217729 0 0 19175 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 802 202 208 98 3 866 896 98 2 930 2879 21 930 1671 1191 416 866 8 #text: 98 1 8 'Foreign Key Cascade Tree' 416 866 8 #updateMenuBar 576 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 226 8 0 0 93 2 0 0] 98 1 624 1024 0 27 )! !
!DBFKCascadeTreeShell class categoriesFor: #resource_Default_view!public!resources-views! !

