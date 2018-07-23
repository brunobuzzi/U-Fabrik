"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWSQLTableComponent
	instanceVariableNames: 'table'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLTableComponent guid: (GUID fromString: '{643ab7c1-5af7-11d6-87e7-0010a70883e2}')!
SSWSQLTableComponent comment: ''!
!SSWSQLTableComponent categoriesForClass!Unclassified! !
!SSWSQLTableComponent methodsFor!

table

	"6/8/2000
	
	table stores the SQLTable to which the receiver belongs"
	
	^table!

table: anSSWDBTable

	"6/8/2000
	
	table stores the SQLTable to which the receiver belongs"
	
	table := anSSWDBTable! !
!SSWSQLTableComponent categoriesFor: #table!accessing!public! !
!SSWSQLTableComponent categoriesFor: #table:!accessing!public! !

!SSWSQLTableComponent class methodsFor!

forTable: anSSWDBTable

	"21/1/2001"
	
	^self new
		table: anSSWDBTable;
		yourself! !
!SSWSQLTableComponent class categoriesFor: #forTable:!instance creation!public! !

