"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #UMLWebButton
	instanceVariableNames: 'text'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebButton guid: (GUID fromString: '{f5be3993-7770-4d91-8dd9-d0cd378879a0}')!
UMLWebButton comment: ''!
!UMLWebButton categoriesForClass!Unclassified! !
!UMLWebButton methodsFor!

acceptFormInputFrom: aPostDataDictionary

	self onSubmitAnswer notNil ifTrue:
		[self context parent answer: self onSubmitAnswer]!

action: aSymbol
	self name: aSymbol asString!

ajaxSubmit
	"submit a form by Ajax instead of normal post. Page is NOT reloaded!! To update some element after submit, 
	do: self context form  #onSubmitUpddate: anElement." 
	"See also WebDemoApp>>ajaxSubmitExample"
	| ctx |
	ctx := self firstContextFromStack.
	ctx form registerFormElementsIn: self. "we need it for a script"
	self prepareScriptForAjaxSubmitFor: ctx request.!

ensureOnClickReturnFalseAtEnd
	"for onClick script, ensure that 'return false' (if any) will be the last sentence in the script"
	| coll new |
	coll := self attributesAt: #onClick. coll isNil ifTrue: [^nil].
	(coll isKindOf: OrderedCollection) ifFalse: [^nil].
	(coll contains: [:each | '*return false*' match: each]) ifFalse: [^nil].
	new := coll reject: [:each | '*return false*' match: each].  "also to avoid duplicates"
	new := new add: 'return false'; yourself.
	self attributesAt: #onClick put: new.!

isButton
	^true!

isEmpty
	^true!

name
	^self attributesAt: #name!

name: aString
	self attributesAt: #name put: aString!

onSubmitAnswer
	"Answer when button is clicked and form submitted.Answer to the currenty executing context"
	"Part of tree-like control flow, see WebDemoApp for example "
	^self otherAt: #OnSubmitAnswer ifAbsent: [nil]!

onSubmitAnswer: anObject
	"answer anObject when button is clicked and form submitted.Answer to the currenty executing context"
	"Current window is immediatelly closed after submit. Current context also!!"
	"Part of tree-like control flow, see WebDemoApp for example "
	self otherAt: #OnSubmitAnswer put: anObject.
	self onClick: 'closeLightboxLevel(', self context level printString,')'. "from WebStyle>>lightboxJs"!

onSubmitClose
	"Current window (if popup) is closed after submit, its context also"
	self onClickUpdate: nil with: nil additional: 'aidaCloseWindow' contentFrom: nil. 
	self onClick: 'closeLightboxLevel(', self context level printString,')'. "from WebStyle>>lightboxJs"!

onSubmitUpdate: aWebElement
	"Ajax update that element after submit"
	self onClickUpdate: aWebElement!

prepareScriptForAjaxSubmitFor: aRequest
	| popupStub |
	popupStub := aRequest context window popupStub.  "in case of popup dialog with #ask: or #show:, otherwise it 
													    will be ignored in WebApplication>>ajaxUpdate:with:"
	self onClick: (self scriptForPostAndUpdate: popupStub with: nil 
					additional: nil contentFrom: nil for: aRequest context).
	self onClick: 'return false'. "to break normal form submitting and full page reload"!

printHTMLPageOn: aStream for: aRequest on: aSession

	self subclassResponsibility
!

scriptForPostAndUpdate: anElement with: anArgString  additional: anArg2String contentFrom: anotherElement for: aContext
	"Whole form post!! "
	"first argument will be send as an argument of the method while second is additional"
	"If anotherElement is not nil then contents of that element will be put in original element, not original itself!! "
	"See WebApplication>>respondToAjaxRequest: for more"
	"Prototype specific"
	| url id parms buttonName buttonValue |
	id := anElement notNil ifTrue: [anElement registerId; id] ifFalse: [#nil].
	url := self ajaxCallUrl. 
	parms := self ajaxCallUrlParametersFor: anElement.
	anArgString notNil ifTrue: [parms := parms, '&parm=', anArgString].
	anArg2String notNil ifTrue: [parms := parms, '&parm2=', anArg2String].
	anotherElement notNil ifTrue: 
		[parms := parms, '&ajaxContentElementId=', [anotherElement registerId. anotherElement id asString] value ].
	buttonName := self name.  "Form.Serialize somehow doesn't add that button, so we add it manually"
	buttonValue := self text.
	^'var serializedForm = Form.serialize(''', (aContext form registerId; id) asString, 
        '''); new Ajax.Updater(''', id asString, 
        ''', ''', "url, ''', {method: ''get'', parameters: ''', parms, ''' + form, evalScripts: true})'" url, 
        ''', {method: ''post'', postBody: serializedForm + ''', ('&', parms),  
	'&', buttonName, '=', buttonValue, '&ajaxPressedButton=', buttonName, ''', evalScripts: true})'!

shouldIdent
	^false!

tagClosing

	^'</a>'!

text
	^text!

text: anObject
	text := anObject!

type: aString
	"set the type of  this form element"
	self attributesAt: #type put: aString! !
!UMLWebButton categoriesFor: #acceptFormInputFrom:!private! !
!UMLWebButton categoriesFor: #action:!accessing!public! !
!UMLWebButton categoriesFor: #ajaxSubmit!ajax submitting!public! !
!UMLWebButton categoriesFor: #ensureOnClickReturnFalseAtEnd!public! !
!UMLWebButton categoriesFor: #isButton!public!testing! !
!UMLWebButton categoriesFor: #isEmpty!public!testing! !
!UMLWebButton categoriesFor: #name!attributes!public! !
!UMLWebButton categoriesFor: #name:!attributes!public! !
!UMLWebButton categoriesFor: #onSubmitAnswer!private-ajax!public! !
!UMLWebButton categoriesFor: #onSubmitAnswer:!ajax submitting!public! !
!UMLWebButton categoriesFor: #onSubmitClose!ajax submitting!public! !
!UMLWebButton categoriesFor: #onSubmitUpdate:!ajax submitting!public! !
!UMLWebButton categoriesFor: #prepareScriptForAjaxSubmitFor:!private-ajax!public! !
!UMLWebButton categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!UMLWebButton categoriesFor: #scriptForPostAndUpdate:with:additional:contentFrom:for:!private-ajax!public! !
!UMLWebButton categoriesFor: #shouldIdent!public!testing! !
!UMLWebButton categoriesFor: #tagClosing!printing!public! !
!UMLWebButton categoriesFor: #text!accessing!private! !
!UMLWebButton categoriesFor: #text:!accessing!private! !
!UMLWebButton categoriesFor: #type:!attributes!public! !

!UMLWebButton class methodsFor!

text: aString

	^self new 
		text: aString;
		class: #button;
		type: #submit;
		"ajaxSubmit;"
		yourself.!

text: aString action: aSymbol

	^self new 
		text: aString;
		action: aSymbol;
		class: #button;
		type: #submit;
		"ajaxSubmit;"
		yourself.! !
!UMLWebButton class categoriesFor: #text:!public! !
!UMLWebButton class categoriesFor: #text:action:!public! !

