"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLParsedCodeShell
	instanceVariableNames: 'parsedCodePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLParsedCodeShell guid: (GUID fromString: '{69fbca3c-6c38-4de9-800b-4d6c598a7116}')!
UMLParsedCodeShell comment: ''!
!UMLParsedCodeShell categoriesForClass!Unclassified! !
!UMLParsedCodeShell methodsFor!

createComponents

	super createComponents.

	parsedCodePresenter := self add: UMLParsedCodeComposite new name: 'parsedView'.!

model: aStMethodNode

	super model: aStMethodNode.

	parsedCodePresenter model: aStMethodNode! !
!UMLParsedCodeShell categoriesFor: #createComponents!public! !
!UMLParsedCodeShell categoriesFor: #model:!public! !

!UMLParsedCodeShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ShellView) 34 27 nil nil 8 #(13565952 65536) 416 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 551 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() false 170 192 34 2 410 ##(Smalltalk.ReferenceView) 34 14 nil 416 34 2 8 1140850688 131073 608 nil 466 8 4278190080 nil 7 nil nil nil 608 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.UMLParsedCodeComposite) #resource_Default_view nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 850 1169 723 608 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 72 2 0 0 105 1 0 0] 560 850 193 193 nil 27 8 'parsedView' nil nil nil nil nil 1 nil nil nil nil 1 nil nil 738 138 144 34 3 802 #createAt:extent: 34 2 850 2719 21 850 1201 801 416 802 #text: 34 1 8 'Tree for Parsed Code' 416 802 #updateMenuBar 560 416 898 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 167 7 0 0 154 1 0 0] 34 1 608 944 nil 27 )! !
!UMLParsedCodeShell class categoriesFor: #resource_Default_view!public!resources-views! !

