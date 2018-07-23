"Filed out from Dolphin Smalltalk 7"!

WebWindow subclass: #WebPage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebPage guid: (GUID fromString: '{698e2d95-a849-48fe-a051-d9a6cb234573}')!
WebPage comment: ''!
!WebPage categoriesForClass!Unclassified! !
!WebPage methodsFor!

addHeader: aTagString value: aString
	self headers isNil ifTrue: [self initHeaders].
	self headers add: (aTagString -> aString)!

addJavascript: aScriptString
	self addScriptWithParms: 'language="JavaScript" type="text/javascript"' script: aScriptString!

addLinkToAlternateScreenStyleSheet: anObjectOrUrl
	| url |
	url := anObjectOrUrl isString
		ifTrue: [anObjectOrUrl]
		ifFalse: [self site urlResolver halfUrlFor: anObjectOrUrl].
	self addHeader: 'link' value: 'rel="alternate stylesheet" type="text/css" media="screen" href="', url, '" '!

addLinkToDefaultFavicon
	"WebStyle favicon (favorites icon). So far only in .ico format!!"
	self addLinkToFavicon: '/favicon.ico'!

addLinkToFavicon: aFaviconImageOrUrl
	"favicon (favorites icon). So far only in .ico format!!"
	| url |
	url := aFaviconImageOrUrl isString
		ifTrue: [aFaviconImageOrUrl]
		ifFalse: [self site urlResolver fullUrlFor: aFaviconImageOrUrl on: nil].
	self addHeader: 'link' value: 'rel="icon" type="image/x-icon" href="', url, '" '!

addLinkToJavascript: anObjectOrUrl
	| url |
	url := anObjectOrUrl isString
		ifTrue: [anObjectOrUrl]
		ifFalse: [self site urlResolver halfUrlFor: anObjectOrUrl].
	self addScriptWithParms: ' src="', url, '" language="JavaScript" type="text/javascript"' script: ''.!

addLinkToPrintStyleSheet: anObjectOrUrl
	| url |
	url := anObjectOrUrl isString
		ifTrue: [anObjectOrUrl]
		ifFalse: [self site urlResolver halfUrlFor: anObjectOrUrl].
	self addHeader: 'link' value: 'rel="stylesheet" type="text/css" media="print" href="', url, '" '!

addLinkToScreenStyleSheet: anObjectOrUrl
	| url |
	url := anObjectOrUrl isString
		ifTrue: [anObjectOrUrl]
		ifFalse: [self site urlResolver halfUrlFor: anObjectOrUrl].
	self addHeader: 'link' value: 'rel="stylesheet" type="text/css" media="screen" href="', url, '" '!

addMetaContentType: aString
	"example: 'text/html; charset=iso8859-2'"
	self addHeader: 'meta' value: 'http-equiv="Content-Type"  content="', aString, '" '!

addMetaDescription: aString
	self addHeader: 'meta' value: 'name="description" content="', aString, '"'!

addMetaKeywords: aString
	"keywords separated with , "
	self addHeader: 'meta' value: 'name="keywords" content="', aString, '"'!

addScriptWithParms: aString script: aScriptString
	self headers isNil ifTrue: [self initHeaders].
	self headers add: ('script' -> (Array with: aString with: aScriptString) )!

