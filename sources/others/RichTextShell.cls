"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #RichTextShell
	instanceVariableNames: 'richComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RichTextShell guid: (GUID fromString: '{ae804f54-6a3f-4569-bbda-3bd69b54b01e}')!
RichTextShell comment: ''!
!RichTextShell categoriesForClass!Unclassified! !
!RichTextShell methodsFor!

createComponents

	super createComponents.

	richComposite := self add: RichTextComposite new name: 'richComposite'.!

model: aModel

	super model: aModel.

	richComposite model: aModel! !
!RichTextShell categoriesFor: #createComponents!public! !
!RichTextShell categoriesFor: #model:!public! !

!RichTextShell class methodsFor!

icon

	^Icon fromId: 'TextEdit.ico'!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 0 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 560 0 721158 ##(Smalltalk.SystemColor)  31 0 7 0 0 0 560 530 1 1 0 0 410 8 ##(Smalltalk.PushButton)  98 20 0 560 98 2 8 1140924416 1 688 0 0 0 7 0 0 0 688 0 8 4294903241 1180998 4 ##(Smalltalk.CommandDescription)  8 #exit 8 'Close' 1 1 0 0 32 0 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1229 1 978 141 71 688 914 8 #isEnabled: 98 1 32 688 914 8 #text: 98 1 8 'Close' 688 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 102 2 0 0 0 0 0 0 172 2 0 0 35 0 0 0] 98 0 978 193 193 0 29 0 0 234 256 98 0 0 850 202 208 98 1 914 944 98 2 978 1 805 978 1369 71 560 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 146 1 0 0 172 2 0 0 181 1 0 0] 98 1 688 1200 0 27 0 0 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 1408 0 482 8 4278190080 0 7 0 0 0 1408 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.RichTextComposite)  8 #resource_Default_view 0 850 202 208 98 1 914 944 98 2 978 1 1 978 1369 805 1408 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 172 2 0 0 146 1 0 0] 1232 1200 0 27 234 256 98 2 1408 8 'richComposite' 0 0 0 0 0 1 0 0 0 0 1 0 0 850 202 208 98 2 914 944 98 2 978 3199 21 978 1401 951 416 914 8 #updateMenuBar 1232 416 1138 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 251 8 0 0 229 1 0 0] 98 2 1408 560 1200 0 27 )! !
!RichTextShell class categoriesFor: #icon!public! !
!RichTextShell class categoriesFor: #resource_Default_view!public! !

