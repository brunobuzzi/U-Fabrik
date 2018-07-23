"Filed out from Dolphin Smalltalk 7"!

DataBaseObject subclass: #BBDBTableWrapper
	instanceVariableNames: 'table'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBDBTableWrapper guid: (GUID fromString: '{5698c405-1f6c-48cb-ae16-e9af990d49ac}')!
BBDBTableWrapper comment: ''!
!BBDBTableWrapper categoriesForClass!Unclassified! !
!BBDBTableWrapper methodsFor!

icon

	^table icon!

table
	^table!

table: anObject
	table := anObject! !
!BBDBTableWrapper categoriesFor: #icon!public! !
!BBDBTableWrapper categoriesFor: #table!accessing!private! !
!BBDBTableWrapper categoriesFor: #table:!accessing!private! !

!BBDBTableWrapper class methodsFor!

table: aBBDBTable

	^super new initialize
		table: aBBDBTable;
		yourself.! !
!BBDBTableWrapper class categoriesFor: #table:!public! !

