"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebSession
	instanceVariableNames: 'ids created cookies parent user language country appsForObjects userValues other'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebSession guid: (GUID fromString: '{0bedaf05-dcd1-413a-927f-2dcf29cd1664}')!
WebSession comment: ''!
!WebSession categoriesForClass!Unclassified! !
!WebSession methodsFor!

addApp: anApplication for: anObject type: aSymbol
	"web or wap apps, type can be #web or #wap "
	| objDict |
	objDict := self appsForObjects at: anObject ifAbsentPut: [Dictionary new].
	objDict at: aSymbol put: anApplication!

addSessionID
	"add session id to  parms dictionary. Url with session id looks like: 	http://www.tris-a.si/welcome.html?id=523453. This should be done for every automaticaly 
	generated url (WebLink printHTMLPage) to distinguish sesions among themselves."
	self parms at: 'id' put: self id printString.!

addWebApp: aWebApplication for: anObject
	^self addApp: aWebApplication for: anObject type: #web!

adminAllowed
	"check if general administration is allowed for user on our session"
	^self site securityManager
		isUser: self user
		inGroupNamed: self site securityManager adminGroup name!

appFor: anObject type: aSymbol 
	^(self appsForObjects at: anObject ifAbsent: [^nil]) 
		at: aSymbol ifAbsent: [^nil]!

appsForObjects
	
	appsForObjects isNil ifTrue: [self initAppsForObjects].
	^appsForObjects!

authenticateFrom: aRequest
	"try to login with username and password from request (rfc2617)"
	| usr |
	aRequest username isNil ifTrue: [^nil].
	usr := self site securityManager userNamed: aRequest username.
	usr isNil ifTrue: [^nil].
	(aRequest matchUserWithPassword: usr password) 
		ifTrue: [self loginUser: usr] ifFalse: [self logout].!

