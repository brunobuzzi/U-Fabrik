"Filed out from Dolphin Smalltalk 7"!

UMLDialog subclass: #UMLShowHideAspectShell
	instanceVariableNames: 'showHideComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLShowHideAspectShell guid: (GUID fromString: '{e4180f5b-fcdd-43c6-8c19-07a50b8257fd}')!
UMLShowHideAspectShell comment: ''!
!UMLShowHideAspectShell categoriesForClass!Unclassified! !
!UMLShowHideAspectShell methodsFor!

createComponents

	super createComponents.

	showHideComposite := self add: UMLShowHideAspectComposite new name: 'showHideComposite'.!

model: anUMLParsedImplementation

	super model: anUMLParsedImplementation.

	showHideComposite model: anUMLParsedImplementation!

setShowHideMethod

	showHideComposite selectedMethod ifNil: [^self exit].

	self subject hideShowMessage: showHideComposite selectedMethod methodName;
		hideShowMessageClass: showHideComposite selectedClass className.

	self exit.! !
!UMLShowHideAspectShell categoriesFor: #createComponents!public! !
!UMLShowHideAspectShell categoriesFor: #model:!public! !
!UMLShowHideAspectShell categoriesFor: #setShowHideMethod!public! !

!UMLShowHideAspectShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  1201 711 551 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 0 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 592 0 721158 ##(Smalltalk.SystemColor)  31 0 7 0 0 0 592 562 1 1 0 0 410 8 ##(Smalltalk.PushButton)  98 20 0 592 98 2 8 1140924416 1 720 0 0 0 7 0 0 0 720 0 8 4294904149 1180998 4 ##(Smalltalk.CommandDescription)  8 #setShowHideMethod 8 'Set Show Hide Method' 1 1 0 0 32 0 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 839 1 530 331 81 720 946 8 #isEnabled: 98 1 32 720 946 8 #text: 98 1 8 'Set Show Hide Method' 720 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 163 1 0 0 0 0 0 0 72 2 0 0 40 0 0 0] 98 0 530 193 193 0 29 0 0 234 256 98 0 0 882 202 208 98 1 946 976 98 2 530 1 555 530 1169 81 592 1154 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 21 1 0 0 72 2 0 0 61 1 0 0] 98 1 720 1216 0 27 0 0 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 1424 0 482 8 4278190080 0 7 0 0 0 1424 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLShowHideAspectComposite)  8 #resource_Default_view 0 882 202 208 98 1 946 976 98 2 530 1 1 530 1169 555 1424 1154 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 72 2 0 0 21 1 0 0] 1248 1216 0 27 234 256 98 2 1424 8 'showHideComposite' 0 0 0 0 0 3 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 32 8 2009762116 882 202 208 98 3 946 976 98 2 530 3199 21 530 1201 711 416 946 1104 98 1 8 'Set the method to execute to Show/Hide selected Aspect (UML Method) ' 416 946 8 #updateMenuBar 1248 416 1154 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 151 8 0 0 109 1 0 0] 98 2 1424 592 1216 0 27 )! !
!UMLShowHideAspectShell class categoriesFor: #resource_Default_view!public!resources-views! !

