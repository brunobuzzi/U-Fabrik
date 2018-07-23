"Filed out from Dolphin Smalltalk 7"!

DBElementDifference subclass: #DBPrimaryKeyDifference
	instanceVariableNames: 'table'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBPrimaryKeyDifference guid: (GUID fromString: '{bc484f3d-fe67-4249-977f-a858c9da67eb}')!
DBPrimaryKeyDifference comment: ''!
!DBPrimaryKeyDifference categoriesForClass!Unclassified! !
!DBPrimaryKeyDifference methodsFor!

comparedElement

	^table primaryKey!

oppositeComparedElement

	^self oppositeTable primaryKey!

oppositeTable

	^(table == self firstElement) ifTrue: [self secondElement] ifFalse: [self firstElement]!

table
	^table!

table: anObject 
	table := anObject! !
!DBPrimaryKeyDifference categoriesFor: #comparedElement!public! !
!DBPrimaryKeyDifference categoriesFor: #oppositeComparedElement!public! !
!DBPrimaryKeyDifference categoriesFor: #oppositeTable!public! !
!DBPrimaryKeyDifference categoriesFor: #table!accessing!private! !
!DBPrimaryKeyDifference categoriesFor: #table:!accessing!private! !

