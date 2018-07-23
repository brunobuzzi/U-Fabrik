"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebMethodResource
	instanceVariableNames: 'site object method contentType preferedUrl'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebMethodResource guid: (GUID fromString: '{fcee4a15-d737-4a64-ab0e-a3e36e2959b0}')!
WebMethodResource comment: ''!
!WebMethodResource categoriesForClass!Unclassified! !
!WebMethodResource methodsFor!

contentType
	"MIME type for our resource"	
	contentType isNil ifTrue: [self contentType: 'image/gif'].
	^contentType!

contentType: aString
	contentType := aString!

expiresTimestamp
	"24 hours from now, to avoid reloading of images" 
	^SpTimestamp fromSeconds: SpTimestamp now asSeconds + (24*3600)!

isRespondingStreamed
	"always stream method resources"
	^true!

isWebElement
	^false!

isWebPage
	^true!

method
	^method!

method: aSymbol
	method := aSymbol!

object
	^object!

object: anObject
	object := anObject!

preferedUrl
	^preferedUrl!

preferedUrl: aString
	preferedUrl := aString!

printWebPageFor: aRequest on: aSession 
	^self!

site
	"a Site on which this resource will be shown"
	^site!

site: anAIDASite
	site := anAIDASite! !
!WebMethodResource categoriesFor: #contentType!accessing!public! !
!WebMethodResource categoriesFor: #contentType:!accessing!public! !
!WebMethodResource categoriesFor: #expiresTimestamp!accessing!public! !
!WebMethodResource categoriesFor: #isRespondingStreamed!public!testing! !
!WebMethodResource categoriesFor: #isWebElement!public!testing! !
!WebMethodResource categoriesFor: #isWebPage!public!testing! !
!WebMethodResource categoriesFor: #method!accessing!public! !
!WebMethodResource categoriesFor: #method:!accessing!public! !
!WebMethodResource categoriesFor: #object!accessing!public! !
!WebMethodResource categoriesFor: #object:!accessing!public! !
!WebMethodResource categoriesFor: #preferedUrl!accessing!public! !
!WebMethodResource categoriesFor: #preferedUrl:!accessing!public! !
!WebMethodResource categoriesFor: #printWebPageFor:on:!printing!public! !
!WebMethodResource categoriesFor: #site!accessing!public! !
!WebMethodResource categoriesFor: #site:!accessing!public! !

!WebMethodResource class methodsFor!

fromMethod: aSymbol on: anObject contentType: aString preferedUrl: aString2 site: anAIDASite
	^super new
		object: anObject;
		method: aSymbol;
		contentType: aString;
		preferedUrl: aString2;
		site: anAIDASite!

fromMethod: aSymbol on: anObject contentType: aString site: anAIDASite
	^super new
		object: anObject;
		method: aSymbol;
		contentType: aString;
		site: anAIDASite! !
!WebMethodResource class categoriesFor: #fromMethod:on:contentType:preferedUrl:site:!instance creation!public! !
!WebMethodResource class categoriesFor: #fromMethod:on:contentType:site:!instance creation!public! !

