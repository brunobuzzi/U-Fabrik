"Filed out from Dolphin Smalltalk 7"!

UMLShell subclass: #UMLRelationShell
	instanceVariableNames: 'relationComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLRelationShell guid: (GUID fromString: '{3cea556b-b1c7-4efe-b8de-8c32801de8ac}')!
UMLRelationShell comment: ''!
!UMLRelationShell categoriesForClass!MVP-Resources-UFabrik! !
!UMLRelationShell methodsFor!

createComponents

	super createComponents.

	relationComposite := self add: UMLRelationComposite new name: 'relationComposite'!

disableComboClasses

	relationComposite disableComboClasses.!

isEditOperation

	^relationComposite isEditOperation!

model: anUMLRelation

	super model: anUMLRelation.

	relationComposite model: anUMLRelation.!

ok

	self isEditOperation ifTrue: [^self exit].

"is an ADD operation "

	relationComposite changeUMLRelation.

	model sourceClass addRelation: model.
	model targetClass addRelation: model.

	parentPresenter topShell mainComposite trigger: #newRelationAdded:toClass:in: withArguments: (Array with: model with: model sourceClass with: parentPresenter topShell mainComposite).
	self exit.! !
!UMLRelationShell categoriesFor: #createComponents!public! !
!UMLRelationShell categoriesFor: #disableComboClasses!public! !
!UMLRelationShell categoriesFor: #isEditOperation!public! !
!UMLRelationShell categoriesFor: #model:!public! !
!UMLRelationShell categoriesFor: #ok!public! !

!UMLRelationShell class methodsFor!

icon

	^UMLRelation icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  1201 681 39 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 0 0 0 0 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 592 0 0 0 7 0 0 0 592 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 592 98 2 8 1140850688 131073 768 0 482 8 4278190080 0 7 0 0 0 768 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLRelationComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 1 1 530 1409 865 768 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 192 2 0 0 176 1 0 0] 720 530 193 193 0 27 8 'relationComposite' 0 946 202 208 98 1 1010 1040 98 2 530 1 1 530 1409 865 592 1106 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 192 2 0 0 176 1 0 0] 98 1 768 1152 0 27 234 256 720 0 0 0 0 0 1 0 0 0 0 1 0 0 946 202 208 98 3 1010 1040 98 2 530 3199 21 530 1441 941 416 1010 8 #text: 98 1 8 'UML Relation' 416 1010 8 #updateMenuBar 720 416 1106 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 1 6 0 0 10 0 0 0 209 8 0 0 224 1 0 0] 98 1 592 1152 0 27 )! !
!UMLRelationShell class categoriesFor: #icon!public! !
!UMLRelationShell class categoriesFor: #resource_Default_view!public!resources-views! !

