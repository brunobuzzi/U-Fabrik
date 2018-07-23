"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Party
	instanceVariableNames: 'id name description addresses roles relatedPartyRoles events relatedObjects otherValues'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Party guid: (GUID fromString: '{1981774e-fc24-4596-8452-21de1b67a6a1}')!
Party comment: ''!
!Party categoriesForClass!Unclassified! !
!Party methodsFor!

addRelatedObject: anObject
	(self relatedObjects includes: anObject) ifFalse:
		[self relatedObjects add: anObject].!

addRelatedPartyRole: aRole
	(self relatedPartyRoles includes: aRole) ifTrue: [^nil].
	self relatedPartyRoles add: aRole.!

addresses
	addresses isNil ifTrue: [self initAddresses].
	^addresses!

addRole: aRole
	(self roles includes: aRole) ifTrue: [^nil].
	self roles add: aRole.!

addRoleGroup: aRoleGroup
	(self roleGroups includes: aRoleGroup) ifFalse: [self roleGroups add: aRoleGroup]!

allCustomers
	"return all parties which are my customers, therefore I am a supplier to them"
	| parties |
	parties :=  (self roles select: [:role | role isSupplierRole]) 
		collect: [:each | each relatedParty].
	parties := parties addAll:
		((self relatedPartyRoles select: [:role | role isCustomerRole]) 
			collect: [:each | each party]);
		yourself.
	^parties asSet asOrderedCollection!

allEmployees
	"all employees of that party"
	| parties |
	parties :=  (self roles select: [:role | role isEmployeeRole]) 
		collect: [:each | each relatedParty].
	parties := parties addAll:
		((self relatedPartyRoles select: [:role | role isEmployeeRole]) 
			collect: [:each | each party]);
		yourself.
	^parties asSet asOrderedCollection!

allRelatedRolesFrom: aParty
	"return all roles this party has to me"
	^self relatedPartyRoles select: [:each | each party == aParty]!

allRoleGroups
	^self roleGroups copy!

allRoles
	^self roles copy!

allRolesTo: aParty
	"return all roles I have to this party"
	^self roles select: [:each | each relatedParty == aParty]!

allSuppliers
	"return all parties which supply goods to me, therefore I am a customer of them"
	| parties |
	parties :=  (self roles select: [:role | role isCustomerRole]) 
		collect: [:each | each relatedParty].
	parties := parties addAll:
		((self relatedPartyRoles select: [:role | role isSupplierRole]) 
			collect: [:each | each party]); 
		yourself.
	^parties asSet asOrderedCollection!

bankAccount
	^self bankAccounts notEmpty ifTrue: [self bankAccounts first] ifFalse: [''].!

