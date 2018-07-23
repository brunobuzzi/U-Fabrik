"Filed out from Dolphin Smalltalk 7"!

BBDialog subclass: #UMLSimpleAttributeDialog
	instanceVariableNames: 'attributeComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLSimpleAttributeDialog guid: (GUID fromString: '{dd21b357-2cad-4917-aa21-6254efa2db80}')!
UMLSimpleAttributeDialog comment: ''!
!UMLSimpleAttributeDialog categoriesForClass!Unclassified! !
!UMLSimpleAttributeDialog methodsFor!

createComponents

	super createComponents.

	attributeComposite := self add: UMLSimpleAttributeComposite new name: 'attributeComposite'.!

model: anUMLClassAttribute

	super model: anUMLClassAttribute.

	attributeComposite model: anUMLClassAttribute.!

ok

	super ok.

	self setType.!

setType

	self subject type: attributeComposite selectedType! !
!UMLSimpleAttributeDialog categoriesFor: #createComponents!public! !
!UMLSimpleAttributeDialog categoriesFor: #model:!public! !
!UMLSimpleAttributeDialog categoriesFor: #ok!public! !
!UMLSimpleAttributeDialog categoriesFor: #setType!public! !

!UMLSimpleAttributeDialog class methodsFor!

defaultModel

	^UMLClassAttribute new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 27131905 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 328198 ##(Smalltalk.Point)  891 631 551 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 0 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 576 0 0 0 7 0 0 0 576 0 234 256 98 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 514 1 469 514 859 91 576 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 234 0 0 0 173 1 0 0 23 1 0 0] 98 1 410 8 ##(Smalltalk.PushButton)  98 20 0 576 98 2 8 1140924416 1 912 0 0 0 7 0 0 0 912 0 8 4294902437 1180998 4 ##(Smalltalk.CommandDescription)  8 #ok 8 '&OK' 1 1 0 0 16 0 0 0 690 202 208 98 3 754 784 98 2 514 671 11 514 141 71 912 754 8 #isEnabled: 98 1 32 912 754 8 #text: 98 1 8 '&OK' 912 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 1 0 0 5 0 0 0 149 1 0 0 40 0 0 0] 98 0 514 193 193 0 29 1344 0 27 0 0 410 592 98 15 0 416 98 2 8 1140850688 131073 1360 0 0 0 7 0 0 0 1360 1180166 ##(Smalltalk.ProportionalLayout)  234 240 672 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 1360 98 2 8 1140850688 131073 1504 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 7 0 0 0 1504 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLSimpleAttributeComposite)  8 #resource_Default_view 0 690 202 208 98 1 754 784 98 2 514 1 1 514 859 469 1504 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 173 1 0 0 234 0 0 0] 672 1344 0 27 8 'attributeComposite' 0 690 202 208 98 1 754 784 98 2 514 1 1 514 859 469 1360 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 173 1 0 0 234 0 0 0] 98 1 1504 1344 0 27 234 256 672 0 0 0 0 0 41079 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 32 8 2011506360 690 202 208 98 3 754 784 98 2 514 2879 21 514 891 631 416 754 1248 98 1 8 'Edit Attribute' 416 754 8 #updateMenuBar 672 416 850 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 92 7 0 0 69 1 0 0] 98 2 1360 576 1344 0 27 )! !
!UMLSimpleAttributeDialog class categoriesFor: #defaultModel!public! !
!UMLSimpleAttributeDialog class categoriesFor: #resource_Default_view!public!resources-views! !

