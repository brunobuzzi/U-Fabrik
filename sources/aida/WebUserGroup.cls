"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebUserGroup
	instanceVariableNames: 'name users'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebUserGroup guid: (GUID fromString: '{5a66eeec-53e5-4d54-8156-96e94c920042}')!
WebUserGroup comment: ''!
!WebUserGroup categoriesForClass!Unclassified! !
!WebUserGroup methodsFor!

addUser: aWebUser
 	self users add: aWebUser.!

allUsers
	^self users copy!

includes: aWebUser
	^self users includes: aWebUser!

initUsers 
	users  := Set new.!

isActivatingGroup
	"group of users waiting to confirm registration"
	^self name = self class activatingGroupName!

isAdminGroup
	^self name = self class adminGroupName!

isAllUsersGroup
	^self name = self class allUsersGroupName!

isGuestGroup
	^self name = self class guestGroupName!

isPerson
	^false!

isRegisteredGroup
	^self name = self class registeredGroupName!

isWebUser
	^false!

isWebUserGroup
	^true!

menuName
	"in dropdown menus"
	^name!

migrateToUnicode
	"from iso8859-2"
	"WebUserGroup allInstances do: [:each | each migrateToUnicode]"
	name notNil ifTrue: [name := name ensureUnicodeSloveneChars].!

name
	name isNil ifTrue: [self name: '']. 
	^name!

name: aString
	name := aString.!

preferedUrl
	| nme |
	nme := self name trimBlanks asHttpFriendly.
	^'/group/', nme, '.html'!

printString
	^'aWebUserGroup: ', self name!

removeUser: aWebUser
 	self users remove: aWebUser ifAbsent: [].!

users
	users isNil ifTrue: [self initUsers]. 
	^users!

uuid
	"some unique identifier. Hash for now, probably unique enough!! "
	^self hash printString! !
!WebUserGroup categoriesFor: #addUser:!adding-removing!public! !
!WebUserGroup categoriesFor: #allUsers!accessing!public! !
!WebUserGroup categoriesFor: #includes:!public!testing! !
!WebUserGroup categoriesFor: #initUsers!initialize-release!public! !
!WebUserGroup categoriesFor: #isActivatingGroup!public!testing! !
!WebUserGroup categoriesFor: #isAdminGroup!public!testing! !
!WebUserGroup categoriesFor: #isAllUsersGroup!public!testing! !
!WebUserGroup categoriesFor: #isGuestGroup!public!testing! !
!WebUserGroup categoriesFor: #isPerson!public!testing! !
!WebUserGroup categoriesFor: #isRegisteredGroup!public!testing! !
!WebUserGroup categoriesFor: #isWebUser!public!testing! !
!WebUserGroup categoriesFor: #isWebUserGroup!public!testing! !
!WebUserGroup categoriesFor: #menuName!accessing!public! !
!WebUserGroup categoriesFor: #migrateToUnicode!private! !
!WebUserGroup categoriesFor: #name!accessing!public! !
!WebUserGroup categoriesFor: #name:!accessing!public! !
!WebUserGroup categoriesFor: #preferedUrl!private! !
!WebUserGroup categoriesFor: #printString!private! !
!WebUserGroup categoriesFor: #removeUser:!adding-removing!public! !
!WebUserGroup categoriesFor: #users!private! !
!WebUserGroup categoriesFor: #uuid!accessing!public! !

!WebUserGroup class methodsFor!

activatingGroupName
	"group of users waiting to confirm registration"
	^'Users waiting activation'!

adminGroupName
	"return a name of group for administrators" 
	^'Administrators'!

allUsersGroupName
	"return a name of group, where all users are there by default" 
	^'AllUsers'!

guestGroupName
	"return a name of group for guests" 
	^self allUsersGroupName!

newActivating
	^super new name: self activatingGroupName!

newAdmin
	^super new name: self adminGroupName!

newAllUsers
	^super new name: self allUsersGroupName!

newRegistered
	^super new name: self registeredGroupName!

registeredGroupName
	"return a name of group of registered users" 
	^'Registered Users'! !
!WebUserGroup class categoriesFor: #activatingGroupName!defaults!public! !
!WebUserGroup class categoriesFor: #adminGroupName!defaults!public! !
!WebUserGroup class categoriesFor: #allUsersGroupName!defaults!public! !
!WebUserGroup class categoriesFor: #guestGroupName!defaults!public! !
!WebUserGroup class categoriesFor: #newActivating!instance creation!public! !
!WebUserGroup class categoriesFor: #newAdmin!instance creation!public! !
!WebUserGroup class categoriesFor: #newAllUsers!instance creation!public! !
!WebUserGroup class categoriesFor: #newRegistered!instance creation!public! !
!WebUserGroup class categoriesFor: #registeredGroupName!defaults!public! !