browser
	
	"try to find out, which browser a web request originator is using. It can be #Netscape, #IBM, #Microsoft, #lynx, #Mosaic.  Returns #Unknown if not possible to find out the browser type"

	| partOfString |
	self browserString = '' ifTrue: [^#Unknown].
	partOfString := self browserString copyFrom: 1 to: 6.
	partOfString = 'Mozill' ifTrue: [^#Netscape].
	partOfString = '' ifTrue: [^#Microsoft].
	partOfString = 'IBM-We' ifTrue: [^#IBM].
	partOfString = '' ifTrue: [^#Lynx].
	partOfString = '' ifTrue: [^#Mosaic].!

browserString
	
	"return the string, whick browser sends as identification in a web request"

	self lastRequest isNil ifTrue: [^''].
	^self lastRequest envVariables at: #http_user_agent.!

checkExpirationAndPossiblyLogoutFor: aRequest
	"don't logout if request is POST on the same object (eg. after long editing)"
	self isLoggedIn ifFalse: [^self].
	(self site autoLogout or: [self user autoLogout]) ifFalse: [^self].
	(self isExpired and: [aRequest isPost not]) ifTrue: 
		[self logout.
		(self site admin webAppFor: self) error: self site style sessionTimeoutText].!

clipboard
	"for cut/copy/paste references to web pages to easier hyperlink them"
	^self otherAt: #clipboard ifAbsent: [self initClipboard].!

codePage
	^#'UTF_8' "always!!"!

cookie
	"true if web request in this nonsecure session uses cookies, false otherwise"
	^self cookies at: 1.!

cookie: aBoolean
	self cookies 	at: 1 put: aBoolean!

cookies
	cookies isNil ifTrue: [self initCookies].
	^cookies!

country
	^country!

country: aSymbol
	"set the country of a web request originator in ISO 2letter format"
	country := aSymbol.!

created

	"return the timestamp of a session creation."

	^created!

fullUrlForCurrentPage
	"composes and returns a full url for a curent requested page. If parms dictionary is changed, 
	then a query string with changed parameters is generated. Usefull for presenting the same 
	page in a different way by parameteres in query string"
	^self lastRequest urlString!

fullUrlForPreviousPage
	""
	(self requests isEmpty or: [self requests last isNil]) ifTrue: [^nil].
	^self requests last urlString!

hasSecureCookie
	"check if secure cookie is already set on secure part of session"
	^self secureCookie!

id

	"return the unique identification of a nonsecure session to browser. This is a random generated number at session generation. It can be used for session tracking in URLs, forms, etc."

	^self ids at: 1!

id: aNumber
	"return the unique identification of a nonsecure session. This is a random generated number 
	at session generation. It can be used for session tracking in URLs, forms, etc."
	self ids at: 1 put: aNumber.!

ids
	ids isNil ifTrue: [self initIds].
	^ids!

inAdminMode
	"is session in admin mode?"
	^(self otherAt: #sessionMode) = #admin!

inDevMode
	"is session in developers mode?"
	^(self otherAt: #sessionMode) = #dev!

initAppsForObjects
	appsForObjects := IdentityDictionary new.!

initClipboard
	^self otherAt: #clipboard put: WebClipboard new!

initCookies
	cookies := Array with: false with: false.!

initialize
	self setRandomIds.
	self setCreatedTimestamp.
	self initCookies.
	self initParms.
	self initRequests.
	self initUser.
	self setNormalMode. 
	self initAppsForObjects.!

initIds
	ids := Array new: 2.!

initOther
	other := Dictionary new!

initParms
	^self otherAt: #parms put: Dictionary new.!

initRequests
	^self otherAt: #requests put: [OrderedCollection new].!

initUser
	self user: self site securityManager guestUser!

initUserValues
	userValues := Dictionary new!

inNormalMode
	"is session in normal users mode?"
	^(self otherAt: #sessionMode) = #normal!

inTranslationMode
	"should text in your Apps be in-place edited for translation?"
	^self inAdminMode or: [self inDevMode]!

isActive
	"active if at least one request received last hour"
	self lastRequest isNil ifTrue: [^false].
	^(SpTimestamp now asSeconds - self lastRequest timestamp asSeconds) < 3600!

isEncrypted
	^self lastRequest isEncrypted "for now!! "!

isExpired
	"more than 15min of inactivity"
	self lastRequest isNil ifTrue: [^false].
	^(SpTimestamp now asSeconds - self lastRequest timestamp asSeconds) > (15*60)!

isFromLinux
	^self lastRequest isFromLinux!

isFromMSIE
	^self lastRequest isFromMSIE!

isFromNetscape
	".. or Moziila or Firefox"
	^self lastRequest isFromNetscape!

isFromWindows
	^self lastRequest isFromWindows!

isHttpAuthenticationNeeded
	"Usually we authenticate by WebAdminApp logon form. But if site is configured for HTTP 	authentication (to open a separate username/password dialog window to user), and 
	a session is not yet logged in, this method will return true"
	^self isLoggedIn not and: [self site securityManager hasHttpAuthenticationScheme]!

isLoggedIn
	^self user notNil and: [self user isGuest not]!

language
	"preferred language of a web user. Initialy set from the last request (lazily, when first needed)"
	(language isNil and: [self lastRequest notNil]) ifTrue:
		[self language: (self originatorLanguageFrom: self lastRequest)].
	^language!

language: aLanguageCodeSymbol
	"preferred language of a web user. Initialy set from the last request (lazily, when first needed)"
	language := aLanguageCodeSymbol.!

lastApp
	"return WebApplication subclass which was called with last request"
	^self otherAt: #lastApp!

lastApp: anApplication
	self otherAt: #lastApp put: anApplication!

lastRequest
	"the last, actualy current request pending. also add request to the history in a request 
	if logging is on."
	"BE CAREFULL!! more than one request can be processed concurrently, so don't count 
	that last reques is actually a current one too!! It mostly is, but not always!!"
	^self otherAt: #lastRequest!

lastRequest: aRequest
	"remember the last, actualy current request pending. also add request to the history in a request 
	if logging is on. If first request then also try to find country, language and codePage 
	of the originator"
	self otherAt: #lastRequest put: aRequest.  
	self initParms.				      "clear old parameters"
	self newView: (aRequest queryAt: #view ifAbsent: ['']).  "default new view is view from last request"!

lastView
	"return a view of WebApllication, which is created in response to last request"
	^self otherAt: #lastView!

lastView: aSymbol
	self otherAt: #lastView put: aSymbol!

loginUser: aWebUser
	self user: aWebUser.!

loginUserWithName: aNameString surname: aSurnameString 
	| usr |
	usr := self site securityManager userWithName: aNameString surname: aSurnameString.
	usr notNil ifTrue: [self loginUser: usr]!

logout
	"Replace logged user with Guest. Remember last page to return after login again"
	| origin usr |
	self redirectLink: nil. 	self redirectOrigin: nil.
	self isLoggedIn ifTrue: [usr := self user. self initUser] ifFalse: [^nil].
	origin := usr lastAppUrl. 
	(origin isNil or: [origin = self lastRequest uriString])  ifFalse: 
		[usr logoutFromUrl: origin]. "to jump back after login"!

newView

	"return a value of a 'view' parameter in query part of a URL to be generated. Also used for changing views in a state machine for web applications (in method actionFormForm (here is set) and method printWebPage (here is used to genererate appropriate page))"

	^self parms at: 'view' ifAbsent: [^''].!

newView: aString
	"set a value of a 'view' parameter in query part of a URL to be generated. Also used for changing 
	views in a state machine for web applications (in method actionFormForm (here is set) and method 	printWebPage (here is used to genererate appropriate page))"
	((aString = '') or: [aString isNil]) ifFalse: [self parms at: 'view' put: aString ].!

nilLastApp
	self other notNil ifTrue: [self other removeKey: #lastApp ifAbsent: [nil] ]!

nilLastRequest
	self other notNil ifTrue: [self other removeKey: #lastRequest ifAbsent: [nil] ]!

originatorCountryFrom: aRequest
	"find an ISO country code from a web request"
	"not yet implemented!!"!

originatorLanguageFrom: aRequest
	"find a language from a web request"
	| defaultLang header |
	defaultLang := self site defaultLanguage.
	header := aRequest headerAt: 'Accept-Language' ifAbsent:[^defaultLang].
	header values isEmpty ifFalse: [^(header values at: 1) asSymbol].
	^defaultLang!

other
	^other!

otherAt: aSymbol
	"other values"
	^self otherAt: aSymbol ifAbsent: [nil]!

otherAt: aSymbol ifAbsent: aBlock
	"other values"
	self other isNil ifTrue: [^aBlock value].
	^self other at: aSymbol ifAbsent: aBlock!

otherAt: aSymbol ifAbsentPut: aBlock
	self other isNil ifTrue: [self initOther].
	^self other at: aSymbol ifAbsent: [self other at: aSymbol put: aBlock value]!

otherAt: aSymbol put: anObject
	self other isNil ifTrue: [self initOther].
	^self other at: aSymbol put: anObject!

parent
	"a session manager !! "
	^parent!

parent: aWebSessionManager
	parent := aWebSessionManager.!

parms
	"This is a dictionary of parameters in query part of url. When web request arrives, parameters 
 	from query string are written here. When any url is dynamically generated, those parms are 
	appended to it as a query string. You can add, change or delete any parameter to better 
	suit your needs (eg. view=brief to instruct brief view of an object) "
	^self otherAt: #parms!

printString
^'aWebSession
	ip: ', (self lastRequest notNil ifTrue: [self lastRequest ip] ifFalse: ['']), '
	user: ', self user username, ' (', self user nameSurname, ')
	created: ', self created printSloString, '
	last:      ', (self lastRequest notNil ifTrue: [self lastRequest timestamp printSloString] ifFalse: ['']), ''!

redirectLink
	"if this aWebLink is set, then web browser will recreate another request with url from that link. Used, if you like, after form action in one page to show page for some other object, e.g. if you have search field in page in one object, and search result is exactly one, then you want to show result page immediately. You can do this with this method.
Atribute redirectLink is reset to nil immediately after printWebPage and before printHTMLPage in WebMediator method dicpatchClient (see WebMediator sendResponseHeaderOn:)"
	^self otherAt: #redirectLink!

redirectLink: aWebLink
	(aWebLink isKindOf: WebLink) | aWebLink isNil ifFalse: [^nil].
	self otherAt: #redirectLink put: aWebLink.!

redirectOrigin
	"this is an URL from where the redirection request originates. Used for returning back from
	exception page, for example when you want to see page without access rights, then you are
	redirected to login page. after successfull login, you are redirected back to intended page.
	Redirect origin is set up automatically by redirectLink: request."
	^self otherAt: #redirectOrigin!

redirectOrigin: anUrlString
	self otherAt: #redirectOrigin put: anUrlString.!

redirectToOrigin
	"Used for returning back from
	exception page, for example when you want to see page without access rights, then you are
      redirected to login page. after successfull login, you are redirected back to intended page.
	Redirect origin is set up automatically by redirectLink: request."
	self redirectOrigin notNil ifTrue:
		[self redirectLink: (WebLink text: '' linkTo: self redirectOrigin).
		self redirectOrigin: nil].!

releaseApplicationState
	self initAppsForObjects.
	self nilLastRequest.
	self nilLastApp.
	self initRequests.
	self initClipboard.
	self redirectLink: nil; redirectOrigin: nil.!

removeApp: anApplication for: anObject type: aSymbol
	(self appsForObjects at: anObject ifAbsent: [^nil])
		removeKey: aSymbol ifAbsent: [^nil]!

removeYourself
	" .. from session manager"
	self parent notNil ifTrue: [self parent removeSession: self].
	self releaseApplicationState.
	self parent: nil.!

requestNum
	"return number of all requests up to now on this session"
	^self requests size!

requests
	"return the history of all requests on this session as ordered collection with the oldest as 
	first and newest as last"
	^self otherAt: #requests ifAbsent: [self initRequests].!

secureCookie
	"true if web request in this secure session uses cookies, false otherwise"
	^self cookies at: 2!

secureCookie: aBoolean
	self cookies at: 2 put: aBoolean!

secureId

	"return the unique identification of a secure session to browser. This is a random generated number at session generation. It can be used for session tracking in URLs, forms, etc."

	^self ids at: 2!

secureId: aNumber
	"return the unique identification of a secure session. This is a random generated number 
	at session generation. It can be used for session tracking in URLs, forms, etc."
	self ids at: 2 put: aNumber.!

servletAppFor: aWebAppSymbol
	"for template based Aida code"
	| app class |
	(self servlets includesKey: aWebAppSymbol) ifFalse:
		[class := WebApplication allSubclasses detect:  
			[:each | each name = aWebAppSymbol] ifNone: [^nil].
		app := class new.
		app session: self.
		self servlets at: aWebAppSymbol put: app].
	^self servlets at: aWebAppSymbol.!

servlets
	^self otherAt: #ServletApps ifAbsentPut: [Dictionary new]!

setAdminMode
	"set session to admin mode"
	self user inAdminGroup ifFalse: [^self error: 'user not in Admininistrators group'].
	self otherAt: #sessionMode put: #admin!

setDevMode
	"set session to developers mode"
	self user isAdminUser ifFalse: [^self error: 'user not Admin!!'].
	self otherAt: #sessionMode put: #dev!

setNormalMode
	"set session to normal users mode"
	self otherAt: #sessionMode put: #normal!

setRandomIds
	self id: (AIDASite random next * 1000000000) asInteger.
	self secureId: (AIDASite random next * 1000000000) asInteger.!

shouldCountRequests
	| policy |
	policy := self site countingPolicy.
	policy = #all ifTrue: [^true].
	policy = #none ifTrue: [^false].
	policy = #onlyGuests ifTrue: [^self user isGuest].
	policy = #excludeAdmins ifTrue: [^self user inAdminGroup not].
	^true!

shouldLogRequests
	| policy |
	policy := self site loggingPolicy.
	policy = #all ifTrue: [^true].
	policy = #none ifTrue: [^false].
	policy = #onlyGuests ifTrue: [^self user isGuest].
	policy = #excludeAdmins ifTrue: [^self user inAdminGroup not].
	^true!

shouldRedirect
	^self redirectLink notNil!

site
	"a session manager !! "
	^self parent site!

user
	user isNil ifTrue: [self initUser].
	^user!

user: aWebUser
	"set a reference to aWebUser, who is logged into this session"
	user := aWebUser.!

userValueAt: aSymbol
	"anything you need to share among Apps in that seesion, like last selected stuff, etc."
	^self userValueAt: aSymbol ifAbsent: [nil]!

userValueAt: aSymbol ifAbsent: aBlock
	^self userValues at: aSymbol ifAbsent: aBlock!

userValueAt: aSymbol put: anObject
	^self userValues at: aSymbol put: anObject!

userValues
	"return a dictionary with user defined values, which scope is this session. Usr can use it for such 
	things as global navigation, remembering views etc."
	userValues isNil ifTrue: [self initUserValues].
	^userValues!

webAppFor: anObject
	^self appFor: anObject type: #web! !
!WebSession categoriesFor: #addApp:for:type:!private-app state!public! !
!WebSession categoriesFor: #addSessionID!private! !
!WebSession categoriesFor: #addWebApp:for:!private-app state!public! !
!WebSession categoriesFor: #adminAllowed!public!security! !
!WebSession categoriesFor: #appFor:type:!private-app state!public! !
!WebSession categoriesFor: #appsForObjects!private-app state!public! !
!WebSession categoriesFor: #authenticateFrom:!public!security! !
!WebSession categoriesFor: #browser!accessing!public! !
!WebSession categoriesFor: #browserString!accessing!public! !
!WebSession categoriesFor: #checkExpirationAndPossiblyLogoutFor:!public!security! !
!WebSession categoriesFor: #clipboard!accessing-other!public! !
!WebSession categoriesFor: #codePage!locale support!public! !
!WebSession categoriesFor: #cookie!accessing!public! !
!WebSession categoriesFor: #cookie:!accessing!public! !
!WebSession categoriesFor: #cookies!private! !
!WebSession categoriesFor: #country!locale support!public! !
!WebSession categoriesFor: #country:!locale support!public! !
!WebSession categoriesFor: #created!accessing!public! !
!WebSession categoriesFor: #fullUrlForCurrentPage!accessing!public! !
!WebSession categoriesFor: #fullUrlForPreviousPage!accessing!public! !
!WebSession categoriesFor: #hasSecureCookie!public!testing! !
!WebSession categoriesFor: #id!accessing!public! !
!WebSession categoriesFor: #id:!accessing!public! !
!WebSession categoriesFor: #ids!private! !
!WebSession categoriesFor: #inAdminMode!public!session modes! !
!WebSession categoriesFor: #inDevMode!public!session modes! !
!WebSession categoriesFor: #initAppsForObjects!initialize-release!public! !
!WebSession categoriesFor: #initClipboard!initialize-release!public! !
!WebSession categoriesFor: #initCookies!initialize-release!public! !
!WebSession categoriesFor: #initialize!initialize-release!public! !
!WebSession categoriesFor: #initIds!initialize-release!public! !
!WebSession categoriesFor: #initOther!initialize-release!public! !
!WebSession categoriesFor: #initParms!initialize-release!public! !
!WebSession categoriesFor: #initRequests!initialize-release!public! !
!WebSession categoriesFor: #initUser!initialize-release!public! !
!WebSession categoriesFor: #initUserValues!initialize-release!public! !
!WebSession categoriesFor: #inNormalMode!public!session modes! !
!WebSession categoriesFor: #inTranslationMode!public!session modes! !
!WebSession categoriesFor: #isActive!public!testing! !
!WebSession categoriesFor: #isEncrypted!public!testing! !
!WebSession categoriesFor: #isExpired!public!testing! !
!WebSession categoriesFor: #isFromLinux!public!testing! !
!WebSession categoriesFor: #isFromMSIE!public!testing! !
!WebSession categoriesFor: #isFromNetscape!public!testing! !
!WebSession categoriesFor: #isFromWindows!public!testing! !
!WebSession categoriesFor: #isHttpAuthenticationNeeded!public!testing! !
!WebSession categoriesFor: #isLoggedIn!public!testing! !
!WebSession categoriesFor: #language!locale support!public! !
!WebSession categoriesFor: #language:!locale support!public! !
!WebSession categoriesFor: #lastApp!accessing-other!public! !
!WebSession categoriesFor: #lastApp:!accessing-other!public! !
!WebSession categoriesFor: #lastRequest!accessing-other!public! !
!WebSession categoriesFor: #lastRequest:!accessing-other!public! !
!WebSession categoriesFor: #lastView!accessing-other!public! !
!WebSession categoriesFor: #lastView:!accessing-other!public! !
!WebSession categoriesFor: #loginUser:!public!security! !
!WebSession categoriesFor: #loginUserWithName:surname:!public!security! !
!WebSession categoriesFor: #logout!public!security! !
!WebSession categoriesFor: #newView!accessing!public! !
!WebSession categoriesFor: #newView:!accessing!public! !
!WebSession categoriesFor: #nilLastApp!initialize-release!public! !
!WebSession categoriesFor: #nilLastRequest!initialize-release!public! !
!WebSession categoriesFor: #originatorCountryFrom:!locale support!public! !
!WebSession categoriesFor: #originatorLanguageFrom:!locale support!public! !
!WebSession categoriesFor: #other!private! !
!WebSession categoriesFor: #otherAt:!private! !
!WebSession categoriesFor: #otherAt:ifAbsent:!private! !
!WebSession categoriesFor: #otherAt:ifAbsentPut:!private! !
!WebSession categoriesFor: #otherAt:put:!private! !
!WebSession categoriesFor: #parent!private! !
!WebSession categoriesFor: #parent:!private! !
!WebSession categoriesFor: #parms!accessing-other!public! !
!WebSession categoriesFor: #printString!private! !
!WebSession categoriesFor: #redirectLink!public!redirection! !
!WebSession categoriesFor: #redirectLink:!public!redirection! !
!WebSession categoriesFor: #redirectOrigin!public!redirection! !
!WebSession categoriesFor: #redirectOrigin:!public!redirection! !
!WebSession categoriesFor: #redirectToOrigin!public!redirection! !
!WebSession categoriesFor: #releaseApplicationState!public!releasing state! !
!WebSession categoriesFor: #removeApp:for:type:!private-app state!public! !
!WebSession categoriesFor: #removeYourself!public!releasing state! !
!WebSession categoriesFor: #requestNum!accessing-other!public! !
!WebSession categoriesFor: #requests!accessing-other!public! !
!WebSession categoriesFor: #secureCookie!accessing!public! !
!WebSession categoriesFor: #secureCookie:!accessing!public! !
!WebSession categoriesFor: #secureId!accessing!public! !
!WebSession categoriesFor: #secureId:!accessing!public! !
!WebSession categoriesFor: #servletAppFor:!private! !
!WebSession categoriesFor: #servlets!private! !
!WebSession categoriesFor: #setAdminMode!public!session modes! !
!WebSession categoriesFor: #setDevMode!public!session modes! !
!WebSession categoriesFor: #setNormalMode!public!session modes! !
!WebSession categoriesFor: #setRandomIds!initialize-release!public! !
!WebSession categoriesFor: #shouldCountRequests!public!testing! !
!WebSession categoriesFor: #shouldLogRequests!public!testing! !
!WebSession categoriesFor: #shouldRedirect!public!redirection! !
!WebSession categoriesFor: #site!accessing!public! !
!WebSession categoriesFor: #user!accessing!public! !
!WebSession categoriesFor: #user:!accessing!public! !
!WebSession categoriesFor: #userValueAt:!public!user values! !
!WebSession categoriesFor: #userValueAt:ifAbsent:!public!user values! !
!WebSession categoriesFor: #userValueAt:put:!public!user values! !
!WebSession categoriesFor: #userValues!private! !
!WebSession categoriesFor: #webAppFor:!private-app state!public! !

!WebSession class methodsFor!

newOn: aWebSessionManager
	"new web session on a specified session manager"
	| session |
	session := super new.
	session parent: aWebSessionManager.
	session initialize.
	^session! !
!WebSession class categoriesFor: #newOn:!instance creation!public! !

