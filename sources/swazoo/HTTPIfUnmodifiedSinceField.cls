"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPIfUnmodifiedSinceField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPIfUnmodifiedSinceField guid: (GUID fromString: '{6aca7f82-49f5-4669-9bde-56ec330e37e1}')!
HTTPIfUnmodifiedSinceField comment: ''!
!HTTPIfUnmodifiedSinceField categoriesForClass!Unclassified! !
!HTTPIfUnmodifiedSinceField methodsFor!

isCacheHitFor: anEntity 
	"^a Boolean
I return true if an anEntity is a cache hit given the conditional I represent. 
anEntity *must* respond to >>entutyTag"

	1 halt.
	^self!

isConditional
	^true! !
!HTTPIfUnmodifiedSinceField categoriesFor: #isCacheHitFor:!public!testing! !
!HTTPIfUnmodifiedSinceField categoriesFor: #isConditional!public!testing! !

!HTTPIfUnmodifiedSinceField class methodsFor!

fieldName
	^'If-Unmodified-Since'! !
!HTTPIfUnmodifiedSinceField class categoriesFor: #fieldName!accessing!public! !

