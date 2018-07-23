"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebApplication
	instanceVariableNames: 'session observee contexts other'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebApplication guid: (GUID fromString: '{71f6265a-87cd-4612-aca3-67f945bbcf9a}')!
WebApplication comment: ''!
!WebApplication categoriesForClass!Unclassified! !
!WebApplication methodsFor!

acceptInputsAndActionFrom: aRequest
	"this method read form inputs (if any) and write them to the appropriate aspects of model 
	objects. Then calls an action method if any"
	aRequest context form acceptFormInputFrom: aRequest.
	aRequest isAjaxPostWithSingleInput ifFalse:     "ajax posts of single form elements doesn't trigger actions!!"
		[self callActionMethodForButton: (self buttonNameFrom: aRequest) on: aRequest context].
	(aRequest session shouldRedirect not and: [aRequest isAjaxRequest not]) ifTrue:
		[self redirectToView: aRequest view]   "always redirect after post to avoid aidaCtx in Urls!! "!

actionMainSearch
	self actionSearch!

actionSearch
	"a generic action when search button is pressed. It can be in almost every page."
	self indexApp searchString: self search. self search: ''.
	self indexApp actionMain.
	self redirectTo: self site index view: #results!

add: aWebElement
	"add to a form of currently executing context"
	^self context form add: aWebElement!

addContext: aContext
	self contexts at: aContext id put: aContext!

ajaxUpdate: anOldElement from: aRequest
	"update (recreate or refresh) that element"
	| contentElement |
	anOldElement isNil ifTrue:  [^WebElement new].
	anOldElement method isNil ifTrue: [^anOldElement]. "in case of form elements it will return new value!!"
	(aRequest isAjaxPostWithInput and: [anOldElement isStubElement]) "WebButton ajaxSubmit" 
		ifTrue: [^anOldElement]. "otherwise you spoil popupStub, see WebButton prepareScriptForAjaxSubmit"
	contentElement := aRequest context elementId: aRequest ajaxContentElementId.   "will provide a new content"
	(contentElement isNil and: [aRequest context isFirst not]) ifTrue:  "did parent context register that element id?"
		[contentElement := aRequest context parent elementId: aRequest ajaxContentElementId]. 
	contentElement isNil ifTrue: [contentElement := anOldElement]. "most usual situation"
	^contentElement isWebWidget 
		ifTrue: [self ajaxUpdateWidget: anOldElement from: contentElement on: aRequest]    "for App elements"
		ifFalse: [self ajaxUpdateAppElement: anOldElement from: contentElement on: aRequest]!

ajaxUpdateAppElement: anOldElement from: aContentElement on: aRequest
	"update (recreate or refresh) that element created by a method in current App"
	| argument different new |

	argument := aRequest postDataStringAt: 'parm'.   "element creation method with an argument (parm) "
	different := (anOldElement == aContentElement) not.     "content will be from element different that old one"
	different not ifTrue: [aRequest context announceReplacementWith: anOldElement].  "only when content will be from the old element"
		"For new element.. It will be used and reset at first call of WebElement class>>new, 
		which is just in the next line below"
	new := (self class canUnderstand: aContentElement method) 
		ifTrue: [(aContentElement method asString last ~= $: ) 
			ifTrue: [self perform: aContentElement method] "this really recreate an element"
			ifFalse: [self perform: aContentElement method with: argument ] ] "object method: parm"
		ifFalse: [WebElement new method: nil].
	aRequest context cancelReplacement. "if any"
	^new!

ajaxUpdateWidget: aElement from: aContentElement "widget" on: aRequest
	"update (recreate or refresh) that widget"
	| argument |
	argument := aRequest postDataStringAt: 'parm'.   "element creation method with an argument (parm) "
	^(aContentElement method asString last = $: )
		ifTrue: [aContentElement perform: aContentElement method with: argument ]
		ifFalse: [aContentElement perform: aContentElement method].!

app
	^self!

ask: aWebElement
	"ask for something, like delete confirmation dialog. Stop execution here until the result is returned. Return 
	that result. See WebDemoApp control flow for examples"
	self show: aWebElement.
	^self context answer!

buttonNameFrom: aRequest
	"return a name of button pressed. Name defines an action to be called"
	"note that image buttons send values in coordinates, like search.x search.y"
	| btname buttonNames postKeys |

	btname := aRequest postDataAt: 'ajaxPressedButton'.  "in case of Ajax form submit"
	btname notNil ifTrue: [^btname value].
	buttonNames := (aRequest context form fieldSet select: [:each | each isButton]) 
		collect: [:each | each name].
	postKeys := aRequest postDataKeys collect: [:key | key copyUpTo: $. ]. "remove .x .y"
	^buttonNames detect: [:each | postKeys includes: each] ifNone: ['']!

cell
	"delegate to the form of currently executing context"
	^self context form cell!

changeObserveeToVersionFor: aRequest
	| object |
	object := self observee versionWithNumber: (self versionFromRequest: aRequest).
	object notNil ifTrue: [self observee: object]!

