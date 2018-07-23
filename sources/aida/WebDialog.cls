"Filed out from Dolphin Smalltalk 7"!

WebWidget subclass: #WebDialog
	instanceVariableNames: 'type text'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebDialog guid: (GUID fromString: '{3e26ca28-2198-463f-810a-dc67ca21f9ad}')!
WebDialog comment: 'WebDialog for different dialgos with a user, like delete confirmation ans similar. See class creation methods to create specific dialogs:

- WebDialog class>>newConfirmation 
      for simple yes/no answers to a stated question. Used mainly for confirmations of actions like delete in action                methods.'!
!WebDialog categoriesForClass!Unclassified! !
!WebDialog methodsFor!

ajaxUpdate
	self build!

build
	self clear.
	self registerId.
	self isConfirmation ifTrue: [self buildConfirmation].
	self isInfo ifTrue: [self buildInfo].
	self context form registerFormElementsIn: self.!

buildConfirmation

	self addText: self text.
	self addBreak; addBreak.
	(self addButtonText: 'YES')
		ajaxSubmit;
		onSubmitAnswer: true. "and close"
	self addSpace.
	(self addButtonText: 'NO')
		ajaxSubmit;
		onSubmitAnswer: false. "and close"!

buildInfo
	self addText: self text.
	self addBreak; addBreak.
	(self addButtonText: 'Close')
		ajaxSubmit;
		onSubmitClose;
		style: 'font-weight: bold;'.!

isConfirmation
	^self type = #confirmation!

isInfo
	^self type = #information!

text
	"text to be written on a dialog, like a confirmation question"
	text isNil ifTrue: [^''].
	^text!

text: aString
	"text to be written on a dialog, like a confirmation question"
	text := aString.!

type
	"#confirmation etc."
	^type!

type: aSymbol
	type := aSymbol! !
!WebDialog categoriesFor: #ajaxUpdate!printing!public! !
!WebDialog categoriesFor: #build!printing!public! !
!WebDialog categoriesFor: #buildConfirmation!printing!public! !
!WebDialog categoriesFor: #buildInfo!printing!public! !
!WebDialog categoriesFor: #isConfirmation!public!testing! !
!WebDialog categoriesFor: #isInfo!public!testing! !
!WebDialog categoriesFor: #text!accessing!public! !
!WebDialog categoriesFor: #text:!accessing!public! !
!WebDialog categoriesFor: #type!private! !
!WebDialog categoriesFor: #type:!private! !

!WebDialog class methodsFor!

newConfirm
	"confirm something with YES or NO button"
	^super new
		method: #ajaxUpdate;
		type: #confirmation!

newInfo
	"just show some information and close button"
	^super new
		method: #ajaxUpdate;
		type: #information! !
!WebDialog class categoriesFor: #newConfirm!instance creation!public! !
!WebDialog class categoriesFor: #newInfo!instance creation!public! !

