"Filed out from Dolphin Smalltalk 7"!

SSWDBWrapper subclass: #SSWDBStoreWrapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBStoreWrapper guid: (GUID fromString: '{72eae925-b4ce-4eb0-9de2-717ec3b25a84}')!
SSWDBStoreWrapper comment: ''!
!SSWDBStoreWrapper categoriesForClass!Unclassified! !
!SSWDBStoreWrapper methodsFor!

_commitIn: anSSWReStore

	"Commit the wrapped object by storing it in anSSWReStore"

	self object storeIn: anSSWReStore!

_referenced

	"No-op"! !
!SSWDBStoreWrapper categoriesFor: #_commitIn:!operations!public! !
!SSWDBStoreWrapper categoriesFor: #_referenced!operations!public! !

