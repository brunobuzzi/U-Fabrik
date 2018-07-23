"Filed out from Dolphin Smalltalk 7"!

Party subclass: #OrganizationUnit
	instanceVariableNames: 'type parent units specialRoles'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OrganizationUnit guid: (GUID fromString: '{24de54d7-c7d5-4f4c-89c5-5617ebcd3111}')!
OrganizationUnit comment: ''!
!OrganizationUnit categoriesForClass!Unclassified! !
!OrganizationUnit methodsFor!

addMember: aPerson
	aPerson becomeMemberOf: self!

addOrganizationUnit: anOrganizationUnit
	units isNil ifTrue: [self initUnits].
	(self units includes: anOrganizationUnit) ifFalse:
		[self units add: anOrganizationUnit. anOrganizationUnit parent: self]!

addOrganizationUnitNamed: aString
	self addOrganizationUnit: (OrganizationUnit newNamed: aString)!

addSpecialRoleNamed: aName
	(self existSpecialRoleNamed: aName) ifFalse:
		[self specialRoles add: (Role new name: aName)]!

allJobRoles
	^self otherValuesAt: #jobRoles ifAbsent: [^#()]!

allJobRolesDownHierarchy
	"incudes me"
	^self allOrgUnits "down hierarchy"
		inject: Set new
		into: [:set :each | set addAll: each allJobRoles; yourself]!

allMembers
	"all members of that org.unit"
	| parties |
	parties :=  (self roles select: [:role | role isMemberRole]) 
		collect: [:each | each relatedParty].
	parties := parties addAll:
		((self relatedPartyRoles select: [:role | role isMemberRole]) 
			collect: [:each | each party]);
		yourself.
	^parties asSet asOrderedCollection!

allOrgUnits
	"all units down in hierarchy, together with self"
	| collection |
	collection := OrderedCollection new.
	collection add: self.
	self units do: [:each | collection addAll: each allOrgUnits].
	^collection!

allPersonsWithJobRoles
	"collect all persons holding job roles in this org unit"
	^self allJobRoles inject: Set new into: [:set :role | set addAll: role allPersons; yourself].!

company
	"return a company whom belongs that org.unit"
	^self parent company!

