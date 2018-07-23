"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLCommandListShell
	instanceVariableNames: 'containerPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLCommandListShell guid: (GUID fromString: '{465e3b65-c4f8-4ca1-92ab-b896902cce6d}')!
UMLCommandListShell comment: ''!
!UMLCommandListShell categoriesForClass!Unclassified! !
!UMLCommandListShell methodsFor!

createComponents

	super createComponents.

	containerPresenter := self add: Presenter new name: 'container'!

createListForCollection: collectionOfUMLObjects
	| listPresenter |

	listPresenter := UMLCommandListComposite createIn: containerPresenter.
	collectionOfUMLObjects last createListViewFor: listPresenter.
	listPresenter model: (ListModel on: collectionOfUMLObjects smalltalkObject).!

exitInspector
	^self exit!

inspectUMLInstance: anUMLInstance 

	^anUMLInstance inspectUMLWithCustomizedView!

mainComposite

	^containerPresenter! !
!UMLCommandListShell categoriesFor: #createComponents!public! !
!UMLCommandListShell categoriesFor: #createListForCollection:!public! !
!UMLCommandListShell categoriesFor: #exitInspector!public! !
!UMLCommandListShell categoriesFor: #inspectUMLInstance:!public! !
!UMLCommandListShell categoriesFor: #mainComposite!public! !

!UMLCommandListShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 624 0 721158 ##(Smalltalk.SystemColor)  31 0 7 0 0 0 624 530 234 240 576 32 234 256 576 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 914 1349 819 624 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 162 2 0 0 153 1 0 0] 98 0 914 193 193 0 27 8 'container' 0 0 0 0 0 1 0 0 0 0 1 0 0 786 202 208 98 3 850 880 98 2 914 2879 21 914 1381 891 416 850 8 #text: 98 1 8 'Command Result' 416 850 8 #updateMenuBar 576 416 962 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 81 8 0 0 199 1 0 0] 98 1 624 1024 0 27 )! !
!UMLCommandListShell class categoriesFor: #resource_Default_view!public!resources-views! !

