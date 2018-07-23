"Filed out from Dolphin Smalltalk 7"!

Party subclass: #Person
	instanceVariableNames: 'surname'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Person guid: (GUID fromString: '{7a0fc29f-f3fd-4cfb-9ccc-c75d79c02162}')!
Person comment: ''!
!Person categoriesForClass!Unclassified! !
!Person methodsFor!

activitiesNotified
	"all process activities on which this person is notified"
	| activities set |
	activities := self allRecordFlows collect: [:each | each activity].
	set := Set new: activities size. "remove duplicates, preserve order"
	^activities select: [:each || exist | exist := set includes: each. set add: each. exist not]!

activitiesResponsible
	"all process activities where this person have some kind of responsibility"
	| activities set |
	activities := (self allResponsibilities select: [:each | each isTaskResponsibility])
		collect: [:each | each task activity].
	set := Set new: activities size. "remove duplicates, preserve order"
	^activities select: [:each || exist | exist := set includes: each. set add: each. exist not]!

allDeputies
	"all deputies of that person"
	^(self relatedPartyRoles select: [:role | role isDeputyRole]) collect: [:each | each party]!

allDeputyOf
	"all persons to whom that person is deputy"
	^(self roles select: [:role | role isDeputyRole]) collect: [:each | each relatedParty]!

allOrgUnits
	"all org.units where person is member"
	^((self roles select: [:role | role isMemberRole]) collect: [:role | role relatedParty]) asSet.!