bankAccount: aString
	self bankAccounts isEmpty ifTrue: 
		[self otherValuesAt: #BankAccounts put: (OrderedCollection new add: ''; yourself) ].
	self bankAccounts at: 1 put: aString.!

bankAccounts
	^self otherValuesAt: #BankAccounts ifAbsent: [OrderedCollection new].!

becomeSiteOwner
	"usual for Companies, SiteOwnerRole has a reference to his WebSite"!

becomeWebUserTo: aWebSiteOwnerPary!

city
	^self mainAddress city!

city: aString
	self mainAddress city: aString!

country
	^self mainAddress country!

country: aString
	self mainAddress country: aString!

description
	description isNil ifTrue: [self description: ''].
	^description!

description: aString
	description := aString!

discontinueAllRoles
	self roles copy do: [:each | self discontinueRole: each].
	self relatedPartyRoles copy do: [:each | self discontinueRole: each]!

discontinueAllRolesTo: aParty
	(self roles select: [:role | role relatedParty == aParty])
		do: [:each | self discontinueRole: each].!

discontinueRole: aRole
	self roles remove: aRole ifAbsent: [].
	aRole relatedParty relatedPartyRoles remove: aRole ifAbsent: [].!

discontinueRoleNamed: aString
	| r |
	r := self roleNamed: aString.
	r notNil ifTrue: [self discontinueRole: r]!

email
	^self mainAddress email!

email: aString
	self mainAddress email: aString!

events
	events isNil ifTrue: [self initEvents].
	^events!

fax
	^self mainAddress fax!

fax: aString
	self mainAddress fax: aString!

id
	id isNil ifTrue: [self id: ''].
	^id!

id: aString
	id := aString.!

initAddresses
	addresses := Dictionary new.!

initEvents
	events := DailyCollection new.!

initOtherValues
	otherValues := Dictionary new.!

initRelatedObjects
	relatedObjects := OrderedCollection new.!

initRelatedPartyRoles
	relatedPartyRoles := OrderedCollection new.!

initRoles
	roles := OrderedCollection new.!

isCompany
	^false!

isCustomerOf: aParty

	| isCustomer |
	isCustomer := self roles contains: [:role | role relatedParty == aParty and: [role isCustomerRole] ].
	isCustomer ifTrue: [^true].
	"check also a complementary role"
	^self relatedPartyRoles contains: [:role | role party == aParty and: [role isSupplierRole] ].!

isOrganizationUnit
	^false!

isPerson
	^false!

isSupplierTo: aParty

	| isSupplier |
	isSupplier := self roles contains: [:role | role relatedParty == aParty and: [role isSupplierRole] ].
	isSupplier ifTrue: [^true].
	"check also a complementary role"
	^self relatedPartyRoles contains: [:role | role party == aParty and: [role isCustomerRole] ].!

mainAddress
	
	^self addresses 
		at: #MainAddress 
		ifAbsent: [self addresses at: #MainAddress put: Address new. self mainAddress].!

migrateToUnicode
	"from iso8859-2"
	id notNil ifTrue: [id := id ensureUnicodeSloveneChars].
	name notNil ifTrue: [name := name ensureUnicodeSloveneChars].!

name
	name isNil ifTrue: [self name: ''].
	^name!

name: aString
	name := aString trimBlanks.!

nameNonEmpty
	^self name trimBlanks notEmpty 
		ifTrue: [self name] 
		ifFalse: ['-- no name --'].!

nameToDisplay
	"on web pages for instance"
	^self name!

newRole: aRole
	"new role, but not in relationship with anyone"!

newRole: aRole relatedTo: aParty
	"new role in relationship with other party"
	aRole party: self.
	aRole relatedParty: aParty.
	self addRole: aRole.
	aParty addRelatedPartyRole: aRole.!

newRoleNamed: aString
	"new role, but not in relationship with anyone"
	| new |
	(self roleNames includes: aString) ifTrue: [^self error: 'role with that name already exist'].
	new := Role new name: aString.
	self newRole: new!

newRoleNamed: aString relatedTo: aParty
	"new role in relationship with other party"
	| new |
	(self roleNames includes: aString) ifTrue: [^self error: 'role with that name already exist'].
	new := Role new name: aString.
	self newRole: new relatedTo: aParty!

noMoreCustomerOf: aParty 
	"no more a customer of related party"
	(self isCustomerOf: aParty) ifFalse: [^nil].
	self discontinueRole:
		(self roles detect: [:role | role relatedParty == aParty and: [role isCustomerRole] ] ifNone: [^nil])!

noMoreSupplierTo: aParty 
	"no more a supplier to related party"
	(self isSupplierTo: aParty) ifFalse: [^nil].
	self discontinueRole:
		(self roles detect: [:role | role relatedParty == aParty and: [role isSupplierRole] ] ifNone: [^nil])!

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

partialyConnectedRoles
	"roles, which are not correctly connected to related party and back"
	"not working well yet !!!!!! "
	| col |
	col := self roles reject: [:each | each relatedParty roles contains: [:role | role relatedParty == self] ].
	col addAll: (self relatedPartyRoles 
		reject: [:each | each relatedParty roles contains: [:role | role party == self] ]).
	^col

"Company allInstances select: [:each | each partialyConnectedRoles notEmpty]"!

phone
	^self mainAddress phone!

phone: aString
	self mainAddress phone: aString!

post
	^self mainAddress post!

post: anObject
	^self mainAddress post: anObject!

postalCode
	^self mainAddress postalCode!

postalCode: aString
	self mainAddress postalCode: aString!

printString
	^'party: ', self name!

reconnectEmployees
	"for debugging"
	self allEmployees do: [:each | self removeEmployee: each; addEmployee: each]!

relatedObjects
	relatedObjects isNil ifTrue: [self initRelatedObjects].
	^relatedObjects!

relatedPartyRoles
	relatedPartyRoles isNil ifTrue: [self initRelatedPartyRoles].
	^relatedPartyRoles!

removeRelatedObject: anObject
	self relatedObjects remove: anObject ifAbsent: []!

removeRoleGroup: aRoleGroup
	(self roleGroups includes: aRoleGroup) ifTrue: [self roleGroups remove: aRoleGroup]!

roleGroupNamed: aString
	^self roleGroups detect: [:each | each name = aString] ifNone: [nil]!

roleGroups
	(self otherValuesAt: #roleGroups) isNil ifTrue: 
		[self otherValuesAt: #roleGroups put: OrderedCollection new].
	^self otherValuesAt: #roleGroups!

roleGroupsIncludeRole: aRole
	^self roleGroups select: [:each | each includes: aRole]!

roleGroupWithUuid: aString
	^self roleGroups detect: [:each | each uuid = aString] ifNone: [nil]!

roleNamed: aString
	"find a role with that name"
	^self roles detect: [:each | each name = aString] ifNone: [nil]!

roleNames
	"names of roles this party plays"
	^self roles collect: [:each | each name].!

roles
	roles isNil ifTrue: [self initRoles].
	^roles!

rolesText
	"names of roles this party plays, in one string separated with commas"
	| text |
	text := ''.
	1 to: self roleNames size do: [:inx |
		text := text, (self roleNames at: inx).
		inx = self roleNames size ifFalse: [text := text, ', '] ].
	^text!

searchEmployeesWithSurname: aSurname name: aName
	| surname nme |
	surname := aSurname asLowercase, '*'. nme := aName asLowercase, '*'.
	^self allEmployees select: [:each | 
		(surname match: each surname asLowercase) and: [nme match: each name asLowercase] ]!

searchEmployeesWithSurnameName: aString
	| string nm |
	string := aString asLowercase, '*'. 
	^self allEmployees select: [:each | 
		nm := each surnameName asLowercase.
		(string match: nm)].!

street
	^self mainAddress street!

street: aString
	self mainAddress street: aString!

updateFrom: aParty
	self name: aParty name.
	self description: aParty description.
	self city: aParty city.
	self street: aParty street.
	self postalCode: aParty postalCode.!

uuid
	"unique identifier "
	^self otherValuesAt: #uuid ifAbsentPut: [(AIDASite random next * 1000000000) rounded printString]! !
!Party categoriesFor: #addRelatedObject:!public!related objects! !
!Party categoriesFor: #addRelatedPartyRole:!private! !
!Party categoriesFor: #addresses!accessing!public! !
!Party categoriesFor: #addRole:!private! !
!Party categoriesFor: #addRoleGroup:!public!role groups! !
!Party categoriesFor: #allCustomers!public!roles-specific! !
!Party categoriesFor: #allEmployees!public!roles-specific! !
!Party categoriesFor: #allRelatedRolesFrom:!public!roles-basic! !
!Party categoriesFor: #allRoleGroups!public!role groups! !
!Party categoriesFor: #allRoles!public!roles-basic! !
!Party categoriesFor: #allRolesTo:!public!roles-basic! !
!Party categoriesFor: #allSuppliers!public!roles-specific! !
!Party categoriesFor: #bankAccount!accessing-other!public! !
!Party categoriesFor: #bankAccount:!accessing-other!public! !
!Party categoriesFor: #bankAccounts!accessing-other!public! !
!Party categoriesFor: #becomeSiteOwner!public!roles-specific! !
!Party categoriesFor: #becomeWebUserTo:!public!roles-specific! !
!Party categoriesFor: #city!addresses!public! !
!Party categoriesFor: #city:!addresses!public! !
!Party categoriesFor: #country!addresses!public! !
!Party categoriesFor: #country:!addresses!public! !
!Party categoriesFor: #description!accessing!public! !
!Party categoriesFor: #description:!accessing!public! !
!Party categoriesFor: #discontinueAllRoles!public!roles-basic! !
!Party categoriesFor: #discontinueAllRolesTo:!public!roles-basic! !
!Party categoriesFor: #discontinueRole:!public!roles-basic! !
!Party categoriesFor: #discontinueRoleNamed:!public!roles-basic! !
!Party categoriesFor: #email!addresses!public! !
!Party categoriesFor: #email:!addresses!public! !
!Party categoriesFor: #events!accessing!public! !
!Party categoriesFor: #fax!addresses!public! !
!Party categoriesFor: #fax:!addresses!public! !
!Party categoriesFor: #id!accessing!public! !
!Party categoriesFor: #id:!accessing!public! !
!Party categoriesFor: #initAddresses!initialize - release!public! !
!Party categoriesFor: #initEvents!initialize - release!public! !
!Party categoriesFor: #initOtherValues!initialize - release!public! !
!Party categoriesFor: #initRelatedObjects!initialize - release!public! !
!Party categoriesFor: #initRelatedPartyRoles!initialize - release!public! !
!Party categoriesFor: #initRoles!initialize - release!public! !
!Party categoriesFor: #isCompany!public!testing! !
!Party categoriesFor: #isCustomerOf:!public!roles-specific! !
!Party categoriesFor: #isOrganizationUnit!public!testing! !
!Party categoriesFor: #isPerson!public!testing! !
!Party categoriesFor: #isSupplierTo:!public!roles-specific! !
!Party categoriesFor: #mainAddress!addresses!public! !
!Party categoriesFor: #migrateToUnicode!private! !
!Party categoriesFor: #name!accessing!public! !
!Party categoriesFor: #name:!accessing!public! !
!Party categoriesFor: #nameNonEmpty!accessing!public! !
!Party categoriesFor: #nameToDisplay!accessing!public! !
!Party categoriesFor: #newRole:!public!roles-basic! !
!Party categoriesFor: #newRole:relatedTo:!public!roles-basic! !
!Party categoriesFor: #newRoleNamed:!public!roles-basic! !
!Party categoriesFor: #newRoleNamed:relatedTo:!public!roles-basic! !
!Party categoriesFor: #noMoreCustomerOf:!public!roles-specific! !
!Party categoriesFor: #noMoreSupplierTo:!public!roles-specific! !
!Party categoriesFor: #otherValues!private! !
!Party categoriesFor: #otherValuesAt:!private! !
!Party categoriesFor: #otherValuesAt:ifAbsent:!private! !
!Party categoriesFor: #otherValuesAt:ifAbsentPut:!private! !
!Party categoriesFor: #otherValuesAt:put:!private! !
!Party categoriesFor: #partialyConnectedRoles!private! !
!Party categoriesFor: #phone!addresses!public! !
!Party categoriesFor: #phone:!addresses!public! !
!Party categoriesFor: #post!addresses!public! !
!Party categoriesFor: #post:!addresses!public! !
!Party categoriesFor: #postalCode!addresses!public! !
!Party categoriesFor: #postalCode:!addresses!public! !
!Party categoriesFor: #printString!printing!public! !
!Party categoriesFor: #reconnectEmployees!private! !
!Party categoriesFor: #relatedObjects!accessing!public! !
!Party categoriesFor: #relatedPartyRoles!accessing!public! !
!Party categoriesFor: #removeRelatedObject:!public!related objects! !
!Party categoriesFor: #removeRoleGroup:!public!role groups! !
!Party categoriesFor: #roleGroupNamed:!public!role groups! !
!Party categoriesFor: #roleGroups!public!role groups! !
!Party categoriesFor: #roleGroupsIncludeRole:!public!role groups! !
!Party categoriesFor: #roleGroupWithUuid:!public!role groups! !
!Party categoriesFor: #roleNamed:!public!roles-basic! !
!Party categoriesFor: #roleNames!accessing!public! !
!Party categoriesFor: #roles!accessing!public! !
!Party categoriesFor: #rolesText!accessing!public! !
!Party categoriesFor: #searchEmployeesWithSurname:name:!public!roles-specific! !
!Party categoriesFor: #searchEmployeesWithSurnameName:!public!roles-specific! !
!Party categoriesFor: #street!addresses!public! !
!Party categoriesFor: #street:!addresses!public! !
!Party categoriesFor: #updateFrom:!changing!public! !
!Party categoriesFor: #uuid!accessing!public! !

!Party class methodsFor!

newCustomerOf: aParty

	^super new
		becomeCustomerOf: aParty!

newSupplierTo: aParty

	^super new
		becomeSupplierTo: aParty!

replicationSpec
	"Gemstone"
	^super replicationSpec , 
		#( 	(id 	replicate)
			(name replicate)
			(description replicate)
			(addresses max 4)
			(roles max 2)
			(relatedPartyRoles max 2)
			(events forwarder)
			(relatedObjects max 1) )! !
!Party class categoriesFor: #newCustomerOf:!instance creation!public! !
!Party class categoriesFor: #newSupplierTo:!instance creation!public! !
!Party class categoriesFor: #replicationSpec!odb specific!public! !

