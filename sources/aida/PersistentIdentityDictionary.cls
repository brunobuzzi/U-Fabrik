"Filed out from Dolphin Smalltalk 7"!

IdentityDictionary variableSubclass: #PersistentIdentityDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PersistentIdentityDictionary guid: (GUID fromString: '{2013a79f-4850-4570-a426-90b0b8bdcc84}')!
PersistentIdentityDictionary comment: 'PersistentIdentityDictionary was used for older Gemstone GemBuilders, before immutability was introduced in VW. Now is OBSOLETE!! but somewhere instances still exist'!
!PersistentIdentityDictionary categoriesForClass!Unclassified! !
!PersistentIdentityDictionary class methodsFor!

autoMarkDirty
	"self autoMarkDirty"
	self markDirtyOnAtPut!

unautoMarkDirty
	"self unautoMarkDirty"
	self removeMarkDirtyOnAtPut! !
!PersistentIdentityDictionary class categoriesFor: #autoMarkDirty!odb specific!public! !
!PersistentIdentityDictionary class categoriesFor: #unautoMarkDirty!odb specific!public! !

