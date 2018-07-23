"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebFormElement
	instanceVariableNames: 'aspect object adaptor value enterTab'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebFormElement guid: (GUID fromString: '{7654e8b5-6661-4ab0-8349-caa99fc6d086}')!
WebFormElement comment: ''!
!WebFormElement categoriesForClass!Unclassified! !
!WebFormElement methodsFor!

activate
	"move focus and select the text in that form field. (focus+select)"
	"Prototype specific"
	self registerId.
	self scriptAfter: 'Field.activate(''', self id, ''')'!

adapt
	"set appropriate aspect adaptor for that element"
	(self object isKindOf: Collection) ifTrue:  
		"adapt to an element of collection, which must be an indexed one!! "
		[^self adaptor: ((AIDAIndexedAdaptor forIndex: self aspect) subject: self object)].
	(self aspect isKindOf: Symbol) ifTrue:
		[self adaptor: ((AIDAAspectAdaptor forAspect: self aspect) subject: self object)].!

adaptor
	^adaptor!

adaptor: aProtocolAdaptor
	adaptor := aProtocolAdaptor.!

addEnterTabScriptIfNessesary
	self enterTab ifFalse: [^nil].
	self onEnterTabulateTo: (self context form nextTabOrderFrom: self)!

aspect
	^aspect!

aspect: aSymbol
	aspect := aSymbol.!

aspect: aSymbol for: anObject
	"set the link between this form element and an aspect (name of instance variable) 
	of an object , which value is presented in this webFormElement. The appropriate 
	aspect adaptor is generated after page composition in aWebApplication printWebView 
	method to check also elements which were added to subelements later!!. Name of a form 
	element is set to an aspect name, if not already set differently"
	self aspect: aSymbol.
	self object: anObject!

enterTab
	"is tabulation witn Enter key enabled?"
	enterTab isNil ifTrue: [^false].
	^enterTab!

enterTab: aBoolean
	enterTab := aBoolean!

focus
	"move the input focus to that form field"
	"Prototype specific"
	self registerId.
	self scriptAfter: 'Field.focus(''', self id, ''')'!

hasName
	^self name notNil and: [self name notEmpty]!

ignoreEnterKey
	"don't allow ENTER/RETURN key to submit a form unintentionally, for instance"
	"Prototype specific"
	self scriptAfter: 'Event.observe(''', self id, ''', ''keypress'', function(event) {
  		if (event.keyCode == Event.KEY_RETURN) { Event.stop(event); } } )'!

initialize
	self name: ''.
"	self app form registerFormElementsIn: self "!

isAutocompleteField
	^false!

isButton
	^false!

isCheckBox
	^false!

isDateInputField
	^false!

isEmpty
	"input field is empty or nil"
	| vlue |
	vlue := self object perform: self aspect.
	^vlue isNil 
		or: [((vlue isKindOf: String) and: [vlue isEmpty])
			or: [(vlue isKindOf: Number) and: [vlue = 0] ]]!

isFileInputField
	^false!

isFormElement
	^true!

isInputField
	^false!

isListBox
	^false!

isMenu
	^false!

isRadioButton
	^false!

isStreamed
	"Post data from web request is streamed directly into output stream. 
	Only WebFileInputField can do that for now"
	^false!

isTextArea
	^false!

name
	^self attributesAt: #name!

name: aString
	self attributesAt: #name put: aString!

noTab
	"skip this form element when tabulating with TAB"
	"This attribute specifies the position of the current element in the tabbing order of that form"
	self tabIndex: 0.!

object
	^object!

object: anObject

	"set the object, which instance variable is presented as aspect in this fom element"

	object := anObject.!

onChange: aJavascriptCode
	self attributesAt: #onChange add: aJavascriptCode!

onChangePost
	"after field change immediatelly post contents to server (AJAX)"
	self onChangePostAndUpdate: nil!

onChangePostAndUpdate: anElementOrId
	"after field change, post contents to server and AJAX update anElementOrId  "
	self onChange: (self scriptForPostAndUpdate: anElementOrId with: nil)!

onChangePostAndUpdate: anElementOrId with: aParmString
	"after field change, post contents to server and AJAX update anElementOrId  with a parameter"
	self onChange: (self scriptForPostAndUpdate: anElementOrId with: aParmString)!

onChangePostAndUpdateSelf
	"DONT WORK YET!!"
	"after field change, post contents to server and AJAX update that form element  "
	self registerId.
	self onChangePostAndUpdate: self!

onChangeReload
	"reload current page on change off that form element"
	self onChange: 'window.location.reload()'.!

onEnterTabulate
	"It goes to the next element in tabulation order"
	"This allows ENTER key to be used for tabulation, like a TAB. "
	self enterTab: true. "to make tabulation script late, just before htmlPrint"!

onEnterTabulateTo: aFormElementOrId
	"allow ENTER key to be used for tabulation, like a TAB"
	"Prototype specific"
	| nextId |
	nextId := (aFormElementOrId isKindOf: WebElement) 
		ifTrue: [aFormElementOrId id] ifFalse: [aFormElementOrId asString].
	nextId isNil ifTrue: [nextId := ''].
	self scriptAfter: 'Event.observe(''', self id, ''', ''keypress'', function(event) {
  		if (event.keyCode == Event.KEY_RETURN) {  
			Event.stop(event); $(''', nextId, ''').activate(); } } )'!

onFocus: aJavascriptCode
	self attributesAt: #onFocus add: aJavascriptCode!

onKeyPressPostAndUpdate: anElementOrId
	"after any key press in a field, post contents to server (AJAX)"
	self onKeyPress: (self scriptForPostAndUpdate: anElementOrId  with: nil)!

onKeyUpPostAndUpdate: anElementOrId
	"after any key  release in a field, post contents to server (AJAX)"

	self onKeyUp: (self scriptForPostAndUpdate: anElementOrId with: nil)!

onSelect: aJavascriptCode
	self attributesAt: #onSelect add: aJavascriptCode!

prepareToHTMLPrintOn: aSession
	super prepareToHTMLPrintOn: aSession.
	self addEnterTabScriptIfNessesary.!

scriptForPostAndUpdate: anElement with: anArgString
	"Prototype specific"
	| url id parms |
	id := anElement notNil ifTrue: [anElement registerId. anElement id]  ifFalse: [#nil].
	self registerId. "if not yet"
	url := self ajaxCallUrl. 
	parms := self ajaxCallUrlParametersFor: anElement.
	anArgString notNil ifTrue: [parms := parms, '&parm=', anArgString].
	^'var field = Form.Element.serialize(''', self id asString, 
        '''); var name = $(''', self id asString,      "a name of a single form element, to distinguish from full form post"
        ''').name; new Ajax.Updater(''', id asString, 
        ''', ''', "url, ''', {method: ''get'', parameters: ''', parms, ''' + field, evalScripts: true})'" url, 
        ''', {method: ''post'', postBody: field + ''', ('&', parms), '&ajaxSingleField='' + name, evalScripts: true})'!

