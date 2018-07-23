"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SpWeakArray
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpWeakArray guid: (GUID fromString: '{84b49318-2b9a-45fe-aa00-8aa4f7933d77}')!
SpWeakArray comment: ''!
!SpWeakArray categoriesForClass!Unclassified! !
!SpWeakArray class methodsFor!

new: anInteger
	"^a WeakArray
	I don't return an instance of myself, I return a real WeakArray."
	^WeakArray new: anInteger!

withAll: aCollection 
	"^a WeakArray 
	I don't return an instance of myself at all. I return a real Weak array."

	^WeakArray withAll: aCollection! !
!SpWeakArray class categoriesFor: #new:!instance creation!public! !
!SpWeakArray class categoriesFor: #withAll:!instanceCreation!private! !

