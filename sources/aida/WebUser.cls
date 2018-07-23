"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebUser
	instanceVariableNames: 'parent id username password name surname company address city zip country website email phone fax otherValues'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebUser guid: (GUID fromString: '{7afc5e7c-1abf-423e-8115-8f1dbdbb9200}')!
WebUser comment: ''!
!WebUser categoriesForClass!Unclassified! !
!WebUser methodsFor!

address
	address isNil ifTrue: [^'']. 
	^address!

address: aString
	address := aString.!

addToActivatingGroup
	self parent addActivatingUser: self!

addToRegisteredGroup
	self parent addRegisteredUser: self!

asPerson
	"parallel Person object (from Party framework if present, otherwise nil)"
	^self otherValuesAt: #Person ifAbsent: [^self initPerson]!

asWebUser
	^self!

autoLogout
	"logout after 15min of inactivity. default is NO!! "
	^self otherValuesAt: #AutoLogout ifAbsent: [false]!

autoLogout: aBoolean
	"logout after 15min of inactivity"
	^self otherValuesAt: #AutoLogout put: aBoolean!

becomeAdmin
	self parent adminGroup addUser: self!

city
	city isNil ifTrue: [^'']. 
	^city!

city: aString
	city := aString.!

company
	company isNil ifTrue: [^'']. 
	^company!

company: aString 
	company := aString.!

country
	country isNil ifTrue: [^'']. 
	^country!

country: aString
	country := aString.!

email 
	email isNil ifTrue: [^''].
	^email!

email: aString
	email := aString.!

fax
	fax isNil ifTrue: [^''].
	^fax!

fax: aString 
	fax := aString.!

groups 
	"where this user is a member"
	^self parent groups select: [:group | group users includes: self]!

hasEMail 

	"at least email must be entered to accept a new user"
	
	^self email ~= ''!

id
	"unique id of that user"
	^id!

id: aNumber
	id := aNumber.!

inActivatingGroup
	"user needs to confirm registration"
	^self groups contains: [:each | each isActivatingGroup]!

inAdminGroup
	"all from Administrators group are admins, also default Admin user"
	^self groups contains: [:each | each isAdminGroup]!

initialize
	self initId!

initId
	self id: (AIDASite random next * 1000000000) asInteger.!

initOtherValues
	otherValues := Dictionary new.!

initPerson
	^self otherValuesAt: #Person put: (Person new webUser: self)!

inRegisteredGroup
	^self groups contains: [:each | each isRegisteredGroup]!

isAdmin
	"all from Administrators group are admins, also default Admin user"
	"DEPRECIATED!!, use #inAdminGroup or #isAdminUser instead!! "
	^self inAdminGroup!

isAdminUser
	"special user with name Admin"
	^self username = 'admin' and: [self name= 'Admin'].!

isExtranetUser
	"a general user for extranets"
	^self name = 'Extranet' or: [(self username = 'extranet') & (self password = 'password')]!

isGuest
	"all non registered visitors have the same user: a Guest"
	^self name = 'Guest' and: 
		[(self username = 'guest') "& (self password = (WebSecurityManager hashPassword: 'guest'))"]!

isLocked
	"changes of user data not allowed"
	^self otherValuesAt: #Locked ifAbsent: [false]!

isPerson
	^false!

isWebUser
	^true!

isWebUserGroup
	^false!

lastAppUrl
	"an url which last WebApplication was called. "
	^self otherValuesAt: #LastAppUrl ifAbsent: [nil].!

lastAppUrl: aString
	"an url which last WebApplication was called. It is set AFTER the app view is generated!!"
	^self otherValuesAt: #LastAppUrl put: aString!

logoutFromUrl
	"From which page user logout. To be redirected back after login"
	^self otherValuesAt: #LogoutFromUrl ifAbsent: [nil].!

logoutFromUrl: aString
	"From which page user logout. To be redirected back after login"
	^self otherValuesAt: #LogoutFromUrl put: aString!

menuName
	"in dropdown menus"
	^self surnameName!