checkObserveeLanguageFor: aRequest
	"change observee to point to domain object in right language if necessary 
	(from session language or explicit language request in query part of Url)"
	| language new |
	(self isLanguageRequest: aRequest) "language= in query part of url"
		ifTrue: [self session language: (aRequest queryAt: 'language') asSymbol].
	language := self session language.
	new := self observee forLanguage: language.
	new notNil ifTrue: [self observee: new]!

checkObserveeVersionFor: aRequest
	"change observee to point to correct version if necessary"
	(self isVersionRequest: aRequest) ifTrue: [^self changeObserveeToVersionFor: aRequest].
	self observee isCurrentVersion ifFalse: [self observee: self observee currentVersion].!

clear
	"delegate to the window of currently executing context"
	^self context page clear!

clipboard
	^self session clipboard!

context
	"a context of currently executing web request"
	"use sparingly, slow!! "
	^self firstContextFromStack!

contexts
	"a dictionary of context by context id (a unique number)"
	contexts isNil ifTrue: [self initContexts].
	^contexts!

defaultView
	" #main "
	^self class defaultView!

ensureContextForView: aViewSymbol for: aRequest
	aRequest context isNil ifTrue:
		[aRequest context: (self contexts values detect: [:ctx | 
			ctx isFirst and: [ctx view = aViewSymbol] ] ifNone: [nil]).
		aRequest context isNil ifTrue:
			[aRequest context: ((WebContextFirst newOn: self) view: aViewSymbol).
			self addContext: self context] ]!

error
	^self otherAt: #Error!

error: aString
	"error message to be written on web page. "
	self otherAt: #Error put: aString!

errorReport
	"element with report of errors, if any"
	| e |
	e := WebElement newId: #error.  "see WebStyle css42ErrorReport for style definition!! "
	self error notNil ifTrue: [e addText: self error style: '{color: red}'].
	self error: nil.
	^e!

findContextFor: aRequest
	"POSTs and Ajax requests must always have context ids!!. Also set the current context"
	| id |
	id := aRequest contextId.
	(id isNil or: [(self contexts includesKey: id) not]) ifTrue: [^nil].
	^self contexts at: id!

