"Filed out from Dolphin Smalltalk 7"!

Object subclass: #RoleGroup
	instanceVariableNames: 'name subroles'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RoleGroup guid: (GUID fromString: '{2a2ee930-8466-4896-ad84-1c2cf76e9563}')!
RoleGroup comment: 'To group more roles or other groups together. to build a hierarchy of roles. If you use somewhere RoleGroup instead of Role, then you access all Roles together.

Instance Variables:
	name	<String> name of role group
	subroles	<Role | RoleGroup>	group of roles or other role groups'!
!RoleGroup categoriesForClass!Unclassified! !
!RoleGroup methodsFor!

add: aRoleOrGroup
	(self subroles includes: aRoleOrGroup) ifFalse: [self subroles add: aRoleOrGroup]!

allPersonsWithJobRoles
	"collect all persons holding job roles as part of that role group"
	^self allRoles inject: Set new into: [:set :role | set addAll: role allPersons; yourself].!

allRoleGroups
	^self subroles select: [:each | each isRoleGroup]!

allRoles
	^self subroles select: [:each | each isRole]!

includes: aRoleOrGroup
	^self subroles includes: aRoleOrGroup!

initSubroles
	subroles := OrderedCollection new.!

isPerson
	^false!

isRole
	^false!

isRoleGroup
	^true!

migrateToUnicode
	"from iso8859-2"
	name notNil ifTrue: [name := name ensureUnicodeSloveneChars].!

name
	^name!

name: aString
	name := aString.!

nameToDisplay
	^name!

printString
	^'aRoleGroup ', self name!

remove: aRoleOrGroup
	(self subroles includes: aRoleOrGroup) ifTrue: [self subroles remove: aRoleOrGroup]!

subroles
	subroles isNil ifTrue: [self initSubroles].
	^subroles!

uuid
	"some unique identifier. Hash for now, probably unique enough!! "
	^self hash printString! !
!RoleGroup categoriesFor: #add:!adding-removing!public! !
!RoleGroup categoriesFor: #allPersonsWithJobRoles!accessing!public! !
!RoleGroup categoriesFor: #allRoleGroups!accessing!public! !
!RoleGroup categoriesFor: #allRoles!accessing!public! !
!RoleGroup categoriesFor: #includes:!adding-removing!public! !
!RoleGroup categoriesFor: #initSubroles!private! !
!RoleGroup categoriesFor: #isPerson!public!testing! !
!RoleGroup categoriesFor: #isRole!public!testing! !
!RoleGroup categoriesFor: #isRoleGroup!public!testing! !
!RoleGroup categoriesFor: #migrateToUnicode!private! !
!RoleGroup categoriesFor: #name!accessing!public! !
!RoleGroup categoriesFor: #name:!accessing!public! !
!RoleGroup categoriesFor: #nameToDisplay!accessing!public! !
!RoleGroup categoriesFor: #printString!private! !
!RoleGroup categoriesFor: #remove:!adding-removing!public! !
!RoleGroup categoriesFor: #subroles!private! !
!RoleGroup categoriesFor: #uuid!accessing!public! !

