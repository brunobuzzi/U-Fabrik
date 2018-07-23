"Filed out from Dolphin Smalltalk 7"!

WebText subclass: #WebLink
	instanceVariableNames: 'ooReference urlReference parms anchor security'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebLink guid: (GUID fromString: '{d31cd523-24b6-41a2-8114-ffca0458b4e8}')!
WebLink comment: ''!
!WebLink categoriesForClass!Unclassified! !
!WebLink methodsFor!

accessAllowedFor: aSession
	"true if for object of that link a view is allowed. Only for object links, for plain urls access is always 	allowed"
	| app view right |
	self ooReference isNil ifTrue: [^true].
	app := self ooReference webAppFor: aSession.
	view := self parms at: 'view' ifAbsent: [app defaultView].
	right := aSession site securityManager 
		isUser: aSession user allowedTo: (app class viewRightSymbolFor: view) on: app class name.
	(right not and: [aSession adminAllowed]) ifTrue: 
		[app initAdminAccess. ^true].
	^right!

addAnchorTo: anUrlString
	| in out anch | 
	anch := (self anchor includes: $#) ifTrue: [''] ifFalse: ['#']. 
	anch := anch, self anchor.
	in := anUrlString readStream. out := WriteStream on: String new.
"
	out nextPutAll: (in upTo: $? ). out nextPutAll: anch. 
	in atEnd ifFalse: [out nextPut: $? . out nextPutAll: in upToEnd].
"
	out nextPutAll: in upToEnd. out nextPutAll: anch.
	^out contents

"(WebLink new anchor: 'activity222') addAnchorTo:	
	'http://biart.eranova.si/object/o7665965.html?view=editActivityName&uuid=1518'
"!

addSessionIdTo: aString on: aSession
	"for connection of secure seesion to nonsecure one"
	| url |
	aSession hasSecureCookie ifTrue: [^aString].
	url := (aString includes: $? ) ifTrue: [aString, '&'] ifFalse: [aString, '?'].
	^url, 'sessionId=', aSession id printString.!

anchor

	^anchor!

anchor: aString

	anchor := aString!

anchorNr: aNumber

	"set hypertext link anchor in the same page in format '#anchorx', for example '#anchor4'. Use WebAnchor nr: method to add an anchor in a web page."

	^self anchor: '#anchor', aNumber printString.!

checkVersionedReference
	"if ooReference is not a current version, then point it to current and add 
	version parameter to url. Version objects have always same identity, that
	is those of current object in version chain!! "
	self ooReference isCurrentVersion ifTrue: [^self].
	self parameter: 'version' value: self ooReference versionNumber.
	ooReference := self ooReference currentVersion.!

composeURLOn: aSession
	"do url link only if ooReference or urlReference exists, return nil otherwise"
	| stream url |
	stream := WriteStream on: String new.
	(self ooReference notNil or: [self urlReference ~= '']) ifTrue:
		["copy parameters to aSession parms, remove all other except session id"
		parms keysAndValuesDo: [:key :value | aSession parms at: key put: value].
		aSession parms copy keysAndValuesDo: [:key :value | 
			((parms includesKey: key) or: [key = 'id']) 
				ifFalse: [aSession parms removeKey: key ifAbsent: [nil]] ].
		"make an url reference"
		self ooReference notNil
			ifTrue:	
				[url := (aSession site urlResolver
					halfUrlFromPath:	(aSession site urlResolver halfUrlFor: self ooReference)
					andParms: aSession parms on: aSession).
				(self isEncryptedViewFor: self ooReference on: aSession) 
					ifTrue: [url := self encryptedUrl: url on: aSession] ]
			ifFalse: [url := self urlReference].
		anchor notNil ifTrue: [url := self addAnchorTo: url].
		stream nextPutAll: url.
		^self properAmpersand: stream contents] " &amp; instead of mere & in XHTML!! "
	ifFalse: [^nil].!

encryptedUrl: aString on: aSession
	"https and port if not default"
	| url port sslPort stream |
	url := aSession site urlResolver urlFromHalfUrl: aString on: aSession.
	('https*' match: url) ifFalse: [url := url copyReplaceAll: 'http' with: 'https'].
	port := aSession site port.
	sslPort := aSession site sslPort.
	port = 80 & sslPort = 443 ifTrue: [^url].
	stream := url readStream.
	url := (stream upTo: $/ ), '//'.
	stream upTo: $/.
	url := url, (port = 80 ifTrue: [stream upTo: $/] ifFalse: [stream upTo: $: ]).
	port  ~= 80 ifTrue: [stream upTo: $/].
	sslPort ~= 443 ifTrue: [url := url, ':', sslPort printString].
	url := url, '/', stream upToEnd.
	aSession hasSecureCookie ifFalse: [url := self addSessionIdTo: url on: aSession].
	^url!

href: aString
	"url of that link"
	self attributesAt: #href put: aString!

initialize
	self urlReference: ''.     
	parms := Dictionary new.!

isEncryptedViewFor: anObject on: aSession
	"check if we need to make an https link"
	| app view |
	app := anObject webAppFor: aSession.
	app isNil ifTrue: [^false].
	view := self parms at: 'view' ifAbsent: [app class defaultView].
	^app mustBeEncrypted: view!

isLink
	^true!

linkTo: aLink
	"set hypertext link to some other object or page. If argumet is a String, then this is an url reference, 	else this is object reference, which is resolved to url with help of URLResolver"
	"to add anchor: #(object anchor) !! "
	(aLink isKindOf: String ) ifTrue: [self urlReference: aLink. ^self].
	(aLink isKindOf: Array)
		ifTrue: [self ooReference: (aLink at: 1). self anchor: (aLink at: 2)]
		ifFalse: [self ooReference: aLink].!

onBlur: aJavascriptCode
	"link lost a mouse focus (when in image map)"
	self attributesAt: #onBlur add: aJavascriptCode!

onFocus: aJavascriptCode
	"link got maouse focus (when in image map)"
	self attributesAt: #onFocus add: aJavascriptCode!

ooReference
	^ooReference!

ooReference: anObject
	"Set the hypertext link to other object. This reference is at HTML generation 
	resolved to urlReference by URLResolver.  ooReference has precedence over 
	urlReference, if both are set."
	ooReference := anObject.
	anObject isVersionedObject ifTrue: [self checkVersionedReference]!

parameter: aParmString value: aValueString

	"set an optional parameter for query part of an URL string (e.g in http://www.eranova.si/demo.html?view=brief 'view' is a parameter and 'brief' is its value).
You can set more than one parameters by repeating this method"

	self parms at: aParmString asString put: aValueString asString.!

parms
	"return a dictionary of parameter:value pairs for a query part of an URL"
	^parms!

prepareAttributesToPrintOn: aSession
	self href: (self composeURLOn: aSession).!

printHTMLPageOn: aStream for: aRequest on: aSession
	| url allowed |
	self prepareToHTMLPrintOn: aSession. 
	allowed := self security notNil ifTrue: [self accessAllowedFor: aSession] ifFalse: [true].
	allowed 	ifTrue: 
		[url := self composeURLOn: aSession.
		url notNil ifTrue:
			[aStream nextPutAll: self ident, '<a'. self printAttributesOn: aStream for: aSession. 
			aStream nextPutAll: '>'.
			super printHTMLPageOn: aStream for: aRequest on: aSession.
			aStream nextPutAll: '</a>'] ]
		ifFalse: [self security = #grayed ifTrue: 
			["print a grayed text with attributes and composite elements"
			aStream nextPutAll: self ident, '<font'. self printAttributesOn: aStream for: aSession. 
			aStream nextPutAll: 'color="#c0c0c0">'.
			super printHTMLPageOn: aStream for: aRequest on: aSession.
			aStream nextPutAll: '</font>', self  eol ] ].!

printString
	^'aWebLink to: ', (self ooReference notNil 
		ifTrue: ['a', self ooReference printString] ifFalse: [self urlReference]).!

properAmpersand: aString
	" &amp; instead of mere & in XHTML!! "
	| page |
	page := self webPage.
	(page isNil or: [page isXHTML]) ifFalse: [^aString].
	^aString copyReplaceAll: '&' with: '&amp;'!

security
	"you can gray or not show a link at all if this object is not accessible - a view 
	on that aWebApplication has no access rights in SecurityManager for current user.
	possible values:
	nil - no access restrictions, always show the link,
	#grayed - show only text in gray - no link if access denied
	#invisible - don't show anything - invisible link if access denied
	"

	^security!

security: aSymbol

	security := aSymbol!

target: aString
	self attributesAt: #target put: aString!

text: aString linkTo: aLink
	self linkTo: aLink.
	self text: aString.!

urlReference
	^urlReference!

urlReference: aString
	"Set the URL hypertext link to the other Web page.  It is used if there is no ooReference 
	to resolve. ooReference has precedence over urlReference when both are set."
	urlReference := aString.!

view: aViewStringOrSymbol
	"for speedy additions of a view parameters to urls"
	"ignore #main, because this is default view anyway!!"
	((aViewStringOrSymbol = 'main') | (aViewStringOrSymbol = #main)) ifTrue: [^self].
	self parameter: 'view' value: aViewStringOrSymbol! !
!WebLink categoriesFor: #accessAllowedFor:!public!security! !
!WebLink categoriesFor: #addAnchorTo:!private! !
!WebLink categoriesFor: #addSessionIdTo:on:!private! !
!WebLink categoriesFor: #anchor!accessing!public! !
!WebLink categoriesFor: #anchor:!accessing!public! !
!WebLink categoriesFor: #anchorNr:!accessing!public! !
!WebLink categoriesFor: #checkVersionedReference!private! !
!WebLink categoriesFor: #composeURLOn:!private! !
!WebLink categoriesFor: #encryptedUrl:on:!private! !
!WebLink categoriesFor: #href:!attributes!public! !
!WebLink categoriesFor: #initialize!initialize-release!public! !
!WebLink categoriesFor: #isEncryptedViewFor:on:!private! !
!WebLink categoriesFor: #isLink!public!testing! !
!WebLink categoriesFor: #linkTo:!accessing!public! !
!WebLink categoriesFor: #onBlur:!events!public! !
!WebLink categoriesFor: #onFocus:!events!public! !
!WebLink categoriesFor: #ooReference!private! !
!WebLink categoriesFor: #ooReference:!private! !
!WebLink categoriesFor: #parameter:value:!accessing!public! !
!WebLink categoriesFor: #parms!private! !
!WebLink categoriesFor: #prepareAttributesToPrintOn:!printing!public! !
!WebLink categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebLink categoriesFor: #printString!printing!public! !
!WebLink categoriesFor: #properAmpersand:!private! !
!WebLink categoriesFor: #security!accessing!public! !
!WebLink categoriesFor: #security:!accessing!public! !
!WebLink categoriesFor: #target:!attributes!public! !
!WebLink categoriesFor: #text:linkTo:!accessing!public! !
!WebLink categoriesFor: #urlReference!private! !
!WebLink categoriesFor: #urlReference:!private! !
!WebLink categoriesFor: #view:!accessing!public! !

!WebLink class methodsFor!

image: anImage linkTo: aLink

	"set an image as hypertext link to some other object or page. If aLink is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver"

	| webLink |
	webLink := self linkTo: aLink.
	webLink add: (WebImage image: anImage).
	^webLink!

image: anObjectOrURL linkTo: aLink parameter: aParmString value: aValueString

	"set hypertext link and text to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver. Add also one  parameter in query part of an URL"

	| webLink |
	webLink := self linkTo: aLink.
	webLink addImage: anObjectOrURL.
	webLink parameter: aParmString value: aValueString.
	^webLink

"WebLink text: 'text' linkTo: 'http://www.tris-a.si'"
"WebLink text: 'text' linkTo: Smalltalk"!

image: anObjectOrURL linkTo: aLink view: aString
	^self image: anObjectOrURL linkTo: aLink parameter: 'view' value: aString!

image: anImageOrURL linkToAnchor: aString

	"set hypertext link anchor in the same page in format '#anchorx', for example '#anchor4'. Use WebAnchor nr: method to add an anchor in a web page."

	^(self linkToAnchor: aString) addImage: anImageOrURL

"WebLink text: 'hello' linkToAnchorNr: 22"!

image: anObjectOrURL linkToAnchor: aString parameter: aParmString value: aValueString

	"set hypertext link and text to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver. Add also one  parameter in query part of an URL"

	| webLink |
	webLink := self linkToAnchor: aString.
	webLink addImage: anObjectOrURL.
	webLink parameter: aParmString value: aValueString.
	^webLink

"WebLink text: 'text' linkTo: 'http://www.tris-a.si'"
"WebLink text: 'text' linkTo: Smalltalk"!

image: anImageOrURL linkToAnchorNr: aNumber

	"set hypertext link anchor in the same page in format '#anchorx', for example '#anchor4'. Use WebAnchor nr: method to add an anchor in a web page."

	^(self linkToAnchorNr: aNumber) addImage: anImageOrURL

"WebLink text: 'hello' linkToAnchorNr: 22"!

image: anObjectOrURL linkToAnchorNr: aNumber parameter: aParmString value: aValueString

	"set hypertext link and text to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver. Add also one  parameter in query part of an URL"

	| webLink |
	webLink := self linkToAnchor: aNumber.
	webLink addImage: anObjectOrURL.
	webLink parameter: aParmString value: aValueString.
	^webLink

"WebLink text: 'text' linkTo: 'http://www.tris-a.si'"
"WebLink text: 'text' linkTo: Smalltalk"!

linkTo: aLink
	"set hypertext link to some other object or page. If argumet is a String, then this is an url reference, 	else this is object reference, which is resolved to url with help of URLResolver"
	"to add anchor: #(object anchor) !! "
	^self new linkTo: aLink!

linkToAnchor: aString

	"set hypertext link anchor in the same page in format '#anchorx', for example '#anchor4'. Use WebAnchor nr: method to add an anchor in a web page."

	^self new anchor: aString.

"WebLink linkToAnchorNr: 22"!

linkToAnchorNr: aNumber

	"set hypertext link anchor in the same page in format '#anchorx', for example '#anchor4'. Use WebAnchor nr: method to add an anchor in a web page."

	^self new anchorNr: aNumber.

"WebLink linkToAnchorNr: 22"!

message: aSymbol linkTo: aLink

	"set hypertext link and a message to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver"
	| webLink |
	webLink := self linkTo: aLink.
	webLink text: (WebMsgs at: aSymbol).
	^webLink

"WebLink text: 'text' linkTo: 'http://www.tris-a.si'"
"WebLink text: 'text' linkTo: Smalltalk"!

message: aSymbol linkTo: aLink parameter: aParmString value: aValueString

	"set hypertext link and text to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver. Add also one  parameter in query part of an URL"

	| webLink |
	webLink := self message: aSymbol linkTo: aLink.
	webLink parameter: aParmString value: aValueString.
	^webLink

"WebLink message: #test linkTo: 'http://www.tris-a.si'"!

new
	^super new initialize!

text: aString attributes: anArray linkTo: aLink

	"set hypertext link and text to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver"
	| webLink |
	webLink := self linkTo: aLink.
	webLink text: aString attributes: anArray.
	^webLink

"WebLink text: 'text' linkTo: 'http://www.tris-a.si'"
"WebLink text: 'text' linkTo: Smalltalk"!

text: aString header: aNumber linkTo: aLink

	"set hypertext link and text to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver"
	| webLink |
	webLink := self linkTo: aLink.
	webLink text: aString;  header: aNumber.
	^webLink

"WebLink text: 'text' linkTo: 'http://www.tris-a.si'"
"WebLink text: 'text' linkTo: Smalltalk"!

text: aString linkTo: aLink

	"set hypertext link and text to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver"
	| webLink |
	webLink := self linkTo: aLink.
	webLink text: aString.
	^webLink

"WebLink text: 'text' linkTo: 'http://www.tris-a.si'"
"WebLink text: 'text' linkTo: Smalltalk"!

text: aString linkTo: aLink parameter: aParmString value: aValueString
	"set hypertext link and text to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver. Add also one  parameter in query part of an URL"
	| webLink |
	webLink := self text: aString linkTo: aLink.
	webLink parameter: aParmString value: aValueString.
	^webLink

"WebLink text: 'text' linkTo: 'http://www.tris-a.si'"
"WebLink text: 'text' linkTo: Smalltalk"!

text: aString linkTo: aLink 
	parameter: a1ParmString value: a1ValueString 
	parameter: a2ParmString value: a2ValueString
	"set hypertext link and text to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver. Add also one  parameter in query part of an URL"
	| webLink |
	webLink := self text: aString linkTo: aLink.
	webLink parameter: a1ParmString value: a1ValueString.
	webLink parameter: a2ParmString value: a2ValueString.
	^webLink!

text: aString linkTo: aLink parameter: a1ParmString value: a1ValueString parameter: a2ParmString value: a2ValueString parameter: a3ParmString value: a3ValueString

	"set hypertext link and text to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver. Add also one  parameter in query part of an URL"

	| webLink |
	webLink := self text: aString linkTo: aLink.
	webLink parameter: a1ParmString value: a1ValueString.
	webLink parameter: a2ParmString value: a2ValueString.
	webLink parameter: a3ParmString value: a3ValueString.
	^webLink!

text: aString linkTo: aLink view: aViewString
	^(self text: aString linkTo: aLink) view: aViewString!

text: aString linkToAnchor: anAnchorString

	"set hypertext link anchor in the same page in format '#anchorx', for example '#anchor4'. Use WebAnchor nr: method to add an anchor in a web page."

	^(self linkToAnchor: anAnchorString) text: aString

"WebLink text: 'hello' linkToAnchorNr: 22"!

text: aString linkToAnchorNr: aNumber

	"set hypertext link anchor in the same page in format '#anchorx', for example '#anchor4'. Use WebAnchor nr: method to add an anchor in a web page."

	^(self linkToAnchorNr: aNumber) text: aString

"WebLink text: 'hello' linkToAnchorNr: 22"! !
!WebLink class categoriesFor: #image:linkTo:!instance creation!public! !
!WebLink class categoriesFor: #image:linkTo:parameter:value:!instance creation!public! !
!WebLink class categoriesFor: #image:linkTo:view:!instance creation!public! !
!WebLink class categoriesFor: #image:linkToAnchor:!instance creation!public! !
!WebLink class categoriesFor: #image:linkToAnchor:parameter:value:!instance creation!public! !
!WebLink class categoriesFor: #image:linkToAnchorNr:!instance creation!public! !
!WebLink class categoriesFor: #image:linkToAnchorNr:parameter:value:!instance creation!public! !
!WebLink class categoriesFor: #linkTo:!instance creation!public! !
!WebLink class categoriesFor: #linkToAnchor:!instance creation!public! !
!WebLink class categoriesFor: #linkToAnchorNr:!instance creation!public! !
!WebLink class categoriesFor: #message:linkTo:!instance creation!public! !
!WebLink class categoriesFor: #message:linkTo:parameter:value:!instance creation!public! !
!WebLink class categoriesFor: #new!instance creation!public! !
!WebLink class categoriesFor: #text:attributes:linkTo:!instance creation!public! !
!WebLink class categoriesFor: #text:header:linkTo:!instance creation!public! !
!WebLink class categoriesFor: #text:linkTo:!instance creation!public! !
!WebLink class categoriesFor: #text:linkTo:parameter:value:!instance creation!public! !
!WebLink class categoriesFor: #text:linkTo:parameter:value:parameter:value:!instance creation!public! !
!WebLink class categoriesFor: #text:linkTo:parameter:value:parameter:value:parameter:value:!instance creation!public! !
!WebLink class categoriesFor: #text:linkTo:view:!instance creation!public! !
!WebLink class categoriesFor: #text:linkToAnchor:!instance creation!public! !
!WebLink class categoriesFor: #text:linkToAnchorNr:!instance creation!public! !

