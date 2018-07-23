"Filed out from Dolphin Smalltalk 7"!

Object subclass: #URLResolver
	instanceVariableNames: 'site allWebPages allURLLinks counters totalCounter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
URLResolver guid: (GUID fromString: '{2b893de1-02dd-4581-8fdb-f97e60e5a92d}')!
URLResolver comment: ''!
!URLResolver categoriesForClass!Unclassified! !
!URLResolver methodsFor!

addObject: anObject withURL: aString
	"add an object if not already exist and add url to the collection of urls for that object.
	If aString url point to some other object already, then remove url from that other object"
	"warning, if web elements (such as web apps) will be registered"
	self isWebElement: anObject.
	anObject isNil ifTrue: [^nil]. "do not add nil objects!!"
	self site critical: 
		[(self allWebPages at: anObject ifAbsentPut: [OrderedCollection new])
				add: aString asLowercase.
		(self allURLLinks includesKey: aString asLowercase) ifTrue:
			[(self allWebPages at: (self allURLLinks at: aString asLowercase)	
				ifAbsentPut: [OrderedCollection new])
					remove: aString asLowercase ifAbsent: [] ].
		self allURLLinks at: aString asLowercase put: anObject ].!

allHTMLPagesSize
	"sums sizes of all static pages"

	| fname sum |
	sum := 0.
	self allHTMLPageUrls do: [:url | 
		fname := self site homeDirectory, url.
		fname := fname copyReplaceAll: '/' with: '\'.
		fname asFilename exists 
			ifTrue: [sum := sum + fname asFilename fileSize] ].
	^sum

"URLResolver default allHTMLPagesSize"!

allHTMLPageUrls
	"find all .htm and .html pages in directory hierarchy starting at aWebServer homeDirectory.
	return as collection of relative url links"

	^self allHTMLPageUrlsIn: self site homeDirectory.

"URLResolver default allHTMLPageUrls"!

