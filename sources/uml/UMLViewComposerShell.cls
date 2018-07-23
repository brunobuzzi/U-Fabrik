"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLViewComposerShell
	instanceVariableNames: 'viewComposerComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLViewComposerShell guid: (GUID fromString: '{10601294-5cbe-4e47-aa3b-22349d4de546}')!
UMLViewComposerShell comment: ''!
!UMLViewComposerShell categoriesForClass!Unclassified! !
!UMLViewComposerShell methodsFor!

createComponents

	super createComponents.

	viewComposerComposite := self add: UMLDynamicViewComposer new name: 'viewComposer'.!

getModel
	^self model!

inspectorPresenter
	^Error notYetImplemented!

inspectUMLInstance: anUMLInstance 

	^anUMLInstance inspectUMLInstance!

mainComposite

	^viewComposerComposite!

model: anUMLInstance

	super model: anUMLInstance.

	viewComposerComposite model: anUMLInstance!

selectedInstVar
	^viewComposerComposite selectedInstVar!

updateList
	^viewComposerComposite updateList! !
!UMLViewComposerShell categoriesFor: #createComponents!public! !
!UMLViewComposerShell categoriesFor: #getModel!public! !
!UMLViewComposerShell categoriesFor: #inspectorPresenter!public! !
!UMLViewComposerShell categoriesFor: #inspectUMLInstance:!public! !
!UMLViewComposerShell categoriesFor: #mainComposite!public! !
!UMLViewComposerShell categoriesFor: #model:!public! !
!UMLViewComposerShell categoriesFor: #selectedInstVar!public! !
!UMLViewComposerShell categoriesFor: #updateList!public! !

!UMLViewComposerShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 624 0 482 8 4278190080 0 7 0 0 0 624 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLDynamicViewComposer)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 930 1809 1229 624 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 136 3 0 0 102 2 0 0] 576 930 193 193 0 27 8 'viewComposer' 0 0 0 0 0 1 0 0 0 0 1 0 0 802 202 208 98 3 866 896 98 2 930 2879 21 930 1841 1301 416 866 8 #text: 98 1 8 'UML View Composer' 416 866 8 #updateMenuBar 576 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 55 9 0 0 148 2 0 0] 98 1 624 1024 0 27 )! !
!UMLViewComposerShell class categoriesFor: #resource_Default_view!public!resources-views! !

