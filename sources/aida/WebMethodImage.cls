"Filed out from Dolphin Smalltalk 7"!

WebMethodResource subclass: #WebMethodImage
	instanceVariableNames: 'lastUsed'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'Cache'!
WebMethodImage guid: (GUID fromString: '{410242fd-331e-43be-8316-2f28efe59bbd}')!
WebMethodImage comment: 'This image is actually in-lined in a method, which is called on defined object and must return a ByteArray of image contents. 

Instance Variables:
	contentType	<String>	 content type of an image eg. ''image/gif'', which is default.
	method	<Symbol>	symbol of a method to be called on object
	object	<Object>	object on which a method will be called'!
!WebMethodImage categoriesForClass!Unclassified! !
!WebMethodImage methodsFor!

addToCache
	self makeRoomInCache.
	self class cache add: self.!

cacheHysteresis
	"when removing from cache, make room for that number of entries"
	^10!

lastUsed: aTimestamp
	"timestamp of last usage. Used for caching algorithms"

	lastUsed := aTimestamp!

maxCacheSize
	^50!

preferedUrl
	| ext |
	ext := self site mimeMap extensionForType: self contentType.
	ext isNil ifTrue: [ext := '.html'].
	^'/img/' , self method asString asLowercase , ext!

printString
	^'WebMethodImage #', self method asString, ' on ', self object class name!

removeFromCache
	self class cache remove: self ifAbsent: [].
	self removeFromURLResolver.!

removeFromURLResolver
	self resolver notNil
		ifTrue: [self resolver removeObject: self]!

resolver
	^self site urlResolver! !
!WebMethodImage categoriesFor: #addToCache!caching!public! !
!WebMethodImage categoriesFor: #cacheHysteresis!caching!public! !
!WebMethodImage categoriesFor: #lastUsed:!accessing!public! !
!WebMethodImage categoriesFor: #maxCacheSize!caching!public! !
!WebMethodImage categoriesFor: #preferedUrl!accessing!public! !
!WebMethodImage categoriesFor: #printString!printing!public! !
!WebMethodImage categoriesFor: #removeFromCache!caching!public! !
!WebMethodImage categoriesFor: #removeFromURLResolver!caching!public! !
!WebMethodImage categoriesFor: #resolver!accessing!public! !

!WebMethodImage class methodsFor!

cache
	Cache isNil ifTrue: [self initCache].
	^Cache!

fromMethod: aSymbol on: anObject contentType: aString site: anAIDASite
	"cached one only preservers its url, but method is still called everytime image is shown!!"
	| cached | 
	cached := self imageForObject: anObject andMethod: aSymbol.
	^cached notNil 
		ifTrue: [cached] 
		ifFalse: [super new
			object: anObject;
			method: aSymbol;
			contentType: aString;
			site: anAIDASite;
			addToCache]!

imageForObject: anObject andMethod: aSymbol

	^self cache detect: [:each | each object == anObject and: [each method = aSymbol] ] ifNone: [nil]!

initCache
	Cache := Set new.! !
!WebMethodImage class categoriesFor: #cache!caching!public! !
!WebMethodImage class categoriesFor: #fromMethod:on:contentType:site:!instance creation!public! !
!WebMethodImage class categoriesFor: #imageForObject:andMethod:!caching!public! !
!WebMethodImage class categoriesFor: #initCache!caching!public! !

