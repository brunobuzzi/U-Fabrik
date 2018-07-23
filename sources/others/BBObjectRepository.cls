"Filed out from Dolphin Smalltalk 7"!

Object subclass: #BBObjectRepository
	instanceVariableNames: 'root'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBObjectRepository guid: (GUID fromString: '{ff60acce-bccb-4bde-bdd1-bfba13d7125e}')!
BBObjectRepository comment: ''!
!BBObjectRepository categoriesForClass!Unclassified! !
!BBObjectRepository methodsFor!

add: anObject
	" Add <anObject> to the receiver "

	^(self holderOf: anObject) add: anObject!

defaultObjectHolder

	^OrderedCollection new!

defaultRootClass

	^LookupTable!

holderOf: anObject

"	aClassAnObject class isMeta ifTrue: [^root at: aClassAnObject ifAbsent: [self initializeRootFor: aClassAnObject]]."
	^root at: anObject keyForMainClass ifAbsent: [self initializeRootFor: anObject]!

includes: anObject

	^(self holderOf: anObject) includes: anObject!

includesInstancesOf: aClass

	^root includesKey: aClass keyForMainClass!

initialize

	super initialize.

	root := self defaultRootClass new.!

initializeRootFor: aClass

	^root at: aClass keyForMainClass put: self defaultObjectHolder!

instancesOf: aClass
	" Answer all instances of <aClass> "

	^self holderOf: aClass!

isEmpty

	^self numberOfObjects == 0
!

numberOfObjects

	^root inject: 0 into: [:sum :each | sum + each size]!

remove: anObject
	" Remove <anObject> from the receiver "

	^(self holderOf: anObject) remove: anObject!

removeHolderOf: aClass

	^root removeKey: aClass keyForMainClass ifAbsent: []!

replace: oldObject with: newObject
	" Relpace <oldObject> in the main root  of receiver's Server with <newObject> "

	self remove: oldObject.
	^self add: newObject!

reset

	self initialize!

root
	^root!

root: anObject
	root := anObject!

sizeOf: aClass
	" Answer the number of instances of <aClass> "

	^(self holderOf: aClass) size! !
!BBObjectRepository categoriesFor: #add:!public! !
!BBObjectRepository categoriesFor: #defaultObjectHolder!public! !
!BBObjectRepository categoriesFor: #defaultRootClass!public! !
!BBObjectRepository categoriesFor: #holderOf:!public! !
!BBObjectRepository categoriesFor: #includes:!public! !
!BBObjectRepository categoriesFor: #includesInstancesOf:!public! !
!BBObjectRepository categoriesFor: #initialize!public! !
!BBObjectRepository categoriesFor: #initializeRootFor:!public! !
!BBObjectRepository categoriesFor: #instancesOf:!public! !
!BBObjectRepository categoriesFor: #isEmpty!public! !
!BBObjectRepository categoriesFor: #numberOfObjects!public! !
!BBObjectRepository categoriesFor: #remove:!public! !
!BBObjectRepository categoriesFor: #removeHolderOf:!public! !
!BBObjectRepository categoriesFor: #replace:with:!public! !
!BBObjectRepository categoriesFor: #reset!public! !
!BBObjectRepository categoriesFor: #root!accessing!private! !
!BBObjectRepository categoriesFor: #root:!accessing!private! !
!BBObjectRepository categoriesFor: #sizeOf:!public! !

!BBObjectRepository class methodsFor!

new

	^super new initialize! !
!BBObjectRepository class categoriesFor: #new!public! !

