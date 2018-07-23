"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPCacheControlField
	instanceVariableNames: 'directives private maxAge noStore noCache mustRevalidate'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPCacheControlField guid: (GUID fromString: '{97e8b246-7afd-4eec-9024-a2753f5c9a0e}')!
HTTPCacheControlField comment: ''!
!HTTPCacheControlField categoriesForClass!Unclassified! !
!HTTPCacheControlField methodsFor!

directives
	"for easy setting directives in one string"
	^directives!

directives: aString 
	"for easy setting directives in one string"
	"example: 'no-store, no-cache, must-revalidate'"
	directives := aString!

maxAge
	"^an Integer or nil
I return my max age which is either an integer number of seconds for which the entity can be considdered fresh, or nil, in which case other headers such as Expires can be used by a cache to determine the expiration time of the entity."

	^maxAge!

maxAge: anIntegerOrNil 
	"^self
I record the number of seconds for which the resource is 'fresh' and after which will expire and become 'stale' for caching purposes.  Setting this to nil means the max age is unspecified, and this is the default.  This directive takes presidence over any Expires header when a cache or client is handling an HTTP message."

	maxAge := anIntegerOrNil.
	^self!

private
	"^a Boolean or nil
There are three possible values for private.  Explicity true (the entity can only be cached in private caches), explicity false (this is a public entity and can be held in a shared/public cache perhaps even when stale) or nil (the default which means that the entity may be held in a public shared cache, but only until it goes stale)."

	^private!

setNotPublicOrPrivate
	"^self
I am being told that the entity in my message is not explicity public or private.  This is the default and means that public caches may retain copies of the resource, but should not be as relaxed about the rules as with an explicitly public resource. c.f >>setPublic & >>setPrivate."

	private := nil.
	^self!

setPrivate
	"^self
I am being told that the entity in my message is a private one that can only be cached on private caches, i.e. caches that can be drawn upon a single clients.  An example of a private cache is the one *inside* your web browser.   This is probably what you want if the entity contains personal information."

	private := true.
	^self!

setPublic
	"^self
I am being told that the entity in my message is a public one that can be cached on public caches, i.e. caches that can be drawn upon by many clients.  This is probably not what you want if the entity contains personal information!!  c.f. >>setPrivate  Note that expicitly setting cache-control public actually loosens some other rules and means resources can be used by cached beyond their normal life."

	private := false.
	^self!

valuesAsStringOn: aStream 
	aStream nextPut: Character space.
	self directives notNil ifTrue: [aStream nextPutAll: self directives].
	self private notNil 
		ifTrue: 
			[self writePublicOrPrivateTo: aStream.
			self maxAge notNil ifTrue: [aStream nextPutAll: ', ']].
	self maxAge notNil ifTrue: [self writeMaxAgeTo: aStream].
	^self!

writeMaxAgeTo: aStream 
	"^self
I write the maxAge directive to aStream"

	aStream nextPutAll: 'max-age='.
	self maxAge printOn: aStream.
	^self!

writePublicOrPrivateTo: aStream 
	"^self
I write the either the public or the private directive to aStream"

	self private 
		ifTrue: [aStream nextPutAll: 'private']
		ifFalse: [aStream nextPutAll: 'public'].
	^self! !
!HTTPCacheControlField categoriesFor: #directives!accessing!public! !
!HTTPCacheControlField categoriesFor: #directives:!accessing!public! !
!HTTPCacheControlField categoriesFor: #maxAge!accessing!public! !
!HTTPCacheControlField categoriesFor: #maxAge:!public!services! !
!HTTPCacheControlField categoriesFor: #private!accessing!public! !
!HTTPCacheControlField categoriesFor: #setNotPublicOrPrivate!public!services! !
!HTTPCacheControlField categoriesFor: #setPrivate!public!services! !
!HTTPCacheControlField categoriesFor: #setPublic!public!services! !
!HTTPCacheControlField categoriesFor: #valuesAsStringOn:!printing!public! !
!HTTPCacheControlField categoriesFor: #writeMaxAgeTo:!printing!public! !
!HTTPCacheControlField categoriesFor: #writePublicOrPrivateTo:!printing!public! !

!HTTPCacheControlField class methodsFor!

fieldName
	^'Cache-Control'! !
!HTTPCacheControlField class categoriesFor: #fieldName!accessing!public! !