select
	"select a whole input. Be sure to focut it first!!"
	"Prototype specific"
	self registerId.
	self scriptAfter: 'Field.select(''', self id, ''')'!

setValue: aString
	"preset the value of this form element, without set aspect adaptor"
	value :=  aString.!

tabIndex
	"This attribute specifies the position of the current element in the tabbing order of that form"
	^(self attributes at: #tabindex ifAbsent: [^nil]) asInteger!

tabIndex: aNumber
	"This attribute specifies the position of the current element in the tabbing order 
	for the current document"
	self attributes at: #tabindex put: aNumber printString!

type: aString
	"set the type of  this form element"
	self attributesAt: #type put: aString!

value
	"if not preset, ask model adapter for value"
	^value isNil
		ifTrue: [self adaptor value]
		ifFalse: [value]!

value: aValue
	"set the value of this form element"
"	self adaptor isNil ifTrue: [^nil]. "
	self adaptor value:  aValue.! !
!WebFormElement categoriesFor: #activate!events!public! !
!WebFormElement categoriesFor: #adapt!model adapting!public! !
!WebFormElement categoriesFor: #adaptor!accessing!public! !
!WebFormElement categoriesFor: #adaptor:!accessing!public! !
!WebFormElement categoriesFor: #addEnterTabScriptIfNessesary!printing!public! !
!WebFormElement categoriesFor: #aspect!accessing!public! !
!WebFormElement categoriesFor: #aspect:!accessing!public! !
!WebFormElement categoriesFor: #aspect:for:!model adapting!public! !
!WebFormElement categoriesFor: #enterTab!private! !
!WebFormElement categoriesFor: #enterTab:!private! !
!WebFormElement categoriesFor: #focus!events!public! !
!WebFormElement categoriesFor: #hasName!public!testing! !
!WebFormElement categoriesFor: #ignoreEnterKey!events!public! !
!WebFormElement categoriesFor: #initialize!initialize-release!public! !
!WebFormElement categoriesFor: #isAutocompleteField!public!testing! !
!WebFormElement categoriesFor: #isButton!public!testing! !
!WebFormElement categoriesFor: #isCheckBox!public!testing! !
!WebFormElement categoriesFor: #isDateInputField!public!testing! !
!WebFormElement categoriesFor: #isEmpty!public!testing! !
!WebFormElement categoriesFor: #isFileInputField!public!testing! !
!WebFormElement categoriesFor: #isFormElement!public!testing! !
!WebFormElement categoriesFor: #isInputField!public!testing! !
!WebFormElement categoriesFor: #isListBox!public!testing! !
!WebFormElement categoriesFor: #isMenu!public!testing! !
!WebFormElement categoriesFor: #isRadioButton!public!testing! !
!WebFormElement categoriesFor: #isStreamed!public!testing! !
!WebFormElement categoriesFor: #isTextArea!public!testing! !
!WebFormElement categoriesFor: #name!attributes!public! !
!WebFormElement categoriesFor: #name:!attributes!public! !
!WebFormElement categoriesFor: #noTab!attributes!public! !
!WebFormElement categoriesFor: #object!accessing!public! !
!WebFormElement categoriesFor: #object:!accessing!public! !
!WebFormElement categoriesFor: #onChange:!events!public! !
!WebFormElement categoriesFor: #onChangePost!events-ajax!public! !
!WebFormElement categoriesFor: #onChangePostAndUpdate:!events-ajax!public! !
!WebFormElement categoriesFor: #onChangePostAndUpdate:with:!events-ajax!public! !
!WebFormElement categoriesFor: #onChangePostAndUpdateSelf!events-ajax!public! !
!WebFormElement categoriesFor: #onChangeReload!events!public! !
!WebFormElement categoriesFor: #onEnterTabulate!events!public! !
!WebFormElement categoriesFor: #onEnterTabulateTo:!events!public! !
!WebFormElement categoriesFor: #onFocus:!events!public! !
!WebFormElement categoriesFor: #onKeyPressPostAndUpdate:!events-ajax!public! !
!WebFormElement categoriesFor: #onKeyUpPostAndUpdate:!events-ajax!public! !
!WebFormElement categoriesFor: #onSelect:!events!public! !
!WebFormElement categoriesFor: #prepareToHTMLPrintOn:!printing!public! !
!WebFormElement categoriesFor: #scriptForPostAndUpdate:with:!private-ajax!public! !
!WebFormElement categoriesFor: #select!events!public! !
!WebFormElement categoriesFor: #setValue:!accessing!public! !
!WebFormElement categoriesFor: #tabIndex!attributes!public! !
!WebFormElement categoriesFor: #tabIndex:!attributes!public! !
!WebFormElement categoriesFor: #type:!attributes!public! !
!WebFormElement categoriesFor: #value!accessing!public! !
!WebFormElement categoriesFor: #value:!accessing!public! !

!WebFormElement class methodsFor!

autoConvertAndEncodeQuotes: aValue
	"auto convertion, character entitites encoding (just quotes) for form elements"
	"while UTF-8 encoding is done in WebElement>>printAttribute:value:on:for: !! "
	| vlue |
	vlue := WebFormElement autoConvertToString: aValue. "dates, numbers etc."
	vlue := AIDASite encodeQuoteEntitiesIn: vlue.               "char entity encoding for double quote '' "
	^vlue!

autoConvertAndEncodeValue: aValue
	"auto convertion, character entitites encoding for form elements"
	"while UTF-8 encoding is done in WebElement>>printAttribute:value:on:for: !! "
	| vlue |
	vlue := WebFormElement autoConvertToString: aValue. "dates, numbers etc."
	vlue := AIDASite encodeCharEntitiesIn: vlue.               "char entity encoding for < > & '' "
	^vlue!

new
	^super new initialize! !
!WebFormElement class categoriesFor: #autoConvertAndEncodeQuotes:!auto type converting!public! !
!WebFormElement class categoriesFor: #autoConvertAndEncodeValue:!auto type converting!public! !
!WebFormElement class categoriesFor: #new!instance creation!public! !

