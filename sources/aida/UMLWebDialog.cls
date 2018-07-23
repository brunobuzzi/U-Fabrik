"Filed out from Dolphin Smalltalk 7"!

WebDialog subclass: #UMLWebDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebDialog guid: (GUID fromString: '{72e23b05-8096-491c-808b-0f2871576de5}')!
UMLWebDialog comment: ''!
!UMLWebDialog categoriesForClass!Unclassified! !
!UMLWebDialog methodsFor!

build
	self clear.
	self registerId.
	self isConfirmation ifTrue: [self buildConfirmation].
	self isInfo ifTrue: [self buildInfo].
	self context form registerFormElementsIn: self.!

buildConfirmation

	self addText: self text.
	self addBreak; addBreak.

	(self addButtonText: 'YES') name: 'collectionAcceptDelete'; ajaxSubmit; onSubmitAnswer: true. "and close"

	self addSpace.

	(self addButtonText: 'NO') ajaxSubmit; onSubmitAnswer: false. "and close"! !
!UMLWebDialog categoriesFor: #build!printing!public! !
!UMLWebDialog categoriesFor: #buildConfirmation!printing!public! !

!UMLWebDialog class methodsFor!

newConfirm
	"confirm something with YES or NO button"
	^super new
		method: #ajaxUpdate;
		type: #confirmation! !
!UMLWebDialog class categoriesFor: #newConfirm!instance creation!public! !