allHTMLPageUrlsIn: aDirectoryString
	"find all .htm and .html pages in directory hierarchy starting at a specified directory and all 	subdirectories.	Return as collection of relative url links"

	| collection dir |
	dir := aDirectoryString.
	dir last ~= $\ ifTrue: [dir := dir, '\'].
	dir asFilename exists ifFalse: [^#()].
	collection := OrderedCollection new.
	aDirectoryString asFilename directoryContents do: [:each | 
		(dir, each) asFilename isDirectory
			ifTrue: [collection addAll: (self allHTMLPageUrlsIn: (dir, each))]
			ifFalse: 
				[('.htm' match: each asFilename extension) ifTrue:
					[collection add: (self urlForFile: each asString directory: aDirectoryString)] ]
		].
	^collection.

"URLResolver default allHTMLPageUrlsIn: 'h:\wwwroot\planid' "!

allPagesAndCounts

	"return total counts for all objects that have counters, most counted first"

	| collection |
	collection := OrderedCollection new.
	self counters keysAndValuesDo: [:object :counter |
		collection add: (Array
			with: object
			with: counter total)].
	^SortedCollection
		withAll: collection
		sortBlock: [:a :b | (a at: 2) > (b at: 2)]

"URLResolver default allPagesAndCounts"!

allURLLinks
	"return a dictionary with url as key and reference to an object with that url as value"
	^allURLLinks!

allUrlsAndCounters
	"return copies of all counters as dictionary with url as key"
	| dictionary |
	dictionary := Dictionary new.
	self counters keysAndValuesDo: [:object :counter |
		dictionary 
			at: (self halfUrlFor: object)
			put: counter aidaDeepCopy].
	^dictionary

"URLResolver default allUrlsAndCounters"
"
(BinaryObjectStorage onNew: 'counters.boss' asFilename writeStream)
	nextPut: URLResolver default allUrlsAndCounters;
	close
"!

allWebPages
	" return a dictionary with object reference as key and one on more urls for that object as value.
	first  is default one, when urls are dinamicaly generated"
	^allWebPages!

autoUrlFor: anObject
	"use prefered url if possible. If that url already exist, add -a, -b, ... to url and repeat"
	| url extension lastPoint |
	url := anObject preferedUrl. url isNil ifTrue: [^self randomUrlFor: anObject].
	[(self ooRefFromURL: url) notNil] whileTrue: "already exist"
		[lastPoint := url lastIndexOf: $. . lastPoint = 0 ifTrue: [lastPoint := url size+1].
		extension := url copyFrom: lastPoint to: url size.
		url := url copyReplaceAll: extension with: ''. 
		url isEmpty ifTrue:  [^self randomUrlFor: anObject].
		(url size > 1 and: [(url at: url size-1) = $-]) "already have an extension char!!"
			ifTrue: 
				[url last = $z ifTrue: [^self randomUrlFor: anObject]. "only to $z, then back to random!!"
				url := (url copyFrom: 1 to: url size-1), (String with: (url last asInteger + 1) asCharacter)]
			ifFalse: [url := url, '-a'].
		url := url, extension].
	^url

"URLResolver default halfUrlFor: (Document new id: 'SOP-0111-02').
URLResolver default autoUrlFor: (Document new id: 'SOP-0111-02')"!

changeToPreferedURL: anObject
 	"remove all existing urls and make this as only one"
	"BEWARE, all ols urls will be erased, url references can be breaked!! "
	anObject preferedUrl isNil ifTrue: [^nil].
	self removeObject: anObject.
	self defaultURL: anObject preferedUrl forObject: anObject.!

changeToURL: aString forObject: anObject
 	"remove all existing urls and make this as only one"
	"BEWARE, all ols urls will be erased, url references can be breaked!! "
	self removeObject: anObject.
	self defaultURL: aString forObject: anObject.!

correctUrlEncoding
	"make sure all urls are decodedHTTP, without %20 etc"
	self allURLLinks keys do: [:key | (key decodedHTTP ~= key) 
		ifTrue: [self allURLLinks at: key decodedHTTP put: (self allURLLinks at: key). 
			self allURLLinks removeKey: key] ].
	self allWebPages values do: [:coll |
	coll copy do: [:each | (each decodedHTTP ~= each) 
		ifTrue: [coll at: (coll indexOf: each) put: each decodedHTTP] ] ].

"
self allURLLinks keys select: [:key | (key decodedHTTP ~= key)].
self allWebPages associations select: [:assoc |
	assoc value contains: [:each | (each decodedHTTP ~= each)] ].
"!

counterFor: anObject
	anObject isNil ifTrue: [^nil].
	(self counters includesKey: anObject)
		ifFalse: [self resetCounterFor: anObject].
	^self counters at: anObject!

counterForUrl: anUrlString

	"return a counter for object with specified url. Nil if not exist"

	| object  |
	object := self ooRefFromURL: anUrlString.
	object isNil ifTrue: [^nil].
	^self counterFor: object.

"URLResolver default counterForUrl: '/osn/g_l-vse.htm'"
"WebServer default totalCounter"
"WebServer default pagesCounter"!

counters

	"dictionary of web counters for every object, registered in URLResolver"

	counters isNil ifTrue: [self initCounters].
	^counters.!

defaultURL: aString forObject: anObject
	"set url as default url for that object. This url is then used in dynamic url creation. If an object 
	does not already exist, then create a new entry first"
	| urls first defInx |
	self addObject: anObject withURL: aString.  "just in case object is new one"
	"swap old default with new default url on a first place in collection"
	self site critical: 
		[urls := allWebPages at: anObject.
		first := urls first.
		defInx := urls indexOf: aString asLowercase.
		urls at: 1 put: (urls at: defInx).
		urls at: defInx put: first].!

existURL: aString
	"return true if URL has connection to some object"
	^self allURLLinks includesKey: aString asLowercase!

fileProxyForURL: aString
	" Try to find a html file for a specified URL and make aHTMLFileProxy. 
	Returns nil if such a file does not exist. Index content in default WebIndex"
	| add home fname proxy |
	aString isEmpty ifTrue: [^nil].
	(aString last = $/) ifTrue: [add := 'index.htm'] ifFalse: [add := ''].
	home := self site homeDirectory.
	(home last = $/ ) | (home last = $\ ) ifTrue: [home := home copyFrom: 1 to: home size-1].
	fname := home, aString, add.
	SpEnvironment onWindows ifTrue: [fname := fname copyReplaceAll: '/' with: '\'].
	(SpFilename named: fname) exists ifFalse:
		[fname := fname, 'l'.
		(SpFilename named: fname) exists ifFalse: [^nil] ].
	proxy := FileProxy from: fname onSite: self site.
	proxy indexContent.
	^proxy!

fullUrlEncodedSpacesFor: anObject on: aSession
	"change spaces to %20"
	^(self fullUrlFor: anObject on: aSession) copyReplaceAll: ' ' with: '%20'!

fullUrlFor: anObject on: aSession
	"find or make a path for anObject and compose full url together with server address and 
	query string, eg: http://www.eranova.si/welcome.html?view=brief"
	^self 
		fullUrlFromPath: (self halfUrlFor: anObject)
		andParms: (aSession notNil ifTrue: [aSession parms] ifFalse: [#()])
		on: aSession!

fullUrlFromPath: aPathString andParms: aParmsDictionary on: aSession
	"compose full url: server address, document path and additional parameters in query string, 
	for instance: http://www.eranova.si/welcome.html?view=brief"
	| url |
	url := self urlFromHalfUrl: aPathString on: aSession.
	^self halfUrlFromPath: url andParms: aParmsDictionary on: aSession. "not very nice, i know ..."
	
"
| parms |
parms := Dictionary new.
parms at: 'view' put: 'brief'. parms at: 'id' put: '12345'. 
URLResolver default fullUrlFromPath: '/dzs/panorama.html' andParms: parms on: WebSession new
"!

halfUrlFor: anObject
	"finds or composes an URL reference to that object . If the URL is new one, then it is written to both dictionaries for later lookup. If resolution is unsuccessfull then returns nil. If anObject dont have an url yet, url part for them is automatically generated, for example:  /objecto1638948.html"
	| newUrl urls |
	urls := (self allWebPages at: anObject ifAbsent: [
	      newUrl := ((anObject isKindOf: WebPage)  and: [anObject title notNil] )
			ifTrue: ['/', anObject title asLowercase,'.html']			
			ifFalse: [self autoUrlFor: anObject].
		self addObject: anObject withURL: newUrl.
		OrderedCollection with: newUrl]).
	"just in case object has an empty collection of urls"
	(urls isNil or: [urls isEmpty]) ifTrue: 
		[self removeObject: anObject. ^self halfUrlFor: anObject].
	^urls at: 1.!

halfUrlFromPath: aPathString andParms: aParmsDictionary on: aSession
	"compose half url: /document path and additional parameters in query string, for instance: 	/welcome.html?view=brief"
	| url parmsString newValue |
	url := aPathString.
	aParmsDictionary size > 0 ifTrue:
		[parmsString := ''.
		aParmsDictionary keysAndValuesDo: [:name :value |
			(value isKindOf: Set) ifTrue:[newValue := value asArray at: 1]ifFalse:[newValue := value].
			parmsString := parmsString, 
				(AIDASite convertToWebString: name asString), '=', 
				(AIDASite convertToWebString: newValue asString), '&'].  "value"
		url := url, '?', (parmsString copyFrom: 1 to: (parmsString size - 1))].
	^url

"
| parms |
parms := Dictionary new.
parms at: 'view' put: 'brief'. parms at: 'id' put: '12345'. 
URLResolver default halfUrlFromPath: '/dzs/panorama.html' andParms: parms on: WebSession new
"!

incCounterFor: anObject
	"increment a web counter for that object. Only text/html object are counted
	Don't count temporary objects"
	(anObject contentType = 'text/html') ifFalse: [^nil].
	self site critical: 
		[(self counters includesKey: anObject) ifFalse: [self resetCounterFor: anObject].
		(self counters at: anObject) incCounter.
		"self totalCounter incCounter   **aWebServer already counts!! "]!

initCounters
	"init a counters dictionary and open a new counter for each already registered object"
	counters := Dictionary new. 
	self allWebPages keys do: [:object | self resetCounterFor: object].!

initialize
	self initWebPages.
	self initURLLinks.
	self initCounters.!

initURLLinks
	allURLLinks := Dictionary new.!

initWebPages
	allWebPages := IdentityDictionary new.!

isRootURL: aString

	^aString = '/'!

isWebElement: anObject


	" test if anObject is a web element, such as web app and write warning to the transcript"
	
	(anObject isKindOf: WebElement) ifTrue:
		[Transcript cr; show: '*** WARNING: URLResolver detected a ', 
		anObject class printString, '  will be registered ***'; cr.

		"to detect from where this request comes"
		"self halt"
		].!

methodImageForURL: aString 
	"maybe a method image can be done from current WebStyle?"
	|  name selector |
	('/img/*' match: aString) ifFalse: [^nil].
	name := (aString readStream upTo: $/ ; upTo: $/; upTo: $. ) asLowercase.
	selector := self site style class allSelectors 
		detect: [:each | each asString asLowercase = name] ifNone: [^nil].
	^WebMethodImage fromMethod: selector on: self site style contentType: 'image/gif' site: self site

"URLResolver default methodImageForURL: '/img/eranovaLogoGif.gif' "!

objectsOfClass: aClass
	^self allWebPages keys select: [:object | object class = aClass ]

"URLResolver default objectsOfClass: WebMethodImage"!

ooRefFromURL: aString
	" finds a reference to WebPage, specified in a URL string. If not yet known, try to 
	find it as a html file. if not found, search methods in current WebStyle too.."
	| object |
	^self allURLLinks at: aString asLowercase ifAbsent: 
		[(self isRootURL: aString) ifTrue: [^self site defaultUserService].
		object := self fileProxyForURL: aString.
		object isNil ifTrue: [object := self methodImageForURL: aString].
		object notNil ifTrue: [self addObject: object withURL: aString].
		^object].
	

"URLResolver default ooRefFromURL: '/osn/g_l-vse.htm' "!

randomUrlFor: anObject
	| number ext url |
	number := (self site class random next * 10000000) asInteger.
	ext := self site mimeMap extensionForType: anObject contentType.
	ext isNil ifTrue: [ext := 'html'].
	url := '/object/o', number printString, '.', ext.
	^(self ooRefFromURL: url) isNil  "avoid duplicates!!"
		ifTrue: [url]
		ifFalse: [self randomUrlFor: anObject]!

refreshAllHTMLPages
	""

	| count |
	count := 1.
	self allWebPages keys do: [:object |
		(object isKindOf: FileProxy) ifTrue:	 
			[count \\ 10 = 0 ifTrue: [Transcript cr; show: count printString].
			object refreshContent.
			count := count + 1] ].

"URLResolver default refreshAllHTMLPages"!

registerAllHTMLPages
	"if not already, then register all static html pages in directory hierarchy starting
	at aWebServer homeDirectory. Opan also counters for them"

	| count proxy |
	count := 1.
	self allHTMLPageUrls do: [:url | 
		count \\ 10 = 0 ifTrue: [Transcript cr; show: count printString].
		proxy := self ooRefFromURL: url.
		self counterFor: proxy.
		count := count + 1].

"URLResolver default registerAllHTMLPages"!

reindexAllObjects

	"all text/html objects are reindexed"
	self allWebPages keysDo: [:object |
		(object contentType = 'text/html') ifTrue:
			[self site index indexObject: object] ]

"URLResolver default reindexAllObjects"!

reindexNonIndexedObjects
	"all text/html objects are reindexed"
	self allWebPages keysDo: [:object |
		(object contentType = 'text/html') ifTrue:
			[(self site index indexedObjects includesKey: object) ifFalse:
				[self site index indexObject: object] ] ]

"URLResolver default reindexNonIndexedObjects"!

releaseAllHTMLPages

	self allWebPages keys do: [:obj |
		(obj isKindOf: FileProxy) ifTrue:
	 		[obj releaseContent] ]

"URLResolver default releaseAllHTMLPages"!

releaseAllImages

	self allWebPages keys do: [:obj |
		((obj isKindOf: FileProxy) and: ['*image*' match: obj contentType])
			ifTrue: [obj releaseContent] ]

"URLResolver default releaseAllImages"!

releaseAllStaticPages

	self allWebPages keysDo: [:object | 
		(object isKindOf: FileProxy) ifTrue: [object releaseContent] ]

"URLResolver default releaseAllStaticPages"!

removeCounterFor: anObject


	(self counters includesKey: anObject)
		ifTrue: [self counters removeKey: anObject]!

removeNonHTMLCounters

	self counters keys do: [:object |
		object contentType ~= 'text/html' ifTrue:
			[self removeCounterFor: object] ]

"URLResolver default removeNonHTMLCounters"!

removeObject: anObject
	"remove object and all its URLs. Returns true if object existed and false if not. 
	Remove also its web counter"
	| urls |
	self site critical:
		[urls := (self allWebPages at: anObject ifAbsent: [^nil]).
		self allWebPages removeKey: anObject.
		urls notNil ifTrue: [urls do: [: each | self allURLLinks removeKey: each ifAbsent: [] ] ].
		self counters removeKey: anObject ifAbsent: [] ].
	^true!

removeObjectsOfClass: aClass
	self site critical:
		[(self objectsOfClass: aClass) do: [:object | self removeObject: object] ].

"URLResolver default removeObjectsOfClass: WebMethodImage"
"URLResolver default allWebPages size 10934"!

removeObjectsOfClassNamed: aString
	"good for removing Obsolete classes!!"
	self site critical:
		[self allWebPages keys do: [:object | 
			object class name= aString ifTrue: [self removeObject: object]] ].

"URLResolver default removeObjectsOfClassNamed: WebMethodImage"
"URLResolver default allWebPages size 10934"!

removeObjectWithURL: aString

"remove object and all its URLs. Returns true if object existed and false if not"

	| object |
	object := allURLLinks at: aString asLowercase ifAbsent: [^false].
	^self removeObject: object.!

removeURL: aString
	"remove this URL and also object, if this url was the last one pointed to object Returns 
	true if url existed and false if not. Also remove web counter"
	| object |
	self site critical:
		[object := (self allURLLinks at: aString asLowercase ifAbsent: [^nil]).
		(self allWebPages at: object) remove: aString asLowercase ifAbsent: [].
		(self allWebPages at: object) isEmpty ifTrue: [self allWebPages removeKey: object]. 
		self allURLLinks removeKey: aString asLowercase.
		self counters removeKey: object ifAbsent: [] ].
	^true!

resetAllCounters

	self counters values do: [:each | each reset].

"URLResolver default resetAllCounters"!

resetCounterFor: anObject
	"reset counters for specified object. If not yet exist, initialize it first"
	anObject isNil ifTrue: [^nil].
	self site critical:
		[(self counters includesKey: anObject) ifFalse: 
			[self counters at: anObject put: WebCounter new].
		(self counters at: anObject) reset]!

scanForURLsFrom: aWebPage

"start looking for all WebLinks in pages starting from aWebPage and converting them to the URL links in instance variables allWebPages and allURLLinks."!

site
	"a parent site with this url resolver"
	^site!

site: anAIDASite
	site := anAIDASite.!

urlFor: anObject on: aSession

	"finds or composes an URL reference to the given WebPage or any object capable to represent itself as a WebPage. If the URL is new one, then it is written to both dictionaries for later lookup. If resolution is unsuccessfull then returns nil. The second argument is a WebPage where an OO link to resolve exist. If this argument is nil, then an URL must already exist, eg. automatic composition is not possible.
If anObject is not WebPge or has no name, then the url part for them is automatically generated, for example: http://pu.tris-a.si/cgi-bin/stweb?/demo/overview/o1638948.htm"

	^self urlFromHalfUrl: (self halfUrlFor: anObject on: aSession) on: aSession!

urlForFile: aFilenameString directory: aDirectoryString

	| path dir |
	dir := aDirectoryString.
	dir last ~= $\ ifTrue: [dir := dir, '\'].
	path := dir, aFilenameString.
	path := path copyReplaceAll: self site homeDirectory with: ''.
	^path copyReplaceAll: '\' with: '/'

"URLResolver default urlForFile: 'index.htm' directory: 'h:\wwwroot\planid\osn' "!

urlFromHalfUrl: aString on: aSession
	| host port portString protocolString session |
	(self site host ~= '*') 
		ifTrue: [host := self site host. port := self site port]
		ifFalse: [session := aSession notNil ifTrue: [aSession] ifFalse: [self firstSessionFromStack].
			host := (session lastRequest headerAt: 'x-forwarded-host'
				ifAbsent: [[session lastRequest host ]]) value. port := 80].  "find host from request"
	portString := (aSession notNil and: [aSession isEncrypted]) 
		ifFalse: [(port = 80) ifTrue: [''] ifFalse: [':', port printString] ]
		ifTrue: [(self site sslPort = 443) ifTrue: [''] ifFalse: [':', self site sslPort printString] ].
	protocolString := (aSession notNil and: [aSession isEncrypted])  
		ifFalse: ['http://'] ifTrue: ['https://'].
	^protocolString, host asLowercase, portString, aString.! !
!URLResolver categoriesFor: #addObject:withURL:!adding-removing!public! !
!URLResolver categoriesFor: #allHTMLPagesSize!public!static pages! !
!URLResolver categoriesFor: #allHTMLPageUrls!public!static pages! !
!URLResolver categoriesFor: #allHTMLPageUrlsIn:!public!static pages! !
!URLResolver categoriesFor: #allPagesAndCounts!public!request counting! !
!URLResolver categoriesFor: #allURLLinks!private! !
!URLResolver categoriesFor: #allUrlsAndCounters!public!request counting! !
!URLResolver categoriesFor: #allWebPages!private! !
!URLResolver categoriesFor: #autoUrlFor:!private! !
!URLResolver categoriesFor: #changeToPreferedURL:!adding-removing!public! !
!URLResolver categoriesFor: #changeToURL:forObject:!adding-removing!public! !
!URLResolver categoriesFor: #correctUrlEncoding!private! !
!URLResolver categoriesFor: #counterFor:!public!request counting! !
!URLResolver categoriesFor: #counterForUrl:!public!request counting! !
!URLResolver categoriesFor: #counters!private! !
!URLResolver categoriesFor: #defaultURL:forObject:!adding-removing!public! !
!URLResolver categoriesFor: #existURL:!public!testing! !
!URLResolver categoriesFor: #fileProxyForURL:!accessing!public! !
!URLResolver categoriesFor: #fullUrlEncodedSpacesFor:on:!accessing!public! !
!URLResolver categoriesFor: #fullUrlFor:on:!accessing!public! !
!URLResolver categoriesFor: #fullUrlFromPath:andParms:on:!accessing!public! !
!URLResolver categoriesFor: #halfUrlFor:!accessing!public! !
!URLResolver categoriesFor: #halfUrlFromPath:andParms:on:!accessing!public! !
!URLResolver categoriesFor: #incCounterFor:!public!request counting! !
!URLResolver categoriesFor: #initCounters!initialize-release!public! !
!URLResolver categoriesFor: #initialize!initialize-release!public! !
!URLResolver categoriesFor: #initURLLinks!initialize-release!public! !
!URLResolver categoriesFor: #initWebPages!initialize-release!public! !
!URLResolver categoriesFor: #isRootURL:!public!testing! !
!URLResolver categoriesFor: #isWebElement:!private! !
!URLResolver categoriesFor: #methodImageForURL:!accessing!public! !
!URLResolver categoriesFor: #objectsOfClass:!accessing!public! !
!URLResolver categoriesFor: #ooRefFromURL:!accessing!public! !
!URLResolver categoriesFor: #randomUrlFor:!private! !
!URLResolver categoriesFor: #refreshAllHTMLPages!public!static pages! !
!URLResolver categoriesFor: #registerAllHTMLPages!public!static pages! !
!URLResolver categoriesFor: #reindexAllObjects!indexing!public! !
!URLResolver categoriesFor: #reindexNonIndexedObjects!indexing!public! !
!URLResolver categoriesFor: #releaseAllHTMLPages!public!static pages! !
!URLResolver categoriesFor: #releaseAllImages!public!static pages! !
!URLResolver categoriesFor: #releaseAllStaticPages!public!static pages! !
!URLResolver categoriesFor: #removeCounterFor:!public!request counting! !
!URLResolver categoriesFor: #removeNonHTMLCounters!public!request counting! !
!URLResolver categoriesFor: #removeObject:!adding-removing!public! !
!URLResolver categoriesFor: #removeObjectsOfClass:!adding-removing!public! !
!URLResolver categoriesFor: #removeObjectsOfClassNamed:!adding-removing!public! !
!URLResolver categoriesFor: #removeObjectWithURL:!adding-removing!public! !
!URLResolver categoriesFor: #removeURL:!adding-removing!public! !
!URLResolver categoriesFor: #resetAllCounters!public!request counting! !
!URLResolver categoriesFor: #resetCounterFor:!public!request counting! !
!URLResolver categoriesFor: #scanForURLsFrom:!accessing!public! !
!URLResolver categoriesFor: #site!private! !
!URLResolver categoriesFor: #site:!private! !
!URLResolver categoriesFor: #urlFor:on:!accessing!public! !
!URLResolver categoriesFor: #urlForFile:directory:!public!static pages! !
!URLResolver categoriesFor: #urlFromHalfUrl:on:!accessing!public! !

!URLResolver class methodsFor!

default
	^AIDASite default urlResolver!

newOn: anAIDASite
	^super new 
		initialize; 
		site: anAIDASite! !
!URLResolver class categoriesFor: #default!accessing!public! !
!URLResolver class categoriesFor: #newOn:!instance creation!public! !