migrateToUnicode
	"from iso8859-2"
	"WebUser allInstances do: [:each | each migrateToUnicode]"
	username notNil ifTrue: [username := username ensureUnicodeSloveneChars].
	password notNil ifTrue: [password := password ensureUnicodeSloveneChars].
	name notNil ifTrue: [name := name ensureUnicodeSloveneChars].
	surname notNil ifTrue: [surname := surname ensureUnicodeSloveneChars].
	company notNil ifTrue: [company := company ensureUnicodeSloveneChars].
	city notNil ifTrue: [city := city ensureUnicodeSloveneChars].
	country notNil ifTrue: [country := country ensureUnicodeSloveneChars].!

name
	name isNil ifTrue: [self asPerson notNil ifTrue: [^self asPerson name] ifFalse: [^''] ].
	^name!

name: aString 
	self isLocked ifTrue: [^self error: 'user locked, changes not allowed!! '].
	self asPerson notNil ifTrue: [^self asPerson name: aString].
	name := aString trimBlanks.!

nameSurname 
	^self name, ' ', self surname!

otherValues
	^otherValues!

otherValuesAt: aString
	^self otherValuesAt: aString ifAbsent: [nil]!

otherValuesAt: aString ifAbsent: aBlock
	self otherValues isNil ifTrue: [^aBlock value].
	^self otherValues at: aString ifAbsent: [aBlock value]!

otherValuesAt: aSymbol ifAbsentPut: aBlock
	self otherValues isNil ifTrue: [self initOtherValues].
	^self otherValues at: aSymbol ifAbsent: [self otherValues at: aSymbol put: aBlock value]!

otherValuesAt: aString put: anObject
	self otherValues isNil ifTrue: [self initOtherValues].
	^self otherValues at: aString put: anObject!

parent
	^parent!

parent: aWebSecurityManager
	parent := aWebSecurityManager!

password
	"returns SHA1 encrypted password!! "		 
	password isNil ifTrue: [^''].
	^password!

password: aString	
	"Store hashed string"
	aString notEmpty ifTrue: [
		password := WebSecurityManager hashPassword: aString]!

passwordAsHex
	"leading zero in each byte ommited!! 0F = just F !!"
	"VW specific!!"		 
	^(self password 
		inject: (WriteStream on: String new)
		into: [:stream :byte | 
			stream nextPutAll: (byte printStringRadix: 16).  "VW specific!!"
			stream])
				contents!

passwordText
	"password is encripted/invisible anway, so return just empty string"
	^''!

passwordText: aString
	aString = self passwordText "all *****, this means that password was not changed"
		ifTrue: [^nil]. 
	aString trimBlanks isEmpty ifTrue: [^nil].
	^self password: aString!

person: aPerson
	"connect to parrallel Person from Party framework"
	self otherValuesAt: #Person put: aPerson.
	aPerson asWebUser ~= self ifTrue: [aPerson webUser: self].!

phone 
	phone isNil ifTrue: [^''].
	^phone!

phone: aString 
	phone := aString.!

preferedUrl
	| nme |
	nme := self nameSurname trimBlanks asHttpFriendly.
	^'/user/', nme, '.html'!

printString 
	^'aWebUser named ', self surname, ', ', self name, ' (', self username, ') '!

resetLocked
	"changes of user data allowed again"
	^self otherValuesAt: #Locked put: false!

setLocked
	"changes of user data not allowed"
	^self otherValuesAt: #Locked put: true!

someId
	"just return some text, possibly surnameName"
	self surnameName trimBlanks notEmpty ifTrue: [^self surnameName].
	self email notEmpty ifTrue: [^self email].
	^'----'!

surname
	surname isNil ifTrue: [self asPerson notNil ifTrue: [^self asPerson surname] ifFalse: [^''] ].
	^surname!

surname: aString 
	self isLocked ifTrue: [^self error: 'user locked, changes not allowed!! '].
	self asPerson notNil ifTrue: [^self asPerson surname: aString].
	surname := aString trimBlanks.!

surnameName
	^self surname, ' ', self name!

