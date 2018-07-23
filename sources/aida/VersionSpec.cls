"Filed out from Dolphin Smalltalk 7"!

Object subclass: #VersionSpec
	instanceVariableNames: 'object number current parent next'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
VersionSpec guid: (GUID fromString: '{ce5f7f2f-af93-43a9-9620-41b115561624}')!
VersionSpec comment: 'VersionSpec defines a versioned object by its number and position in version chain.

Instance Variables:
	number	<String>	 number of that version. Integer by default, but it can be any string
	current	<Boolean> true, if this version is current, that is, most important, released, etc.
	parent	<Object> parent, that is, previous version of that object, nil if noone
	next		<Object> next version of that object, nil if noone'!
!VersionSpec categoriesForClass!Unclassified! !
!VersionSpec methodsFor!

allVersionSpecs
	^self olderVersionSpecs, (Array with: self), self newerVersionSpecs!

clearCurrent
	current := false!

current
	"this version current one? Current version object have a direct url, without 'version=' in query part"
	^current!

current: aBoolean
	current := aBoolean!

currentVersionSpec
	"find a version spec of current object in a chain"
	self isCurrent ifTrue: [^self].
	^self olderVersionSpecs detect: [:each | each isCurrent] ifNone: 
		[^self newerVersionSpecs detect: [:each | each isCurrent] 
			ifNone: [self error: 'no current version!!'] ].!

isCurrent
	^self current!

isNewest
	^self next isNil!

isOldest
	^self parent isNil!

newerVersionSpecs
	"return all version specs of that object, newer than this one"
	self isNewest ifTrue: [^#()].
	^OrderedCollection new 
		add: self next version; addAll: self next version newerVersionSpecs;
		yourself!

next
	"next version of an object in version chain, if any"
	^next!

next: anObject
	next := anObject!

number
	"version number, integer by default, but it can be any string"
	^number!

number: aString
	number := aString!

object
	"object for which is this version spec"
	^object!

object: anObject
	object := anObject!

olderVersionSpecs
	"return all version specs of that object, older than this one"
	self isOldest ifTrue: [^#()].
	^OrderedCollection new 
		addAll: self parent version olderVersionSpecs; add: self parent version;
		yourself!

otherVersionSpecs
	"older and newer versions, if any"
	^self olderVersionSpecs, self newerVersionSpecs!

parent
	"older version of an object in version chain, if any. It is a parent of that object, 
	because it is derived from it"
	^parent!

parent: anObject
	parent := anObject!

printString
	^'aVersionSpec version: ', self number!

setCurrent
	self current: true.
	self otherVersionSpecs do: [:each | each clearCurrent].!

setDefaultNumber
	self isOldest 
		ifTrue: [self number: '1'] 
		ifFalse: [self setIncrementedNumberFromParent]!

setIncrementedNumberFromParent
	"for now, later it should increment last number in string"
	self number: (self parent version number asInteger + 1) printString!

versionSpecWithNumber: aString
	"find spec  with that version number"
	self number = aString ifTrue: [^self].
	^self olderVersionSpecs detect: [:each | each number = aString] ifNone: 
		[^self newerVersionSpecs detect: [:each | each number = aString] ifNone: [nil] ].! !
!VersionSpec categoriesFor: #allVersionSpecs!accessing!public! !
!VersionSpec categoriesFor: #clearCurrent!private! !
!VersionSpec categoriesFor: #current!private! !
!VersionSpec categoriesFor: #current:!private! !
!VersionSpec categoriesFor: #currentVersionSpec!accessing!public! !
!VersionSpec categoriesFor: #isCurrent!public!testing! !
!VersionSpec categoriesFor: #isNewest!public!testing! !
!VersionSpec categoriesFor: #isOldest!public!testing! !
!VersionSpec categoriesFor: #newerVersionSpecs!accessing!public! !
!VersionSpec categoriesFor: #next!accessing!public! !
!VersionSpec categoriesFor: #next:!private! !
!VersionSpec categoriesFor: #number!accessing!public! !
!VersionSpec categoriesFor: #number:!accessing!public! !
!VersionSpec categoriesFor: #object!accessing!public! !
!VersionSpec categoriesFor: #object:!private! !
!VersionSpec categoriesFor: #olderVersionSpecs!accessing!public! !
!VersionSpec categoriesFor: #otherVersionSpecs!accessing!public! !
!VersionSpec categoriesFor: #parent!accessing!public! !
!VersionSpec categoriesFor: #parent:!private! !
!VersionSpec categoriesFor: #printString!private! !
!VersionSpec categoriesFor: #setCurrent!accessing!public! !
!VersionSpec categoriesFor: #setDefaultNumber!initalize-release!public! !
!VersionSpec categoriesFor: #setIncrementedNumberFromParent!initalize-release!public! !
!VersionSpec categoriesFor: #versionSpecWithNumber:!accessing!public! !

!VersionSpec class methodsFor!

firstFor: anObject
	"for a first version of an object"
	^super new
		object: anObject;
		setDefaultNumber;
		setCurrent!

new
	^self shouldNotImplement!

newFromParent: anOldObject for: aNewObject
	| newSpec |
	newSpec := super new
		object: aNewObject;
		parent: anOldObject;
		setIncrementedNumberFromParent;
		clearCurrent.
	aNewObject version: newSpec.
	anOldObject version next: aNewObject.
	^newSpec! !
!VersionSpec class categoriesFor: #firstFor:!instance creation!public! !
!VersionSpec class categoriesFor: #new!private! !
!VersionSpec class categoriesFor: #newFromParent:for:!instance creation!public! !

