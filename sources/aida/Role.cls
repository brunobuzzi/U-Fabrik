"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Role
	instanceVariableNames: 'name party relatedParty'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Role guid: (GUID fromString: '{40671bc2-46f0-4b24-ac38-85ece27dcfb0}')!
Role comment: ''!
!Role categoriesForClass!Unclassified! !
!Role methodsFor!

isAdminRole
	^self name = 'Skrbnik'!

isCheckerRole
	^self name = 'Kontrolor'!

isCustomerRole
	^false!

isDeputyRole
	^false!

isEmployeeRole
	^false!

isFormerEmployeeRole
	^false!

isJobRole
	^false!

isMeasurerRole
	^self name = 'Merilec'!

isMemberRole
	^false!

isPerson
	^false!

isRole
	^true!

isRoleGroup
	^false!

isStamperRole
	^self name = 'Overovitelj'!

isSupplierRole
	^false!

migrateToUnicode
	"from iso8859-2"
	name notNil ifTrue: [name := name ensureUnicodeSloveneChars].!

name
	^name!

name: aString
	name := aString.!

nameToDisplay
	^self name!

party
	^party!

party: aParty
	party := aParty.!

printString
	^'aRole ', self name!

relatedParty
	^relatedParty!

relatedParty: aParty
	relatedParty := aParty.!

uuid
	"some unique identifier. Hash for now, probably unique enough!! "
	^self hash printString! !
!Role categoriesFor: #isAdminRole!public!testing! !
!Role categoriesFor: #isCheckerRole!public!testing! !
!Role categoriesFor: #isCustomerRole!public!testing! !
!Role categoriesFor: #isDeputyRole!public!testing! !
!Role categoriesFor: #isEmployeeRole!public!testing! !
!Role categoriesFor: #isFormerEmployeeRole!public!testing! !
!Role categoriesFor: #isJobRole!public!testing! !
!Role categoriesFor: #isMeasurerRole!public!testing! !
!Role categoriesFor: #isMemberRole!public!testing! !
!Role categoriesFor: #isPerson!public!testing! !
!Role categoriesFor: #isRole!public!testing! !
!Role categoriesFor: #isRoleGroup!public!testing! !
!Role categoriesFor: #isStamperRole!public!testing! !
!Role categoriesFor: #isSupplierRole!public!testing! !
!Role categoriesFor: #migrateToUnicode!private! !
!Role categoriesFor: #name!accessing!public! !
!Role categoriesFor: #name:!accessing!public! !
!Role categoriesFor: #nameToDisplay!accessing!public! !
!Role categoriesFor: #party!accessing!public! !
!Role categoriesFor: #party:!accessing!public! !
!Role categoriesFor: #printString!private! !
!Role categoriesFor: #relatedParty!accessing!public! !
!Role categoriesFor: #relatedParty:!accessing!public! !
!Role categoriesFor: #uuid!accessing!public! !

