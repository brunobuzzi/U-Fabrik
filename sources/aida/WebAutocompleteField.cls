"Filed out from Dolphin Smalltalk 7"!

WebInputField subclass: #WebAutocompleteField
	instanceVariableNames: 'choicesAspect choicesObject choiceAspect elementToUpdate'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebAutocompleteField guid: (GUID fromString: '{299a3ef5-513e-446c-a115-96a48f7f959e}')!
WebAutocompleteField comment: ''!
!WebAutocompleteField categoriesForClass!Unclassified! !
!WebAutocompleteField methodsFor!

addSetupScriptOn: aStream choicesElement: aChoicesElement
	"Scriptaculous specific"
	| contextParm url afterUpdateElement idSymbol updateUrl parms |
	contextParm := WebContext contextIdName "aidaCtx", '=', self app context id printString.
	url := self ajaxCallUrlExtended, '&ajaxAutocompleteField&', contextParm.
	afterUpdateElement := self elementToUpdate isNil 
		ifTrue: [''] 
		ifFalse:
			[idSymbol := self elementToUpdate isSymbol 
				ifTrue: [self elementToUpdate] 
				ifFalse: [self elementToUpdate registerId. self elementToUpdate id].
			updateUrl := self ajaxCallUrl. 
			parms := self ajaxCallUrlParametersFor: self elementToUpdate. "is this needed at all?"
			'afterUpdateElement: function(element, selectedElement){var field = Form.Element.serialize(''',
			self id asString, '''); var name = $(''',
			self id asString, ''').name; new Ajax.Updater(''', idSymbol asString, ''', ''', updateUrl, 
			''', {method: ''post'', postBody: field + ''', ('&', parms), 
			'&ajaxSingleField='' + name, evalScripts: true})} '].

	aStream nextPutAll: '<script type="text/javascript">new Ajax.Autocompleter(''', 
		self id asString, ''', ''', aChoicesElement id asString, ''', ''', url, 
		''', {', afterUpdateElement, '});</script>', self eol.!

afterPostAndUpdate: aWebElement
	"after the selection the field is immediatelly Ajax posted and the specified element is updated"

	self elementToUpdate: aWebElement!

choiceAspect
	"this method is called on each choice to display choice's text"
	^choiceAspect!

choiceAspect: aSymbol
	choiceAspect := aSymbol!

choicesAspect
	^choicesAspect!

choicesAspect: aSymbol
	choicesAspect := aSymbol!

choicesAspect: aSymbol for: anObject
	"this method is called with our field as argument on that object. It must return a collection of strings"
	"example: myObject searchFor: aString (choicesAspect is #searchFor: )"
	self choicesAspect: aSymbol.
	self choicesObject: anObject!

choicesObject
	^choicesObject!

choicesObject: anObject
	choicesObject := anObject!

elementToUpdate
	^elementToUpdate!

elementToUpdate: aWebElementOrId
	(aWebElementOrId isKindOf: WebElement) ifTrue: [aWebElementOrId registerId].
	elementToUpdate := aWebElementOrId!

getChoicesForEntry: aString
	"return list of choices, selected already entered characters in  aString. "
	"always return text strings, not choice objects!!"
	| choices matchString |

	self choiceAspect isNil "one possiblity, direct question to choicesObject"
		ifTrue: [^self choicesObject perform: self choicesAspect with: aString].
	"other possibility, we select internaly from all choices"
	choices := self choicesObject perform: self choicesAspect.
	matchString := aString, '*'.
	choices := choices select: [:each | matchString match: (each perform: self choiceAspect)].
	^choices collect: [:each | each perform: self choiceAspect].!

initialize
	"Scriptaculous specific"
	super initialize.
	self app style ensureJavascriptForScriptaculousInHeader.
	self app style ensureJsResourceForScriptaculous.!

isAutocompleteField
	^true!

prepareAttributesToPrintOn: aSession
	"if choiceAspect is set, use it!! "
	self choiceAspect isNil ifTrue: [^super prepareAttributesToPrintOn: aSession].
	self value isNil ifTrue: [^nil].
	(self value class canUnderstand: self choiceAspect) ifFalse: [^nil].
	self attributesAt: #value put: 
		(WebFormElement autoConvertAndEncodeValue: (self value perform: self choiceAspect))!

printHTMLPageOn: aStream for: aRequest on: aSession
	| choicesElement |
	choicesElement := (WebElement newClass: #auto_complete) parent: self.
	self registerId. choicesElement registerId.
	super printHTMLPageOn: aStream for: aRequest on: aSession.
	choicesElement printHTMLPageOn: aStream for: aRequest on: aSession.
	self addSetupScriptOn: aStream choicesElement: choicesElement.!

saveThroughAdapterValue: aValueString
	| vlue choices |
	vlue :=  AIDASite convertFromWeb: aValueString on: self session. "ensure unicode!!"
	vlue := (WebFormElement autoConvertString:  vlue toObject: self value).
	self choicesObject notNil & self choiceAspect notNil ifTrue: "save real object, not only text!! "
		[choices := self choicesObject perform: self choicesAspect.
		vlue := choices detect: [:each | (each perform: self choiceAspect) = vlue] ifNone: [nil] ].
	self value: vlue.! !
!WebAutocompleteField categoriesFor: #addSetupScriptOn:choicesElement:!printing!public! !
!WebAutocompleteField categoriesFor: #afterPostAndUpdate:!events-ajax!public! !
!WebAutocompleteField categoriesFor: #choiceAspect!accessing!public! !
!WebAutocompleteField categoriesFor: #choiceAspect:!accessing!public! !
!WebAutocompleteField categoriesFor: #choicesAspect!private! !
!WebAutocompleteField categoriesFor: #choicesAspect:!private! !
!WebAutocompleteField categoriesFor: #choicesAspect:for:!private! !
!WebAutocompleteField categoriesFor: #choicesObject!private! !
!WebAutocompleteField categoriesFor: #choicesObject:!private! !
!WebAutocompleteField categoriesFor: #elementToUpdate!private! !
!WebAutocompleteField categoriesFor: #elementToUpdate:!private! !
!WebAutocompleteField categoriesFor: #getChoicesForEntry:!private! !
!WebAutocompleteField categoriesFor: #initialize!initialize-release!public! !
!WebAutocompleteField categoriesFor: #isAutocompleteField!public!testing! !
!WebAutocompleteField categoriesFor: #prepareAttributesToPrintOn:!printing!public! !
!WebAutocompleteField categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebAutocompleteField categoriesFor: #saveThroughAdapterValue:!private! !

!WebAutocompleteField class methodsFor!

aspect: aSymbol for: anObject choicesAspect: aChoicesSymbol for: aChoicesObject
	"choicesAspect method is called with our field as argument on aChoicesObject. 
	It must return a collection of strings"
	"example: myObject searchFor: aString (choicesAspect is #searchFor: )"
	^self new 
		aspect: aSymbol for: anObject;
		choicesAspect: aChoicesSymbol for: aChoicesObject!

aspect: aSymbol for: anObject choicesAspect: aChoicesSymbol for: aChoicesObject choiceAspect: aTextSymbol
	"choicesAspect method is called with our field as argument on aChoicesObject. 
	It returs a collection of objects, an choice's text 
	is retrieved with a call of choiceAspect method on each"
	^self new 
		aspect: aSymbol for: anObject;
		choicesAspect: aChoicesSymbol for: aChoicesObject;
		choiceAspect: aTextSymbol! !
!WebAutocompleteField class categoriesFor: #aspect:for:choicesAspect:for:!instance creation!public! !
!WebAutocompleteField class categoriesFor: #aspect:for:choicesAspect:for:choiceAspect:!instance creation!public! !

