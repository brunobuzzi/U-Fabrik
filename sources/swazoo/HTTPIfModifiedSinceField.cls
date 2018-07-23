"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPIfModifiedSinceField
	instanceVariableNames: 'date'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPIfModifiedSinceField guid: (GUID fromString: '{6c6f9921-a9c6-47d5-97de-a6700bf04491}')!
HTTPIfModifiedSinceField comment: ''!
!HTTPIfModifiedSinceField categoriesForClass!Unclassified! !
!HTTPIfModifiedSinceField methodsFor!

date
	^date!

isCacheHitFor: anEntity 
	"^a Boolean
I return true if an anEntity is a cache hit given the conditional I represent.  So in my case, I'm looking to see that the entity has not changed since my date.
anEntity *must* respond to >>lastModified"

	^anEntity lastModified <= self date!

isConditional
	^true!

parseValueFrom: aString 
	date := SpTimestamp fromRFC1123String: aString.
	^self!

valuesAsStringOn: aStream 
	self date notNil ifTrue: [self date asRFC1123StringOn: aStream].
	^self! !
!HTTPIfModifiedSinceField categoriesFor: #date!accessing!public! !
!HTTPIfModifiedSinceField categoriesFor: #isCacheHitFor:!public!testing! !
!HTTPIfModifiedSinceField categoriesFor: #isConditional!public!testing! !
!HTTPIfModifiedSinceField categoriesFor: #parseValueFrom:!private! !
!HTTPIfModifiedSinceField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPIfModifiedSinceField class methodsFor!

fieldName
	^'If-Modified-Since'! !
!HTTPIfModifiedSinceField class categoriesFor: #fieldName!accessing!public! !

