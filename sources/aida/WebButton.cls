"Filed out from Dolphin Smalltalk 7"!

WebFormElement subclass: #WebButton
	instanceVariableNames: 'type image size'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebButton guid: (GUID fromString: '{f8039b3c-4bd2-4aaf-8ddf-699ef74c2406}')!
WebButton comment: ''!
!WebButton categoriesForClass!Unclassified! !
!WebButton methodsFor!

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

image
	^image!

image: aWebImage
	"if button is an image"
	image := aWebImage!

initialize
	self type: 'submit'.!

isButton
	^true!

isEmpty
	^true!

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

prepareImageAttributeOn: aSession
	self attributesAt: #src put:  (self image urlOnSession: aSession)!

prepareScriptForAjaxSubmitFor: aRequest
	| popupStub |
	popupStub := aRequest context window popupStub.  "in case of popup dialog with #ask: or #show:, otherwise it 
													    will be ignored in WebApplication>>ajaxUpdate:with:"
	self onClick: (self scriptForPostAndUpdate: popupStub with: nil 
					additional: nil contentFrom: nil for: aRequest context).
	self onClick: 'return false'. "to break normal form submitting and full page reload"!

printHTMLPageOn: aStream for: aRequest on: aSession
	self image notNil ifTrue:
		[self prepareImageAttributeOn: aSession].
	self ensureOnClickReturnFalseAtEnd. "for ajaxSubmit"
	self prepareToHTMLPrintOn: aSession.
	aStream nextPutAll: self ident, '<input'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: self tagClosing.!

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

text
	^self attributesAt: #value!

text: aString
	"set the text to be shown in a button, It is actually a value attribute in input tag"
	| txt |
	"slovene csz are converted if char ^ is after such a char"
	txt := (aString includes: $^ ) ifTrue: [aString convertToSloveneChars] ifFalse: [aString].
	self attributesAt: #value put: txt.
	self addText: txt! !
!WebButton categoriesFor: #acceptFormInputFrom:!private! !
!WebButton categoriesFor: #action:!accessing!public! !
!WebButton categoriesFor: #ajaxSubmit!ajax submitting!public! !
!WebButton categoriesFor: #ensureOnClickReturnFalseAtEnd!private-ajax!public! !
!WebButton categoriesFor: #image!accessing!public! !
!WebButton categoriesFor: #image:!accessing!public! !
!WebButton categoriesFor: #initialize!initialize-release!public! !
!WebButton categoriesFor: #isButton!public!testing! !
!WebButton categoriesFor: #isEmpty!public!testing! !
!WebButton categoriesFor: #onSubmitAnswer!private-ajax!public! !
!WebButton categoriesFor: #onSubmitAnswer:!ajax submitting!public! !
!WebButton categoriesFor: #onSubmitClose!ajax submitting!public! !
!WebButton categoriesFor: #onSubmitUpdate:!ajax submitting!public! !
!WebButton categoriesFor: #prepareImageAttributeOn:!printing!public! !
!WebButton categoriesFor: #prepareScriptForAjaxSubmitFor:!private-ajax!public! !
!WebButton categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebButton categoriesFor: #scriptForPostAndUpdate:with:additional:contentFrom:for:!private-ajax!public! !
!WebButton categoriesFor: #shouldIdent!public!testing! !
!WebButton categoriesFor: #text!accessing!public! !
!WebButton categoriesFor: #text:!accessing!public! !

!WebButton class methodsFor!

image: aWebImage
	^self new 
		type: #image; 
		image: aWebImage!

image: aWebImage action: aSymbol
	^self new 
		type: #image; 
		image: aWebImage;
		action: aSymbol!

text: aString
	^self new
		type: #submit;
		text: aString!

text: aString action: aSymbol
	^self new 
		type: #submit;
		text: aString;
		action: aSymbol! !
!WebButton class categoriesFor: #image:!instance creation!public! !
!WebButton class categoriesFor: #image:action:!instance creation!public! !
!WebButton class categoriesFor: #text:!instance creation!public! !
!WebButton class categoriesFor: #text:action:!instance creation!public! !

