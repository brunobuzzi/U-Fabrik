"Filed out from Dolphin Smalltalk 7"!

DataBaseObject subclass: #BBDBRow
	instanceVariableNames: 'values table'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBDBRow guid: (GUID fromString: '{fe1c04f0-094a-4e87-83f1-5bb279d37748}')!
BBDBRow comment: ''!
!BBDBRow categoriesForClass!Unclassified! !
!BBDBRow methodsFor!

addValue: anObject toField: fieldName

	(table includesAttributeNamed: fieldName) ifFalse: [^Exception signal: 'No attribute named <', fieldName, '> for table <', table name, '>'].

	^values at: fieldName put: anObject!

initialize

	super initialize.

	values := LookupTable new.!

table
	^table!

table: anObject
	table := anObject!

values
	^values!

values: anObject
	values := anObject! !
!BBDBRow categoriesFor: #addValue:toField:!public! !
!BBDBRow categoriesFor: #initialize!public! !
!BBDBRow categoriesFor: #table!accessing!private! !
!BBDBRow categoriesFor: #table:!accessing!private! !
!BBDBRow categoriesFor: #values!accessing!private! !
!BBDBRow categoriesFor: #values:!accessing!private! !

!BBDBRow class methodsFor!

for: aBBDBTable

	^super new initialize
		table: aBBDBTable;
		yourself.!

icon

	^Icon fromId: 'ListPresenter.ico'! !
!BBDBRow class categoriesFor: #for:!public! !
!BBDBRow class categoriesFor: #icon!public! !

