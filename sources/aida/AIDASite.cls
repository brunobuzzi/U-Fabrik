"Filed out from Dolphin Smalltalk 7"!

SwazooSite subclass: #AIDASite
	instanceVariableNames: 'style settings systemServices userServices timestamps counters'
	classVariableNames: 'Default SloveneCharacters'
	poolDictionaries: ''
	classInstanceVariableNames: 'Random'!
AIDASite guid: (GUID fromString: '{55622fb9-4270-4359-8b37-a1d16299964a}')!
AIDASite comment: ''!
!AIDASite categoriesForClass!Unclassified! !
!AIDASite methodsFor!

addAllowHeaderTo: aHTTPResponse
	| methods |
	methods := 'OPTIONS,GET,HEAD,POST,DELETE,TRACE,'.
	methods := methods, 'PROPFIND,PROPPATCH,MKCOL,PUT,COPY,MOVE,LOCK,UNLOCK'.
	aHTTPResponse addHeaderName: 'Allow' value: methods!

addDontCacheHeaderTo: aHTTPResponse forPage: aWebPage
	| object value |
	object := aWebPage isWebApplication ifTrue: [aWebPage observee] ifFalse: [aWebPage].
	value := object aidaDontCache.
	value ifFalse: [value := aWebPage aidaDontCache]. "WebApp subclass can set it too!! "
	value ifTrue: [aHTTPResponse cacheControl: 'no-store, no-cache, must-revalidate'].!

addExpiresHeaderTo: aHTTPResponse forPage: aWebPage
	| object value |
	object := aWebPage isWebApplication ifTrue: [aWebPage observee] ifFalse: [aWebPage].
	value := object expiresTimestamp.
	value isNil ifTrue: [value := aWebPage expiresTimestamp]. "WebApp subclass can set it too!! "
	value notNil ifTrue: [aHTTPResponse expires: value asSpTimestamp].!

addModifiedHeaderTo: aHTTPResponse forPage: aWebPage
	| object value |
	object := aWebPage isWebApplication ifTrue: [aWebPage observee] ifFalse: [aWebPage].
	value := object modifiedTimestamp.
	value isNil ifTrue: [value := aWebPage modifiedTimestamp]. "WebApp subclass can set it too!! "
	value notNil ifTrue: [aHTTPResponse lastModified: value asSpTimestamp].!

addResponseHeadersTo: aHTTPResponse forPage: aWebPage
	"use observee in app to find timestamps, because observee points 
	to right version of an object!! "
	| object |
	object := aWebPage isWebApplication ifTrue: [aWebPage observee] ifFalse: [aWebPage].
	aHTTPResponse contentType: object contentType.
	self addModifiedHeaderTo: aHTTPResponse forPage: aWebPage.
	self addExpiresHeaderTo: aHTTPResponse forPage: aWebPage.
	self addDontCacheHeaderTo: aHTTPResponse forPage: aWebPage.!

addResponseHeadersTo: aHTTPResponse forPage: aWebPage on: aWebSession
	"use observee in app to find timestamps, because observee points 
	to right version of an object!! "
	| object |
	object := aWebPage isWebApplication ifTrue: [aWebPage observee] ifFalse: [aWebPage].
	aHTTPResponse contentType: object contentType.
	self addModifiedHeaderTo: aHTTPResponse forPage: aWebPage.
	self addExpiresHeaderTo: aHTTPResponse forPage: aWebPage.
	self addDontCacheHeaderTo: aHTTPResponse forPage: aWebPage.
	aWebSession cookie ifFalse: [aHTTPResponse cookie: (self cookieHeaderFor: aWebSession)].!

addressTextFor: anIPAddress

	^((anIPAddress hostAddress at: 1) printString, '.',
	(anIPAddress hostAddress at: 2) printString, '.',
	(anIPAddress hostAddress at: 3) printString, '.',
	(anIPAddress hostAddress at: 4) printString)!

addSystemService: aServiceObject named: aSymbol 
	"add a new system service (e.g URLResolver) to the dictionary of services"
	^self systemServices
		at: aSymbol asSymbol put: aServiceObject!

addToRunningHistoryCrashed: aBoolean
	"Call it at server startup (in setStartedTimestamp). It reads old timestamps (started and
	last alive) and add it to the history" 
	| array |
	array := Array new: 3.
	array
		at: 1 put: self startedTimestamp asSeconds;
		at: 2 put: self lastTimeAliveTimestamp asSeconds;
		at: 3 put: aBoolean.  "true if server crashed"
	self runningHistoryCollection add: array.!

addUserService: aServiceObject named: aSymbol 
	"add a new user service (e.g WebIndex) to the dictionary of services"
	self userServices
		at: aSymbol asSymbol put: aServiceObject

"
WebServer default 
	addUserService: (URLResolver default ooRefFromURL: '/koledar.html')
	named: #Koledar
"!

admin
	^self systemServices 
		at: #Admin
		ifAbsent: 
			[self addSystemService: (WebAdmin new) named: #Admin.
			self urlResolver defaultURL: '/admin.html' forObject: self admin.
			^self admin].!

afterLogin
	"url of a page to jump after ogin or #lastPage to back to last page before logout"
	^self settings at: #afterLogin ifAbsentPut: [#lastPage].!