existJobRoleNamed: aString
	^(self otherValuesAt: #jobRoles ifAbsent: [^false])
		contains: [:each | each name = aString]!

existSpecialRoleNamed: aName
	^(self specialRoleNamed: aName) notNil!

initSpecialRoles
	specialRoles := OrderedCollection new!

initUnits
	units := OrderedCollection new!

isOrganizationUnit
	^true!

jobRoleNamed: aString
	^(self otherValuesAt: #jobRoles ifAbsent: [^nil])
		detect: [:each | each name = aString] ifNone: [nil]!

jobRoleWithUuid: aString
	"search for this job role through hierarchy starting from self"
	| found |
	^self allJobRoles detect: [:each | each uuid = aString] ifNone:
		[self units do: [:each | found := each jobRoleWithUuid: aString. found notNil ifTrue: [^found] ].
		nil]!

migrateToUnicode
	"from iso8859-2"
	"OrganizationUnit allInstances do: [:each | each migrateToUnicode]"
	super migrateToUnicode.!

orgUnitWithName: aString
	"search for this org.unit through hierarchy starting from self"
	| found |
	self name = aString ifTrue: [^self].
	self units do: [:each | each name = aString ifTrue: [^each] ].
	self units do: [:each | 
		found := each orgUnitWithName: aString. found notNil ifTrue: [^found] ].
	^nil!

orgUnitWithUuid: aString
	"search for this org.unit through hierarchy starting from self"
	| found |
	self uuid = aString ifTrue: [^self].
	self units do: [:each | each uuid = aString ifTrue: [^each] ].
	self units do: [:each | found := each orgUnitWithUuid: aString. found notNil ifTrue: [^found] ].
	^nil!

parent
	^parent!

parent: anOrganizationUnit
	parent := anOrganizationUnit!

preferedUrl
	| nme |
	nme := self name trimBlanks asSloveneWithoutCircumflexes.
	^'/org-enota/', nme asHttpFriendly, '.html'.

"OrganizationUnit allInstances do: [:each | 
	each repository notNil ifTrue: [each repository site urlResolver changeToPreferedURL: each] ]"!

removeJobRole: aJobRole
	self otherValuesAt: #jobRoles ifAbsent: [^nil].
	(self otherValuesAt: #jobRoles) remove: aJobRole ifAbsent: [^nil]!

removeJobRoleNamed: aString
	(self existJobRoleNamed: aString) ifFalse: [^nil].
	(self otherValuesAt: #jobRoles) remove: (self jobRoleNamed: aString)!

removeMember: aPerson
	aPerson noMoreMemberOf: self!

removeOrganizationUnit: anOrganizationUnit
	units isNil ifTrue: [^nil].
	(self units includes: anOrganizationUnit) ifTrue:
		[self units remove: anOrganizationUnit. anOrganizationUnit parent: nil]!

specialRoleCollection
	"all specail roles for that and parent org.units up in to the top of hierarchy.
	sorted by the top first!!"
	^(self parent notNil and: [self parent isKindOf: Party])
		ifTrue: [self parent specialRoleCollection addAll: self specialRoles; yourself]
		ifFalse: [self specialRoles]!

specialRoleNamed: aName
	^self specialRoles detect: [:each | each name = aName] ifNone: [nil]!

specialRoles
	"a set of roles, specific for member of that org.unit, like aprover, tester etc"
	specialRoles isNil ifTrue: [self initSpecialRoles].
	^specialRoles!

type
	^type!

type: aSymbol
	"kind of org.unit like #division #sector #group etc."
	type := aSymbol!

units
	units isNil ifTrue: [^#()].
	^units! !
!OrganizationUnit categoriesFor: #addMember:!adding-removing!public! !
!OrganizationUnit categoriesFor: #addOrganizationUnit:!adding-removing!public! !
!OrganizationUnit categoriesFor: #addOrganizationUnitNamed:!adding-removing!public! !
!OrganizationUnit categoriesFor: #addSpecialRoleNamed:!public!roles - special! !
!OrganizationUnit categoriesFor: #allJobRoles!job roles!public! !
!OrganizationUnit categoriesFor: #allJobRolesDownHierarchy!job roles!public! !
!OrganizationUnit categoriesFor: #allMembers!public!roles - specific! !
!OrganizationUnit categoriesFor: #allOrgUnits!accessing!public! !
!OrganizationUnit categoriesFor: #allPersonsWithJobRoles!job roles!public! !
!OrganizationUnit categoriesFor: #company!accessing!public! !
!OrganizationUnit categoriesFor: #existJobRoleNamed:!job roles!public! !
!OrganizationUnit categoriesFor: #existSpecialRoleNamed:!public!roles - special! !
!OrganizationUnit categoriesFor: #initSpecialRoles!initialize-release!public! !
!OrganizationUnit categoriesFor: #initUnits!initialize-release!public! !
!OrganizationUnit categoriesFor: #isOrganizationUnit!public!testing! !
!OrganizationUnit categoriesFor: #jobRoleNamed:!job roles!public! !
!OrganizationUnit categoriesFor: #jobRoleWithUuid:!accessing!public! !
!OrganizationUnit categoriesFor: #migrateToUnicode!private! !
!OrganizationUnit categoriesFor: #orgUnitWithName:!accessing!public! !
!OrganizationUnit categoriesFor: #orgUnitWithUuid:!accessing!public! !
!OrganizationUnit categoriesFor: #parent!accessing!public! !
!OrganizationUnit categoriesFor: #parent:!private! !
!OrganizationUnit categoriesFor: #preferedUrl!private! !
!OrganizationUnit categoriesFor: #removeJobRole:!job roles!public! !
!OrganizationUnit categoriesFor: #removeJobRoleNamed:!job roles!public! !
!OrganizationUnit categoriesFor: #removeMember:!adding-removing!public! !
!OrganizationUnit categoriesFor: #removeOrganizationUnit:!adding-removing!public! !
!OrganizationUnit categoriesFor: #specialRoleCollection!public!roles - special! !
!OrganizationUnit categoriesFor: #specialRoleNamed:!public!roles - special! !
!OrganizationUnit categoriesFor: #specialRoles!public!roles - special! !
!OrganizationUnit categoriesFor: #type!accessing!public! !
!OrganizationUnit categoriesFor: #type:!accessing!public! !
!OrganizationUnit categoriesFor: #units!accessing!public! !

!OrganizationUnit class methodsFor!

newNamed: aString
	^self new name: aString!

replicationSpecaa
	"Gemstone"
	^super replicationSpec! !
!OrganizationUnit class categoriesFor: #newNamed:!instance creation!public! !
!OrganizationUnit class categoriesFor: #replicationSpecaa!odb specific!public! !

