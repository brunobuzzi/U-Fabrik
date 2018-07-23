"Filed out from Dolphin Smalltalk 7"!

OrganizationUnit subclass: #Company
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Company guid: (GUID fromString: '{b55b3f3a-dd3a-4e1f-afab-d24ff2ca2ab0}')!
Company comment: ''!
!Company categoriesForClass!Unclassified! !
!Company methodsFor!

addEmployee: aPerson
	aPerson becomeEmployeeOf: self!

allEvents
	^self events all!

autoEMailAddressesForPersons
	"Repository default company autoEMailAddressesForPersons"
	self allEmployees do: [:person |
		person email isValidEMailAddress ifFalse:  	
			[person email: (person name asSloveneWithoutCircumflexes asLowercase , '.',
			person surname asSloveneWithoutCircumflexes asLowercase, 
			'@salus.si')] ]!

cleanupEmployeeToOrgUnitsConnections
	"(AIDASite named: 'biart') repository company cleanupEmployeeToOrgUnitsConnections"
	| set employees |
	set := self allEmployees asSet.
	employees := self allOrgUnits "collect them through orgunits hierarchy"
		inject: Set new into: [:sett :each | sett addAll: each allMembers; yourself].
	(employees reject: [:each | set includes: each]) "those dangling"
		do: [:each | each becomeFormerEmployeeOf: self. each removeJobRole.
			self allOrgUnits do: [:unit | unit removeMember: each] ].
	employees := self allOrgUnits inject: Set new into: [:sett :each | 
		sett addAll: each allPersonsWithJobRoles; yourself].
	(employees reject: [:each | set includes: each])
		do: [: each | each removeJobRole].!

company
	^self!

connectEmployeesToOrgUnits
	"salus"	
	"preimenuj zacasno org.enote brez sumnikov!! "
	"Repository default company connectEmployeesToOrgUnits"
	| orgUnit |
	self allEmployees do: [:each |
		orgUnit := self salusOrgUnitFor: each.
		orgUnit notNil ifTrue: [each allOrgUnits isEmpty ifTrue: [each becomeMemberOf: orgUnit] ]]!

connectPersonsToWebUsers
	"Repository default company connectPersonsToWebUsers"
	self allEmployees do: [:each | 	AIDASite default securityManager addPerson: each]!

employeeNamed: aString
	^self allEmployees detect: [:each | aString = each name] ifNone: [nil]!

employeeNamedSurnamed: aString
	^self allEmployees detect: [:each | aString = each nameSurname] ifNone: [nil]!

employeeSurnamedNamed: aString
	^self allEmployees detect: [:each | aString = each surnameName] ifNone: [nil]!

existEmployeeWithId: aString
	^self allEmployees contains: [:each | each id = aString].!

existEmployeeWithName: aNameString surname: aSurnameString
	^self allEmployees contains: [:each | 
		(each name = aNameString) and: [each surname = aSurnameString]].!

isCompany
	^true!

preferedUrl
	| nme |
	nme := (self name copyUpTo: $ ) trimBlanks asSloveneWithoutCircumflexes asHttpFriendly.
	^'/podjetje/', nme, '.html'.!

removeEmployee: aPerson
	aPerson noMoreEmployeeOf: self.
	self allOrgUnits do: [:each | each removeMember: aPerson].
	aPerson removeJobRole! !
!Company categoriesFor: #addEmployee:!adding-removing!public! !
!Company categoriesFor: #allEvents!accessing-events!public! !
!Company categoriesFor: #autoEMailAddressesForPersons!import-export!public! !
!Company categoriesFor: #cleanupEmployeeToOrgUnitsConnections!private! !
!Company categoriesFor: #company!accessing!public! !
!Company categoriesFor: #connectEmployeesToOrgUnits!import-export!public! !
!Company categoriesFor: #connectPersonsToWebUsers!import-export!public! !
!Company categoriesFor: #employeeNamed:!accessing!public! !
!Company categoriesFor: #employeeNamedSurnamed:!accessing!public! !
!Company categoriesFor: #employeeSurnamedNamed:!accessing!public! !
!Company categoriesFor: #existEmployeeWithId:!public!testing! !
!Company categoriesFor: #existEmployeeWithName:surname:!public!testing! !
!Company categoriesFor: #isCompany!public!testing! !
!Company categoriesFor: #preferedUrl!private! !
!Company categoriesFor: #removeEmployee:!adding-removing!public! !

!Company class methodsFor!

replicationSpecaa
	"Gemstone"
	^#( 	(id 	replicate)
			(name replicate)
			(description replicate)
			(addresses max 4)
			(roles max 2)
			(relatedPartyRoles max 2)
			(events forwarder)
			(relatedObjects max 1) )! !
!Company class categoriesFor: #replicationSpecaa!odb specific!public! !

