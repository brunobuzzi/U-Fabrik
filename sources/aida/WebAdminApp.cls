"Filed out from Dolphin Smalltalk 7"!

WebApplication subclass: #WebAdminApp
	instanceVariableNames: 'username password newUser newSite umlModel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebAdminApp guid: (GUID fromString: '{ef5a98b4-7db2-4378-8622-de56246ce906}')!
WebAdminApp comment: ''!
!WebAdminApp categoriesForClass!Unclassified! !
!WebAdminApp methodsFor!

actionAddSite
	SwazooServer singleton addSite: self newSite.
	self newSite start.
	self redirectToView: #sites.!

actionForgoten
	self redirectTo: self site admin view: #passwordSent.!

actionRegistration
	self isRegistrationValid 
		ifTrue: 
			[self site securityManager addActivatingUser: self newUser.
			self newView: #waitingConfirmation]
		ifFalse: ["just reload registration form again"]!

actionSites
	self newSite: AIDASite new.
	self newSite uriPattern first 
		ip: self observee ip;
		port: self observee port.
	self redirectToView: #addSite.!

actionUpdateSettings
	[(Delay forMilliseconds: 500) wait.
	self site stop.
	self updateSettings.
	self site start] fork.
	self redirectToView: #redirect!

addSiteElement
	| e |
	e := WebElement new.
	e cell addText: 'Site name: '. 
	e newCell addInputFieldAspect: #name for: self newSite. e newRow.
	e cell colspan: 2; addRulerSize: 1. e newRow.
	e cell addText: 'Hostname: '. 
	e newCell addInputFieldAspect: #host for: self newSite uriPattern first. e newRow.
	e cell addText: 'IP: '. 
	e newCell addInputFieldAspect: #ip for: self newSite uriPattern first. e newRow.
	e cell addText: 'Port: '. 
	e newCell addInputFieldAspect: #port for: self newSite uriPattern first. e newRow.
	e cell colspan: 2; addRulerSize: 1. e newRow.
	e cell addText: 'Style class: '. 
	e newCell addInputFieldAspect: #styleClass for: self newSite. e newRow.
	e cell colspan: 2; addRulerSize: 1. e newRow.
	e cell addButtonText: 'Add and start a new site'.
	e cell colspan: 2; addRulerSize: 1. e newRow.
	^e.!

aidaDontCache
	^true!

dummy
	"aspect, just for nothing"
	^''!

dummy: aString
	"aspect, just for nothing"!

findLoggingUser
	^self site securityManager userNamed: self username withPassword: self password.!

isRegistrationValid
	"check entry fields and set error report if not"
	| text |
	text := ''.
	(self site securityManager 
		existUserNamed: self newUser username withPassword: self newUser username)
			ifTrue: [text := text, ' User with that username and password already exist!! ' ].
	text isEmpty ifTrue: 
		[self newUser username isEmpty ifTrue: [text := text, ' Username missing, '].
		self password isEmpty ifTrue: [text := text, ' Password missing, '].
		self newUser password isEmpty ifTrue: [text := text, ' Confirm password missing, '].
		((WebSecurityManager hashPassword: self password) = self newUser password)
			ifFalse: [text := text, ' Passwords not equal!! '] ].
	text notEmpty ifTrue: 
		[self error: 'Registration failed!! ', text, ' Please correct errors and try again!!'. ^false].
	^true!

newSite
	^newSite!

newSite: anObject
	newSite := anObject!

newUser
	^newUser!

newUser: anUser
	newUser := anUser!

password
	password isNil ifTrue: [self password: ''].
	^password!

password: aString
	password := aString.!

preloginCheck
	"this is called at the start of login page. Override if you want to redirect for some reason
	to another login page (#viewLoginSecondary)"
	^true!

prepareSettings
	self observee host: self site host.
	self observee ip: self site ip.
	self observee port: self site port.!

printSeconds: aNumber
	^(aNumber // 3600) printString, ':',
	(self twoDigits: aNumber \\ 3600 // 60), ':',
	(self twoDigits: aNumber \\ 60)!

reportLogin
	Transcript cr; show: 'login: ', self session user nameSurname asSloveneWithoutCircumflexes, 
	' on ', self site name,
	' at ', 
 	Date today dayOfMonth printString, '.',
	Date today month printString, ' ',
	Time now hour24 printString, ':', 
	Time now minute printString,
	' from ', (self session lastRequest peer notNil ifTrue: [self session lastRequest peer] ifFalse: [''])!

reportLogout
	Transcript cr; show: 'logout: ', self session user nameSurname asSloveneWithoutCircumflexes, 
	' on ', self site name,
	' at ', 
 	Date today dayOfMonth printString, '.',
	Date today monthIndex printString, ' ',
	Time now hours printString, ':', 
	Time now minutes printString,
	' from ', (self session lastRequest peer notNil ifTrue: [self session lastRequest peer] ifFalse: [''])!

settingsElementForm: aBoolean
	| e |
	self prepareSettings.
	e := WebElement new. e table width: 500. e newRow.
	e cell addText: 'hostname: '. 
	e newCell addAspect: #host for: self observee input: aBoolean size: 30. e newRow.
	e cell addText: 'ip: '.
	e newCell addAspect: #ip for: self observee input: aBoolean size: 30. e newRow.
	e cell addText: 'port: '.
	e newCell addAspect: #port for: self observee input: aBoolean size: 5. e newRow.
	e cell addText: 'home directory: '.
	e newCell addAspect: #homeDirectory for: self site input: aBoolean size: 30. e newRow.
	e cell colspan: 2; addRulerSize: 1.
	^e.!

sitesElement
	| e sites |
	sites := SortedCollection 
		withAll: SwazooServer singleton sites
		sortBlock: [:a :b | a name < b name].
	e := (WebGrid new
		columnFilters: #(nil 5 nil );
		columnWidth: #(0.03 0.15 0.03);
		columnNames: #(nil 'name' '' 'created' 'started' 'status');
		columnAspects: #(nil name nil nil nil nil);
		column: 3 addBlock: [:site | WebLink text: 'link' linkTo: 'http://', site host, '/admin.html'];
		collection: sites;
		setNumbering; 
		yourself).
	^e.!

twoDigits: aNumber
	aNumber < 10
		ifTrue: [^'0',aNumber printString]
		ifFalse: [^aNumber printString]!

updateSettings
	self site host: self observee host.
	self site ip: self observee ip.
	self site port: self observee port.!

username
	username isNil ifTrue: [self username: ''].
	^username!

username: aString
	username := aString.!

viewActivation
	| e id user |
	(self session lastRequest includesQuery: 'userid') ifTrue:
		[id := (self session lastRequest queryAt: 'userid') asInteger.
		(self site securityManager existUserWithId: id) ifTrue:
			[user := self site securityManager userWithId: id.
			 self site securityManager addRegisteredUser: user.
			self session loginUser: user.
			self title: 'Activation successfull!!'.
			e := WebElement new.
			e addTextH1: 'Activation successfull!!'.
			e addText: 'Congratulations!! You are now a registered user of our portal. You are 
			already logged in and your name is shown on the page'. 
 			^self style pageFrameWith: e title: self title] ].

	self title: 'Activation failed!!'.
	e := WebElement new.
	e addTextH1: 'Activation failed!!'.
	e addText: ' You tried to activate an user account but activation failed. Please send an email to '. 
	e addLinkTo: 'info@eranova.si' text: 'Portal Administrator'.
 	^self style pageFrameWith: e title: self title .!

viewAddSite
	| e |
	self	title: 'Web sites'.
	e := WebElement new.
	e addTextH1: 'Adding a new web site'. e addBreak. 
	e add: self addSiteElement.
	^self style pageFrameWith: e title: self title .!

viewForgoten
	| e f |
	self title: 'Lost Password'.
	e := WebElement new.
	e addTextH1: 'Lost Password'.
	e addText: ' Enter your username below, click Send me my password, and your password 
	will be mailed to you if you gave a valid email address when you registered. If this will not 
	work for you (for example, if you forgot your member name or didn''t enter your email address) 
	send an email to '. 
	e addLinkTo: 'info@eranova.si' text: 'Portal Administrator'.
	f := WebFieldSet newLegend: 'User details'.
	f cell addText: 'My username is: '.
	f newCell add: (WebInputField new aspect: #username for: self).
	f newRow. f newCell addButtonText: 'Send me my password'. 
	e add: f.
 	^self style pageFrameWith: e title: self title .!

viewLoginSecondary
	"this one is called if preloginCheck returns false. Usefull for prelogin error reporting etc.
	Byy thefault it returns error report in red. Override that by your wishes"
	| e |
	self title: self style loginTitle.
	e := WebElement new.
	self error: self style loginErrorTextSecondary.
	e add: self errorReport.
 	^self style pageFrameWith: e title: self title .!

viewLogout
	self reportLogout.
	self session logout.
	self username: ''. self password: ''.
	self site securityManager hasFormAuthenticationScheme ifTrue: [^self redirectToView: #login].
	self site securityManager hasHttpAuthenticationScheme ifTrue: [^self redirectTo: '/'].!

viewMain
	| element |
	self	title: 'Admin'.
	element := WebElement new.
	^self style pageFrameWith: element title: self title .!

viewPasswordSent
	| e |
	self title: 'Lost Password sent'.
	e := WebElement new.
	e addTextH1: 'Password sent'.
	e addText: ' Your password was sent to email address from your user profile. If you have 
      any more troble, please send an email to '. 
	e addLinkTo: 'info@eranova.si' text: 'Portal Administrator'.
 	^self style pageFrameWith: e title: self title .!

viewRedirect
	| e url |
	self title: 'Restarting a site'.
	e := WebElement new.
	e addText: 'Restarting a site with new settings ...'.
	url := 'http://', self observee host, ':', self observee port printString, '/admin.html?view=settings'.
" this don't work on mozilla!!
	self redirectAfter: 2 toUrl: url.
"
self script: ('<SCRIPT LANGUAGE="JavaScript">
<!!-- Begin
redirTime = "2000";
redirURL = "', url, '";
function redirTimer() { self.setTimeout("self.location.href = redirURL;",redirTime); }
//  End -->
</script>').

	self attributesAt: #onLoad put: 'redirTimer()'.
	^self style pageFrameWith: e title: self title .!

viewRegistration
	| e f |
	self inError ifFalse: [self newUser: WebUser new. self password: ''].
	self title: 'Registration Form'.
	e := WebElement new.
	e addTextH1: 'Registration Form'.
	e addErrorReport.
	f := WebFieldSet newLegend: 'Personal details'.
	f cell addText: 'Name: '. f newCell addInputFieldAspect: #name for: self newUser. f newRow.
	f cell addText: 'Surname: '. f newCell addInputFieldAspect: #surname for: self newUser. f newRow.
	f cell addText: 'E-mail: '. f newCell addInputFieldAspect: #email for: self newUser. f newRow.
	f cell addText: 'Username: '. f newCell addInputFieldAspect: #username for: self newUser.
	f newRow.
	f cell addText: 'Password: '. f newCell addPasswordFieldAspect: #password for: self. f newRow.
	f cell addText: 'Confirm Password: '. f newCell addPasswordFieldAspect: #password for: self newUser.
	f newRow. f newCell addButtonText: 'Register'. 
	e add: f.
 	^self style pageFrameWith: e title: self title .!

viewServerRuns
	| e inx runs |
	self site setLastTimeAliveTimestamp.
	self	title: 'Runs for site: ', self site name.
	e := WebElement new.
	e table width: self style pageContentWidth. e cell color: #yellow.
	e cell colspan: 6; addText: self title header: 3. e newRow color: #thistle.
	e cell align: #center; addText: 'nr '.
	e newCell align: #center; addText: 'started '. e newCell align: #center; addText: 'last time alive '.
	e newCell align: #center; addText: 'uptime'. e newCell align: #center; addText: 'downtime'.
	e newCell align: #center; addText: 'termination'. e newRow.
	inx := 1. runs := self site runningHistory.
	runs do: [:array |
		inx even ifTrue: [e row color: #silver].
		e cell align: #center; addText: inx printString.
		e newCell align: #right; addText: (array at: 1) printSloString.
		e newCell align: #right; addText: (array at: 2) printSloString.
		e newCell align: #right; addText: (self printSeconds: (array at: 3) ).
		e newCell align: #right; addText: (self printSeconds: (array at: 4) ).
		e newCell align: #center; addText: 
			(array == runs last ifTrue: ['running'] ifFalse: [(array at: 5) ifTrue: ['crashed'] ifFalse: ['normal']]).
		inx := inx + 1. e newRow].
	e cell colspan: 6; addRulerSize: 1.
	^self style pageFrameWith: e title: self title .!

viewServerStatistics
	| e |

	self site setLastTimeAliveTimestamp.
	self title: 'Statistics for site: ' , self site name.
	e := WebElement new.
	e table width: self style pageContentWidth.
	e cell color: #yellow.
	e cell colspan: 3; addText: self title header: 3. e newRow.
	e cell addText: 'created: '.
	e newCell align: #right; addText: self session site createdTimestamp printSloString. e newRow.
	e cell addText: 'started: '.
	e newCell align: #right; addText: self session site startedTimestamp printSloString.
	e newCell align: #right; addLinkTo: self observee text: 'History of runs' view: 'serverRuns'. e newRow.
	e cell colspan: 3; addRulerSize: 1. e newRow.
	e cell addText: 'uptime: '.
	e newCell align: #right; addText: (self printSeconds: self session site uptime) , ' h:m:s'. e newRow.
	e cell addText: 'total uptime: '.
	e newCell align: #right; addText: (self printSeconds: self session site totalUptime) , ' h:m:s'. 	e newRow.
	e cell addText: 'total downtime: '.
	e newCell align: #right; addText: (self printSeconds: self session site totalDowntime), ' h:m:s'. e newRow.
	e cell addText: 'availability [%]: '.
	e newCell align: #right; addText: self session site availability printDotString. e newRow.
	e cell colspan: 3; addRulerSize: 1. e newRow.
	e cell addText: 'today requests: '.
	e newCell align: #right; addText: (self session site requestsOnDate: SpDate today) printDotString. e newRow.
	e cell addText: 'yesterday requests: '.
	e newCell align: #right; addText: (self session site requestsOnDate: (SpDate today subtractDays: 1)) printDotString.
	e newRow. e cell addText: 'all requests: '.
	e newCell align: #right; addText: self session site totalRequests printDotString. e newRow.
	e cell colspan: 3; addRulerSize: 1.
	^self style pageFrameWith: e title: self title!

viewSettings
	| e |
	self	title: 'Settings for site: ', self site name.
	e := WebElement new.
	e table width: 500.
      e cell color: #yellow; addText: self title header: 3. e newRow.
	e cell add: (self settingsElementForm: false). e newRow.
	e cell addLinkTo: self observee text: '<b>Update settings</b>' view: #updateSettings.
	^self style pageFrameWith: e title: self title .!

viewSites
	| e |
	self	title: 'Web sites'.
	e := WebElement new.
	e addTextH1: 'Virtual web sites on Swazoo web server'. e addBreak. 
	e addButtonText: 'Add new web site'. e addBreak.
	e add: self sitesElement.
	^self style pageFrameWith: e title: self title .!

viewUpdateSettings
	| e |

	self	title: 'Update Settings for site: ', self site name.
	e := WebElement new.
	e table width: 500.
      e cell color: #yellow;  addText: self title header: 3. e newRow.
	e cell add: (self settingsElementForm: true). e newRow.
	e cell addButtonText: 'Update'.
	^self style pageFrameWith: e title: self title .!

viewWaitingConfirmation
	| e |
	self title: 'Waiting Confirmation'.
	e := WebElement new.
	e addTextH1: 'Waiting Confirmation'.
	e addText: 'And e-mail was sent to address you entered in a registration form. Please read it
	and click to the activation link to confirm that your e-mail is valid.
	If you have any problems send an email to '. 
	e addLinkTo: 'info@eranova.si' text: 'Portal Administrator'.
 	^self style pageFrameWith: e title: self title .!

viewWakeupRichEditor
	"to prefetch all JS libraries"
	"call that from background Ajax call"
	self context page addText: 'Just to prefetch all TinyMCE JavaScript libraries'; addBreak.
	self context page addRichEditorAspect: #dummy for: self!

viewWakeupScriptaculous
	"to prefetch all JS libraries"
	"call that from background Ajax call"
	self addText: 'Just to prefetch all Scriptaculous JavaScript libraries'; addBreak.
	self add: (WebAutocompleteField new)! !
!WebAdminApp categoriesFor: #actionAddSite!actions!public! !
!WebAdminApp categoriesFor: #actionForgoten!actions!public! !
!WebAdminApp categoriesFor: #actionRegistration!actions!public! !
!WebAdminApp categoriesFor: #actionSites!actions!public! !
!WebAdminApp categoriesFor: #actionUpdateSettings!actions!public! !
!WebAdminApp categoriesFor: #addSiteElement!printing-elements!public! !
!WebAdminApp categoriesFor: #aidaDontCache!private! !
!WebAdminApp categoriesFor: #dummy!private! !
!WebAdminApp categoriesFor: #dummy:!private! !
!WebAdminApp categoriesFor: #findLoggingUser!actions!public! !
!WebAdminApp categoriesFor: #isRegistrationValid!public!testing! !
!WebAdminApp categoriesFor: #newSite!accessing!public! !
!WebAdminApp categoriesFor: #newSite:!accessing!public! !
!WebAdminApp categoriesFor: #newUser!accessing!public! !
!WebAdminApp categoriesFor: #newUser:!accessing!public! !
!WebAdminApp categoriesFor: #password!accessing!public! !
!WebAdminApp categoriesFor: #password:!accessing!public! !
!WebAdminApp categoriesFor: #preloginCheck!public!testing! !
!WebAdminApp categoriesFor: #prepareSettings!actions!public! !
!WebAdminApp categoriesFor: #printSeconds:!private! !
!WebAdminApp categoriesFor: #reportLogin!private! !
!WebAdminApp categoriesFor: #reportLogout!private! !
!WebAdminApp categoriesFor: #settingsElementForm:!printing-elements!public! !
!WebAdminApp categoriesFor: #sitesElement!printing-elements!public! !
!WebAdminApp categoriesFor: #twoDigits:!private! !
!WebAdminApp categoriesFor: #updateSettings!actions!public! !
!WebAdminApp categoriesFor: #username!accessing!public! !
!WebAdminApp categoriesFor: #username:!accessing!public! !
!WebAdminApp categoriesFor: #viewActivation!printing!public! !
!WebAdminApp categoriesFor: #viewAddSite!printing!public! !
!WebAdminApp categoriesFor: #viewForgoten!printing!public! !
!WebAdminApp categoriesFor: #viewLoginSecondary!printing!public! !
!WebAdminApp categoriesFor: #viewLogout!printing!public! !
!WebAdminApp categoriesFor: #viewMain!printing!public! !
!WebAdminApp categoriesFor: #viewPasswordSent!printing!public! !
!WebAdminApp categoriesFor: #viewRedirect!printing!public! !
!WebAdminApp categoriesFor: #viewRegistration!printing!public! !
!WebAdminApp categoriesFor: #viewServerRuns!printing!public! !
!WebAdminApp categoriesFor: #viewServerStatistics!printing!public! !
!WebAdminApp categoriesFor: #viewSettings!printing!public! !
!WebAdminApp categoriesFor: #viewSites!printing!public! !
!WebAdminApp categoriesFor: #viewUpdateSettings!printing!public! !
!WebAdminApp categoriesFor: #viewWaitingConfirmation!printing!public! !
!WebAdminApp categoriesFor: #viewWakeupRichEditor!printing!public! !
!WebAdminApp categoriesFor: #viewWakeupScriptaculous!printing!public! !

