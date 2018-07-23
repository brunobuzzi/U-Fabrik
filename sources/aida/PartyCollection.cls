"Filed out from Dolphin Smalltalk 7"!

Object subclass: #PartyCollection
	instanceVariableNames: 'parent parties'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PartyCollection guid: (GUID fromString: '{73318498-8873-4b00-afd7-2faeb098c7c8}')!
PartyCollection comment: 'PartyCollection is used for doing many thing on mix of org.units, roles, rolegroups and persons. For instance, geting out all persons from above mix ...

Instance Variables:
	parent	<aParty>	a root party, conatining that mix of parties (eg. a company)
	parties	<anOrderedCollection>	mix of parties (orgUniits, roles, roleGroups, persons)'!
!PartyCollection categoriesForClass!Unclassified! !
!PartyCollection methodsFor!

add: aPartyOrRole
	"anOrganizationalUnit, aRole, aRoleGroup or aPerson"
	self parties add: aPartyOrRole!

addAll: aPartyCollection
	aPartyCollection do: [:each | self add: each]!

all
	^self parties copy!

allOrgUnits
	^self parties select: [:each | each isKindOf: OrganizationUnit].!

allParentJobRoles
	^self parent allOrgUnits
		inject: OrderedCollection new into: [:col :each | col addAll: each allJobRoles; yourself]!

allParentOrgUnits
	^self parent allOrgUnits!

allParentOrgUnitsRolesPersons
	"sorted in that order.."
	| all |
	all := (SortedCollection withAll: self allParentOrgUnits sortBlock: [:a :b | a name < b name]) 
		asOrderedCollection.
	all addAll: (SortedCollection withAll: self allParentRoleGroups sortBlock: [:a :b | a name < b name]).
	all addAll: (SortedCollection withAll: self allParentJobRoles sortBlock: [:a :b | a name < b name]).
	all addAll: (SortedCollection withAll: self allParentPersons 
		sortBlock: [:a :b | a surnameName < b surnameName]).
	^all!

allParentPersons
	^self parent allEmployees!

allParentRoleGroups
	^self parent allRoleGroups!

allPersons
	"both individual, from job roles and from org.units"
	| persons |
	persons := self onlyPersons asSet.
	persons := self allOrgUnits inject: persons into: [:set :each | set addAll: each allMembers; yourself].
	persons addAll: self allPersonsFromJobRoles.
	persons addAll: self allPersonsFromRoleGroups.
	^persons asOrderedCollection!

allPersonsFromJobRoles
	| jobRoles  |
	jobRoles := self allJobRoles asSet.
	^self allParentPersons select: [:each |
		each jobRole notNil and: [jobRoles includes: each jobRole parentRole] ].

"	^self allJobRoles inject: Set new into: [:set :each | set addAll: each allPersons; yourself]."!

allPersonsFromOrgUnit: anOrgUnit
	| members |
	members := anOrgUnit allMembers asSet.
	^self allPersons select: [:each | members includes: each]!

allPersonsFromRoleGroups
	| jobRoles |
	jobRoles := self allRoleGroups inject: Set new into: [:set :each | set addAll: each allRoles; yourself].
	^self allParentPersons select: [:each |
		each jobRole notNil and: [jobRoles includes: each jobRole parentRole] ]!

allRoleGroups
	^self parties select: [:each | each isKindOf: RoleGroup].!

allSorted
	"org.unitss first, then role groups, roles, persons"
	| all |
	all := (SortedCollection withAll: self allOrgUnits sortBlock: [:a :b | a name < b name]) 
		asOrderedCollection.
	all addAll: (SortedCollection withAll: self allRoleGroups sortBlock: [:a :b | a name < b name]).
	all addAll: (SortedCollection withAll: self allJobRoles sortBlock: [:a :b | a name < b name]).
	all addAll: (SortedCollection withAll: self onlyPersons 
		sortBlock: [:a :b | a surnameName < b surnameName]).
	^all!

from: aPartyCollection
	self initParties.
	self addAll: aPartyCollection!

includes: aPartyOrRole
	^self parties includes: aPartyOrRole!

initParties
	parties := OrderedCollection new.!

notEmpty
	^self parties notEmpty!

onlyPersons
	"just individual persons"
	^self parties select: [:each | each isKindOf: Person]!

parent
	^parent!

parent: aCompany
	"a root company, containing those mix of parties"
	parent := aCompany!

parentPartyOrRoleNamed: aString
	(aString isNil or: [aString isEmpty]) ifTrue: [^nil].
	^self allParentOrgUnitsRolesPersons detect: [:each | each nameToDisplay = aString] ifNone: [nil].!

parties
	parties isNil ifTrue: [self initParties].
	^parties!

partyOrRoleNamed: aString
	^self parties detect: [:each | each nameToDisplay = aString] ifNone: [nil].!

remove: aPartyOrRole
	"anOrganizationalUnit, aRole, aRoleGroup or aPerson"
	self parties remove: aPartyOrRole!

size
	^self parties size!

sort
	"permanently sort a parties collection"
	self from: self allSorted! !
!PartyCollection categoriesFor: #add:!adding-removing!public! !
!PartyCollection categoriesFor: #addAll:!adding-removing!public! !
!PartyCollection categoriesFor: #all!accessing!public! !
!PartyCollection categoriesFor: #allOrgUnits!accessing!public! !
!PartyCollection categoriesFor: #allParentJobRoles!accessing-parent!public! !
!PartyCollection categoriesFor: #allParentOrgUnits!accessing-parent!public! !
!PartyCollection categoriesFor: #allParentOrgUnitsRolesPersons!accessing-parent!public! !
!PartyCollection categoriesFor: #allParentPersons!accessing-parent!public! !
!PartyCollection categoriesFor: #allParentRoleGroups!accessing-parent!public! !
!PartyCollection categoriesFor: #allPersons!accessing!public! !
!PartyCollection categoriesFor: #allPersonsFromJobRoles!accessing!public! !
!PartyCollection categoriesFor: #allPersonsFromOrgUnit:!accessing!public! !
!PartyCollection categoriesFor: #allPersonsFromRoleGroups!accessing!public! !
!PartyCollection categoriesFor: #allRoleGroups!accessing!public! !
!PartyCollection categoriesFor: #allSorted!accessing!public! !
!PartyCollection categoriesFor: #from:!adding-removing!public! !
!PartyCollection categoriesFor: #includes:!public!testing! !
!PartyCollection categoriesFor: #initParties!initialize-release!public! !
!PartyCollection categoriesFor: #notEmpty!public!testing! !
!PartyCollection categoriesFor: #onlyPersons!accessing!public! !
!PartyCollection categoriesFor: #parent!accessing!public! !
!PartyCollection categoriesFor: #parent:!accessing!public! !
!PartyCollection categoriesFor: #parentPartyOrRoleNamed:!accessing-parent!public! !
!PartyCollection categoriesFor: #parties!private! !
!PartyCollection categoriesFor: #partyOrRoleNamed:!accessing!public! !
!PartyCollection categoriesFor: #remove:!adding-removing!public! !
!PartyCollection categoriesFor: #size!accessing!public! !
!PartyCollection categoriesFor: #sort!accessing!public! !

!PartyCollection class methodsFor!

newOn: aCompany
	^super new parent: aCompany!

newOn: aCompany from: aPartyCollection
	^(self newOn: aCompany) from: aPartyCollection! !
!PartyCollection class categoriesFor: #newOn:!instance creation!public! !
!PartyCollection class categoriesFor: #newOn:from:!instance creation!public! !

