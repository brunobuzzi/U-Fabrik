"Filed out from Dolphin Smalltalk 7"!

UMLParametricObjectsShell subclass: #UMLModelSetupObjectsShell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModelSetupObjectsShell guid: (GUID fromString: '{29204295-d07e-48fa-9950-184c925e49e0}')!
UMLModelSetupObjectsShell comment: ''!
!UMLModelSetupObjectsShell categoriesForClass!MVP-Resources-UFabrik! !
!UMLModelSetupObjectsShell methodsFor!

addToRepository: anUMLInstance 

	anUMLInstance storeAsSetupObject.
	self onGlobalNameChanged.!

defaultComposite

	^UMLModelSetupObjectsBrowserComposite!

defaultContainerName

	^'Globals'!

removeFromRepository: anUMLInstance

	anUMLInstance removeFromSetupObjects.
	self onGlobalNameChanged.! !
!UMLModelSetupObjectsShell categoriesFor: #addToRepository:!public! !
!UMLModelSetupObjectsShell categoriesFor: #defaultComposite!public! !
!UMLModelSetupObjectsShell categoriesFor: #defaultContainerName!public! !
!UMLModelSetupObjectsShell categoriesFor: #removeFromRepository:!public! !

!UMLModelSetupObjectsShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 576 0 0 0 0 0 1 0 0 0 0 1 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  2879 21 738 1453 971 416 674 8 #text: 98 1 8 'UML Model - Setup Objects (basic parametrics) Browser' 416 674 8 #updateMenuBar 576 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 117 8 0 0 239 1 0 0] 98 1 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 944 0 0 0 7 0 0 0 944 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ReferenceView)  98 14 0 944 98 2 8 1140850688 131073 1056 0 482 8 4278190080 0 7 0 0 0 1056 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_UML_Common 0 610 202 208 98 1 674 704 98 2 738 1 1 738 1421 51 1056 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 198 2 0 0 25 0 0 0] 576 738 193 193 0 27 0 0 0 410 1072 98 14 0 944 98 2 8 1140850688 131073 1392 0 482 8 4278190080 0 7 0 0 0 1392 1170 8 ##(Smalltalk.UMLModelParametricObjectBrowserComposite)  8 #resource_Default_view 0 610 202 208 98 1 674 704 98 2 738 1 51 738 1421 849 1392 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 198 2 0 0 193 1 0 0] 576 1376 0 27 234 256 98 2 1392 8 'setupObjects' 0 610 202 208 98 1 674 704 98 2 738 1 1 738 1421 899 944 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 198 2 0 0 193 1 0 0] 98 2 1056 1392 1376 0 27 1376 0 27 )! !
!UMLModelSetupObjectsShell class categoriesFor: #resource_Default_view!public!resources-views! !

