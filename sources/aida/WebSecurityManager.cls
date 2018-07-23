"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebSecurityManager
	instanceVariableNames: 'site users groups authenticationScheme accessByObject'
	classVariableNames: 'Janko'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebSecurityManager guid: (GUID fromString: '{51ab7a8b-c8b7-4664-9c62-805ccbe2f5f5}')!
WebSecurityManager comment: ''!
!WebSecurityManager categoriesForClass!Unclassified! !
!WebSecurityManager methodsFor!

accessByObject 
	"this is a dictionary of user - access level pairs for access to the object, 
	which reference is a key in dictionary"
	accessByObject isNil ifTrue: [self initAccessByObject].
	^accessByObject!

accessRightsArray: anAccessSymbols for: aWebUserOrGroup on: anObject
	| objectRights rigthsArray |
	self site critical:
		[objectRights := self accessByObject at: anObject 
			ifAbsent: 
				[self accessByObject at: anObject put: (Dictionary new).
				self accessByObject at: anObject].
		rigthsArray := objectRights at: aWebUserOrGroup 
			ifAbsent:
				[objectRights at: aWebUserOrGroup put: IdentitySet new.
				objectRights at: aWebUserOrGroup].
		rigthsArray addAll: anAccessSymbols].!

accessRightsFor: aWebUserOrGroup on: anObject
	"get the access rights for specified user or group on object  as literal array of 
	rights (e.g. #(#read #write). " 
	^(self accessByObject at: anObject 
		ifAbsent: [^self defaultAccessRights])
			at: aWebUserOrGroup ifAbsent:  [^self defaultAccessRights]!

activatingGroup
	"group for users to confirm registration"
	^self groups detect: [:each | each isActivatingGroup] ifNone: [nil].!

addActivatingUser: aWebUser
	"add this user also to group waiting for confirmation"
	self addUser: aWebUser.
	self activatingGroup addUser: aWebUser.!

addGroup: aWebUserGroup
	self addGroup: aWebUserGroup ifExist: [^nil].!

addGroup: aWebUserGroup ifExist: aBlock
	"add new group. If already exist ( as object or as group with the same name) do aBlock"
 	(aWebUserGroup isKindOf: WebUserGroup) ifFalse: [^self error: 'This is not aWebUserGroup'].
	(self existGroupNamed: aWebUserGroup name) ifTrue: [aBlock value].
	self groups add: aWebUserGroup!

addGroupNamed: aString
 	"add new group with a specified name. If already exist, error"
	self addGroup: (WebUserGroup new name: aString).!

addPerson: aPerson
	"make parallel WebUser, cross-connect both and put into Registered group"
	"by default username and password are aPerson surname!!"
	| user |
	aPerson asWebUser notNil ifTrue: [^self error: 'already added!!'].
	user := WebUser new.
	user username: aPerson surname.
	user password: aPerson surname.
	(self addRegisteredUser: user) notNil "no duplicates in username"
		ifTrue: [ aPerson webUser: user. user person: aPerson]
		ifFalse: [^nil]!

addRegisteredUser: aWebUser
	"add this user also to registered users group. Remove him from activating group"
	self addUser: aWebUser.
	self registeredGroup addUser: aWebUser.
	self activatingGroup removeUser: aWebUser.!

addUser: aWebUser
	"add new user also in All Users group"
	(aWebUser isKindOf: WebUser) ifFalse: [^self error: 'This is not aWebUser'].
	(self users includes: aWebUser) ifTrue: [^nil].
	(self existUserNamed: aWebUser username withPassword: aWebUser password) ifTrue: [^nil]. 
	self users add: aWebUser.
	self allUsersGroup addUser: aWebUser.
	aWebUser parent: self.!

adminGroup
	"group for admins, those who have all acess rights !! "
	^self groups detect: [:each | each isAdminGroup] ifNone: [nil].!

adminUser
	"first admin user, initialy it is with username 'admin'"
	^self users detect: [:each | each isAdminUser] ifNone: [nil]!

allGroups
	^self groups copy!

allUsers
	^self users copy!

allUsersGroup
	"group for all users in system"
	^self groups detect: [:each | each isAllUsersGroup] ifNone: [nil].!

authenticationScheme
	"#Form - with WebAdminApp login form - default!!
	#HttpBasic - rfc2617 Basic authentication - passwords NOT encrypted!!
	#HttpDigest - rfc2617 Digest authentication - encrypted passwords
	#SSLClientCertificate - most secure, user needs a valid PKI certificate"
	authenticationScheme isNil ifTrue: [self setFormAuthenticationScheme].
	^authenticationScheme!

authenticationScheme: aSymbol
	authenticationScheme := aSymbol!

defaultAccessRights
	
	^#()!

existGroupNamed: aString
	^(self groupNamed: aString) notNil!

existUserNamed: anUsernameString withPassword: aPasswordString
	^(self userNamed: anUsernameString withPassword: aPasswordString) notNil!

existUserWithId: aNumber
	^self users contains: [:each | each id = aNumber].!

extranetUser
	"a common extranet user, for easier setup of access rights"
	^self users detect: [:each | each isExtranetUser] ifNone: [nil]!

groupNamed: aString
	aString isEmpty ifTrue: [^nil].
	^self groups detect: [:group | group name =  aString] ifNone: [nil]!

groups 
	groups isNil ifTrue: [self initGroups].
	^groups!

groupWithUuid: aString
	" find and return a group with specified uuid. Return nil if not found" 
	^self groups detect: [:each | each uuid = aString] ifNone: [nil]!

guestUser
	"actually only one is guest user"
	^self users detect: [:each | each isGuest] ifNone: [nil]!

has: aWebUserOrGroup rightTo: anAccessSymbol on: anObject 
	"test the access right for that object and that user or group "
	| usersAndGroups |
	usersAndGroups := self accessByObject at: anObject ifAbsent: [^false].
	(usersAndGroups includesKey: aWebUserOrGroup)	ifTrue:
		[((usersAndGroups at: aWebUserOrGroup) includes: anAccessSymbol) ifTrue: [^true] ].
	^false!

hasFormAuthenticationScheme
	^self authenticationScheme = #Form!

hasHttpAuthenticationScheme
	^self hasHttpBasicAuthenticationScheme | self hasHttpDigestAuthenticationScheme!

hasHttpBasicAuthenticationScheme
	^self authenticationScheme = #HttpBasic!

hasHttpDigestAuthenticationScheme
	^self authenticationScheme = #HttpDigest!

hasSSLClientCertificateAuthenticationScheme
	^self authenticationScheme = #SSLClientCertificate!

hasUser: aWebUser rightInAnyGroupTo: anAccessSymbol on: anObject 
	"test the access right for that object and in groups for that user"
	aWebUser groups do: [:group |
		(self has: group rightTo: anAccessSymbol on: anObject) ifTrue: [^true] ].
	^(self has: self allUsersGroup rightTo: anAccessSymbol on: anObject)!

initAccessByObject
	accessByObject := Dictionary new.!

initAdminAccess
	"admin group has rights to all views and updates in all Apps!! "
	WebApplication allowAllViewsFor: self adminGroup on: self site.
	WebApplication allowAllUpdatesFor: self adminGroup  on: self site.!

initAdminUser
	"add default admin user"
	| user |
	(self users detect: [:each | each isAdminUser] ifNone: [nil] )
		notNil ifTrue: [^nil].
	user := WebUser newAdmin.
	user setLocked. "to avoid name/username changes"
	self addUser: user.
	self adminGroup addUser: user.!

initDefaultGroups
	self addGroup: WebUserGroup newAllUsers.
	self users do: [:user | 	self allUsersGroup addUser: user].
	self addGroup: WebUserGroup newAdmin.
	self addGroup: WebUserGroup newRegistered.
	self addGroup: WebUserGroup newActivating.
	self postInitDefaultGroups.  "override this method for your own default groups"!

initDemoAccessRights
	"access to all for demos in WebDemoApp"
	"(AIDASite named: 'aidademo') securityManager initDemoAccessRights"
	| views updates |
	views := WebDemoApp allViews asArray
		collect: [:each | WebDemoApp viewRightSymbolFor: each].
	self setAccessRights: views for: self allUsersGroup on: WebDemoApp name.
	updates := #(editMembers fileUpload gridSelected webdav controlFlow) 
		collect: [:each | WebDemoApp updateRightSymbolFor: each].
	self setAccessRights: updates for: self allUsersGroup on: WebDemoApp name.!

initExtranetAccessRights
	"for extranet user"!

initExtranetUser
	"add default extranet user"
	| user |
	(self users detect: [:each | each isExtranetUser and: [each name = WebUser extranetName]] 
		ifNone: [nil] )
			notNil ifTrue: [^nil].
	user := WebUser newExtranet.
	user setLocked. "to avoid name/username changes"
	self addUser: user.
	self registeredGroup addUser: user.!

initGroups
	groups := Set new.!

initGuestAccessRights
	"for guest user"!

initGuestUser
	"add new user,with name 'Guest'"
	| user |
	(self users detect: [:each | each isGuest] ifNone: [nil] ) notNil ifTrue: [^nil].
	user := WebUser newGuest.
	user setLocked. "to avoid name/username changes"
	self addUser: user.
	self allUsersGroup addUser: user.!

initialize
	self initUsers.
	self initGroups.
	self initAccessByObject.
	self initDefaultGroups.
	self initAdminUser. self initGuestUser. self initExtranetUser.
	self initDefaultAccessRights. self initDemoAccessRights.
	self initAdminAccess. self initGuestAccessRights. self initExtranetAccessRights.!

initUsers
	users := Set new. 
	self groups do: [:each | each initUsers].!

isDefaultAllowedTo: anAccessSymbol 
	"default access right for all objects and all users"
	^self defaultAccessRights includes: anAccessSymbol!

isUser: aWebUser allowedTo: anAccessSymbol on: anObject 
	"test the access right for that object and that user or groups for that user"
	(self has: aWebUser rightTo: anAccessSymbol on: anObject) ifTrue: [^true].
	^(self hasUser: aWebUser rightInAnyGroupTo: anAccessSymbol on: anObject)!

isUser: aWebUser inGroup: aWebGroup
	"test if user is member of this group"
	^aWebGroup includes: aWebUser!

isUser: aWebUser inGroupNamed: aString
	| group |
	group := self groupNamed: aString.
	group isNil ifTrue: [^false].
	^group includes: aWebUser!

migrateAppClassessToSymbols
	"do not use app classes but their names as symbols"

	self accessByObject keys do: [:obj |
		((obj isKindOf: Behavior) and: [obj includesBehavior: WebApplication]) ifTrue: [
			self accessByObject 
				at: obj name 
				put: (self accessByObject at: obj).
			self accessByObject removeKey: obj] ].

"WebSecurityManager default migrateAppClassessToSymbols"!

migrateToEncryptedPasswords
	"if not already"
	self allUsers do: [:each | each password size ~= 20 ifTrue: [each password: each password] ]

"WebSecurityManager allInstances do: [:each | each migrateToEncryptedPasswords] "
"WebSecurityManager hashPassword: 'aaa' "!

migrateToLockedReservedUsers
	"to preserve them by not allowing changes"
	"WebSecurityManager allInstances do: [:each | each migrateToLockedReservedUsers] "	
	| user |
	user := self adminUser.
	user isNil ifTrue: [self initAdminUser. user := self adminUser].
	user setLocked.
	user := self guestUser.
	user isNil ifTrue: [self initGuestUser. user := self guestUser].
	user setLocked.
	user := self extranetUser.
	user isNil ifTrue: [self initExtranetUser. user := self extranetUser].
	user setLocked.!

migrateUrlsForUsersAndGroups
	"WebSecurityManager allInstances do: [:each | each migrateUrlsForUsersAndGroups] "
	self site isNil ifTrue: [^nil].	
	self users do: [:each | self site urlResolver changeToPreferedURL: each].
	self groups do: [:each | self site urlResolver changeToPreferedURL: each].!

postInitDefaultGroups
	"override this method for your own default groups"!

printString
	^'WebSecurityManager on: ', self site name!

reconnectUsersToGroups
	"if user groups don't match group users"
	"AIDASite default securityManager reconnectUsersToGroups"
	self users do: [:user |
		user groups do: [:group | (group includes: user) ifFalse: [group addUser: user] ] ].
	self groups do: [:group |
		group users do: [:user | (self users includes: user) ifFalse: [self addUser: user] ] ]!

registeredGroup
	"group for registered users"
	^self groups detect: [:each | each isRegisteredGroup] ifNone: [nil].!

removeAccessRightArray: anAccessSymbols for: aWebUserOrGroup and: anObject 
	"remove all specified access rigths for specified user or group on specified object"
	self site critical:
		[((self accessByObject at: anObject ifAbsent: [^self])
			at: aWebUserOrGroup ifAbsent: [^self])	removeAll: anAccessSymbols].!

removeAccessRightArray: anAccessSymbols for: aWebUserOrGroup on: anObject 
	"remove all specified access rigths for specified user or group on specified object"
	| usrGrps rights |
	self site critical:
		[usrGrps := self accessByObject at: anObject ifAbsent: [^self].
		rights := usrGrps at: aWebUserOrGroup ifAbsent: [^self].
		anAccessSymbols do: [:each | rights remove: each ifAbsent: [] ] ].!

removeAccessRights: anAccessSymbol for: aWebUserOrGroup on: anObject 
	"remove all specified access rigths for specified user or group on specified object"
	| access |
	(anAccessSymbol isKindOf: Array)
		ifTrue: [access := anAccessSymbol ]
		ifFalse: [access := Array with: anAccessSymbol].
	self removeAccessRightArray: access for: aWebUserOrGroup on: anObject!

removeAllAccessRightsFor: aWebUserOrGroup 
	self accessByObject keys do: [:object |
		self 
			removeAllAccessRightsFor: aWebUserOrGroup 
			on: object]!

removeAllAccessRightsFor: aWebUserOrGroup on: anObject 
	self site critical:
		[(self accessByObject at: anObject ifAbsent: [^self])
			removeKey: aWebUserOrGroup ifAbsent: [^self] ].!

removeAllAccessRightsForObject: anObject 
	self site critical:
		[self accessByObject removeKey: anObject ifAbsent: []	].!

removeGroup: aWebUserGroup
	"remove group, if exist. If not exist do nothing" 
	self removeGroup: aWebUserGroup ifAbsent: [].!

removeGroup: aWebUserGroup ifAbsent: aBlock
	"remove group, if exist. If not exist do aBlock. You cannot remove group AllUsers!!" 
	aWebUserGroup isAllUsersGroup ifTrue: [^self error: 'group AllUsers cannot be removed!!'].
	(self groups includes: aWebUserGroup) ifFalse: [^aBlock value].
	self groups remove: aWebUserGroup.
	aWebUserGroup allUsers do: [:each | aWebUserGroup removeUser: each].
	self removeAllAccessRightsFor: aWebUserGroup!

removeGroupNamed:  aString 
	| group |
	group := self groupNamed: aString.
	group notNil ifTrue: [self removeGroup: group]!

removeUser: aWebUser
	"remove user, if exist" 
	(self users includes: aWebUser) ifFalse: [^nil].
	self users remove: aWebUser.
	self allGroups do: [:group | group removeUser: aWebUser].
	self removeAllAccessRightsFor: aWebUser!

removeUserNamed:  anUsername withPassword: aPassword
	| user |
	user := self userNamed: anUsername withPassword: aPassword.
	self removeUser: user!

setAccessRights: anAccessSymbols for: aWebUserOrGroup on: anObject
	"set the access rights for specified user or group on object. it can be only one right 
	or an literal array of rights (e.g.#(#read #write) ) " 
	| access |
	aWebUserOrGroup isNil ifTrue: [^self error: 'User is nil'].
	access := (anAccessSymbols isKindOf: Array) 
		ifTrue: [anAccessSymbols ] 
		ifFalse: [Array with: anAccessSymbols].
	self accessRightsArray: access for: aWebUserOrGroup on: anObject.!

setFormAuthenticationScheme
	"AIDASite default securityManager setFormAuthenticationScheme"
	self authenticationScheme: #Form!

setHttpBasicAuthenticationScheme
	"AIDASite default securityManager setHttpBasicAuthenticationScheme"
	self authenticationScheme: #HttpBasic!

setHttpDigestAuthenticationScheme
	"AIDASite default securityManager setHttpDigestAuthenticationScheme"
	self authenticationScheme: #HttpDigest!

setSSLClientCertificateAuthenticationScheme
	"AIDASite default securityManager setSSLClientCertificateAuthenticationScheme"
	self authenticationScheme: #SSLClientCertificate!

site
	"a parent site using that security manager"
	^site!

site: anAIDASite
	site := anAIDASite.!

userNamed: anUsernameString
	" find and return a WebUser with username . Return nil if not found"
	"WebSecurityManager default userNamed: 'mivsek'"
 	(anUsernameString ~= '') ifFalse: [^nil].
	^self users 
		detect: [:user | (user username asLowercase = anUsernameString asLowercase)] ifNone: [nil]!

userNamed: anUsernameString withPassword: aPasswordString
	" find and return a WebUser with username and password. Return nil if not found"

 	((anUsernameString = '') | (aPasswordString = '')) ifTrue: [^nil].
	^self users detect: [:user | 
		(user username asLowercase = anUsernameString asLowercase) and: 
			[user password = (WebSecurityManager hashPassword: aPasswordString)]] 
				ifNone: [nil]!

users 
	users isNil ifTrue: [self initUsers].
	^users!

userWithEMail: aString
	" find and return a WebUser with specified email. Return nil if not found" 
	(aString ~= '') ifFalse: [^nil]. 
	^self users detect: [:user | user email asLowercase = aString asLowercase ] ifNone: [^nil]!

userWithId: aNumber
	^self users detect: [:each | each id = aNumber] ifNone: [nil]!

userWithName: aNameString surname: aSurnameString
	" find and return a WebUser with name and surname. Return nil if not found"
 	(aNameString ~= '') | (aNameString ~= '') ifFalse: [^nil].
	^self users detect: [:user | 
		(user name asLowercase = aNameString asLowercase) and: 
			[user surname asLowercase = aSurnameString asLowercase]] 
				ifNone: [nil]!

userWithUuid: aString
	" find and return a WebUser with specified uuid. Return nil if not found" 
	^self users detect: [:each | each uuid = aString] ifNone: [nil]! !
!WebSecurityManager categoriesFor: #accessByObject!private! !
!WebSecurityManager categoriesFor: #accessRightsArray:for:on:!private! !
!WebSecurityManager categoriesFor: #accessRightsFor:on:!access control!public! !
!WebSecurityManager categoriesFor: #activatingGroup!group management!public! !
!WebSecurityManager categoriesFor: #addActivatingUser:!public!user management! !
!WebSecurityManager categoriesFor: #addGroup:!group management!public! !
!WebSecurityManager categoriesFor: #addGroup:ifExist:!private! !
!WebSecurityManager categoriesFor: #addGroupNamed:!group management!public! !
!WebSecurityManager categoriesFor: #addPerson:!public!user management! !
!WebSecurityManager categoriesFor: #addRegisteredUser:!public!user management! !
!WebSecurityManager categoriesFor: #addUser:!public!user management! !
!WebSecurityManager categoriesFor: #adminGroup!group management!public! !
!WebSecurityManager categoriesFor: #adminUser!public!user management! !
!WebSecurityManager categoriesFor: #allGroups!accessing!public! !
!WebSecurityManager categoriesFor: #allUsers!accessing!public! !
!WebSecurityManager categoriesFor: #allUsersGroup!group management!public! !
!WebSecurityManager categoriesFor: #authenticationScheme!authentication!public! !
!WebSecurityManager categoriesFor: #authenticationScheme:!private! !
!WebSecurityManager categoriesFor: #defaultAccessRights!private! !
!WebSecurityManager categoriesFor: #existGroupNamed:!group management!public! !
!WebSecurityManager categoriesFor: #existUserNamed:withPassword:!public!user management! !
!WebSecurityManager categoriesFor: #existUserWithId:!public!user management! !
!WebSecurityManager categoriesFor: #extranetUser!public!user management! !
!WebSecurityManager categoriesFor: #groupNamed:!group management!public! !
!WebSecurityManager categoriesFor: #groups!private! !
!WebSecurityManager categoriesFor: #groupWithUuid:!group management!public! !
!WebSecurityManager categoriesFor: #guestUser!public!user management! !
!WebSecurityManager categoriesFor: #has:rightTo:on:!private! !
!WebSecurityManager categoriesFor: #hasFormAuthenticationScheme!authentication!public! !
!WebSecurityManager categoriesFor: #hasHttpAuthenticationScheme!authentication!public! !
!WebSecurityManager categoriesFor: #hasHttpBasicAuthenticationScheme!authentication!public! !
!WebSecurityManager categoriesFor: #hasHttpDigestAuthenticationScheme!authentication!public! !
!WebSecurityManager categoriesFor: #hasSSLClientCertificateAuthenticationScheme!authentication!public! !
!WebSecurityManager categoriesFor: #hasUser:rightInAnyGroupTo:on:!access control!public! !
!WebSecurityManager categoriesFor: #initAccessByObject!initialize-release!public! !
!WebSecurityManager categoriesFor: #initAdminAccess!initialize-release!public! !
!WebSecurityManager categoriesFor: #initAdminUser!initialize-release!public! !
!WebSecurityManager categoriesFor: #initDefaultGroups!initialize-release!public! !
!WebSecurityManager categoriesFor: #initDemoAccessRights!initialize-release!public! !
!WebSecurityManager categoriesFor: #initExtranetAccessRights!initialize-release!public! !
!WebSecurityManager categoriesFor: #initExtranetUser!initialize-release!public! !
!WebSecurityManager categoriesFor: #initGroups!initialize-release!public! !
!WebSecurityManager categoriesFor: #initGuestAccessRights!initialize-release!public! !
!WebSecurityManager categoriesFor: #initGuestUser!initialize-release!public! !
!WebSecurityManager categoriesFor: #initialize!initialize-release!public! !
!WebSecurityManager categoriesFor: #initUsers!initialize-release!public! !
!WebSecurityManager categoriesFor: #isDefaultAllowedTo:!private! !
!WebSecurityManager categoriesFor: #isUser:allowedTo:on:!access control!public! !
!WebSecurityManager categoriesFor: #isUser:inGroup:!public!user management! !
!WebSecurityManager categoriesFor: #isUser:inGroupNamed:!public!user management! !
!WebSecurityManager categoriesFor: #migrateAppClassessToSymbols!private! !
!WebSecurityManager categoriesFor: #migrateToEncryptedPasswords!private! !
!WebSecurityManager categoriesFor: #migrateToLockedReservedUsers!private! !
!WebSecurityManager categoriesFor: #migrateUrlsForUsersAndGroups!private! !
!WebSecurityManager categoriesFor: #postInitDefaultGroups!initialize-release!public! !
!WebSecurityManager categoriesFor: #printString!private! !
!WebSecurityManager categoriesFor: #reconnectUsersToGroups!private! !
!WebSecurityManager categoriesFor: #registeredGroup!group management!public! !
!WebSecurityManager categoriesFor: #removeAccessRightArray:for:and:!private! !
!WebSecurityManager categoriesFor: #removeAccessRightArray:for:on:!private! !
!WebSecurityManager categoriesFor: #removeAccessRights:for:on:!access control!public! !
!WebSecurityManager categoriesFor: #removeAllAccessRightsFor:!access control!public! !
!WebSecurityManager categoriesFor: #removeAllAccessRightsFor:on:!access control!public! !
!WebSecurityManager categoriesFor: #removeAllAccessRightsForObject:!access control!public! !
!WebSecurityManager categoriesFor: #removeGroup:!group management!public! !
!WebSecurityManager categoriesFor: #removeGroup:ifAbsent:!private! !
!WebSecurityManager categoriesFor: #removeGroupNamed:!group management!public! !
!WebSecurityManager categoriesFor: #removeUser:!public!user management! !
!WebSecurityManager categoriesFor: #removeUserNamed:withPassword:!public!user management! !
!WebSecurityManager categoriesFor: #setAccessRights:for:on:!access control!public! !
!WebSecurityManager categoriesFor: #setFormAuthenticationScheme!authentication!public! !
!WebSecurityManager categoriesFor: #setHttpBasicAuthenticationScheme!authentication!public! !
!WebSecurityManager categoriesFor: #setHttpDigestAuthenticationScheme!authentication!public! !
!WebSecurityManager categoriesFor: #setSSLClientCertificateAuthenticationScheme!authentication!public! !
!WebSecurityManager categoriesFor: #site!accessing!public! !
!WebSecurityManager categoriesFor: #site:!private! !
!WebSecurityManager categoriesFor: #userNamed:!public!user management! !
!WebSecurityManager categoriesFor: #userNamed:withPassword:!public!user management! !
!WebSecurityManager categoriesFor: #users!private! !
!WebSecurityManager categoriesFor: #userWithEMail:!public!user management! !
!WebSecurityManager categoriesFor: #userWithId:!public!user management! !
!WebSecurityManager categoriesFor: #userWithName:surname:!public!user management! !
!WebSecurityManager categoriesFor: #userWithUuid:!public!user management! !

!WebSecurityManager class methodsFor!

default 
	^AIDASite default securityManager!

newOn: anAIDASite
	^super new 
		site: anAIDASite
		"initialize"  "do that separately, otherwise it drops in indefinitive recursion"! !
!WebSecurityManager class categoriesFor: #default!accessing!public! !
!WebSecurityManager class categoriesFor: #newOn:!instance creation!public! !

