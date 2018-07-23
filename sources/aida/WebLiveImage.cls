"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebLiveImage
	instanceVariableNames: 'gif refreshed width height painter lastUsed resolver'
	classVariableNames: 'Cache'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebLiveImage guid: (GUID fromString: '{b9d62c03-f152-409d-94ea-3c8b6a3eb367}')!
WebLiveImage comment: 'WebLiveImage is used for live, dynamic GIF image construction.

Instance Variables:
	gif			<ByteArray>	content of image in GIF format
	refreshed	<Timestamp>	timestamp of last gif creation, used for caching algoritms'!
!WebLiveImage categoriesForClass!Unclassified! !
!WebLiveImage methodsFor!

addToCache
	self makeRoomInCache.
	self class cache add: self.!

cacheHysteresis
	"when removing from cache, make room for that number of entries"
	^10!

contentType
	"MIME type for our image"
	^'image/gif'!

gif
	"returns a representation of a image in GIF format"
	^gif!

height
	"height of image, default is 300 pixels"
	height isNil ifTrue: [self height: 300].
	^height!

height: anInteger
	height := anInteger.!

isComposite
	^false!

isRespondingStreamed
	"is this page able to stream HTML directly into response?"
	^false!

isWebElement
	^false!

isWebPage
	^true!

makeRoomInCache
	"if cache is full, remove least used images"
	| cached  toRemove |
	self class cache size < self maxCacheSize ifTrue: [^self].
	cached := (SortedCollection 
		withAll: self class cache
		sortBlock: [:a :b | a lastUsed < b lastUsed]) asOrderedCollection.
	self cacheHysteresis timesRepeat:
		[toRemove := cached first.
		toRemove removeFromCache.
		cached removeFirst]!

maxCacheSize
	^50!

painter
	"painter is an object, which actually paints an image. It must respond to message displayOn: anGraphicsContect. By default, painter is self and paints some hello message. Subclasses should override displayOn: appropriately"

	painter isNil ifTrue: [self painter: self].
	^painter!

painter: anObject
	painter := anObject.!

preferedUrl
	| random |
	random := (AIDASite random next * 10000) truncated printString.
	^'/image/live-', random, '.gif'!

printWebPageFor: aRequest on: aSession 
	^self!

refreshed: aTimestamp
	"timestamp of last gif creation. Used for caching algorithms"

	refreshed := aTimestamp!

refreshNeeded
	^self gif isNil!

removeFromCache
	self class cache remove: self ifAbsent: [].
	self removeFromURLResolver.
	self gif: nil.!

removeFromURLResolver
	self resolver notNil
		ifTrue: [self resolver removeObject: self]!

width
	"width of image, default is 500 pixels"
	width isNil ifTrue: [self width: 500].
	^width!

width: anInteger
	width := anInteger.! !
!WebLiveImage categoriesFor: #addToCache!private-caching!public! !
!WebLiveImage categoriesFor: #cacheHysteresis!private-caching!public! !
!WebLiveImage categoriesFor: #contentType!private! !
!WebLiveImage categoriesFor: #gif!private! !
!WebLiveImage categoriesFor: #height!accessing!public! !
!WebLiveImage categoriesFor: #height:!accessing!public! !
!WebLiveImage categoriesFor: #isComposite!private! !
!WebLiveImage categoriesFor: #isRespondingStreamed!public!testing! !
!WebLiveImage categoriesFor: #isWebElement!public!testing! !
!WebLiveImage categoriesFor: #isWebPage!public!testing! !
!WebLiveImage categoriesFor: #makeRoomInCache!private-caching!public! !
!WebLiveImage categoriesFor: #maxCacheSize!private-caching!public! !
!WebLiveImage categoriesFor: #painter!accessing!public! !
!WebLiveImage categoriesFor: #painter:!accessing!public! !
!WebLiveImage categoriesFor: #preferedUrl!private! !
!WebLiveImage categoriesFor: #printWebPageFor:on:!printing!public! !
!WebLiveImage categoriesFor: #refreshed:!private! !
!WebLiveImage categoriesFor: #refreshNeeded!public!testing! !
!WebLiveImage categoriesFor: #removeFromCache!private-caching!public! !
!WebLiveImage categoriesFor: #removeFromURLResolver!private-caching!public! !
!WebLiveImage categoriesFor: #width!accessing!public! !
!WebLiveImage categoriesFor: #width:!accessing!public! !

