"Filed out from Dolphin Smalltalk 7"!

Object subclass: #VersionedObject
	instanceVariableNames: 'version'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
VersionedObject guid: (GUID fromString: '{3a94e686-9fe8-4258-980c-36d25e805b52}')!
VersionedObject comment: ''!
!VersionedObject categoriesForClass!Unclassified! !
!VersionedObject methodsFor!

allVersions
	^self version allVersionSpecs collect: [:each | each object]!

asNewVersion
	"return a new version of that object with all its current contents"
	| new |
	new := self class new.
	new version: (VersionSpec newFromParent: self for: new).
	self copyContentsTo: new.
	^new!

copyContentsTo: anObject
	"override in subclases to copy contents to a new object"!

currentVersion
	"find a current version of object in a version chain"
	^self version currentVersionSpec object!

initVersion
	self version: (VersionSpec firstFor: self)!

isCurrentVersion
	^self version isCurrent!

isNewestVersion
	^self version isNewest!

isOldestVersion
	^self version isOldest!

isOnlyVersion
	^self version isOldest & self version isNewest!

isVersionedObject
	^true!

newerVersions
	^self version newerVersionSpecs collect: [:each | each object]!

newestVersion
	self isNewestVersion ifTrue: [^self].
	^self newerVersions last!

nextVersion
	"next version of an object in version chain, if any"
	^self version next!

olderVersions
	^self version olderVersionSpecs collect: [:each | each object]!

oldestVersion
	self isOldestVersion ifTrue: [^self].
	^self olderVersions first!

parentVersion
	"older version of an object in version chain, if any. It is a parent of that object, 
	because it is derived from it"
	^self version parent!

setCurrentVersion
	"set this object as current version, which has always the same identity "
	| other |
	self isCurrentVersion ifTrue: [^nil].
	other := self currentVersion.
	self swapIdentityWith: other.
	^other version setCurrent "because other is now me!! "!

swapIdentityWith: anObject
	"carefully adjust object references (object, parent, next) in version specs too!!"
	|  o1 o2 s1Spec s2Spec |
	o1 := self. o2 := anObject.  s1Spec := o1 version. s2Spec := o2 version.
	o1 become: o2.
	s1Spec object: o2. s2Spec object: o1.
	s1Spec isNewest ifFalse:
		[s1Spec next == o2 ifTrue: [s1Spec next: o1] ifFalse: [s1Spec next version parent: o2] ].
	s1Spec isOldest ifFalse:
		[s1Spec parent == o2 ifTrue: [s1Spec parent: o1] ifFalse: [s1Spec parent version next: o2]].
	s2Spec isNewest ifFalse:
		[s2Spec next == o1 ifTrue: [s2Spec next: o2] ifFalse: [s2Spec next version parent: o1] ].
	s2Spec isOldest ifFalse:
		[s2Spec parent == o1 ifTrue: [s2Spec parent: o2] ifFalse: [s2Spec parent version next: o1]].!

version
	version isNil ifTrue: [self initVersion].
	^version!

version: aVersionSpec
	version := aVersionSpec!

versionNumber
	"version number, integer by default, but it can be any string"
	^self version number!

versionNumber: aString
	"set version number other than default"
	^self version number: aString!

versionWithNumber: aString
	"find version with that number"
	| spec |
	spec := self version versionSpecWithNumber: aString.
	^spec notNil ifTrue: [spec object] ifFalse: [nil]! !
!VersionedObject categoriesFor: #allVersions!accessing-versions!public! !
!VersionedObject categoriesFor: #asNewVersion!copying!public! !
!VersionedObject categoriesFor: #copyContentsTo:!copying!public! !
!VersionedObject categoriesFor: #currentVersion!accessing-current!public! !
!VersionedObject categoriesFor: #initVersion!initialize-release!public! !
!VersionedObject categoriesFor: #isCurrentVersion!public!testing! !
!VersionedObject categoriesFor: #isNewestVersion!public!testing! !
!VersionedObject categoriesFor: #isOldestVersion!public!testing! !
!VersionedObject categoriesFor: #isOnlyVersion!public!testing! !
!VersionedObject categoriesFor: #isVersionedObject!public!testing! !
!VersionedObject categoriesFor: #newerVersions!accessing-versions!public! !
!VersionedObject categoriesFor: #newestVersion!accessing-versions!public! !
!VersionedObject categoriesFor: #nextVersion!accessing-versions!public! !
!VersionedObject categoriesFor: #olderVersions!accessing-versions!public! !
!VersionedObject categoriesFor: #oldestVersion!accessing-versions!public! !
!VersionedObject categoriesFor: #parentVersion!accessing-versions!public! !
!VersionedObject categoriesFor: #setCurrentVersion!accessing-current!public! !
!VersionedObject categoriesFor: #swapIdentityWith:!private! !
!VersionedObject categoriesFor: #version!private! !
!VersionedObject categoriesFor: #version:!private! !
!VersionedObject categoriesFor: #versionNumber!accessing!public! !
!VersionedObject categoriesFor: #versionNumber:!accessing!public! !
!VersionedObject categoriesFor: #versionWithNumber:!accessing!public! !

