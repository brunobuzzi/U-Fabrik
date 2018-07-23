"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebCacheEntry
	instanceVariableNames: 'content created timeout'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebCacheEntry guid: (GUID fromString: '{24301f32-b0d0-458b-a683-029a6de1de1d}')!
WebCacheEntry comment: ''!
!WebCacheEntry categoriesForClass!Unclassified! !
!WebCacheEntry methodsFor!

content
	"cached content"
	^content!

content: aByteStringOrArray
	"cached content"
	content := aByteStringOrArray!

created
	"when the cahce entry was created"
	^SpTimestamp fromSeconds: self createdAsSeconds!

createdAsSeconds
	"when the cahce entry was created"
	^created!

isTimedOut
	^(SpTimestamp now asSeconds - self createdAsSeconds) > self timeout!

setCreated
	created := SpTimestamp now asSeconds!

timeout
	"how many seconds this cached content is valid"
	^timeout!

timeout: aSeconds
	"how many seconds this cached content is valid"
	timeout := aSeconds! !
!WebCacheEntry categoriesFor: #content!accessing!public! !
!WebCacheEntry categoriesFor: #content:!accessing!public! !
!WebCacheEntry categoriesFor: #created!accessing!public! !
!WebCacheEntry categoriesFor: #createdAsSeconds!private! !
!WebCacheEntry categoriesFor: #isTimedOut!public!testing! !
!WebCacheEntry categoriesFor: #setCreated!private! !
!WebCacheEntry categoriesFor: #timeout!accessing!public! !
!WebCacheEntry categoriesFor: #timeout:!accessing!public! !

!WebCacheEntry class methodsFor!

new
	^super new setCreated! !
!WebCacheEntry class categoriesFor: #new!instance creation!public! !

