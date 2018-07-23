"Filed out from Dolphin Smalltalk 7"!

SSWDBWrapper subclass: #SSWDBUnstoreWrapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBUnstoreWrapper guid: (GUID fromString: '{21d00f62-e7a8-405f-9e8b-3fde3202ba23}')!
SSWDBUnstoreWrapper comment: ''!
!SSWDBUnstoreWrapper categoriesForClass!Unclassified! !
!SSWDBUnstoreWrapper methodsFor!

_commitIn: anSSWReStore

	"Commit the wrapped object by unstoring it"

	self object unstore!

_referenced

	"No-op"! !
!SSWDBUnstoreWrapper categoriesFor: #_commitIn:!operations!public! !
!SSWDBUnstoreWrapper categoriesFor: #_referenced!operations!public! !

