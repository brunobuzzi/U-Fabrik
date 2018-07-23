"Filed out from Dolphin Smalltalk 7"!

Object subclass: #FileProxy
	instanceVariableNames: 'site filename timestamps content contentType size caching codepage elements bodyTagIndex imgTagIndexes linkTagIndexes servletTagIndexes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FileProxy guid: (GUID fromString: '{366aab75-0ed0-454d-b1b6-c2940bd2b3b7}')!
FileProxy comment: 'FileProxy is a proxy object for files on a disk. It is responsible for serving a file to browser. Smaller files (below #sizeAboveMark) are cached.

HTML files can be parsed for special AIDA tags (templating). When such file is served, that tag is expanded with dynamicall created content.

example : <AIDA WebStatisticsApp pageCounter>  returns a number of hits of current page


Instance Variables:
	site 
	filename 
	timestamps 
	content  
	contentType 
	size 
	codepage 
	elements  "parsed elements of a HTML page"
	bodyTagIndex imgTagIndexes linkTagIndexes servletTagIndexes'!
!FileProxy categoriesForClass!Unclassified! !
!FileProxy methodsFor!

absoluteTagFrom: aTagString urlStart: anURLString

	""

	| tag url |
	tag := (aTagString copyReplaceAll: '\' with: '/').
	((tag copyFrom: 1 to: 3) = '../')
		ifFalse:  "not relative to parent directory"
			[^((tag copyUpTo: $"), '"', anURLString, 
				(tag copyFrom: ((tag indexOf: $") + 1) to: tag size))]
		ifTrue:
			[tag := tag readStream upTo: $/; upToEnd.
			url := anURLString copyFrom: 1 to: (anURLString lastIndexOf: $/).
			^self absoluteTagFrom: tag urlStart: url].!

accessedTimestamp
	^self timestamps at: #accessed ifAbsent: [nil]!

argumentsFrom: aMessageString

	^Array new: 0 "for now!! "!

bodyTagIndex
	"index of element, which represent body tag in original html file"
	^bodyTagIndex!

bodyTagIndex: anInteger
	"set the index of element, which represent body tag in original html file"
	bodyTagIndex := anInteger.!

clearElements
	elements := OrderedCollection new.!

clearImgTagIndexes
	imgTagIndexes := OrderedCollection new.!

clearLinkTagIndexes
	linkTagIndexes := OrderedCollection new.!

clearServletTagIndexes
	servletTagIndexes := OrderedCollection new.!

codepage
	" #iso2 by default"
	codepage isNil ifTrue: [self codepage: #'iso-8859-2'].
	^codepage.!

codepage: aSymbol
	codepage := aSymbol.!

content
	^content!

content: aString
	content := aString.!

contentType
	"MIME type of original content. 'unknown' if not known"
	contentType isNil ifTrue: [self contentType: 'unknown'].
	^contentType.!

contentType: aMIMEString
	"MIME type of original content"
	contentType := aMIMEString.!

createdTimestamp
	^self timestamps at: #created ifAbsent: [nil]!

detectCodepage: aString
	" "
	| win1250 iso2 sevenBit above127 |
	win1250 := 0.
	aString do: [:ch | (#(200 154 138 158 142) includes: ch asInteger) ifTrue: [win1250 := win1250+1] ].
	iso2 := 0.
	aString do: [:ch | (#(200 185 169 190 174) includes: ch asInteger) ifTrue: [iso2 := iso2+1] ].
	sevenBit := 0.
"	aString do: [:ch | (#(94 123 91 96 64) includes: ch asInteger) ifTrue: [sevenBit := sevenBit+1] ]."
	above127 := 0.
	aString do: [:ch | ch asInteger > 127 ifTrue: [above127 := above127+1] ].
	above127 = 0 
		ifTrue: [sevenBit ~= 0 ifTrue: [^#'7bit'] ifFalse: [^#csz] ]
		ifFalse: [iso2 > win1250 ifTrue: [^#'iso-8859-2'] ifFalse: [^#'win-1250'] ].!

elements

	"all elements (texts and tags) of a gtml page"

	elements isNil ifTrue: 
		[self clearElements.
"		(self contentType = 'text/html') ifTrue: [self refreshContent] "].
	^elements!

expiresTimestamp
	"for broswer: after 6 hours by default. It is good to reload from time to time 
	if changes were made "
	^SpTimestamp fromSeconds: (SpTimestamp now asSeconds + (6 * 3600))!

filename: aFilename
	filename := aFilename asString.
	self site notNil ifTrue: 
		[filename := filename copyReplaceAll: self site homeDirectory with: ''].!

fileStillExist
	^self filename exists!

hasFileChanged
	"check if original file changed since last visit"
	^self modifiedTimestamp ~= self filename modifiedTimestamp.!

imgTagIndexes
	"indexes of elements, which represent image tags in original html file"
	imgTagIndexes isNil ifTrue: [self clearImgTagIndexes].
	^imgTagIndexes!

indexContent
	"index text in server global index"
	self contentType = 'text/html' ifTrue: [self site index indexObject: self]!

indexText
	"pure text, without tags, for indexer"
	| stream bodyStart element text |
	bodyStart := (1 to: self elements size) 
		detect: [:index | '<BODY*' match: (self elements at: index)] ifNone: [1].
	stream := WriteStream on: String new.
	bodyStart + 1 to: self elements size do:  [:index | 
		element := self elements at: index.
		(element notEmpty and: [element first ~= $<]) ifTrue: [stream nextPutAll: element] ].
	text := stream contents "copyReplaceAll: WebElement new eol with: ' '". 
	text := text copyReplaceAll: '&nbsp;' with: ' '.
	^text!

indexTitle
	"find title, if noone, then return url"
	1 to: self elements size do: [:index |
		('<TITLE*' match: (self elements at: index)) ifTrue: [^self elements at: index+1] ].
	^self site urlResolver halfUrlFor: self!

isCaching
	"should this file be always cached?"
	caching isNil ifTrue: [self resetCaching].
	^caching!

isRespondingStreamed
	"we always stream (put possibly not chunk) static content, being cached or not"
	^true


"	""should we stream that file directly to TCP socket or not?""
	self content notNil ifTrue: [^false].  ""cached content is sent faster without streaming""
	self contentType = 'text/html' ifTrue: [^false]. ""pure HTML files also not""
	^true
"!

isToBeCached
	"cache this file or not?"
	^self isCaching or: [self size < self sizeToCache]!

isWebElement
	^false!

isWebPage
	^true "not actually, but let pretend it is"!

linkTagIndexes
	"indexes of elements, which represent link tags in original html file"
	linkTagIndexes isNil ifTrue: [self clearLinkTagIndexes].
	^linkTagIndexes!

makeAbsoluteImgTags
	"if image url's are relative, make them absolute. Also do it for a body tag (background image). 
	Url is constructed from a imageServer address from WebServer settings, and from filename with 	homeDirectory substracted. "
	| fname urlStart index tag bodyTag |
	fname := (self filename asString) copyReplaceAll: (self site homeDirectory) with: ''.
	fname := fname copyFrom: 1 to: (fname lastIndexOf: (AIDASite slash at: 1)).
	urlStart := 'http://', self site host, (fname copyReplaceAll: '\' with: '/').
	self imgTagIndexes do: [:inx  | tag := self elements at: inx.
		('*http://*' match: tag) ifFalse:    "not an absolute source url"
			[self elements at: inx put: (self absoluteTagFrom: tag urlStart: urlStart)] ].
	self bodyTagIndex notNil ifTrue:
		[bodyTag := self elements at: bodyTagIndex.
		(('*background*' match:  bodyTag) and: [('*http://*' match:  bodyTag) not]) 
			ifTrue: 
				[index := bodyTag asLowercase findString: 'background' startingAt: 1.
				index := bodyTag findString: '"' startingAt: index.
				(( bodyTag at: index+1) = $#) ifTrue: [^self]. "only colored background"
				self elements at: bodyTagIndex put:
					((bodyTag copyFrom: 1 to: index), urlStart, 
						(bodyTag copyFrom: index + 1 to: bodyTag size)) ] ].!

methodFrom: aMessageString

	^aMessageString asSymbol "for now!! "!

modifiedTimestamp
	^self timestamps at: #modified ifAbsent: [nil]!

prepareHTMLPage
	"decompose content into elements (texts and tags)"
	| stream tag index |
	self clearElements. self clearImgTagIndexes. 
	self clearLinkTagIndexes. self clearServletTagIndexes.
	stream := ReadStream on: self content.
	index := 1.
	[stream atEnd] whileFalse:
		[self elements add: (stream upTo: $<). index := index + 1.
		tag := ('<', (stream upTo: $>), '>').
		('<aida*' match: tag) ifTrue: [self servletTagIndexes add: index].
		('*img*' match: tag) ifTrue: [self imgTagIndexes add: index].
		('*href*' match: tag) 
			ifTrue: [self linkTagIndexes add: index]
			ifFalse: 
				[(('*body*' match: tag) and: [('*/body*' match: tag) not])
					ifTrue: [self bodyTagIndex: index]].
		self elements add: tag. index := index + 1.
		].!

printServlet: index on: aStream for: aRequest on: aSession

	| tag appClass message app element |
	tag := (self elements at: index) copy readStream.
	appClass := (tag upTo: $ ; upTo: $ ) asSymbol.
	message := tag upTo: $>.
	app := aSession servletAppFor: appClass.
	app isNil ifTrue: [^self ].
	element := self servletPerform: message on: app.
	element notNil ifTrue: 
		[element printHTMLPageOn: aStream for: aRequest on: aSession].!

printString
	^('aFileProxy for: ', self filename asString)!

printWebPageFor: aRequest on: aSession 
	self fileStillExist ifFalse: [self removeYourself. ^WebPage new].
	(self content isNil and: [self contentType = 'text/html' or: [self isToBeCached] ]) 
		ifTrue: [^self refreshContent]. 
	self hasFileChanged ifTrue: 
		[self refreshContent.
		self indexContent].
	^self!

put: aString
	"replace self with contents in aString from PUT request"
	self content: aString.
	self writeToFile.
	self releaseContent.
	self size: aString size!

refreshContent
	self releaseContent. "in case we switch from cached to non cached because of size change"
	self from: self filename asString.!

refreshTimestamps
"	self timestamps at: #created put: self filename createdTimestamp. "
	self timestamps at: #modified put: self filename modifiedTimestamp.!

releaseContent
	"release origContent and elements to save memory"
	content := nil.
	elements := nil.!

removeYourself
	"remove from url resolver and elsewhere"
	self releaseContent.
	self site urlResolver removeObject: self.!

resetCaching
	"don't cahce this file,except if it is smallter than "
	caching := false!

servletPerform: aMessageString on: aWebApp

	| method |
	method := (self methodFrom: aMessageString).
	(aWebApp class canUnderstand: method) ifFalse: [^nil].
	^aWebApp
		perform: method
		withArguments: (self argumentsFrom: aMessageString).!

servletTagIndexes
	"indexes of elements, which represent servlet in original html file"
	servletTagIndexes isNil ifTrue: [self clearServletTagIndexes].
	^servletTagIndexes!

setCaching
	"this file should always be cached, regardless of size"
	caching := true!

setSize
	"size of content in bytes"
	(self elements notEmpty)
		ifTrue: [self size: (self elements inject: 0 into: [:sum : e | sum + e size]) ]
		ifFalse: [self size: self content size]!

site
	^site!

site: anAIDASite
	site := anAIDASite.!

size
	"size of content"
	size isNil ifTrue: [self setSize].
	^size!

size: anInteger
	size := anInteger!

sizeToCache
	"file size below which files are always cached"
	^(5 * 1024) "bytes" "5KB"!

timestamps
	timestamps isNil ifTrue: [self timestamps: Dictionary new.].
	^timestamps!

timestamps: aDictionary
	" a dictionary with a DateAndTime at: 
	#accessed #modified  #created"
	timestamps := aDictionary.!

writeToFile
	| stream |
	[stream := self filename writeStream. stream binary.
	stream nextPutAll: self content]
		ensure: [stream close].
	self refreshTimestamps.! !
!FileProxy categoriesFor: #absoluteTagFrom:urlStart:!parsing!public! !
!FileProxy categoriesFor: #accessedTimestamp!accessing-timestamps!public! !
!FileProxy categoriesFor: #argumentsFrom:!printing-servlets!public! !
!FileProxy categoriesFor: #bodyTagIndex!accessing-tags!public! !
!FileProxy categoriesFor: #bodyTagIndex:!accessing-tags!public! !
!FileProxy categoriesFor: #clearElements!initialize-release!public! !
!FileProxy categoriesFor: #clearImgTagIndexes!accessing-tags!public! !
!FileProxy categoriesFor: #clearLinkTagIndexes!accessing-tags!public! !
!FileProxy categoriesFor: #clearServletTagIndexes!accessing-tags!public! !
!FileProxy categoriesFor: #codepage!accessing!public! !
!FileProxy categoriesFor: #codepage:!private! !
!FileProxy categoriesFor: #content!accessing!public! !
!FileProxy categoriesFor: #content:!private! !
!FileProxy categoriesFor: #contentType!accessing!public! !
!FileProxy categoriesFor: #contentType:!private! !
!FileProxy categoriesFor: #createdTimestamp!accessing-timestamps!public! !
!FileProxy categoriesFor: #detectCodepage:!private! !
!FileProxy categoriesFor: #elements!private! !
!FileProxy categoriesFor: #expiresTimestamp!accessing-timestamps!public! !
!FileProxy categoriesFor: #filename:!private! !
!FileProxy categoriesFor: #fileStillExist!public!testing! !
!FileProxy categoriesFor: #hasFileChanged!public!testing! !
!FileProxy categoriesFor: #imgTagIndexes!accessing-tags!public! !
!FileProxy categoriesFor: #indexContent!indexing!public! !
!FileProxy categoriesFor: #indexText!indexing!public! !
!FileProxy categoriesFor: #indexTitle!indexing!public! !
!FileProxy categoriesFor: #isCaching!public!testing! !
!FileProxy categoriesFor: #isRespondingStreamed!public!testing! !
!FileProxy categoriesFor: #isToBeCached!public!testing! !
!FileProxy categoriesFor: #isWebElement!public!testing! !
!FileProxy categoriesFor: #isWebPage!public!testing! !
!FileProxy categoriesFor: #linkTagIndexes!accessing-tags!public! !
!FileProxy categoriesFor: #makeAbsoluteImgTags!parsing!public! !
!FileProxy categoriesFor: #methodFrom:!printing-servlets!public! !
!FileProxy categoriesFor: #modifiedTimestamp!accessing-timestamps!public! !
!FileProxy categoriesFor: #prepareHTMLPage!parsing!public! !
!FileProxy categoriesFor: #printServlet:on:for:on:!printing-servlets!public! !
!FileProxy categoriesFor: #printString!printing!public! !
!FileProxy categoriesFor: #printWebPageFor:on:!printing!public! !
!FileProxy categoriesFor: #put:!accessing!public! !
!FileProxy categoriesFor: #refreshContent!initialize-release!public! !
!FileProxy categoriesFor: #refreshTimestamps!private! !
!FileProxy categoriesFor: #releaseContent!initialize-release!public! !
!FileProxy categoriesFor: #removeYourself!private! !
!FileProxy categoriesFor: #resetCaching!accessing!public! !
!FileProxy categoriesFor: #servletPerform:on:!printing-servlets!public! !
!FileProxy categoriesFor: #servletTagIndexes!accessing-tags!public! !
!FileProxy categoriesFor: #setCaching!accessing!public! !
!FileProxy categoriesFor: #setSize!private! !
!FileProxy categoriesFor: #site!accessing!public! !
!FileProxy categoriesFor: #site:!private! !
!FileProxy categoriesFor: #size!accessing!public! !
!FileProxy categoriesFor: #size:!private! !
!FileProxy categoriesFor: #sizeToCache!accessing!public! !
!FileProxy categoriesFor: #timestamps!private! !
!FileProxy categoriesFor: #timestamps:!private! !
!FileProxy categoriesFor: #writeToFile!private! !

!FileProxy class methodsFor!

from: aFilenameString onSite: aSite
	"read a file and make a HTML proxy of it. Return nil, if file does not exist or cannot be opened. 
	Also record a server for which you make a proxy"
	| proxy |
	proxy := self new site: aSite; from: aFilenameString.
	proxy indexContent.
	^proxy! !
!FileProxy class categoriesFor: #from:onSite:!instance creation!public! !

