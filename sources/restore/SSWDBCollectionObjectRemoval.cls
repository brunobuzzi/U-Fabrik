"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWDBCollectionObjectRemoval
	instanceVariableNames: 'removedObject'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBCollectionObjectRemoval guid: (GUID fromString: '{d23b5502-b5a6-11d5-b1e0-444553540000}')!
SSWDBCollectionObjectRemoval comment: ''!
!SSWDBCollectionObjectRemoval categoriesForClass!Unclassified! !
!SSWDBCollectionObjectRemoval methodsFor!

applyTo: aCollection

	"28/9//2001

	No action (the receiver is polymorphic with SSWDBCollectionChange)"
	
	^self!

canRemoveKey

	"28/9/2001 

	No (the receiver is polymorphic with SSWDBCollectionChange)"

	^false!

canRemoveValue

	"28/9/2001 

	No (the receiver is polymorphic with SSWDBCollectionChange)"

	^false!

commitFor: aCollection

	"28/9//2001

	No action (the receiver is polymorphic with SSWDBCollectionChange)"
	
	^self!

prepareToCommitFor: aCollectionProxy

	"28/9/2001

	Unstore the removedObject"

	self removedObject unstore!

removedObject

	"28/9/2001

	removedObject stores an Object (value) completely removed from a Collection.
	The receiver represents the complete removal of this object"

	^removedObject!

removedObject: anObject

	"28/9/2001

	removedObject stores an Object (value) completely removed from a Collection.
	The receiver represents the complete removal of this object"

	removedObject := anObject! !
!SSWDBCollectionObjectRemoval categoriesFor: #applyTo:!actions!public! !
!SSWDBCollectionObjectRemoval categoriesFor: #canRemoveKey!public!testing! !
!SSWDBCollectionObjectRemoval categoriesFor: #canRemoveValue!public!testing! !
!SSWDBCollectionObjectRemoval categoriesFor: #commitFor:!actions!public! !
!SSWDBCollectionObjectRemoval categoriesFor: #prepareToCommitFor:!actions!public! !
!SSWDBCollectionObjectRemoval categoriesFor: #removedObject!accessing!public! !
!SSWDBCollectionObjectRemoval categoriesFor: #removedObject:!accessing!public! !

!SSWDBCollectionObjectRemoval class methodsFor!

newWithObject: anObject

	"28/9/2001"

	^super new
		removedObject: anObject;
		yourself! !
!SSWDBCollectionObjectRemoval class categoriesFor: #newWithObject:!public! !

