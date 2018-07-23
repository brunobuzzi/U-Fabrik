"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWSQLQuery
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLQuery guid: (GUID fromString: '{6266c92c-3983-11d5-b1df-444553540000}')!
SSWSQLQuery comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLQuery categoriesForClass!Unclassified! !
!SSWSQLQuery methodsFor!

isReadQuery

	"19/8/2000
	
	Subclasses should override if they read data"
	
	^false!

isWriteQuery

	"19/8/2000
	
	Subclasses should override if they write data"
	
	^false!

preExecIn: anSSWReStore! !
!SSWSQLQuery categoriesFor: #isReadQuery!public!testing! !
!SSWSQLQuery categoriesFor: #isWriteQuery!public!testing! !
!SSWSQLQuery categoriesFor: #preExecIn:!public!testing! !

