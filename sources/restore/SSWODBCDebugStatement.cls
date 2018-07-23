"Filed out from Dolphin Smalltalk 7"!

SSWODBCStatement subclass: #SSWODBCDebugStatement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWODBCDebugStatement guid: (GUID fromString: '{751c3ef5-5cf0-11d6-87e7-0010a70883e2}')!
SSWODBCDebugStatement comment: ''!
!SSWODBCDebugStatement categoriesForClass!Unclassified! !
!SSWODBCDebugStatement methodsFor!

exec: aString

	"1/5/2002

	Log to the debugStream"

	self parent sqlDialect debugStream cr; nextPutAll: aString; cr.

	^super exec: aString! !
!SSWODBCDebugStatement categoriesFor: #exec:!public! !

