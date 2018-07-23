"Filed out from Dolphin Smalltalk 7"!

Dictionary variableSubclass: #PersistentDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PersistentDictionary guid: (GUID fromString: '{d4b2c17b-de7c-46b6-a064-0732a538e7f7}')!
PersistentDictionary comment: 'PersistentDictionary was used for older Gemstone GemBuilders, before immutability was introduced in VW. Now is OBSOLETE!! but somewhere instances still exist'!
!PersistentDictionary categoriesForClass!Unclassified! !
!PersistentDictionary class methodsFor!

autoMarkDirty
	"self autoMarkDirty"
	self markDirtyOnAtPut!

unautoMarkDirty
	"self unautoMarkDirty"
	self removeMarkDirtyOnAtPut! !
!PersistentDictionary class categoriesFor: #autoMarkDirty!odb specific!public! !
!PersistentDictionary class categoriesFor: #unautoMarkDirty!odb specific!public! !

