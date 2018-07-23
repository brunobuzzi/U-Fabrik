"Filed out from Dolphin Smalltalk 7"!

DataBaseObject subclass: #BBFKTreeWrapper
	instanceVariableNames: 'treeObject'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBFKTreeWrapper guid: (GUID fromString: '{e864e205-ab38-41df-868d-1c5e119daf49}')!
BBFKTreeWrapper comment: ''!
!BBFKTreeWrapper categoriesForClass!Unclassified! !
!BBFKTreeWrapper methodsFor!

doesNotUnderstand: failedMessage

	^treeObject perform: failedMessage selector withArguments: failedMessage arguments!

icon

	^treeObject icon!

treeObject
	^treeObject!

treeObject: anObject
	treeObject := anObject! !
!BBFKTreeWrapper categoriesFor: #doesNotUnderstand:!public! !
!BBFKTreeWrapper categoriesFor: #icon!public! !
!BBFKTreeWrapper categoriesFor: #treeObject!accessing!private! !
!BBFKTreeWrapper categoriesFor: #treeObject:!accessing!private! !

!BBFKTreeWrapper class methodsFor!

treeObject: aBBDatabaseObject

	^super new initialize
		treeObject: aBBDatabaseObject;
		yourself.! !
!BBFKTreeWrapper class categoriesFor: #treeObject:!public! !

