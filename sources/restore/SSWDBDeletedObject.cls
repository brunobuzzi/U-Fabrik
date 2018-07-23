"Filed out from Dolphin Smalltalk 7"!

DeafObject subclass: #SSWDBDeletedObject
	instanceVariableNames: 'deletedObjectClass id'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBDeletedObject guid: (GUID fromString: '{36513de1-63fc-11d5-b1df-0010a70883e2}')!
SSWDBDeletedObject comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBDeletedObject categoriesForClass!Unclassified! !
!SSWDBDeletedObject methodsFor!

deletedObjectClass

	"22/5/2001

	deletedObjectClass stores the Class of object for which the receiver 
	represents a deleted instance"

	^deletedObjectClass!

deletedObjectClass: aClass

	"22/5/2001

	deletedObjectClass stores the Class of object for which the receiver 
	represents a deleted instance"

	deletedObjectClass := aClass!

id

	"22/5/2001

	id stores the unique ID of the instance of deletedObjectClass
	that the receiver represents"

	^id!

id: anInteger

	"22/5/2001

	id stores the unique ID of the instance of deletedObjectClass
	that the receiver represents"

	id := anInteger!

isDBDeleted

	"23/4/2001"
	
	^true!

printOn: aStream

	"23/4/2001"
		
	aStream 
		nextPutAll: 'A deleted ';
		nextPutAll: self deletedObjectClass name;
		nextPutAll: '; ID: ';
		nextPutAll: self id printString!

shallowCopy

	"27/4/2001

	Do not copy the receiver"

	^self
!

unstore

	"Do nothing - the receiver is already deleted"

	^self! !
!SSWDBDeletedObject categoriesFor: #deletedObjectClass!accessing!public! !
!SSWDBDeletedObject categoriesFor: #deletedObjectClass:!accessing!public! !
!SSWDBDeletedObject categoriesFor: #id!accessing!public! !
!SSWDBDeletedObject categoriesFor: #id:!accessing!public! !
!SSWDBDeletedObject categoriesFor: #isDBDeleted!public!testing! !
!SSWDBDeletedObject categoriesFor: #printOn:!printing!public! !
!SSWDBDeletedObject categoriesFor: #shallowCopy!printing!public! !
!SSWDBDeletedObject categoriesFor: #unstore!public!testing! !

!SSWDBDeletedObject class methodsFor!

newForClass: aClass id: anInteger

	"22/5/2001"

	^self basicNew
		deletedObjectClass: aClass;
		id: anInteger;
		yourself! !
!SSWDBDeletedObject class categoriesFor: #newForClass:id:!instance creation!public! !