username
 
	username isNil ifTrue: [^''].
	^username.!

username: aString 
	self isLocked ifTrue: [^self error: 'user locked, changes not allowed!! '].
	username := aString asLowercase trimBlanks.!

uuid
	"unique identifier "
	^self otherValuesAt: #uuid ifAbsentPut: [(AIDASite random next * 1000000000) rounded printString]!

website
	website isNil ifTrue: [^''].
	^website!

website: aString
	website := aString!

zip
	zip isNil ifTrue: [^'']. 
	^zip!

zip: aString
	zip := aString.! !
!WebUser categoriesFor: #address!accessing!public! !
!WebUser categoriesFor: #address:!accessing!public! !
!WebUser categoriesFor: #addToActivatingGroup!groups!public! !
!WebUser categoriesFor: #addToRegisteredGroup!groups!public! !
!WebUser categoriesFor: #asPerson!accessing!public! !
!WebUser categoriesFor: #asWebUser!accessing!public! !
!WebUser categoriesFor: #autoLogout!accessing-other!public! !
!WebUser categoriesFor: #autoLogout:!accessing-other!public! !
!WebUser categoriesFor: #becomeAdmin!accessing!public! !
!WebUser categoriesFor: #city!accessing!public! !
!WebUser categoriesFor: #city:!accessing!public! !
!WebUser categoriesFor: #company!accessing!public! !
!WebUser categoriesFor: #company:!accessing!public! !
!WebUser categoriesFor: #country!accessing!public! !
!WebUser categoriesFor: #country:!accessing!public! !
!WebUser categoriesFor: #email!accessing!public! !
!WebUser categoriesFor: #email:!accessing!public! !
!WebUser categoriesFor: #fax!accessing!public! !
!WebUser categoriesFor: #fax:!accessing!public! !
!WebUser categoriesFor: #groups!groups!public! !
!WebUser categoriesFor: #hasEMail!public!testing! !
!WebUser categoriesFor: #id!accessing!public! !
!WebUser categoriesFor: #id:!accessing!public! !
!WebUser categoriesFor: #inActivatingGroup!public!testing! !
!WebUser categoriesFor: #inAdminGroup!public!testing! !
!WebUser categoriesFor: #initialize!initialize-release!public! !
!WebUser categoriesFor: #initId!initialize-release!public! !
!WebUser categoriesFor: #initOtherValues!initialize-release!public! !
!WebUser categoriesFor: #initPerson!initialize-release!public! !
!WebUser categoriesFor: #inRegisteredGroup!public!testing! !
!WebUser categoriesFor: #isAdmin!public!testing! !
!WebUser categoriesFor: #isAdminUser!public!testing! !
!WebUser categoriesFor: #isExtranetUser!public!testing! !
!WebUser categoriesFor: #isGuest!public!testing! !
!WebUser categoriesFor: #isLocked!public!testing! !
!WebUser categoriesFor: #isPerson!public!testing! !
!WebUser categoriesFor: #isWebUser!public!testing! !
!WebUser categoriesFor: #isWebUserGroup!public!testing! !
!WebUser categoriesFor: #lastAppUrl!accessing-other!public! !
!WebUser categoriesFor: #lastAppUrl:!accessing-other!public! !
!WebUser categoriesFor: #logoutFromUrl!accessing-other!public! !
!WebUser categoriesFor: #logoutFromUrl:!accessing-other!public! !
!WebUser categoriesFor: #menuName!accessing!public! !
!WebUser categoriesFor: #migrateToUnicode!private! !
!WebUser categoriesFor: #name!accessing!public! !
!WebUser categoriesFor: #name:!accessing!public! !
!WebUser categoriesFor: #nameSurname!accessing!public! !
!WebUser categoriesFor: #otherValues!private! !
!WebUser categoriesFor: #otherValuesAt:!private! !
!WebUser categoriesFor: #otherValuesAt:ifAbsent:!private! !
!WebUser categoriesFor: #otherValuesAt:ifAbsentPut:!private! !
!WebUser categoriesFor: #otherValuesAt:put:!private! !
!WebUser categoriesFor: #parent!private! !
!WebUser categoriesFor: #parent:!private! !
!WebUser categoriesFor: #password!accessing!public! !
!WebUser categoriesFor: #password:!accessing!public! !
!WebUser categoriesFor: #passwordAsHex!accessing!public! !
!WebUser categoriesFor: #passwordText!accessing!public! !
!WebUser categoriesFor: #passwordText:!accessing!public! !
!WebUser categoriesFor: #person:!private! !
!WebUser categoriesFor: #phone!accessing!public! !
!WebUser categoriesFor: #phone:!accessing!public! !
!WebUser categoriesFor: #preferedUrl!private! !
!WebUser categoriesFor: #printString!private! !
!WebUser categoriesFor: #resetLocked!accessing-other!public! !
!WebUser categoriesFor: #setLocked!accessing-other!public! !
!WebUser categoriesFor: #someId!accessing!public! !
!WebUser categoriesFor: #surname!accessing!public! !
!WebUser categoriesFor: #surname:!accessing!public! !
!WebUser categoriesFor: #surnameName!accessing!public! !
!WebUser categoriesFor: #username!accessing!public! !
!WebUser categoriesFor: #username:!accessing!public! !
!WebUser categoriesFor: #uuid!accessing!public! !
!WebUser categoriesFor: #website!accessing!public! !
!WebUser categoriesFor: #website:!accessing!public! !
!WebUser categoriesFor: #zip!accessing!public! !
!WebUser categoriesFor: #zip:!accessing!public! !