allRecordFlows
	"all record flows, concerned to that person"
	| flows set |
	flows := OrderedCollection new.
	self repository root allProcesses do: [:process | 
		process allTasks do: [:task | flows addAll: task allRecordFlows] ].
	set := Set new. self jobRole isNil ifTrue: [^#()].
	set add: self jobRole parentRole.
	set addAll: (self repository company roleGroupsIncludeRole: self jobRole parentRole).
	^flows select: [:flow | set includes: flow destination]!

allResponsibilities
	"search for all responsibilities through document repository, specially processes"
	| resps set |
	resps := OrderedCollection new. self repository isNil ifTrue: [^resps].
	self repository root allProcesses do: [:process |
		process allTasks do: [:task | resps addAll: task responsible] ].
	set := Set new. self jobRole isNil ifTrue: [^#()].
	set add: self jobRole parentRole.
	set addAll: (self repository company roleGroupsIncludeRole: self jobRole parentRole).
	^resps select: [:resp | set includes: resp role]!

allTaskResponsibilities
	^self allResponsibilities select: [:each | each isTaskResponsibility]!

asPerson
	^self!

asWebUser
	"return related WebUser object, for logon, security etc"
	^self otherValuesAt: #WebUser ifAbsent: [nil]!

becomeMemberOf: anOrgUnit 
	"I become a member  of that org.unit"
	| role |
	(self isMemberOf: anOrgUnit) ifTrue: [^false].
	role := MemberRole new.
	role name: 'member role'.
	self newRole: role relatedTo: anOrgUnit!

company
	"in which he is employeed"
	| parties |
	parties :=  (self roles select: [:role | role isEmployeeRole]) 
		collect: [:each | each relatedParty].
	parties := parties addAll:
		((self relatedPartyRoles select: [:role | role isEmployeeRole]) 
			collect: [:each | each party]);
		yourself.
	^parties isEmpty ifTrue: [nil] ifFalse: [parties first]!

documentsToKnow
	"all documents with which this person should know about (be notified)"
	self repository isNil ifTrue: [^#()].
	^self repository root allDocuments select: [:each | each isReleased and: [each shouldKnow: self]].!

email
	^self asWebUser notNil 
		ifTrue: [self asWebUser email]
		ifFalse: [super email].!

email: aString 
	self asWebUser notNil 
		ifTrue: [self asWebUser email: aString]
		ifFalse: [super email: aString].!

haveDeputies
	^self relatedPartyRoles contains: [:role | role isDeputyRole].!

integratedWithOffice
	"WebDAV integration on MS IE"
	^self otherValuesAt: #integratedWithOffice ifAbsent: [false]!

integratedWithOffice: aBoolean
	"WebDAV integration on MS IE"
	self otherValuesAt: #integratedWithOffice put: aBoolean.!

isChecker
	^self roles contains: [:role | role isCheckerRole].!

isDeputy
	^self roles contains: [:role | role isDeputyRole].!

isDeputyOf: aPerson
	^self roles contains: [:role | role relatedParty == aPerson and: [role isDeputyRole] ].!

isEmployeeOf: aParty
	| employee |
	employee := self roles contains: [:role | role relatedParty == aParty and: [role isEmployeeRole] ].
	employee ifTrue: [^true].
	"check also a complementary role"
	^self relatedPartyRoles contains: [:role | role party == aParty and: [role isEmployeeRole] ].!

isFormerEmployeeOf: aParty
	| formerEmployee |
	formerEmployee := self roles contains: [:role | 
		role relatedParty == aParty and: [role isFormerEmployeeRole]].
	formerEmployee ifTrue: [^true].
	"check also a complementary role"
	^self relatedPartyRoles contains: [:role | role party == aParty and: [role isFormerEmployeeRole] ].!

isGeomerAdmin
	^self roles contains: [:role | role isAdminRole].!

isMeasurer
	^self roles contains: [:role | role isMeasurerRole].!

isMemberOf: anOrgUnit
	| isMember |
	isMember := self roles contains: [:role | role relatedParty == anOrgUnit and: [role isMemberRole] ].
	isMember ifTrue: [^true].
	"check also a complementary role"
	^self relatedPartyRoles contains: [:role | role party == anOrgUnit and: [role isMemberRole] ].!

isPerson
	^true!

isStamper
	^self roles contains: [:role | role isStamperRole].!

isWebUser
	^false!

isWebUserGroup
	^false!

jobParentRole
	self jobRole isNil ifTrue: [^nil].
	^self jobRole parentRole.!

jobRole
	^self roles detect: [:role | role isJobRole] ifNone: [^nil].!

jobRoleName
	^self jobRole notNil ifTrue: [self jobRole name] ifFalse: [''].!

jobRoleNamed: aString
	"org.unit should have this job role already defined!!"
	| parentRole |
	self organizationUnit isNil ifTrue: [^nil].
	parentRole := self organizationUnit jobRoleNamed: aString. parentRole isNil ifTrue: [^nil].
	self jobRole notNil ifTrue: [self removeJobRole].
	self newRole: parentRole newChildRole relatedTo: self company!

menuName
	"in dropdown menus"
	^self surnameName!

migrateToUnicode
	"from iso8859-2"
	"Person allInstances do: [:each | each migrateToUnicode]"
	super migrateToUnicode.
	surname notNil ifTrue: [surname := surname ensureUnicodeSloveneChars].!

nameSurname
	^self name, ' ', self surname!

nameToDisplay
	"on web pages for instance"
	^self surnameName!

noMoreDeputyOf: aPerson
	| role |
	role := self roles 
		detect: [:each | each relatedParty == aPerson and: [each isDeputyRole] ] ifNone: [nil].
	role notNil ifTrue: [self discontinueRole: role].
	role := aPerson relatedPartyRoles 
		detect: [:each | each relatedParty == self and: [each isDeputyRole] ] ifNone: [nil].
	role notNil ifTrue: [aPerson discontinueRole: role].!

noMoreEmployeeOf: aParty 
	"no more an employee of related party"
	| role |
	role := self roles 
		detect: [:each | each relatedParty == aParty and: [each isEmployeeRole] ] ifNone: [nil].
	role notNil ifTrue: [self discontinueRole: role].
	role := aParty relatedPartyRoles 
		detect: [:each | each relatedParty == self and: [each isEmployeeRole] ] ifNone: [nil].
	role notNil ifTrue: [aParty discontinueRole: role].

	self becomeFormerEmployeeOf: aParty.!

noMoreFormerEmployeeOf: aParty 
	| role |
	role := self roles 
		detect: [:each | each relatedParty == aParty and: [each isFormerEmployeeRole] ] ifNone: [nil].
	role notNil ifTrue: [self discontinueRole: role].
	role := aParty relatedPartyRoles 
		detect: [:each | each relatedParty == self and: [each isFormerEmployeeRole] ] ifNone: [nil].
	role notNil ifTrue: [aParty discontinueRole: role].!

noMoreMemberOf: anOrgUnit 
	"no more a memebr of related party"
	(self isMemberOf: anOrgUnit) ifFalse: [^nil].
	self discontinueRole:
		(self roles detect: [:role | role relatedParty == anOrgUnit and: [role isMemberRole] ] ifNone: [^nil])!

organizationUnit
	"in which he is a member"
	| parties |
	parties :=  (self roles select: [:role | role isMemberRole]) 
		collect: [:each | each relatedParty].
	parties := parties addAll:
		((self relatedPartyRoles select: [:role | role isMemberRole]) 
			collect: [:each | each party]);
		yourself.
	^parties isEmpty ifTrue: [nil] ifFalse: [parties first]!

organizationUnit: anOrganizationUnit
	self allOrgUnits do: [:each | self noMoreMemberOf: each].
	anOrganizationUnit notNil ifTrue: [self becomeMemberOf: anOrganizationUnit]!

organizationUnitName
	^self organizationUnit notNil ifTrue: [self organizationUnit name] ifFalse: ['']!

password
	self asWebUser notNil ifTrue: [^self asWebUser password].
	^nil!

password: aString 
	self asWebUser notNil ifTrue: [^self asWebUser password: aString trimBlanks].!

passwordText
	"password is encripted/invisible anway, so return just empty "
	^''!

passwordText: aString
	aString = self passwordText "all *****, this means that password was not changed"
		ifTrue: [^nil]. 
	aString trimBlanks isEmpty ifTrue: [^nil].
	^self password: aString!

preferedUrl
	| nme |
	nme := self surnameName trimBlanks asSloveneWithoutCircumflexes.
	^'/oseba/', nme asHttpFriendly, '.html'.

"Person allInstances do: [:each | 
	each repository notNil ifTrue: [each repository site urlResolver changeToPreferedURL: each] ]"!

printString
	^'Person: ', self name, ' ', self surname!

processesNotified
	"all processes where on which this person is notified"
	| processes set |
	processes := self allRecordFlows collect: [:each | each process].
	set := Set new: processes size. "remove duplicates, preserve order"
	^processes select: [:each || exist | exist := set includes: each. set add: each. exist not]!

processesResponsible
	"all processes where this person have some kind of responsibility"
	| processes set |
	processes := self allResponsibilities collect: [:each | each process].
	set := Set new: processes size. "remove duplicates, preserve order"
	^processes select: [:each || exist | exist := set includes: each. set add: each. exist not]!

removeJobRole
	self jobRole notNil ifTrue: [self discontinueRole: self jobRole].!

repository
	self organizationUnit notNil ifTrue: [^self organizationUnit repository].
	self company notNil ifTrue: [^self company repository].
	^self app site repository!

specialRoleCollection
	"a set of additional roles by person's org.unit and org.hierarch up to the top"
	^self organizationUnit notNil
		ifTrue: [self organizationUnit specialRoleCollection]
		ifFalse: [self company notNil
			ifTrue: [self company specialRoleCollection]
			ifFalse: [OrderedCollection new] ].!

surname
	surname isNil ifTrue: [self surname: ''].
	^surname!

surname: aString
	surname := aString trimBlanks!

surnameName
	^self surname, ' ', self name!

surnameName2
	^self surnameName trimBlanks notEmpty 
		ifTrue: [self surnameName]
		ifFalse: ['--brez priimka in imena---']!

tasksNotified
	"all process tasks  on which this person is notified"
	| tasks set |
	tasks := self allRecordFlows collect: [:each | each task].
	set := Set new: tasks size. "remove duplicates, preserve order"
	^tasks select: [:each || exist | exist := set includes: each. set add: each. exist not]!

tasksResponsible
	"all process tasks where this person have some kind of responsibility"
	| tasks set |
	tasks := (self allResponsibilities select: [:each | each isTaskResponsibility]) 
		collect: [:each | each task].
	set := Set new: tasks size. "remove duplicates, preserve order"
	^tasks select: [:each || exist | exist := set includes: each. set add: each. exist not]!

username
	self asWebUser notNil ifTrue: [^self asWebUser username].
	^nil!

username: aString 
	self asWebUser notNil ifTrue: [^self asWebUser username: aString trimBlanks].!

webUser: aWebUser
	"a parallel WebUser for web server security etc."
	self otherValuesAt: #WebUser put: aWebUser.
	(aWebUser otherValuesAt: #Person) ~= self ifTrue: [aWebUser person: self].! !
!Person categoriesFor: #activitiesNotified!public!record flows! !
!Person categoriesFor: #activitiesResponsible!public!responsibilities! !
!Person categoriesFor: #allDeputies!public!roles - specific! !
!Person categoriesFor: #allDeputyOf!public!roles - specific! !
!Person categoriesFor: #allOrgUnits!public!roles - specific! !
!Person categoriesFor: #allRecordFlows!public!record flows! !
!Person categoriesFor: #allResponsibilities!public!responsibilities! !
!Person categoriesFor: #allTaskResponsibilities!public!responsibilities! !
!Person categoriesFor: #asPerson!accessing!public! !
!Person categoriesFor: #asWebUser!accessing!public! !
!Person categoriesFor: #becomeMemberOf:!public!roles - specific! !
!Person categoriesFor: #company!public!roles - specific! !
!Person categoriesFor: #documentsToKnow!documents!public! !
!Person categoriesFor: #email!accessing!public! !
!Person categoriesFor: #email:!accessing!public! !
!Person categoriesFor: #haveDeputies!public!roles - testing! !
!Person categoriesFor: #integratedWithOffice!accessing-other!public! !
!Person categoriesFor: #integratedWithOffice:!accessing-other!public! !
!Person categoriesFor: #isChecker!public!roles - testing! !
!Person categoriesFor: #isDeputy!public!roles - testing! !
!Person categoriesFor: #isDeputyOf:!public!roles - testing! !
!Person categoriesFor: #isEmployeeOf:!public!roles - testing! !
!Person categoriesFor: #isFormerEmployeeOf:!public!roles - testing! !
!Person categoriesFor: #isGeomerAdmin!public!roles - testing! !
!Person categoriesFor: #isMeasurer!public!roles - testing! !
!Person categoriesFor: #isMemberOf:!public!roles - testing! !
!Person categoriesFor: #isPerson!public!testing! !
!Person categoriesFor: #isStamper!public!roles - testing! !
!Person categoriesFor: #isWebUser!public!testing! !
!Person categoriesFor: #isWebUserGroup!public!testing! !
!Person categoriesFor: #jobParentRole!public!roles - specific! !
!Person categoriesFor: #jobRole!public!roles - specific! !
!Person categoriesFor: #jobRoleName!public!roles - specific! !
!Person categoriesFor: #jobRoleNamed:!public!roles - specific! !
!Person categoriesFor: #menuName!accessing!public! !
!Person categoriesFor: #migrateToUnicode!private! !
!Person categoriesFor: #nameSurname!accessing!public! !
!Person categoriesFor: #nameToDisplay!accessing!public! !
!Person categoriesFor: #noMoreDeputyOf:!public!roles - specific! !
!Person categoriesFor: #noMoreEmployeeOf:!public!roles - specific! !
!Person categoriesFor: #noMoreFormerEmployeeOf:!public!roles - specific! !
!Person categoriesFor: #noMoreMemberOf:!public!roles - specific! !
!Person categoriesFor: #organizationUnit!public!roles - specific! !
!Person categoriesFor: #organizationUnit:!public!roles - specific! !
!Person categoriesFor: #organizationUnitName!public!roles - specific! !
!Person categoriesFor: #password!accessing!public! !
!Person categoriesFor: #password:!accessing!public! !
!Person categoriesFor: #passwordText!accessing!public! !
!Person categoriesFor: #passwordText:!accessing!public! !
!Person categoriesFor: #preferedUrl!private! !
!Person categoriesFor: #printString!private! !
!Person categoriesFor: #processesNotified!public!record flows! !
!Person categoriesFor: #processesResponsible!public!responsibilities! !
!Person categoriesFor: #removeJobRole!public!roles - specific! !
!Person categoriesFor: #repository!accessing!public! !
!Person categoriesFor: #specialRoleCollection!public!roles - specific! !
!Person categoriesFor: #surname!accessing!public! !
!Person categoriesFor: #surname:!accessing!public! !
!Person categoriesFor: #surnameName!accessing!public! !
!Person categoriesFor: #surnameName2!accessing!public! !
!Person categoriesFor: #tasksNotified!public!record flows! !
!Person categoriesFor: #tasksResponsible!public!responsibilities! !
!Person categoriesFor: #username!accessing!public! !
!Person categoriesFor: #username:!accessing!public! !
!Person categoriesFor: #webUser:!accessing!public! !