afterLogin: aStringOrSymbol
	"1. url of page to jump"
	"2. #lastPage - back to a page before logout"
	"3. #myPage - to user's personal page, if exists"
	((aStringOrSymbol isKindOf: String) not and: 
		[(#(#lastPage #myPage) includes: aStringOrSymbol) not])
			ifTrue: [self error: 'wrong login argument'].
	self settings  at: #afterLogin put: aStringOrSymbol!

answer: anObject to: aRequest on: aWebSession

	aRequest isGet | aRequest isPost | aRequest isHead
		ifTrue: [^self answer: anObject toGetOrPost: aRequest on: aWebSession].
	aRequest isOptions ifTrue: [^self answer: anObject toOptions: aRequest on: aWebSession].
	aRequest isPropFind ifTrue: [^self answer: anObject toPropFind: aRequest on: aWebSession].
	aRequest isLock ifTrue: [^self answer: anObject toLock: aRequest on: aWebSession].
	aRequest isUnlock ifTrue: [^self answer: anObject toUnlock: aRequest on: aWebSession].
	aRequest isPut ifTrue: [^self answer: anObject toPut: aRequest on: aWebSession].
	^HTTPException notImplemented!

answer: anObject toPut: aRequest on: aWebSession
	"WebDAV: try to PUT content into that object"
	(anObject isKindOf: FileProxy) ifFalse: [^HTTPException forbidden].
	anObject put: aRequest putData.
	^HTTPResponse ok!

authenticationScheme
	"#Basic or #Digest, see rfc2617. Digest is recomended because password
	goes encrypted to server"
	self securityManager hasHttpBasicAuthenticationScheme ifTrue: [^#Basic].
	self securityManager hasHttpDigestAuthenticationScheme ifTrue: [^#Digest].
	^#None!

autoLogout
	"logout after 15min of inactivity. default is NO!! "
	^self settings at: #AutoLogout ifAbsent: [false]!

autoLogout: aBoolean
	"logout after 15min of inactivity"
	(aBoolean isKindOf: Boolean) ifFalse: [self error: 'wrong argument'].
	^self settings at: #AutoLogout put: aBoolean!

cache
	"a global cache of presentations of domain objects, if they are cached"
	^self systemServices 
		at: #Cache
		ifAbsent: [self addSystemService: (WebCache newOn: self) named: #Cache].!

cookieHeaderFor: aSession 
	"set a permanent cookie on client (up to year 2020, enough?) "
	"for secure sessions different id as for usual !! "
	| id |
	id := (aSession lastRequest notNil and: [aSession lastRequest isEncrypted])
		ifTrue: [aSession secureId] ifFalse: [aSession id].
	^(WriteStream on: String new)
		nextPutAll: self cookieName;
		nextPutAll: '=';
		nextPutAll: id printString;
		nextPutAll: '; path=/; expires=Friday, 01-Jan-2020 01:00:00 GMT';
		contents!

cookieName
	"this is the name for our cookie. It shold be unique, so it is a bit strange"
	^'aida9357'!

counters

	counters isNil ifTrue: [self initCounters].
	^counters

"WebServer default counters"!

countingPolicy
	^self settings at: #countingPolicy ifAbsentPut: [#all].!

countingPolicy: aSymbol
	"from who to count requests with WebCounters: #all, #excludeAdmins, #onlyGuests, #none"
	(#(#all, #excludeAdmins, #onlyGuests, #none) includes: aSymbol) 
		ifFalse: [self error: 'unknown policy'].
	self settings  at: #countingPolicy put: aSymbol!

cr
	^String with: Character cr!

critical: aBlock

	"For protecting critical sections in parallel execution of web requests. Use it always
	when you do things, which cannot be disturbed by another request. Exmaple:
		aServer critical: [<a block with critical section>]. "

	^WebTransactionMonitor critical: aBlock!

defaultLanguage
	"ISO 639 2-letter language code symbol for default language of that site"
	^self settings at: #defaultLanguage ifAbsentPut: [#en].!

defaultLanguage: aLanguageCodeSymbol
	"ISO 639 2-letter language code symbol for default language of that site"
	^self settings at: #defaultLanguage put: aLanguageCodeSymbol!

defaultUserService
	"which will be accessible with url: http:/hostname/ "
	^self demo!

demo
	^self userServices at: #WebDemo
		ifAbsent: 
			[self addUserService: WebDemo new named: #WebDemo.
			self urlResolver defaultURL: '/demo.html' forObject: self demo.
			^self demo]!

diagnostics

	"if true, diagnostic messages are written on transcript for every web request"
	^self settings  at: #diagnostics ifAbsentPut: [true].!

diagnostics: aBoolean
	"if true, diagnostic messages are written on transcript for every web request"
	(aBoolean isKindOf: Boolean) ifFalse: [self error: 'wrong argument'].
	self settings  at: #diagnostics put: aBoolean.!

disableWebDAVSupport
	"Web Distributed Authoring and Versioning (WebDAV, www.webdav.org) is disabled on this site"
	"AIDASite default disableWebDAVSupport"
	self settings at: #WebDAVEnabled put: false!

enableWebDAVSupport
	"Web Distributed Authoring and Versioning (WebDAV, www.webdav.org) is enabled on this site"
	"AIDASite default enableWebDAVSupport"
	self settings at: #WebDAVEnabled put: true!

help
	^self systemServices 
		at: #Help
		ifAbsent: 
			[self addSystemService: (WebHelp new) named: #Help.
			self urlResolver defaultURL: '/help.html' forObject: self help.
			^self help].!

helpDirectory

	^self settings  at: #helpDirectory ifAbsent: [^'']!

helpDirectory: aString
	" a directory, where help html dokuments are stored. See WebApplication help pages category for 
 	details"
	self settings  at: #helpDirectory put: aString.!

helpResolve: aResolution 
	(self canAnswer and: [aResolution siteMatch: self]) ifFalse: [^nil].
	^self answerTo: aResolution request!

helpURL

	^self settings  at: #helpURL ifAbsent: [^'']!

helpURL: aString
	self settings at: #helpURL put: aString.!

homeDirectory

	^self settings  at: #homeDirectory ifAbsent: [^'']!

homeDirectory: aString
	" a directory, which is the root for static html dokuments. Used for anAIDASite, when it searches 
	for usual html files. "
	self settings  at: #homeDirectory put: aString.!

hourlyStatsProcess

	"hourly report to transcript"
	"WebServer default hourlyStatsProcess"
	| hits pages new returning afterHits afterPages afterNew afterReturning |
	[
		hits := self totalCounter total.
		pages := self pagesCounter total.
		new :=	self newVisitorsCounter total.
		returning := self returningVisitorsCounter total.
		(Delay forSeconds: self secondsToHour) wait.
		[self isServing] whileTrue: 
			[afterHits := self totalCounter total.
			afterPages := self pagesCounter total.
			afterNew := self newVisitorsCounter total.
			afterReturning := self returningVisitorsCounter total.
			Transcript cr; show: '***'; cr; show:
				'***  ',  self name, ' ', 
				Time now hours printString, ':', Time now minutes printString, ' ',
				'    last hour hits: ', (afterHits - hits) printDotString, 
				'    pages: ', (afterPages - pages) printDotString, 
				'    visitors new: ', (afterNew - new) printDotString, 
				'    returning: ', (afterReturning - returning) printDotString;
				cr; show: '***'.
			self registerTopHourHits: (afterHits - hits) pages: (afterPages - pages).
			hits := afterHits. pages := afterPages.
			new := afterNew. returning := afterReturning.
			(Delay forSeconds: self secondsToHour) wait].
	] fork.!

incNotFoundCounter

	"call this after each request is processed"


	self critical:
		[self notFoundCounter incCounter].!

incRequestCounterFor: anObject

	"call this after each request is processed"


	self critical:
		[self totalCounter incCounter.
		(anObject contentType = 'text/html') 
			ifTrue: [self pagesCounter incCounter] ].!

index
	^self userServices 
		at: #WebIndex
		ifAbsent: 
			[self addUserService: WebIndex new named: #WebIndex.
			self urlResolver defaultURL: '/search.html' forObject: self index.
			^self index].!

initCounters
	"counters of web requests: total and by year/day of year"
	self critical: 
		[counters := IdentityDictionary new.
		self pagesCounter.
		self totalCounter.
		self newVisitorsCounter.
		self returningVisitorsCounter.
		self notFoundCounter].

"WebServer default initCounters"!

initFavicon
	"/favicon.ico, a small icon shown in browser near url address"
	"(AIDASite named: 'biart') initFavicon."
	| icon |
	icon := WebMethodImage
		initCache; 
		fromMethod: #favicon on: self style contentType: 'image/x-icon' site: self.
	self urlResolver defaultURL: '/favicon.ico' forObject: icon.!

initialize
	super initialize.
	WebTransactionMonitor addServer: self.
	self initializeDefaultSettings.
	self initUrlsForSystemServices.
	self initFavicon.
	WebTransactionMonitor commit.!

initializeDefaultSettings

	self host: 'newsite' ip: '127.0.0.1'  port: 8888.  "this is usable for tests only"
	self homeDirectory: (SpEnvironment onWindows ifTrue: ['.\'] ifFalse: ['./']).
	self helpDirectory: '.', (SpEnvironment onWindows ifTrue: ['\'] ifFalse: ['/']), 'help'.
	self helpURL: '/help'.
	self styleClass: 'DefaultWebStyle'.
	self diagnostics: false.
	self loggingPolicy: #none.
	self countingPolicy: #all.
	self smtpServer: self ip.
	self urgentNotificationEMail: 'info@eranova.si'.!

initTimestamps
	timestamps := IdentityDictionary new.
	self setLastTimeAliveTimestamp.
	self setCreatedTimestamp.

"WebServer default initTimestamps"!

initUrlsForSystemServices
	"register urls for access to system services if not already done"
	"AIDASite default initUrlsForSystemServices"
	self admin.
	self securityManager.
	self webMsgs.
	self statistics!

isWebDAVEnabled
	"Is Web Distributed Authoring and Versioning (WebDAV, www.webdav.org) ienabled on this site"
		^(self settings includesKey: #WebDAVEnabled)
			 and: [self settings includesKey: #WebDAVEnabled]!

keywords
	"global keywords, added to all webpages generated on this site"
	^self settings at: #keywords ifAbsent: ['']!

keywords: aString
	"global keywords, added to all webpages generated on this site"
	self settings  at: #keywords put: aString.!

log: aString
	self diagnostics ifTrue: [Transcript show: aString].!

logging

	"if true, all requests are logged into a database"
	^self settings  at: #logging ifAbsentPut: [false].!

loggingPolicy
	^self settings at: #loggingPolicy ifAbsentPut: [#none].!

loggingPolicy: aSymbol
	"from who to log requests with WebCounters: #all, #excludeAdmins, #onlyGuests, #none"
	(#(#all, #excludeAdmins, #onlyGuests, #none) includes: aSymbol) 
		ifFalse: [self error: 'unknown policy'].
	self settings  at: #loggingPolicy put: aSymbol!

logStringFor: aRequest
	^self name, ' ',
 		Date today dayOfMonth printString, '.',
		Date today monthIndex printString, ' ',
		Time now hours printString, ':', 
		Time now minutes printString,
		' from ', (aRequest peer notNil ifTrue: [aRequest peer] ifFalse: ['']), ' ',
		aRequest methodName, ' ',
		aRequest urlString!

mimeMap
	^self systemServices 
		at: #MimeMap
		ifAbsent: 
			[self addSystemService: MIMEMap new named: #MimeMap.
			^self mimeMap].!

minuteStatsProcess

	"every minute report to transcript"
	"WebServer default minuteStatsProcess"
	| hits pages new returning afterHits afterPages afterNew afterReturning |
	[
		hits := self totalCounter total.
		pages := self pagesCounter total.
		new :=	self newVisitorsCounter total.
		returning := self returningVisitorsCounter total.
		(Delay forSeconds: self secondsToMinute) wait.
		[self isServing] whileTrue: 
			[afterHits := self totalCounter total.
			afterPages := self pagesCounter total.
			afterNew := self newVisitorsCounter total.
			afterReturning := self returningVisitorsCounter total.
			Transcript cr; show: 
				self name, ' ', 
				Time now hours printString, ':', Time now minutes printString, ' ',
				'    last minute hits: ', (afterHits - hits) printDotString, 
				'    pages: ', (afterPages - pages) printDotString, 
				'    visitors new: ', (afterNew - new) printDotString, 
				'    returning: ', (afterReturning - returning) printDotString.
			self registerTopMinuteHits: (afterHits - hits) pages: (afterPages - pages).
			hits := afterHits. pages := afterPages.
			new := afterNew. returning := afterReturning.
			(Delay forSeconds: self secondsToMinute) wait].
	] fork.!

newVisitorsCounter
	"counter of new sessions"
	(self counters includesKey: #NewVisitors) ifFalse: 
 		["self error: 'newVisitorsCounter ??'."
		self counters at: #NewVisitors put: WebCounter new].
	^self counters at: #NewVisitors

"WebServer default newVisitorsCounter"!

notFoundCounter
	"counter of not found errors"
	(self counters includesKey: #NotFound) ifFalse: 
 		[self counters at: #NotFound put: WebCounter new].
	^self counters at: #NotFound

"WebServer default notFoundCounter"!

objectTo: aRequest  forSession: aSession
	| object  | 
	object := self urlResolver  ooRefFromURL: 
		(AIDASite convertFromWeb: aRequest uriString on: aSession). "for international Urls"
	aSession shouldCountRequests ifFalse: [^object].    "to skip admin requests etc."
	object notNil 
		ifTrue: 
			[self urlResolver incCounterFor: object.
			self incRequestCounterFor: object]
		ifFalse: 
			[self incNotFoundCounter.
			self log: ' not found: ', aRequest uriString, ' '.
			^nil ].
	self statistics collectStatsFrom: aRequest.
	^object!

pagesCounter
	"counter of only text/html pages"
	(self counters includesKey: #Pages) ifFalse: 
 		["self error: 'pagesCounter ??'."
		self counters 	at: #Pages put: WebCounter new].
	^self counters at: #Pages

"WebServer default pagesCounter"!

printString

	^'anAIDASite named: ', self name!

redirectToHost
	"if set, all requests are redirected to that hostname!!"
	| host |
	host := self settings  at: #redirectToHost ifAbsent: [^nil].
	(host isNil or: [host isEmpty]) ifTrue: [^nil].
	^host!

redirectToHost: aHostnameString
	"if set, all requests are redirected to that hostname!!"
	self settings  at: #redirectToHost put: aHostnameString!

releaseApplicationState
	"release application state (appsForObjects) of all sessions"
	^self sessionManager releaseApplicationState!

reportSocketError: anException request: aRequest
	"some hard to find error while streaming, i'm trying to debug it with that report"
"	Transcript cr; show: '**SpSocketError on ', self name, ': ', anException parameter messageText; cr.
	Transcript show:  aRequest printString; cr. "!

requestsInYear: aYearNumber
	"return a number of requests on specified year"

	| count |
	count := 0.
	((self counters at: #Daily) at: aYearNumber ifAbsent: [^0]) do: [:dayCount |
		count := count + dayCount].
	^count!

requestsOnDate: aDate
	"return a number of requests on specified date"

	^self totalCounter countsOnDate: aDate!

restart
	self stop.
	self start.!

returningVisitorsCounter
	"counter of returning sessions"
	(self counters includesKey: #ReturningVisitors) ifFalse: 
 		["self error: 'returningVisitorsCounter ??'."
		self counters
			at: #ReturningVisitors put: WebCounter new].
	^self counters at: #ReturningVisitors

"WebServer default returningVisitorsCounter"!

runningHistoryCollection
	^self timestamps at: #RunningHistory ifAbsentPut: [OrderedCollection new].!

secondsToHour

	| now | 
	now := Time now asSeconds.
	^(3600 - (now - (now // 3600 * 3600))) max: 0

"WebServer default secondsToHour"!

secondsToMinute

	| now | 
	now := Time now asSeconds.
	^(60 - (now - (now // 60 * 60))) max: 0

"WebServer default secondsToMinute"!

securityManager
	^self systemServices 
		at: #SecurityManager
		ifAbsent: 
			[self 
				addSystemService: (WebSecurityManager newOn: self)
				named: #SecurityManager.
			self urlResolver defaultURL: '/security.html' forObject: self securityManager.
			self securityManager initialize.
			^self securityManager].!

sessionManager
	^self systemServices 
		at: #SessionManager
		ifAbsent: 
			[self 
				addSystemService: (WebSessionManager newOn: self)
				named: #SessionManager.
			^self sessionManager].!

settings
	settings isNil ifTrue: 
		[settings := Dictionary new. 
		self initializeDefaultSettings].
	^settings

"WebServer default settings"!

settingsReport
	"a brief report of current settings to transcript, used at site startup"
	Transcript cr; show: 'server diagnostics: '.
	self diagnostics
		ifTrue: [Transcript show: 'ON']
		ifFalse: [Transcript show: 'OFF'].
	Transcript cr.!

shouldRedirect
	^self redirectToHost notNil!

smtpServer

	"an address of email server for outgoing mails (notifications, mailing lists etc.)"

	^self settings  at: #smtpServer ifAbsentPut: [self host].

"WebServer default smtpServer"!

smtpServer: anAddressString
	"an address of email server for outgoing mails (notifications, mailing lists etc.)"
	self settings  at: #smtpServer put: anAddressString.!

start
	self setStartedTimestampCrashed: self isServing.
	self setLastTimeAliveTimestamp.
	super start.
	self startServices.!

startServices
	self systemServices values do: [:service | (service class canUnderstand: #start) ifTrue: [service start] ].
	self userServices values do: [:service | (service class canUnderstand: #start) ifTrue: [service start] ].!

statistics
	^self systemServices 
		at: #Statistics
		ifAbsent: 
			[self 
				addSystemService: (WebStatistics newOn: self)
				named: #Statistics.
			self urlResolver defaultURL: '/stats.html' forObject: self statistics.
			^self statistics].!

stop
	super stop.
	self stopServices.
	self setLastTimeAliveTimestamp.!

stopServices
	self systemServices values do: [:service | (service class canUnderstand: #stop) ifTrue: [service stop] ].
	self userServices values do: [:service | (service class canUnderstand: #stop) ifTrue: [service stop] ].!

stopWatchdog
	self watchdog notNil ifTrue: 
		[self watchdog terminate.
		self watchdog: nil].!

style: aWebStyle
	style := aWebStyle.!

styleClass
	(self settings includesKey: #styleClass) ifFalse: 
		[self styleClass: 'DefaultWebStyle' ].
	^(self settings  at: #styleClass) asString!

styleClass: aClassOrString
	"name of a class to provide a style support for this site. Default is WebStyle"
	| nme |
	nme := (aClassOrString isKindOf: String)
		ifTrue: [aClassOrString] ifFalse: [aClassOrString name asString].
	self settings  at: #styleClass put: nme.
	self style: nil. "to initialize new style automatically"!

supportedLanguages
	"Which languages are supported on this site. Content may be in all those languages. 
	Default language is always among supported."
	^(self settings at: #supportedLanguages ifAbsent: [Set new])
		add: self defaultLanguage; yourself!

supportedLanguages: aSetOfLangCodes
	"Which languages are supported on this site. Content may be in all those languages. 
	Default language is always among supported."
	^self settings at: #supportedLanguages put: aSetOfLangCodes asSet!

systemServiceNamed: aSymbol

	"return a system service object with a specified name"

	^self systemServices at: aSymbol asSymbol ifAbsent: [^nil]!

systemServices
	"return a dictionary of system services (e.g. URLResolver, ImageManager etc.)"
	systemServices isNil 
		ifTrue: [systemServices := Dictionary new].
	^systemServices!

task: anObject

	self halt.!

tempDirectory
	" a directory for temporary files, usually ./temp. This directory is also created if not exist yet "
	^self settings  at: #tempDirectory ifAbsent: 
		[^self tempDirectory: self homeDirectory, 'temp']!

tempDirectory: aString
	" a directory for temporary files, usually ./temp. This directory is also created if not exist yet "
	| dir |
	self settings at: #tempDirectory put: aString.
	dir := SpFilename named: self tempDirectory.
	dir exists ifFalse: [dir makeDirectory].
	^self tempDirectory!

timestamps
	timestamps isNil ifTrue: [self initTimestamps].
	^timestamps!

totalCounter
	"counter of all web requests"
	(self counters includesKey: #Total) ifFalse: 
 		["self error: 'totalCounter ??'."
		self counters at: #Total put: WebCounter new].
	^self counters at: #Total

"WebServer default totalCounter"!

totalDowntime
	"return downtime between all server runs in seconds"
	"AIDASite default totalDowntime"
	| history downtime |
	history := self runningHistory.
	downtime := 0.
	history do: [:array | downtime := downtime + (array at: 4)].
	^downtime!

totalRequests
	"return a number of requests from server creation"

	^self totalCounter total.!

totalUptime
	"return uptime of all server runs in seconds"
	"AIDASite default totalUptime"
	| history uptime |
	history := self runningHistory.
	uptime := 0.
	history do: [:array | uptime := uptime + (array at: 3)].
	^uptime!

translator
	"translation support for Apps"
	^self systemServices 
		at: #Translator
		ifAbsent: [self addSystemService: (WebTranslator newOn: self) named: #Translator].!

uptime
	"return uptime of current server run in seconds (with 60s precision)"
	"AIDASite default uptime"
	^self lastTimeAliveTimestamp asSeconds - self startedTimestamp asSeconds!

urgentNotificationEMail

	"an email address or addresses (separated by comma) of all recipients of urgent server notifications "

	^self settings  at: #urgentNotificationEMail ifAbsentPut: ['janko.mivsek@eranova.si'].!

urgentNotificationEMail: anEMailAddressString
	"an email address or addresses (separated by comma) of all recipients of urgent server notifications "
	self settings  at: #urgentNotificationEMail put: anEMailAddressString.!

urlResolver
	^self systemServices 
		at: #URLResolver
		ifAbsent: 
			[self 
				addSystemService: (URLResolver newOn: self) 
				named: #URLResolver.
			^self urlResolver].!

urlsWithSessionId: aBoolean
	"is session id added to urls when browser cookie support is disabled?"
	(aBoolean isKindOf: Boolean) ifFalse: [self error: 'wrong argument'].
	^self settings at: #urlsWithSessionId put: aBoolean!

userServiceNamed: aSymbol

	"return a user service object with a specified name"

	^self userServices at: aSymbol asSymbol ifAbsent: [^nil]!

userServices
	"return a dictionary of user services (e.g. WebIndex, WebNews etc.)"
	userServices isNil ifTrue: [userServices := Dictionary new. ].
	^userServices!

watchdogAction
	self setLastTimeAliveTimestamp!

webMsgs
	^self systemServices 
		at: #WebMsgs
		ifAbsent: 
			[self addSystemService: (WebMsgs new)	named: #WebMsgs.
			^self webMsgs].!

webServerEMail

	"an email address of this web server "

	^self settings  at: #webServerEMail ifAbsentPut: ['aida-web@eranova.si'].!

webServerEMail: anEMailString
	"an email address of this web server "
	self settings  at: #webServerEMail put: anEMailString.! !
!AIDASite categoriesFor: #addAllowHeaderTo:!private-serving!public! !
!AIDASite categoriesFor: #addDontCacheHeaderTo:forPage:!private-serving!public! !
!AIDASite categoriesFor: #addExpiresHeaderTo:forPage:!private-serving!public! !
!AIDASite categoriesFor: #addModifiedHeaderTo:forPage:!private-serving!public! !
!AIDASite categoriesFor: #addResponseHeadersTo:forPage:!private-serving!public! !
!AIDASite categoriesFor: #addResponseHeadersTo:forPage:on:!private-serving!public! !
!AIDASite categoriesFor: #addressTextFor:!private-serving!public! !
!AIDASite categoriesFor: #addSystemService:named:!public!system services! !
!AIDASite categoriesFor: #addToRunningHistoryCrashed:!private! !
!AIDASite categoriesFor: #addUserService:named:!public!user services! !
!AIDASite categoriesFor: #admin!public!system services! !
!AIDASite categoriesFor: #afterLogin!public!settings! !
!AIDASite categoriesFor: #afterLogin:!public!settings! !
!AIDASite categoriesFor: #answer:to:on:!public!serving! !
!AIDASite categoriesFor: #answer:toPut:on:!public!serving! !
!AIDASite categoriesFor: #authenticationScheme!private! !
!AIDASite categoriesFor: #autoLogout!public!settings! !
!AIDASite categoriesFor: #autoLogout:!public!settings! !
!AIDASite categoriesFor: #cache!public!system services! !
!AIDASite categoriesFor: #cookieHeaderFor:!private-serving!public! !
!AIDASite categoriesFor: #cookieName!private-serving!public! !
!AIDASite categoriesFor: #counters!private-counters!public! !
!AIDASite categoriesFor: #countingPolicy!public!settings! !
!AIDASite categoriesFor: #countingPolicy:!public!settings! !
!AIDASite categoriesFor: #cr!private! !
!AIDASite categoriesFor: #critical:!accessing!public! !
!AIDASite categoriesFor: #defaultLanguage!public!settings! !
!AIDASite categoriesFor: #defaultLanguage:!public!settings! !
!AIDASite categoriesFor: #defaultUserService!public!user services! !
!AIDASite categoriesFor: #demo!public!user services! !
!AIDASite categoriesFor: #diagnostics!public!settings! !
!AIDASite categoriesFor: #diagnostics:!public!settings! !
!AIDASite categoriesFor: #disableWebDAVSupport!public!settings! !
!AIDASite categoriesFor: #enableWebDAVSupport!public!settings! !
!AIDASite categoriesFor: #help!public!system services! !
!AIDASite categoriesFor: #helpDirectory!public!settings-directories! !
!AIDASite categoriesFor: #helpDirectory:!public!settings-directories! !
!AIDASite categoriesFor: #helpResolve:!private-serving!public! !
!AIDASite categoriesFor: #helpURL!public!settings! !
!AIDASite categoriesFor: #helpURL:!public!settings! !
!AIDASite categoriesFor: #homeDirectory!public!settings-directories! !
!AIDASite categoriesFor: #homeDirectory:!public!settings-directories! !
!AIDASite categoriesFor: #hourlyStatsProcess!public!statistics-counters! !
!AIDASite categoriesFor: #incNotFoundCounter!private-counters!public! !
!AIDASite categoriesFor: #incRequestCounterFor:!private-counters!public! !
!AIDASite categoriesFor: #index!public!user services! !
!AIDASite categoriesFor: #initCounters!private-counters!public! !
!AIDASite categoriesFor: #initFavicon!initialize-release!public! !
!AIDASite categoriesFor: #initialize!initialize-release!public! !
!AIDASite categoriesFor: #initializeDefaultSettings!initialize-release!public! !
!AIDASite categoriesFor: #initTimestamps!initialize-release!public! !
!AIDASite categoriesFor: #initUrlsForSystemServices!initialize-release!public! !
!AIDASite categoriesFor: #isWebDAVEnabled!public!settings! !
!AIDASite categoriesFor: #keywords!public!settings! !
!AIDASite categoriesFor: #keywords:!public!settings! !
!AIDASite categoriesFor: #log:!printing!public! !
!AIDASite categoriesFor: #logging!public!settings! !
!AIDASite categoriesFor: #loggingPolicy!public!settings! !
!AIDASite categoriesFor: #loggingPolicy:!public!settings! !
!AIDASite categoriesFor: #logStringFor:!private-serving!public! !
!AIDASite categoriesFor: #mimeMap!public!system services! !
!AIDASite categoriesFor: #minuteStatsProcess!public!statistics-counters! !
!AIDASite categoriesFor: #newVisitorsCounter!private-counters!public! !
!AIDASite categoriesFor: #notFoundCounter!private-counters!public! !
!AIDASite categoriesFor: #objectTo:forSession:!private-serving!public! !
!AIDASite categoriesFor: #pagesCounter!private-counters!public! !
!AIDASite categoriesFor: #printString!printing!public! !
!AIDASite categoriesFor: #redirectToHost!public!settings! !
!AIDASite categoriesFor: #redirectToHost:!public!settings! !
!AIDASite categoriesFor: #releaseApplicationState!public!start/stop! !
!AIDASite categoriesFor: #reportSocketError:request:!public!serving! !
!AIDASite categoriesFor: #requestsInYear:!public!statistics-counters! !
!AIDASite categoriesFor: #requestsOnDate:!public!statistics-counters! !
!AIDASite categoriesFor: #restart!public!start/stop! !
!AIDASite categoriesFor: #returningVisitorsCounter!private-counters!public! !
!AIDASite categoriesFor: #runningHistoryCollection!private! !
!AIDASite categoriesFor: #secondsToHour!public!statistics-counters! !
!AIDASite categoriesFor: #secondsToMinute!public!statistics-counters! !
!AIDASite categoriesFor: #securityManager!public!system services! !
!AIDASite categoriesFor: #sessionManager!public!system services! !
!AIDASite categoriesFor: #settings!private! !
!AIDASite categoriesFor: #settingsReport!public!settings! !
!AIDASite categoriesFor: #shouldRedirect!private-serving!public! !
!AIDASite categoriesFor: #smtpServer!public!settings! !
!AIDASite categoriesFor: #smtpServer:!public!settings! !
!AIDASite categoriesFor: #start!public!start/stop! !
!AIDASite categoriesFor: #startServices!private! !
!AIDASite categoriesFor: #statistics!public!system services! !
!AIDASite categoriesFor: #stop!public!start/stop! !
!AIDASite categoriesFor: #stopServices!private! !
!AIDASite categoriesFor: #stopWatchdog!private! !
!AIDASite categoriesFor: #style:!private! !
!AIDASite categoriesFor: #styleClass!public!settings! !
!AIDASite categoriesFor: #styleClass:!public!settings! !
!AIDASite categoriesFor: #supportedLanguages!public!settings! !
!AIDASite categoriesFor: #supportedLanguages:!public!settings! !
!AIDASite categoriesFor: #systemServiceNamed:!public!system services! !
!AIDASite categoriesFor: #systemServices!private! !
!AIDASite categoriesFor: #task:!public! !
!AIDASite categoriesFor: #tempDirectory!public!settings-directories! !
!AIDASite categoriesFor: #tempDirectory:!public!settings-directories! !
!AIDASite categoriesFor: #timestamps!private! !
!AIDASite categoriesFor: #totalCounter!private-counters!public! !
!AIDASite categoriesFor: #totalDowntime!public!statistics! !
!AIDASite categoriesFor: #totalRequests!public!statistics-counters! !
!AIDASite categoriesFor: #totalUptime!public!statistics! !
!AIDASite categoriesFor: #translator!public!system services! !
!AIDASite categoriesFor: #uptime!public!statistics! !
!AIDASite categoriesFor: #urgentNotificationEMail!public!settings! !
!AIDASite categoriesFor: #urgentNotificationEMail:!public!settings! !
!AIDASite categoriesFor: #urlResolver!public!system services! !
!AIDASite categoriesFor: #urlsWithSessionId:!public!settings! !
!AIDASite categoriesFor: #userServiceNamed:!public!user services! !
!AIDASite categoriesFor: #userServices!private! !
!AIDASite categoriesFor: #watchdogAction!private! !
!AIDASite categoriesFor: #webMsgs!public!system services! !
!AIDASite categoriesFor: #webServerEMail!public!settings! !
!AIDASite categoriesFor: #webServerEMail:!public!settings! !

!AIDASite class methodsFor!

charC
	"return internal  unicode code for slovene character: uppercase c"
	^$C!

charCszSet
	^Set new
		add: self charc; add: self charC;
		add: self chars; add: self charS;
		add: self charz; add: self charZ;
		yourself!

charS
	"return internal  unicode code for slovene character: uppercase s"
	^$S!

charz
	"return internal unicode code for slovene character: lowercase z"
	^$z!

charZ
	"return internal unicode code for slovene character: uppercase z"
	^$Z!

convertFromWeb: aString on: aSession
	"convert aString, which is in code page, defined in aSession to an internal unicode "
	^self convert: aString fromCodepage: aSession codePage!

convertFromWebString: aString
	"converts special chars in http stream: 
		'+' as ' '
		%xx as appropriate ASCII char
	"
	| newString |
	newString := HTTPString decodedHTTPFrom: aString.
	newString := AIDASite convert:newString fromCodepage: #'utf-8'.
	^newString

"AIDASite convertFromWebString: (AIDASite convertToWebString: '+-% test one') "!

convertIRItoURL: aString
	"VW specific!!"
	| stream aByteString |
	stream := WriteStream on: ''.
	aByteString := self convert: aString toCodepage: #utf8.
	aByteString do: [ :char |
	('abcdefghijklmnopqrstuvwxyz0123456789./-+:~?#@=' includes: char asLowercase)
		ifTrue: [ stream nextPut: char. ]
		ifFalse: [ stream nextPut: $%; nextPutAll: (char asInteger printStringRadix: 16). ]. ]. "VW specific!! "
	^ stream contents.!

convertToWeb: aString on: aSession
	"rconver internal unicode aString to a proper code page, defined in aSession"
	^self convert: aString toCodepage: aSession codePage!

convertToWebString: aString
	"converts some special chars in http stream: 
		' ' as '+'
		%xx as appropriate ASCII char
	"
	^HTTPString encodedHTTPFrom: aString 

"AIDASite convertToWebString: '+-% test one' "!

decodeCharEntitiesIn: aString
	"  '&lt;tag&gt; = '<tag>'  "
	"Character entitty references, see http://www.w3.org/TR/html401/charset.html#h-5.3.2"
	| charDict in out |
	charDict := Dictionary new
		at: 'lt' put: $<; at: 'gt' put: $>;
		at: 'amp' put: $&; at: 'quot' put: $"; yourself.
	in := aString readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse: 
		[| ch entity | 
		ch := in next.
		ch = $& 
			ifTrue: 
				[entity := in upTo: $; .
				out nextPut: (charDict at: entity)]
			ifFalse: [out nextPut: ch]  ].
	^out contents!

encodeCharEntitiesIn: aString
	"  '<tag>' = '&lt;tag&gt;' "
	"Character entitty references,  see http://www.w3.org/TR/html401/charset.html#h-5.3.2"
	| charEntities charDict in out |
	charEntities := #($< $> $& $").
	(aString contains: [:ch | charEntities includes: ch ]) ifFalse: [^aString]. "quick test"
	charDict := Dictionary new
		at: $< put: '&lt;'; at: $> put: '&gt;';
		at: $& put: '&amp;'; at: $" put: '&quot;'; yourself.
	in := aString readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse: 
		[| ch | ch := in next.
		(charEntities includes: ch)
			ifTrue: [out nextPutAll: (charDict at: ch)]
			ifFalse: [out nextPut: ch]  ].
	^out contents!

encodeQuoteEntitiesIn: aString
	" Just double quotes '' to &quot;  "
	"Character entitty references,  see http://www.w3.org/TR/html401/charset.html#h-5.3.2"
	| in out |
	(aString contains: [:ch | ch = $" ]) ifFalse: [^aString]. "quick test"
	in := aString readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse: 
		[| ch | ch := in next.
		ch = $"
			ifTrue: [out nextPutAll: '&quot;']
			ifFalse: [out nextPut: ch]  ].
	^out contents!

fromHexValue: aCharacter
	aCharacter isDigit 
		ifTrue: [^aCharacter asInteger - $0 asInteger]
		ifFalse: [
			(aCharacter asLowercase between: $a and: $f)
				ifTrue: [^aCharacter asLowercase asInteger - $a asInteger+10]
				ifFalse: [^nil]].!

hexCharFrom: aNumber
	^aNumber < 10 
		ifTrue: [($0 asInteger + aNumber) asCharacter]
		ifFalse: [($A asInteger + aNumber - 10) asCharacter]!

initializeDemoSite
	"prepare a demo site, if not already"
	"put that in Aida/Web bundle postLoad action!!"
	SwazooServer singleton aidaSites isEmpty ifTrue:
		[SwazooServer singleton aidaDemoSite].!

markedAsSubjectClass!

oldConvertToUnicode: aString
	^aString collect: 
		[:ch | ch asInteger > 127 
			ifTrue:
				[ch asInteger = 61346 ifTrue: ["$~" 16r010D asCharacter]
					ifFalse: [ ch asInteger = 61552 ifTrue: ["$^" 16r010C asCharacter]
					ifFalse: [ ch asInteger = 252 ifTrue: ["${" 16r0151 asCharacter]
					ifFalse: [ ch asInteger = 9839 ifTrue: ["$[" 16r0160 asCharacter]
					ifFalse: [ ch asInteger = 235 ifTrue: ["$` " 16r017E asCharacter] 
					ifFalse: [ ch asInteger = 227 ifTrue: ["$@" 16r017D asCharacter]
					ifFalse: [ch]]]]]]
				]
			ifFalse: [ch]
		].!

return7BitFromCP852String: aString


	^aString collect: 
		[:ch | ch asInteger > 127 
			ifTrue:
				[ch asInteger = 61346 ifTrue: [$~]
					ifFalse: [ ch asInteger = 61552 ifTrue: [$^]
					ifFalse: [ ch asInteger = 252 ifTrue: [${]
					ifFalse: [ ch asInteger = 9839 ifTrue: [$[]
					ifFalse: [ ch asInteger = 235 ifTrue: [$`] 
					ifFalse: [ ch asInteger = 227 ifTrue: [$@]
					ifFalse: [ch]]]]]]
				]
			ifFalse: [ch]
		].

"WebServer returnCZSFromCP852String: 'Miv'"!

returnCP1250FromCP852String: aString


	^(aString asWordArray collect: 
		[:ch | ch > 127 
			ifTrue:
				[ch  = 61346 ifTrue: [232 ]
					ifFalse: [ ch  = 61552 ifTrue: [200 ]
					ifFalse: [ ch  = 252 ifTrue: [154 ]
					ifFalse: [ ch  = 9839 ifTrue: [138 ]
					ifFalse: [ ch  = 235 ifTrue: [158 ]
					ifFalse: [ ch  = 227 ifTrue: [142 ]
					ifFalse: [ch]]]]]]
				]
			ifFalse: [ch]
		]) asString.

"WebServer returnCZSFromCP852String: 'Miv'"!

returnCP852From7BitString: aString


	^(aString asWordArray collect: 
		[:ch | 
			ch  = $~ asInteger ifTrue: [61346 ]
				ifFalse: [ ch  =   $^ asInteger 	ifTrue: [61552 ]
				ifFalse: [ ch  = ${ asInteger 	ifTrue: [252 ]
				ifFalse: [ ch  =   $[ asInteger 	ifTrue: [9839 ]
				ifFalse: [ ch  =   $` asInteger 	ifTrue: [235 ]
				ifFalse: [ ch  =    $@ asInteger	ifTrue: [227 ]
				ifFalse: [ch]]]]]]
		]) asString.

"WebServer returnCP852From7BitString: 'Miv{ek'"!

returnCP852FromCP1250String: aString


	^(aString asWordArray collect: 
		[:ch | ch > 127 
			ifTrue:
				[ch  = 232 ifTrue: [61346 ]
					ifFalse: [ ch  = 200 ifTrue: [61552 ]
					ifFalse: [ ch  = 154 ifTrue: [252 ]
					ifFalse: [ ch  = 138 ifTrue: [9839 ]
					ifFalse: [ ch  = 158 ifTrue: [235 ]
					ifFalse: [ ch  = 142 ifTrue: [227 ]
					ifFalse: [ch]]]]]]
				]
			ifFalse: [ch]
		]) asString.

"WebServer returnCP852FromCP1250String: 'Miv'"!

returnCP852FromISO2String: aString


	^(aString asWordArray collect: 
		[:ch | ch  > 127 
			ifTrue:
				[ch  = 232 ifTrue: [61346 ]
					ifFalse: [ ch  = 200 ifTrue: [61552 ]
					ifFalse: [ ch  = 185 ifTrue: [252 ]
					ifFalse: [ ch  = 169 ifTrue: [9839 ]
					ifFalse: [ ch  = 190 ifTrue: [235 ]
					ifFalse: [ ch  = 174 ifTrue: [227 ]
					ifFalse: [ch]]]]]]
				]
			ifFalse: [ch]
		]) asString.

"WebServer returnCP852FromISO2String: 'Mivsek'"!

returnCSZFromCP852String: aString


	^aString collect: 
		[:ch | ch asInteger > 127 
			ifTrue:
				[ch asInteger = 61346 ifTrue: [$c]
					ifFalse: [ ch asInteger = 61552 ifTrue: [$C]
					ifFalse: [ ch asInteger = 252 ifTrue: [$s]
					ifFalse: [ ch asInteger = 9839 ifTrue: [$S]
					ifFalse: [ ch asInteger = 235 ifTrue: [$z]
					ifFalse: [ ch asInteger = 227 ifTrue: [$Z]
					ifFalse: [ch]]]]]]
				]
			ifFalse: [ch]
		].

"WebServer returnCZSFromCP852String: 'Miv'"!

returnCZSFromCP852String: aString


	^aString collect: 
		[:ch | ch asInteger > 127 
			ifTrue:
				[ch asInteger = 61346 ifTrue: [$c]
					ifFalse: [ ch asInteger = 61552 ifTrue: [$C]
					ifFalse: [ ch asInteger = 252 ifTrue: [$s]
					ifFalse: [ ch asInteger = 9839 ifTrue: [$S]
					ifFalse: [ ch asInteger = 235 ifTrue: [$z]
					ifFalse: [ ch asInteger = 227 ifTrue: [$Z]
					ifFalse: [ch]]]]]]
				]
			ifFalse: [ch]
		].

"WebServer returnCZSFromCP852String: 'Miv'"!

returnISO2FromCP852String: aString


	^(aString asWordArray collect: 
		[:ch | ch  > 127 
			ifTrue:
				[ch  = 61346 ifTrue: [232 ]
					ifFalse: [ ch  = 61552 ifTrue: [200 ]
					ifFalse: [ ch  = 252 ifTrue: [185 ]
					ifFalse: [ ch  = 9839 ifTrue: [169 ]
					ifFalse: [ ch  = 235 ifTrue: [190 ]
					ifFalse: [ ch  = 227 ifTrue: [174 ]
					ifFalse: [ch]]]]]]
				]
			ifFalse: [ch]
		]) asString.

"WebServer returnCZSFromCP852String: 'Miv'"!

sloveneLowercase: aString
	^aString collect: [:chr | 
		(AIDASite isSloveneCharacter: chr)
			ifTrue: 	[(chr = AIDASite charC) ifTrue: [AIDASite charc]
				ifFalse: [(chr = AIDASite charS) ifTrue: [AIDASite chars]
					ifFalse: [(chr = AIDASite charZ) ifTrue: [AIDASite charz]
						ifFalse: [chr] ]]]
			ifFalse: [chr asLowercase]
		].!

sloveneUppercase: aString
	^aString collect: [:chr | 
		(AIDASite isSloveneCharacter: chr)
			ifTrue: 	[(chr = AIDASite charc) ifTrue: [AIDASite charC]
				ifFalse: [(chr = AIDASite chars) ifTrue: [AIDASite charS]
					ifFalse: [(chr = AIDASite charz) ifTrue: [AIDASite charZ]
						ifFalse: [chr] ]]]
			ifFalse: [chr asUppercase]
		].! !
!AIDASite class categoriesFor: #charC!aida unicode error!public!slovenian characters! !
!AIDASite class categoriesFor: #charCszSet!public!slovenian characters! !
!AIDASite class categoriesFor: #charS!aida unicode error!public!slovenian characters! !
!AIDASite class categoriesFor: #charz!aida unicode error!public!slovenian characters! !
!AIDASite class categoriesFor: #charZ!aida unicode error!public!slovenian characters! !
!AIDASite class categoriesFor: #convertFromWeb:on:!codepage converting!public! !
!AIDASite class categoriesFor: #convertFromWebString:!http encoding!public! !
!AIDASite class categoriesFor: #convertIRItoURL:!http encoding!public! !
!AIDASite class categoriesFor: #convertToWeb:on:!codepage converting!public! !
!AIDASite class categoriesFor: #convertToWebString:!http encoding!public! !
!AIDASite class categoriesFor: #decodeCharEntitiesIn:!http encoding!public! !
!AIDASite class categoriesFor: #encodeCharEntitiesIn:!http encoding!public! !
!AIDASite class categoriesFor: #encodeQuoteEntitiesIn:!http encoding!public! !
!AIDASite class categoriesFor: #fromHexValue:!http encoding!public! !
!AIDASite class categoriesFor: #hexCharFrom:!http encoding!public! !
!AIDASite class categoriesFor: #initializeDemoSite!initialize!public! !
!AIDASite class categoriesFor: #markedAsSubjectClass!ADvance!public! !
!AIDASite class categoriesFor: #oldConvertToUnicode:!codepages-obsolete!public! !
!AIDASite class categoriesFor: #return7BitFromCP852String:!codepages-obsolete!public! !
!AIDASite class categoriesFor: #returnCP1250FromCP852String:!codepages-obsolete!public! !
!AIDASite class categoriesFor: #returnCP852From7BitString:!codepages-obsolete!public! !
!AIDASite class categoriesFor: #returnCP852FromCP1250String:!codepages-obsolete!public! !
!AIDASite class categoriesFor: #returnCP852FromISO2String:!codepages-obsolete!public! !
!AIDASite class categoriesFor: #returnCSZFromCP852String:!codepages-obsolete!public! !
!AIDASite class categoriesFor: #returnCZSFromCP852String:!codepages-obsolete!public! !
!AIDASite class categoriesFor: #returnISO2FromCP852String:!codepages-obsolete!public! !
!AIDASite class categoriesFor: #sloveneLowercase:!public!slovenian characters! !
!AIDASite class categoriesFor: #sloveneUppercase:!public!slovenian characters! !