!WebUser class methodsFor!

adminEMail
	^'admin'!

adminName
	^'Admin'!

adminPassword
	^'password'!

adminSurname
	^''!

adminUsername
	^'admin'!

extranetEMail
	^'extranet'!

extranetName
	^'Extranet'!

extranetPassword
	^'password'!

extranetSurname
	^''!

extranetUsername
	^'extranet'!

guestEMail
	^'guest'!

guestName
	^'Guest'!

guestPassword
	^'guest'!

guestSurname
	^''!

guestUsername
	^'guest'!

new
	^super new initialize!

newAdmin
	^self new
		name: self adminName;
		surname: self adminSurname;
		email: self adminEMail;
		username: self adminUsername;
		password: self adminPassword!

newExtranet
	"a common extranet user, for easier setup of access rights"
	^self new
		name: self extranetName;
		surname: self extranetSurname;
		email: self extranetEMail;
		username: self extranetUsername;
		password: self extranetPassword!

newGuest
	^self new
		name: self guestName;
		surname: self guestSurname;
		email: self guestEMail;
		username: self guestUsername;
		password: self guestPassword! !
!WebUser class categoriesFor: #adminEMail!defaults!public! !
!WebUser class categoriesFor: #adminName!defaults!public! !
!WebUser class categoriesFor: #adminPassword!defaults!public! !
!WebUser class categoriesFor: #adminSurname!defaults!public! !
!WebUser class categoriesFor: #adminUsername!defaults!public! !
!WebUser class categoriesFor: #extranetEMail!defaults!public! !
!WebUser class categoriesFor: #extranetName!defaults!public! !
!WebUser class categoriesFor: #extranetPassword!defaults!public! !
!WebUser class categoriesFor: #extranetSurname!defaults!public! !
!WebUser class categoriesFor: #extranetUsername!defaults!public! !
!WebUser class categoriesFor: #guestEMail!defaults!public! !
!WebUser class categoriesFor: #guestName!defaults!public! !
!WebUser class categoriesFor: #guestPassword!defaults!public! !
!WebUser class categoriesFor: #guestSurname!defaults!public! !
!WebUser class categoriesFor: #guestUsername!defaults!public! !
!WebUser class categoriesFor: #new!instance creation!public! !
!WebUser class categoriesFor: #newAdmin!instance creation!public! !
!WebUser class categoriesFor: #newExtranet!instance creation!public! !
!WebUser class categoriesFor: #newGuest!instance creation!public! !

