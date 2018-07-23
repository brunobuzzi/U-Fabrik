"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWDBCollectionEntry
	instanceVariableNames: 'table entryID sourceID target'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBCollectionEntry guid: (GUID fromString: '{5a3e3dc9-3990-11d5-b1df-444553540000}')!
SSWDBCollectionEntry comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBCollectionEntry categoriesForClass!Unclassified! !
!SSWDBCollectionEntry methodsFor!

_dbTable

	"15/9/2000
	
	Make the receiver polymorphic with a persistent proxy"
	
	^self table!

_id

	"15/9/2000
	
	Make the receiver polymorphic with a persistent proxy"
	
	^self entryID!

_proxiedObject

	"15/9/2000
	
	Make the receiver polymorphic with a persistent proxy"
	
	^self!

addTargetTo: aCollection

	"22/5/2001"

	aCollection directAdd: self target!

addTo: aCollectionOfEntries

	"1/10/2000"

	aCollectionOfEntries add: self!

entryID

	"15/8/2000
	
	entryID stores the unique ID of this particular entry object"
	
	^entryID!

entryID: anInteger

	"15/8/2000
	
	entryID stores the unique ID of this particular entry object"
	
	entryID := anInteger!

isPersistent

	"20/10/2000"
	
	^self entryID ~= nil!

prepareToCommitFor: anSSWDBCachingCollectionProxy

	"18/8/2001"
	
	^self!

removeFrom: aCollectionOfEntries

	"1/10/2000"

	aCollectionOfEntries removeAtIndex: (aCollectionOfEntries identityIndexOf: self)!

sourceID

	"15/8/2000
	
	sourceID stores the unique ID of the object which owns the collection 
	of which the receiver represents a member"
	
	^sourceID!

sourceID: anInteger

	"15/8/2000
	
	sourceID stores the unique ID of the object which owns the collection 
	of which the receiver represents a member"
	
	sourceID := anInteger!

table

	"15/8/2000
	
	table stores the SSWDBTable of collection entries which the receiver belongs to"
	
	^table!

table: anSSWDBTable

	"15/8/2000
	
	table stores the SSWDBTable of collection entries which the receiver belongs to"
	
	table := anSSWDBTable!

target

	"15/8/2000"
	
	^target!

target: anObjectOrNil

	"15/8/2000
	
	Set the target object of the receiver"
	
	target := anObjectOrNil! !
!SSWDBCollectionEntry categoriesFor: #_dbTable!evaluating!public! !
!SSWDBCollectionEntry categoriesFor: #_id!evaluating!public! !
!SSWDBCollectionEntry categoriesFor: #_proxiedObject!evaluating!public! !
!SSWDBCollectionEntry categoriesFor: #addTargetTo:!actions!public! !
!SSWDBCollectionEntry categoriesFor: #addTo:!actions!public! !
!SSWDBCollectionEntry categoriesFor: #entryID!accessing!public! !
!SSWDBCollectionEntry categoriesFor: #entryID:!accessing!public! !
!SSWDBCollectionEntry categoriesFor: #isPersistent!public!testing! !
!SSWDBCollectionEntry categoriesFor: #prepareToCommitFor:!actions!public! !
!SSWDBCollectionEntry categoriesFor: #removeFrom:!actions!public! !
!SSWDBCollectionEntry categoriesFor: #sourceID!accessing!public! !
!SSWDBCollectionEntry categoriesFor: #sourceID:!accessing!public! !
!SSWDBCollectionEntry categoriesFor: #table!accessing!public! !
!SSWDBCollectionEntry categoriesFor: #table:!accessing!public! !
!SSWDBCollectionEntry categoriesFor: #target!accessing!public! !
!SSWDBCollectionEntry categoriesFor: #target:!accessing!public! !

!SSWDBCollectionEntry class methodsFor!

dbTableNamed: aString in: anSSWReStore

	"15/9/2000"

	^(SSWDBTable forClass: self)
		name: aString;
		fullName: aString;
		reStore: anSSWReStore;
		defineAsID: #entryID fieldName: (anSSWReStore sqlDialect transformName: #id);
		define: #sourceID as: Integer;
		define: #target asFieldNamed: (anSSWReStore sqlDialect transformName: #targetID) holding: Integer;
		yourself! !
!SSWDBCollectionEntry class categoriesFor: #dbTableNamed:in:!persistence!public! !

