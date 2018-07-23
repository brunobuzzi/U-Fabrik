"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebCache
	instanceVariableNames: 'parent objects settings other'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebCache guid: (GUID fromString: '{18254b4a-eea7-4dec-bbc9-c8660abf1897}')!
WebCache comment: ''!
!WebCache categoriesForClass!Unclassified! !
!WebCache methodsFor!

addObject: anObject view: aViewSymbol content: aByteStringOrArray timeout: aSeconds
	| views |
	views := self objects at: anObject ifAbsentPut: [Dictionary new].
	views at: aViewSymbol put: 
		(WebCacheEntry new content: aByteStringOrArray; timeout: aSeconds)!

cacheTimeout
	"in seconds, how long cache entry lives until is invalidated"
	"default is one day"
	^self settingsAt: #CacheDuration ifAbsentPut: [24*3600]!

cacheTimeout: aSeconds
	"in seconds, how long cache entry lives until is invalidated"
	^self settingsAt: #CacheDuration put: aSeconds!

entryForObject: anObject view: aViewSymbol
	^(self objects at: anObject ifAbsent: [^nil])
		at: aViewSymbol ifAbsent: [nil]!

initObjects
	objects := Dictionary new!

initOther
	other := Dictionary new!

initSettings
	settings := Dictionary new!

invalidateObject: anObject
	"if exist then cache entries for that object are not valid anymore and shall be refreshed"
	self removeObject: anObject!

isCached: anObject to: aRequest on: aWebSession
	| entry |
	entry := ((self objects at: anObject ifAbsent: [^false])
		at: aRequest view ifAbsent: [^false]).
	entry isTimedOut 
		ifTrue: [self removeObject: anObject view: aRequest view. ^false].
	^true!

objects
	"a dictionary of cache entries per domain object per view"
	objects isNil ifTrue: [self initObjects].
	^objects!

other
	^other!

otherAt: aSymbol
	"other values"
	^self otherAt: aSymbol ifAbsent: [nil]!

otherAt: aSymbol ifAbsent: aBlock
	"other values"
	self other isNil ifTrue: [^aBlock value].
	^self other at: aSymbol ifAbsent: aBlock!

otherAt: aSymbol ifAbsentPut: aBlock
	self other isNil ifTrue: [self initOther].
	^self other at: aSymbol ifAbsent: [self other at: aSymbol put: aBlock value]!

otherAt: aSymbol put: anObject
	self other isNil ifTrue: [self initOther].
	^self other at: aSymbol put: anObject!

parent
	^parent!

parent: anObject
	parent := anObject!

purgeCache
	"invalidate all timed-out cache entries"
	"run it from time to time, like every day from SwazooServer>>watchogOther"
	self objects associations do: [:assoc |
		assoc value associations do: [:vassoc | vassoc value isTimedOut 
			ifTrue: [self removeObject: assoc key view: vassoc key] ] ]!

removeObject: anObject
	self objects removeKey: anObject ifAbsent: [nil]!

removeObject: anObject view: aViewSymbol
	| views |
	views := self objects at: anObject ifAbsent: [^nil].
	views removeKey: aViewSymbol ifAbsent: [^nil].
	views isEmpty ifTrue: [self removeObject: anObject].!

settings
	settings isNil ifTrue: [self initSettings].
	^settings!

settingsAt: aSymbol
	^self settingsAt: aSymbol ifAbsent: [nil]!

settingsAt: aSymbol ifAbsent: aBlock
	^self settings at: aSymbol ifAbsent: aBlock!

settingsAt: aSymbol ifAbsentPut: aValue
	^self settings at: aSymbol ifAbsentPut: aValue!

settingsAt: aSymbol put: aValue
	^self settings at: aSymbol put: aValue!

shouldCache: anObject to: aRequest on: aWebSession
	^anObject aidaCacheView: aRequest view on: aWebSession!

site	
	^self parent!

store: aByteStringOrArray for: anObject to: aRequest on: aWebSession
	| timeout |
	timeout := anObject aidaCacheTimeout notNil
		ifTrue: [anObject aidaCacheTimeout notNil] "per domain object cache timeout"
		ifFalse: [self cacheTimeout]. 		"global cache timeout"
	self addObject: anObject view: aRequest view 
		content: aByteStringOrArray timeout: timeout! !
!WebCache categoriesFor: #addObject:view:content:timeout:!private-cache!public! !
!WebCache categoriesFor: #cacheTimeout!public!settings! !
!WebCache categoriesFor: #cacheTimeout:!public!settings! !
!WebCache categoriesFor: #entryForObject:view:!private-cache!public! !
!WebCache categoriesFor: #initObjects!initialize-release!public! !
!WebCache categoriesFor: #initOther!initialize-release!public! !
!WebCache categoriesFor: #initSettings!initialize-release!public! !
!WebCache categoriesFor: #invalidateObject:!caching!public! !
!WebCache categoriesFor: #isCached:to:on:!caching!public! !
!WebCache categoriesFor: #objects!private! !
!WebCache categoriesFor: #other!private! !
!WebCache categoriesFor: #otherAt:!private! !
!WebCache categoriesFor: #otherAt:ifAbsent:!private! !
!WebCache categoriesFor: #otherAt:ifAbsentPut:!private! !
!WebCache categoriesFor: #otherAt:put:!private! !
!WebCache categoriesFor: #parent!accessing!public! !
!WebCache categoriesFor: #parent:!private! !
!WebCache categoriesFor: #purgeCache!caching!public! !
!WebCache categoriesFor: #removeObject:!private-cache!public! !
!WebCache categoriesFor: #removeObject:view:!private-cache!public! !
!WebCache categoriesFor: #settings!private! !
!WebCache categoriesFor: #settingsAt:!private! !
!WebCache categoriesFor: #settingsAt:ifAbsent:!private! !
!WebCache categoriesFor: #settingsAt:ifAbsentPut:!private! !
!WebCache categoriesFor: #settingsAt:put:!private! !
!WebCache categoriesFor: #shouldCache:to:on:!caching!public! !
!WebCache categoriesFor: #site!accessing!public! !
!WebCache categoriesFor: #store:for:to:on:!caching!public! !

!WebCache class methodsFor!

newOn: anAIDASite
	^super new
		parent: anAIDASite! !
!WebCache class categoriesFor: #newOn:!instance creation!public! !