findContextSameViewFor: aRequest
	"if a context for the requested view already exist, use it"
	| requestedView |
	requestedView := aRequest view. 
	requestedView isNil ifTrue: [requestedView := #main].
	^self contexts values 
		detect: [:ctx | ctx isFirst and: [ctx view = requestedView] ] 
		ifNone: [nil]!

helpLink
	"link to help page for current view and App. If not exist, then nothing, exept for 
	admin - link to creation of new help page"
	| link viewName |
	self class == WebHelpPageApp ifTrue: [^WebElement new].
	viewName := self inDefaultView ifTrue: ['main'] ifFalse: [self view asString].
	link := WebLink newClass: #helpLink.
	(self site help existApp: self view: viewName)
		ifTrue: [link text: ('<b>', self style helpText, '</b>') 
			linkTo: (self site help forApp: self view: viewName)]
		ifFalse: [self user inAdminGroup
			ifTrue: [link text: '<b>', self style addHelpText, '</b>' linkTo: self site help; view: 'newPage'; 
				parameter: 'app' value: self class name asString;
				parameter: 'hview' value: viewName]
			ifFalse: [^WebElement new] ].
	^link!

inDefaultView
	"#main or not defined"
	^(self view = self defaultView) | (self view = #'')!

indexApp
	^self site index webAppFor: self session!

indexObservee
	"index or reindex observee of that app"
	^self site index indexObject: self observee!

inEditMode
	^self mode = #edit!

inError
	^self error notNil and: [self error notEmpty]!

initAdminAccess
	"admin group has rights to all views and updates in all Apps!! "
	self site securityManager initAdminAccess.!

initContexts
	contexts := Dictionary new.!

initOther
	other := Dictionary new.!

inViewMode
	^self mode = #view!

isControledByBPMProcess
	"by a BPM process instance, which control a workflow of this app too"
	^self process notNil!

isEncryptionSatisfied
	^(self mustBeEncrypted: self session newView) and: [self session lastRequest isEncrypted not]!

isLanguageRequest: aRequest
	^(aRequest queryAt: 'language') notNil!

isObserveeVersioned
	^self observee isVersionedObject!

isRespondingStreamed
	^self context page isRespondingStreamed!

isVersionRequest: aRequest
	^(self versionFromRequest: aRequest) notNil!

isWebApplication
	^true!

isWebWidget
	^false!

mode
	| mode |
	mode := self otherAt: #Mode.
	^mode isNil 
		ifTrue: [self setViewMode. self mode] 
		ifFalse: [mode]!

mode: aSymbol
	"portlet modes #view #edit "
	self otherAt: #Mode put: aSymbol!

mustBeEncrypted: aViewSymbol
	"check  if this view must be sent encrypted"
	| right |
"	(self observee = self site admin) & (aViewSymbol = #login) ifTrue: [^true]." "!!!!!!"
	 right := self site securityManager 
		isUser: self user
		allowedTo: (self class encryptSymbolFor: aViewSymbol)
		on: self class name.
	^right!

newCell
	"delegate to the form of currently executing context"
	^self context form newCell!

newRow
	"delegate to the form of currently executing context"
	^self context form newRow!

newTable
	"delegate to the form of currently executing context"
	^self context form newTable!

newView: aSymbol
	"in action methods, to direct to a specified view after button pressed"
	self session newView: aSymbol!

observee
	"return reference to an object, for which this app acts as an observer - to make an user interface
	of them"
	^observee!

observee: anObject
	"set the reference to an object, for which this app acts as an observer - to make an user interface
	of them"
	observee := anObject!

other
	^other!

otherAt: aSymbol
	^self otherAt: aSymbol ifAbsent: [nil]!

otherAt: aSymbol ifAbsent: aBlock
	self other isNil ifTrue: [^aBlock value].
	^self other at: aSymbol ifAbsent: aBlock!

otherAt: aSymbol ifAbsentPut: aBlock
	self other isNil ifTrue: [self initOther].
	^self other at: aSymbol ifAbsent: [self other at: aSymbol put: aBlock value]!

otherAt: aSymbol put: anObject
	self other isNil ifTrue: [self initOther].
	^self other at: aSymbol put: anObject!

pageContentWidth
	"obsolete, rather use direct: self  style... !! "
	^self style pageContentWidth!

pasteFromClipboard
	"get a DocLink with title and url. Nil if clipboard empty"
	self clipboard isEmpty ifTrue: [^nil].
	^self clipboard asDocLink!

printHTMLPageOn: aStream for: aRequest on: aSession
	"For apps we print a window of currently executing context"
	^aRequest context page printHTMLPageOn: aStream for: aRequest on: aSession.!

printWebPageFor: aRequest 
	| ctx |

	ctx := self findCreateOrSerializeContextFor: aRequest. "for posts and ajax just find, never create. Req's context is also set"
	ctx  isNil ifTrue: 
		[^WebPage new addText: 'request for unknown or nonexistent context!!'; yourself].
	(aRequest isPost and: [aRequest isAjaxRequest not]) "be sure to call that before any post data is accessed!! "
		ifTrue: [ctx form registerStreamedFieldsInto: aRequest]. 
	aRequest isPost ifTrue: [ctx startProcess]. "if not already. Always for posts and Ajax"
	ctx isExecutingInOwnProcess 
		ifTrue: 
			[ctx executeRequest: aRequest. "in ctx's process, will actually call our #printWebPageStepTwoFor:"
			ctx first mainSemaphore wait. "Dolphin fix" "until context's process signal end of executing"
			ctx first initMainSemaphore.
			aRequest context isFirst ifTrue: [ctx stopProcess].
			^aRequest context result] "resulted page of context execution"
		ifFalse: [^self printWebPageStepTwoFor: aRequest].!

printWebPageStepTwoFor: aRequest 
	| toLogin |

	self observee isMultilingual 
		ifTrue: [self checkObserveeLanguageFor: aRequest ].  "and change observee if needed"
	self isObserveeVersioned 
		ifTrue: [self checkObserveeVersionFor: aRequest ]. "and change observee if needed"
	toLogin := false. "self isEncryptionSatisfied ifTrue: [toLogin := true]."
	(aRequest  isPost and: [aRequest  isAjaxRequest not]) ifTrue: 
		[(self updateAllowed: aRequest context view) 
			ifTrue: [self acceptInputsAndActionFrom: aRequest] ifFalse: [toLogin := true] ].
	toLogin ifTrue:
		[(self observee == self site admin and: [self session newView = 'login']) 
			ifFalse: [self redirectTo: self site admin view: #login].
		^WebPage new].
	self session lastApp: self. "!!!!!!"
 	aRequest isAjaxRequest ifTrue: [^self respondToAjaxRequest: aRequest].
	self session shouldRedirect ifTrue: [^WebPage new].
	self setProcessFromTaskId. "for BPM engine, if present"
	^self printWebView: aRequest context view for: aRequest.!

process
	"a BPM.Process instance, on which this app is activated by some task"
	^self otherAt: #Process!

process: aBPMProcess
	self other at: #Process put: aBPMProcess!

redirectTo: anObjectOrUrlString
	"redirect browser to a default view for specified object or url link"
	anObjectOrUrlString isNil ifTrue: [^self error: 'redirection target is nil!!'].
	self session redirectLink: (WebLink text:'' linkTo: anObjectOrUrlString).!

redirectTo: anObjectOrUrlString view: aSymbol
	"redirect browser to a specified view for specified object or url link"
	anObjectOrUrlString isNil ifTrue: [^self error: 'redirection target is nil!!'].
	self session redirectLink: (WebLink text:'' linkTo: anObjectOrUrlString view: aSymbol).!

redirectTo: anObjectOrUrlString view: aSymbol parameter: aParmString value: aValueString
	"redirect browser to a specified view for specified object or url link"
	anObjectOrUrlString isNil ifTrue: [^self error: 'redirection target is nil!!'].
	self session redirectLink: ((WebLink text:'' linkTo: anObjectOrUrlString view: aSymbol)
		 parameter: aParmString value: aValueString).!

redirectToView: aSymbol
	"redirect browser to a different view for same observee"
	self session redirectLink: (WebLink text:'' linkTo: self observee view: aSymbol).!

removeContext: aContext
	self contexts removeKey: aContext id ifAbsent: []!

respondToAjaxAutocomplete: aRequest
	| fieldName fieldValue field choices e |
	fieldName := aRequest context request postDataKeys detect: [:each | 'field*' match: each] ifNone: nil.
	fieldValue := (aRequest context request postDataAt: fieldName) value.
	fieldValue := AIDASite convert: fieldValue fromCodepage: #utf8.
	field := aRequest context form fields at: fieldName. 
	choices := field getChoicesForEntry: fieldValue.
	e := WebList newUnordered.
	choices do: [:each || string |
		string := each convertToSloveneChars.
		e add: (WebRawText text: (AIDASite convert: string toCodepage: #utf8))].
	^e!

respondToAjaxCloseWindow: aRequest
	| ctx |
	ctx := aRequest context.
	ctx result: WebElement basicNew.
	ctx parent result: ctx result. "just in case"
	ctx first mainSemaphore signal. " to ensure continuing main thread"
	ctx parent isFirst ifTrue: [ctx parent stopProcess].  "we don't need it anymore"
	ctx close. "finaly the time to safely close our context"!

respondToAjaxInPlaceEditing: aRequest
	| fieldValue field response |
	field := aRequest context elementId: aRequest ajaxElementId.
	field isFormated & aRequest isAjaxWikiFormatedRequest not  ifFalse:
		[fieldValue := (aRequest postDataAt: 'value') value.
		fieldValue := AIDASite convert: fieldValue fromCodepage: #utf8.
		field adaptor value: fieldValue].
"		field allow ifTrue: [(field object isKindOf: Collection)
			ifTrue: [field object at: field aspect put: fieldValue]
			ifFalse: [	field object perform: (field aspect asString, ':') asSymbol with: fieldValue]] ].
"	response := field adaptor value.
	aRequest isAjaxWikiFormatedRequest ifTrue: [response := response asWikiHtml].
	response := AIDASite convert: response toCodepage: #utf8.
	^WebElement new add: (WebRawText text: response); yourself!

respondToAjaxRequest: aRequest
	| oldElement e result ctx |

	oldElement := aRequest context elementId: aRequest ajaxElementId.
	aRequest isAjaxInPlaceEditingRequest ifTrue: [^self respondToAjaxInPlaceEditing: aRequest].
	aRequest isAjaxPostWithInput ifTrue: [self acceptInputsAndActionFrom: aRequest].
	aRequest isAjaxAutocompleteRequest ifTrue: [^self respondToAjaxAutocomplete: aRequest].
	aRequest isAjaxCloseWindowRequest ifTrue: [^self respondToAjaxCloseWindow: aRequest].
	aRequest isAjaxPopupWindowRequest 
		ifTrue: 
			[ctx := aRequest context createNewContext. "is also added to context chain and also to this app"
			ctx request: aRequest.
			aRequest context: ctx. "switch to a new context during th rest of execution"
			e := self ajaxUpdate: oldElement from: aRequest. "recreate the element"
			e := self wrap: e intoPopupWindow: ctx window] "e is now window with wrapped element"
		ifFalse: 
			[e := self ajaxUpdate: oldElement from: aRequest]. "update (recreate or refresh) that element"
	e adaptFormElements.
	aRequest context form registerFormElementsIn: e.
	e prepareToHTMLPrintOn: self session. "to prepare again"
	result := e copy.
	result nilAttributes. "to be just plain element, no div,  to send inner html of original element only"
	aRequest context result: result.
	^result!

row
	"delegate to the form of currently executing context"
	^self context form row!

search
	^self otherAt: #Search!

search: aString
	"search input field"
	self otherAt: #Search put: aString!

session
	"on which this App represent the observed domain object"
	^session!

session: aWebSession
	"on which this App represent the observed domain object"

	session := aWebSession!

setEditMode
	self mode: #edit!

setProcessFromTaskId
	"set a reference to a BPM process instance, which control a workflow of this app too"
	| uuid workitem |
	uuid := self session lastRequest queryAt: 'taskId' ifAbsent: [^nil].
	workitem := self site repository bpm worklist itemWithTaskUuid: uuid for: self user.
	workitem isNil ifTrue: [^nil].
	self process: workitem task process.
	workitem subscribeToApp: self.!

setViewMode
	self mode: #view!

show: aWebElement
	"show something like info dialog. Stop execution here until the dialog is closed. 
	See WebDemoApp control flow for examples"
	| ourCtx popupCtx |

	ourCtx := self context.
	popupCtx := ourCtx request context createNewContext. "is also added to context chain and also to this app"
	popupCtx request: ourCtx request.
	ourCtx request context: popupCtx. "switch to a new context during the rest of execution"
	popupCtx result:
		(self wrap: aWebElement intoPopupWindow: popupCtx window). "e is now window with wrapped element"
	popupCtx result changeContextFrom: ourCtx to: popupCtx. "scan for all references to contexts and change them"
	popupCtx form registerFormElementsIn: aWebElement.  "probably already, but just to be sure"
	ourCtx first mainSemaphore signal. "to return that popup"
	ourCtx wait.
	"now the execution of our process is interrupted until the popup window and therefore its context is closed"!

site
	"reference to a site on which this app shows some object. "
	^self session site!

statisticsPageLink
	"returns a link to a page with day/hour statistic graphs of visits"
	| url link |
	url := self site urlResolver halfUrlFor: self observee.
	link := WebLink linkTo: self site statistics.
	link 
		view: 'page';
		parameter: 'url' value: url.
	^link!

storeThisUrl
	"to a User. It is helpull for return after logon, for instance"
	self user lastAppUrl: self session lastRequest uriString!

style
	^self site style!

table
	"delegate to the form of currently executing context"
	^self context form table!

title
	"delegate to the window of currently executing context"
	^self context page title!

updateAllowed: aViewSymbol
	"check if update is allowed to this observee object with specified view"
	"update for admin login page is always allowed"
	"reregister rights for admin if denial is encountered "
	| right |
	(self observee = self site admin) & (aViewSymbol = #login) ifTrue: [^true].
	 right := self site securityManager 
		isUser: self user allowedTo: (self class updateRightSymbolFor:aViewSymbol)
		on: self class name.
	(right not and: [self session adminAllowed]) ifTrue: 
		[self initAdminAccess. 
		^self updateAllowed: aViewSymbol].
	^right!

user
	"reference to a user of current session "
	^self session user!

versionFromRequest: aRequest
	"for Ajax requests too!!"
	| version |
	version := aRequest queryAt: 'version'.
	version isNil ifTrue:
		[aRequest isAjaxRequest ifFalse: [^nil].
		version := aRequest isPost
			ifTrue: [(aRequest postDataAt: 'version') value]
			ifFalse: [aRequest queryAt: 'version'] ].
	^version!

view
	"view of currently executing web context"
	"use sparingly, slow!! "
	^self context view!

viewAllowed: aViewSymbol
	"check if page view is allowed to this observee object with specified view"
	"admin logon page always allowed"
	"reregister rights for admin if denial is encountered "
	| right |
	(self observee = self site admin) & (aViewSymbol = #login) ifTrue: [^true].
	 right := self site securityManager 
		isUser: self user allowedTo: (self class viewRightSymbolFor: aViewSymbol)
		on: self class name.
	(right not and: [self session adminAllowed]) ifTrue: 
		[self initAdminAccess. ^true].
	^right!

visitsCount
	"returns number of visits of this page"
	^self webCounter total!

webCounter
	"returns a counter which counts visits to this page"
	^self site urlResolver
		counterFor: self observee!

window
	"window in of currently executing web context"
	"use sparingly, slow!! "
	^self context window!

wrap: anElement intoPopupWindow: aWebWindow
	"put the element into a WebWindow and prepare it for popup"
	| ctx o l |

	ctx := aWebWindow context.
	aWebWindow addText: '<style>', aWebWindow popupStyle, '</style>'.
	o := WebElement newId: 'overlay', ctx level printString.
	l := (WebElement newId: 'lightbox', ctx level printString) style: 'display: none;'.
	l add: anElement.
	aWebWindow add: o; add: l.
	aWebWindow scriptAfter: 'updateLightboxLevel(', ctx level printString,')'. "from WebStyle>>lightboxJs"
	^aWebWindow! !
!WebApplication categoriesFor: #acceptInputsAndActionFrom:!private-form inputs!public! !
!WebApplication categoriesFor: #actionMainSearch!public!searching! !
!WebApplication categoriesFor: #actionSearch!public!searching! !
!WebApplication categoriesFor: #add:!private-window delegation!public! !
!WebApplication categoriesFor: #addContext:!private-contexts!public! !
!WebApplication categoriesFor: #ajaxUpdate:from:!private-ajax!public! !
!WebApplication categoriesFor: #ajaxUpdateAppElement:from:on:!aida port error!private-ajax!public! !
!WebApplication categoriesFor: #ajaxUpdateWidget:from:on:!private-ajax!public! !
!WebApplication categoriesFor: #app!accessing!public! !
!WebApplication categoriesFor: #ask:!control flow!public! !
!WebApplication categoriesFor: #buttonNameFrom:!private-form inputs!public! !
!WebApplication categoriesFor: #cell!private-window delegation!public! !
!WebApplication categoriesFor: #changeObserveeToVersionFor:!private-versions!public! !
!WebApplication categoriesFor: #checkObserveeLanguageFor:!private-multilingual!public! !
!WebApplication categoriesFor: #checkObserveeVersionFor:!private-versions!public! !
!WebApplication categoriesFor: #clear!private-window delegation!public! !
!WebApplication categoriesFor: #clipboard!clipboard!public! !
!WebApplication categoriesFor: #context!accessing!public! !
!WebApplication categoriesFor: #contexts!private-contexts!public! !
!WebApplication categoriesFor: #defaultView!accessing!public! !
!WebApplication categoriesFor: #ensureContextForView:for:!private-contexts!public! !
!WebApplication categoriesFor: #error!error reporting!public! !
!WebApplication categoriesFor: #error:!error reporting!public! !
!WebApplication categoriesFor: #errorReport!error reporting!public! !
!WebApplication categoriesFor: #findContextFor:!private-contexts!public! !
!WebApplication categoriesFor: #findContextSameViewFor:!private-contexts!public! !
!WebApplication categoriesFor: #helpLink!private-printing!public! !
!WebApplication categoriesFor: #inDefaultView!accessing!public! !
!WebApplication categoriesFor: #indexApp!public!searching! !
!WebApplication categoriesFor: #indexObservee!public!searching! !
!WebApplication categoriesFor: #inEditMode!accessing-modes!public! !
!WebApplication categoriesFor: #inError!error reporting!public! !
!WebApplication categoriesFor: #initAdminAccess!public!security! !
!WebApplication categoriesFor: #initContexts!initialize-release!public! !
!WebApplication categoriesFor: #initOther!initialize-release!public! !
!WebApplication categoriesFor: #inViewMode!accessing-modes!public! !
!WebApplication categoriesFor: #isControledByBPMProcess!private-bpm!public! !
!WebApplication categoriesFor: #isEncryptionSatisfied!public!security! !
!WebApplication categoriesFor: #isLanguageRequest:!private-multilingual!public! !
!WebApplication categoriesFor: #isObserveeVersioned!private-versions!public! !
!WebApplication categoriesFor: #isRespondingStreamed!private-window delegation!public! !
!WebApplication categoriesFor: #isVersionRequest:!private-versions!public! !
!WebApplication categoriesFor: #isWebApplication!private! !
!WebApplication categoriesFor: #isWebWidget!private! !
!WebApplication categoriesFor: #mode!accessing-modes!public! !
!WebApplication categoriesFor: #mode:!private! !
!WebApplication categoriesFor: #mustBeEncrypted:!public!security! !
!WebApplication categoriesFor: #newCell!private-window delegation!public! !
!WebApplication categoriesFor: #newRow!private-window delegation!public! !
!WebApplication categoriesFor: #newTable!private-window delegation!public! !
!WebApplication categoriesFor: #newView:!public!redirection! !
!WebApplication categoriesFor: #observee!accessing!public! !
!WebApplication categoriesFor: #observee:!private! !
!WebApplication categoriesFor: #other!private-other!public! !
!WebApplication categoriesFor: #otherAt:!private-other!public! !
!WebApplication categoriesFor: #otherAt:ifAbsent:!private-other!public! !
!WebApplication categoriesFor: #otherAt:ifAbsentPut:!private-other!public! !
!WebApplication categoriesFor: #otherAt:put:!private-other!public! !
!WebApplication categoriesFor: #pageContentWidth!private! !
!WebApplication categoriesFor: #pasteFromClipboard!clipboard!public! !
!WebApplication categoriesFor: #printHTMLPageOn:for:on:!private-printing!public! !
!WebApplication categoriesFor: #printWebPageFor:!private-printing!public! !
!WebApplication categoriesFor: #printWebPageStepTwoFor:!private-printing!public! !
!WebApplication categoriesFor: #process!accessing-other!public! !
!WebApplication categoriesFor: #process:!accessing-other!public! !
!WebApplication categoriesFor: #redirectTo:!public!redirection! !
!WebApplication categoriesFor: #redirectTo:view:!public!redirection! !
!WebApplication categoriesFor: #redirectTo:view:parameter:value:!public!redirection! !
!WebApplication categoriesFor: #redirectToView:!public!redirection! !
!WebApplication categoriesFor: #removeContext:!private-contexts!public! !
!WebApplication categoriesFor: #respondToAjaxAutocomplete:!private-ajax!public! !
!WebApplication categoriesFor: #respondToAjaxCloseWindow:!private-ajax!public! !
!WebApplication categoriesFor: #respondToAjaxInPlaceEditing:!private-ajax!public! !
!WebApplication categoriesFor: #respondToAjaxRequest:!private-ajax!public! !
!WebApplication categoriesFor: #row!private-window delegation!public! !
!WebApplication categoriesFor: #search!accessing-other!public! !
!WebApplication categoriesFor: #search:!accessing-other!public! !
!WebApplication categoriesFor: #session!accessing!public! !
!WebApplication categoriesFor: #session:!private! !
!WebApplication categoriesFor: #setEditMode!accessing-modes!public! !
!WebApplication categoriesFor: #setProcessFromTaskId!private-bpm!public! !
!WebApplication categoriesFor: #setViewMode!accessing-modes!public! !
!WebApplication categoriesFor: #show:!control flow!public! !
!WebApplication categoriesFor: #site!accessing!public! !
!WebApplication categoriesFor: #statisticsPageLink!public!statistics! !
!WebApplication categoriesFor: #storeThisUrl!private-printing!public! !
!WebApplication categoriesFor: #style!accessing!public! !
!WebApplication categoriesFor: #table!private-window delegation!public! !
!WebApplication categoriesFor: #title!private-window delegation!public! !
!WebApplication categoriesFor: #updateAllowed:!public!security! !
!WebApplication categoriesFor: #user!accessing!public! !
!WebApplication categoriesFor: #versionFromRequest:!private-versions!public! !
!WebApplication categoriesFor: #view!accessing!public! !
!WebApplication categoriesFor: #viewAllowed:!public!security! !
!WebApplication categoriesFor: #visitsCount!public!statistics! !
!WebApplication categoriesFor: #webCounter!public!statistics! !
!WebApplication categoriesFor: #window!accessing!public! !
!WebApplication categoriesFor: #wrap:intoPopupWindow:!private-ajax!public! !

!WebApplication class methodsFor!

actionMethodForView: aViewSymbol
	"obsolete, only for WebSecurityManagerApp !!"
	| method viewSymbol |
	viewSymbol := aViewSymbol isEmpty 
		ifTrue: [self defaultView] ifFalse: [aViewSymbol asSymbol].
	method := self composedActionMethodNameForView: viewSymbol.
	(self canUnderstand: method) ifFalse: [^nil].
	^method!

actionMethodForView: aViewSymbol buttonName: aString
	"if no method for that button name, try to call action method without button name"
	| method viewSymbol |
	viewSymbol := aViewSymbol asString isEmpty 
		ifTrue: [self defaultView] ifFalse: [aViewSymbol asSymbol].
	method := self composedActionMethodNameForView: viewSymbol buttonName: aString.
	(self canUnderstand: method) ifTrue: [^method].
	'search' = aString ifTrue: [^#actionSearch].
	method := self composedActionMethodNameForView: viewSymbol.
	(self canUnderstand: method) ifTrue: [^method].
	^nil!

allComposedViewMethods
	| methods |
	methods := self selectors select: [:each | 'view*' match:each asString].
	methods := methods reject: [:each | 
		#(view viewAllowed: viewMethodForView: ) includes: each].
	^self superclass isWebApplication 
		ifTrue: [methods addAll: self superclass allComposedViewMethods; yourself]
		ifFalse: [methods]

"WebDemoApp new class allComposedViewMethods"!

allComposedViews
	"remove 'view' and lowercase start of remining part of method to get a view name from method"
	^self allComposedViewMethods collect: [:each | 
		((String with: (each at: 5) asLowercase), 
			(each copyReplaceFrom: 1 to: 5 with: String new)) asSymbol].

"WebDemoApp new class allComposedViews"!

allowAllUpdatesFor: aWebUserOrGroup on: anAIDASite
	"set access rigths to allow all updates on that web app for specified user or group 
	on specified server"
	self allWebAppClasses do: [:appClass |
		appClass allViews do: [:appView |
			anAIDASite securityManager
				setAccessRights: (appClass updateRightSymbolFor: appView)
				for: aWebUserOrGroup
				on: appClass name] ].

"
WebSecurityManagerApp allowAllUpdatesFor: 
	(WebSecurityManager default adminUser)
		on: AIDASite default
"!

allowAllViewsFor: aWebUserOrGroup on: anAIDASite
	"set access rigths to allow all views on all web apps for specified user or group on specified site"
	self allWebAppClasses do: [:appClass |
		appClass allViews do: [:appView |
			anAIDASite securityManager
				setAccessRights: (appClass viewRightSymbolFor: appView)
				for: aWebUserOrGroup
				on: appClass name] ].
"
WebApplication allowAllViewsFor: 
	(WebSecurityManager default adminUser)
	on: AIDASite default
"!

allViews
	^self allComposedViews!

allWebAppClasses
	"return an ordered collection with a WebApplication class all their subclasses ordered
	by levels of inheritance and by class name on the same level"
	| classes |
	classes := OrderedCollection new.
	self allWebAppClassesTo: classes.
	^classes

"WebApplication allWebAppClasses"!

allWebAppClassesTo: aCollection 
	"return an ordered collection with a WebApplication class all their subclasses ordered
	by levels of inheritance and by class name on the same level"
	| subcls |
	aCollection add: self.
	subcls := SortedCollection withAll: self subclasses
				sortBlock: [:a :b | a name < b name].
	subcls do: [:subclass | subclass allWebAppClassesTo: aCollection]!

appClassLevel
	"return the level of inheritance of a class, relative to a WebApplication class"
	| level cls |
	level := 1.
	cls := self.
	[cls == WebApplication] whileFalse: 
			[level := level + 1.
			cls := cls superclass].
	^level!

capitalizeName: aString
	"make first char uppercase"
	aString isEmpty ifTrue: [^''].
	^(String with: aString first asUppercase), (aString copyFrom: 2 to: aString size)

"WebApplication capitalizeName: 'main' "!

composedActionMethodNameForView: aViewName
	^('action', (self capitalizeName: aViewName asString)) asSymbol

"WebApplication composedActionMethodNameForView: 'main'"!

composedActionMethodNameForView: aViewName buttonName: aString
	^((self composedActionMethodNameForView: aViewName) asString,
		(self capitalizeName: aString)) asSymbol.

"WebApplication composedActionMethodNameForView: 'main' buttonName: 'addFolder'"!

composedMethodNameForView: aViewName
	^('view', (self capitalizeName: aViewName asString)) asSymbol

"WebApplication new class composedMethodNameForView: 'main'"!

defaultView
	^#main!

encryptSymbolFor: aViewSymbol
	"if view does not exist, then use a default (first) view. Be sure to use a
	sublclass of WebApplication when calling that method to find the right default view"
	| view allViews|
	allViews := self allViews.
	allViews isEmpty ifTrue: [^nil].
	view := (allViews includes: aViewSymbol)
		ifTrue: [aViewSymbol]
		ifFalse: [self defaultView].
	view := (String with: view asString first asUppercase), 
		(view asString copyFrom: 2 to: view asString size).
	^('encrypt', view asString) asSymbol!

isWebApplication
	^true!

newFor: anObject on: aSession
	"guess a class from anObject class name (class name + 'App') and create instance of it"
	| instance |
	instance := self newFromNameFor: anObject on: aSession.
	instance isNil ifTrue: [^nil].
	^instance session: aSession!

updateRightSymbolFor: aViewSymbol
	"return a right symbol, used for setting/testing rights to update a page with specified view.
	A symbol is composed as follows: '#upd',<aViewSymbol> for expample for view #brief
	result is #updbrief"
	"if view does not exist, then use a default (first) view. Be sure to use a
	sublclass of WebApplication when calling that method to find the right defult view"
	| view allViews|
	allViews := self allViews.
	allViews isEmpty ifTrue: [^nil].
	view := (allViews includes: aViewSymbol)
		ifTrue: [aViewSymbol]
		ifFalse: [self defaultView].
	view := (String with: view asString first asUppercase), 
		(view asString copyFrom: 2 to: view asString size).
	^('upd', view) asSymbol!

viewMethodForView: aViewSymbol
	| method viewSymbol |
	viewSymbol := aViewSymbol isEmpty 
		ifTrue: [self defaultView] ifFalse: [aViewSymbol].
	method := self composedMethodNameForView: viewSymbol.
	(self canUnderstand: method) ifFalse: [^nil].
	^method

"WebDemoApp new class viewMethodForView: #imageGallery"!

viewRightSymbolFor: aViewSymbol
	"return a right symbol, used for setting/testing rights to view a page with specified view.
	a symbol is composed as follows: '#view',<aViewSymbol> for expample for view #brief
	result is #viewbrief"
	"if view does not exist, then use a default (first) view. Be sure to use a
	sublclass of WebApplication when calling that method to find the right defult view"
	| view allViews|
	allViews := self allViews. allViews isEmpty ifTrue: [^nil].
	view := (allViews includes: aViewSymbol)
		ifTrue: [aViewSymbol]
		ifFalse: [self defaultView].
	view := (String with: view asString first asUppercase), 
		(view asString copyFrom: 2 to: view asString size).
	^('view', view) asSymbol! !
!WebApplication class categoriesFor: #actionMethodForView:!public!view, action methods! !
!WebApplication class categoriesFor: #actionMethodForView:buttonName:!public!view, action methods! !
!WebApplication class categoriesFor: #allComposedViewMethods!private! !
!WebApplication class categoriesFor: #allComposedViews!private! !
!WebApplication class categoriesFor: #allowAllUpdatesFor:on:!public!security! !
!WebApplication class categoriesFor: #allowAllViewsFor:on:!public!security! !
!WebApplication class categoriesFor: #allViews!accessing!public! !
!WebApplication class categoriesFor: #allWebAppClasses!accessing!public! !
!WebApplication class categoriesFor: #allWebAppClassesTo:!private! !
!WebApplication class categoriesFor: #appClassLevel!private! !
!WebApplication class categoriesFor: #capitalizeName:!private! !
!WebApplication class categoriesFor: #composedActionMethodNameForView:!private! !
!WebApplication class categoriesFor: #composedActionMethodNameForView:buttonName:!private! !
!WebApplication class categoriesFor: #composedMethodNameForView:!private! !
!WebApplication class categoriesFor: #defaultView!accessing!public! !
!WebApplication class categoriesFor: #encryptSymbolFor:!public!security! !
!WebApplication class categoriesFor: #isWebApplication!private! !
!WebApplication class categoriesFor: #newFor:on:!instance creation!public! !
!WebApplication class categoriesFor: #updateRightSymbolFor:!public!security! !
!WebApplication class categoriesFor: #viewMethodForView:!public!view, action methods! !
!WebApplication class categoriesFor: #viewRightSymbolFor:!public!security! !