alink: aSymbol
	"set the color of active link text. It can be in hex format (for example #00FF00) 
	or name of color (for example #White)"
	self attributesAt: #alink put: (self colorValue: aSymbol)!

alinkColor: aSymbol
	self alink: aSymbol.!

app
	"return anApplication on which we are composing this web page"
	^self parent notNil 
		ifTrue: [self parent "context" app]
		ifFalse: [self firstContextFromStack app]!

background: anImageOrURL
	"set the URL for the background image"
	self attributesAt: #background put:
		(anImageOrURL isString 
			ifTrue: [anImageOrURL]
			ifFalse: [self site urlResolver halfUrlFor: anImageOrURL]).!

bgColor: aSymbol
	"set the color of page background)"
	self attributesAt: #bgcolor put: (self colorValue: aSymbol)!

bgImage: anImageOrURL
	self background: anImageOrURL.!

close
	"only the subwindow can be closed that way, not a main page"
	self error: 'only the subwindows can be closed!!'!

contentType
	"return 'text/html' as content type for web pages"
	^'text/html'!

headers
	^self otherAt: #pageHeaders ifAbsent: [nil]!

htmlDocType
	^self otherAt: #HTMLDocType ifAbsent: [self setHTML401Transitional].!

htmlDocType: aString
	^self otherAt: #HTMLDocType put: aString!

htmlTagAttributes
	"attributes of HTML tag"
	^self otherAt: #HTMLTagAttributes ifAbsent: [nil].!

htmlTagAttributes: aString
	"attributes of HTML tag"
	^self otherAt: #HTMLTagAttributes put: aString.!

identDepth
	^self otherAt: #identDepth ifAbsent: [0]!

identDepth: aNumber
	"current depth of identation. If 0, the we are at the start of the line"
	self otherAt: #identDepth put: aNumber!

initHeaders
	self otherAt: #pageHeaders put: OrderedCollection new.!

initPageHeaderLinks
	self initHeaders.
	self app isNil ifTrue: [^nil].
	self addMetaContentType: 'text/html; charset=UTF-8'.
	self addLinkToScreenStyleSheet: self site style screenCssResource.
	self addLinkToPrintStyleSheet: self site style printCssResource.
	self addLinkToDefaultFavicon. "that from WebStyle favicon in imgs"
	self addLinkToJavascript: self site style javascriptResource.
	self site style ensureJsResourceForLightbox.
	self site style ensureJavascriptForLightboxInHeader.  "for popups, Dialogs #ask:, #show: flow control"
	self addGlobalKeywords. "if any"!

isComposite

	"a WebPage is a composite element"
	^true!

isNewline
	^self identDepth = 0!

isRespondingStreamed
	"is this page able to stream HTML directly into response?"
	^false!

isWebApplication
	^false!

isWebPage
	^true!

isXHTML
	"is page in XHTML?"
	^self otherAt: #XHTML ifAbsent: [false]!

link: aSymbol
	"set the color of link text."
	self attributesAt: #link put: (self colorValue: aSymbol).!

linkColor: aSymbol
	self vlink: aSymbol.!

postInitialize
	self initPageHeaderLinks!

printDummyJavascriptSnippetOn: aStream
| snippet |
	snippet :=
'<script language="JavaScript">
...
</script>'.
	aStream nextPutAll: snippet!

printHeaderElementsOn: aStream
	self headers isNil ifTrue: [^self].
	self headers do: [:assoc | 
		aStream nextPutAll: '  <', assoc key, ' '.
		assoc key = 'script' 
			ifTrue: [| array | array := assoc value class == Array 
				ifTrue: [assoc value] ifFalse: [Array with: assoc value with: ''].
				aStream nextPutAll: (array at: 1), '>', (array at: 2), '</script>']
			ifFalse: [aStream nextPutAll: assoc value, self tagClosing].
		aStream nextPutAll: self eol].!

printHTMLPageOn: aStream for: aRequest on: aSession
	aStream 
		nextPutAll: self htmlDocType, self eol.
	aStream 
		nextPutAll: '<html', (self htmlTagAttributes notNil ifTrue: [' ', self htmlTagAttributes] ifFalse: ['']), '>';
		nextPutAll: self eol, ' <head>', self eol;
		nextPutAll: '  <title>' ,  (AIDASite convertToWeb: self title on: aSession), '</title>', self eol;
		nextPutAll: '  <meta name="generator" content="AIDA/Web, Smalltalk Web Application Server (www.aidaweb.si)"', self tagClosing, self eol.
	self printHeaderElementsOn: aStream.
	aStream nextPutAll: ' </head>', self eol.
	aStream nextPutAll: ' <body'. self printAttributesOn: aStream for: aSession. 
	aStream nextPutAll: '>', self eol.

	super printHTMLPageOn: aStream for: aRequest on: aSession.

	aStream nextPutAll:  self ident, ' </body>', self eol, '</html>', self eol.
	self clear.  "to release a composed page"!

printWebPageFor: aRequest on: aSession 
	^self!

redirectAfter: aSecondsNumber toUrl: aString
	"redirection or refresh of specified url, does not work on Mozilla!! "
	self addHeader: 'meta' value: 'http-equiv="REFRESH"  content="', 
		aSecondsNumber printString, '; url=', aString, '" '!

script: aString
	"add this JavaScript  to scripts executed at the opening of page"
	self scriptBefore: aString.!

setHTML401Strict
	^self htmlDocType: '<!!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">'!

setHTML401Transitional
	^self htmlDocType: '<!!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

'.!

setNewline
	self identDepth: 0!

setXHTML
	"this page is in XHTML"
	^self otherAt: #XHTML put: true!

setXHTML10Strict
	self setXHTML.
	^self htmlDocType: '<!!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'.!

setXHTML10Transitional
	self setXHTML.
	^self htmlDocType: '<!!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'.!

shouldIdent
	^false!

text: aSymbol
	"set the color of page text."
	self attributesAt: #text put: (self colorValue: aSymbol).!

textColor: aSymbol
	self text: aSymbol.!

title
	^self otherAt: #pageTitle ifAbsent: ['']!

title: aString
	self otherAt: #pageTitle put: aString convertToSloveneChars!

vlink: aSymbol
	"set the color of visited link text."
	self attributesAt: #vlink put: (self colorValue: aSymbol).!

vlinkColor: aSymbol
	self vlink: aSymbol.!

webPage
	^self! !
!WebPage categoriesFor: #addHeader:value:!private! !
!WebPage categoriesFor: #addJavascript:!header elements!public! !
!WebPage categoriesFor: #addLinkToAlternateScreenStyleSheet:!header elements!public! !
!WebPage categoriesFor: #addLinkToDefaultFavicon!header elements!public! !
!WebPage categoriesFor: #addLinkToFavicon:!header elements!public! !
!WebPage categoriesFor: #addLinkToJavascript:!header elements!public! !
!WebPage categoriesFor: #addLinkToPrintStyleSheet:!header elements!public! !
!WebPage categoriesFor: #addLinkToScreenStyleSheet:!header elements!public! !
!WebPage categoriesFor: #addMetaContentType:!header elements!public! !
!WebPage categoriesFor: #addMetaDescription:!header elements!public! !
!WebPage categoriesFor: #addMetaKeywords:!header elements!public! !
!WebPage categoriesFor: #addScriptWithParms:script:!private! !
!WebPage categoriesFor: #alink:!attributes!public! !
!WebPage categoriesFor: #alinkColor:!attributes!public! !
!WebPage categoriesFor: #app!accessing!public! !
!WebPage categoriesFor: #background:!attributes!public! !
!WebPage categoriesFor: #bgColor:!attributes!public! !
!WebPage categoriesFor: #bgImage:!attributes!public! !
!WebPage categoriesFor: #close!accessing!public! !
!WebPage categoriesFor: #contentType!accessing!public! !
!WebPage categoriesFor: #headers!private! !
!WebPage categoriesFor: #htmlDocType!accessing-doctypes!public! !
!WebPage categoriesFor: #htmlDocType:!private! !
!WebPage categoriesFor: #htmlTagAttributes!attributes!public! !
!WebPage categoriesFor: #htmlTagAttributes:!attributes!public! !
!WebPage categoriesFor: #identDepth!private! !
!WebPage categoriesFor: #identDepth:!private! !
!WebPage categoriesFor: #initHeaders!initialize-release!public! !
!WebPage categoriesFor: #initPageHeaderLinks!initialize-release!public! !
!WebPage categoriesFor: #isComposite!public!testing! !
!WebPage categoriesFor: #isNewline!private! !
!WebPage categoriesFor: #isRespondingStreamed!public!testing! !
!WebPage categoriesFor: #isWebApplication!public!testing! !
!WebPage categoriesFor: #isWebPage!public!testing! !
!WebPage categoriesFor: #isXHTML!accessing-doctypes!public! !
!WebPage categoriesFor: #link:!attributes!public! !
!WebPage categoriesFor: #linkColor:!attributes!public! !
!WebPage categoriesFor: #postInitialize!initialize-release!public! !
!WebPage categoriesFor: #printDummyJavascriptSnippetOn:!header elements!public! !
!WebPage categoriesFor: #printHeaderElementsOn:!printing!public! !
!WebPage categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebPage categoriesFor: #printWebPageFor:on:!printing!public! !
!WebPage categoriesFor: #redirectAfter:toUrl:!header elements!public! !
!WebPage categoriesFor: #script:!accessing!public! !
!WebPage categoriesFor: #setHTML401Strict!accessing-doctypes!public! !
!WebPage categoriesFor: #setHTML401Transitional!accessing-doctypes!public! !
!WebPage categoriesFor: #setNewline!private! !
!WebPage categoriesFor: #setXHTML!private! !
!WebPage categoriesFor: #setXHTML10Strict!accessing-doctypes!public! !
!WebPage categoriesFor: #setXHTML10Transitional!accessing-doctypes!public! !
!WebPage categoriesFor: #shouldIdent!public!testing! !
!WebPage categoriesFor: #text:!attributes!public! !
!WebPage categoriesFor: #textColor:!attributes!public! !
!WebPage categoriesFor: #title!accessing!public! !
!WebPage categoriesFor: #title:!accessing!public! !
!WebPage categoriesFor: #vlink:!attributes!public! !
!WebPage categoriesFor: #vlinkColor:!attributes!public! !
!WebPage categoriesFor: #webPage!accessing!public! !

