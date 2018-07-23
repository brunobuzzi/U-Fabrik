"Filed out from Dolphin Smalltalk 7"!

WebFormElement subclass: #WebInPlaceEditableText
	instanceVariableNames: 'size attribute formated allow triggerElement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebInPlaceEditableText guid: (GUID fromString: '{921a001d-5e65-4409-a104-747f452be583}')!
WebInPlaceEditableText comment: ''!
!WebInPlaceEditableText categoriesForClass!Unclassified! !
!WebInPlaceEditableText methodsFor!

addSetupScript
	"Scriptaculous specific"
	| url urlFormated |
	url := self ajaxCallUrl, '?', (self ajaxCallUrlParametersFor: self id), '&ajaxInPlaceEditing'.
	urlFormated := self isFormated ifTrue: [url, '&wikiFormated'] ifFalse: [url].
	self scriptAfter: 'new Ajax.InPlaceEditor(''', self id asString, 
		''', ''', urlFormated, ''', {', self rowsCols, self textOptions, self externalControl, 
		(self isFormated ifTrue: [',loadTextURL:''', url, ''''] ifFalse: ['']), '})'!

allow
	"is edit allowed at all?"
	allow isNil ifTrue: [^true].
	^allow!

allow: aBoolean
	allow := aBoolean!

attribute
	"<b> etc"
	attribute isNil ifTrue: [^''].
	^attribute!

attribute: aString
	attribute := aString!

bold
	self attribute: '<b>'!

cancelText
	| app |
	app := self app.
	^app notNil 
		ifTrue: [self app style inPlaceCancelText]
		ifFalse: ['Cancel']!

columns
	"length of edit field or textarea"
	self size isNil ifTrue: [^20].
	self size class == Point ifTrue: [^self size x].
	^self size!

endAttributeTag
	self attribute isEmpty ifTrue: [^''].
	^'</', self attribute copyFrom: 3 to: 5!

externalControl
	"Scriptaculous specific"
	| idSymbol |
	self triggerElement isNil ifTrue: [^''].
	idSymbol := self triggerElement isSymbol 
		ifTrue: [self triggerElement] ifFalse: [self triggerElement registerId. self triggerElement id].
	^', externalControl:''', idSymbol asString, ''''!

initialize
	"Scriptaculous specific"
	super initialize.
	self app style ensureJavascriptForScriptaculousInHeader.
	self app style ensureJsResourceForScriptaculous.!

isFormated
	^formated notNil and: [formated]!

okText
	| app |
	app := self app.
	^app notNil 
		ifTrue: [self app style inPlaceOkText]
		ifFalse: ['Ok']!

printHTMLPageOn: aStream for: aRequest on: aSession
	self registerId. 
	self prepareToHTMLPrintOn: aSession.
	self allow ifTrue: [self addSetupScript].
	self scriptBefore notNil ifTrue: 
		[self scriptBefore printHTMLPageOn: aStream for: aRequest on: aSession].
	aStream nextPutAll: self startAttributeTag.
	aStream nextPutAll: '<span '. self printAttributesOn: aStream for: aSession. aStream nextPut: $>. 
	aStream nextPutAll: (self properlyFormatedValueOn: aSession).
	aStream nextPutAll: '</span>', self endAttributeTag.
	(self allow and: [self triggerElement isKindOf: WebElement])
		ifTrue: [self triggerElement printHTMLPageOn: aStream for: aRequest on: aSession].
	self scriptAfter notNil ifTrue: 
		[self scriptAfter printHTMLPageOn: aStream for: aRequest on: aSession].!

properlyFormatedValueOn: aSession
	| vlue |
	vlue := self value.
	self isFormated ifTrue: [vlue := vlue asWikiHtml].
	^AIDASite convertToWeb: "UTF8 encoding"
		(WebFormElement autoConvertAndEncodeQuotes: vlue) on: aSession!

rows
	"number of lines in edit area"
	self size isNil ifTrue: [^1].
	self size class == Point ifTrue: [^self size y].
	^1!

rowsCols
	^'rows:', self rows printString, ',cols:', self columns printString!

savingText
	^'...'!

size
	"if number, then editor is one line, if point, it is text area!!"
	^size!

size: aNumberOrPoint
	"if number, then editor is one line, if point, it is text area!!"
	size := aNumberOrPoint!

startAttributeTag
	^self attribute!

textOptions
	"Scriptaculous specific"
	| text |
	text := ', okText:''', self okText, ''', cancelText:''', self cancelText, ''', savingText:''', self savingText, ''''.
	^AIDASite convertToWeb: text on: self app session!

triggerElement
	"element which triggers edit mode. If it is real element and not only id, it will be 
       added after editable text, "
	^triggerElement!

triggerElement: aWebElementOrId
	triggerElement := aWebElementOrId!

wikiFormated
	"source text is formated in wiki format"
	formated := true! !
!WebInPlaceEditableText categoriesFor: #addSetupScript!private! !
!WebInPlaceEditableText categoriesFor: #allow!accessing!public! !
!WebInPlaceEditableText categoriesFor: #allow:!private! !
!WebInPlaceEditableText categoriesFor: #attribute!private! !
!WebInPlaceEditableText categoriesFor: #attribute:!private! !
!WebInPlaceEditableText categoriesFor: #bold!accessing!public! !
!WebInPlaceEditableText categoriesFor: #cancelText!public!settings! !
!WebInPlaceEditableText categoriesFor: #columns!public!settings! !
!WebInPlaceEditableText categoriesFor: #endAttributeTag!private! !
!WebInPlaceEditableText categoriesFor: #externalControl!private! !
!WebInPlaceEditableText categoriesFor: #initialize!initialize-release!public! !
!WebInPlaceEditableText categoriesFor: #isFormated!private! !
!WebInPlaceEditableText categoriesFor: #okText!public!settings! !
!WebInPlaceEditableText categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebInPlaceEditableText categoriesFor: #properlyFormatedValueOn:!printing!public! !
!WebInPlaceEditableText categoriesFor: #rows!public!settings! !
!WebInPlaceEditableText categoriesFor: #rowsCols!private! !
!WebInPlaceEditableText categoriesFor: #savingText!public!settings! !
!WebInPlaceEditableText categoriesFor: #size!private! !
!WebInPlaceEditableText categoriesFor: #size:!accessing!public! !
!WebInPlaceEditableText categoriesFor: #startAttributeTag!private! !
!WebInPlaceEditableText categoriesFor: #textOptions!private! !
!WebInPlaceEditableText categoriesFor: #triggerElement!accessing!public! !
!WebInPlaceEditableText categoriesFor: #triggerElement:!accessing!public! !
!WebInPlaceEditableText categoriesFor: #wikiFormated!accessing!public! !

!WebInPlaceEditableText class methodsFor!

aspect: aSymbol for: anObject
	^self new aspect: aSymbol for: anObject!

aspect: aSymbol for: anObject size: aNumberOrPoint
	^self new aspect: aSymbol for: anObject; size: aNumberOrPoint!

aspect: aSymbol for: anObject size: aNumberOrPoint allow: aBoolean
	^self new aspect: aSymbol for: anObject; 
		size: aNumberOrPoint;
		allow: aBoolean	"is edit allowed at all?"! !
!WebInPlaceEditableText class categoriesFor: #aspect:for:!instance creation!public! !
!WebInPlaceEditableText class categoriesFor: #aspect:for:size:!instance creation!public! !
!WebInPlaceEditableText class categoriesFor: #aspect:for:size:allow:!instance creation!public! !

