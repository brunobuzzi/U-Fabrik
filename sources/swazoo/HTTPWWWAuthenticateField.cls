"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPWWWAuthenticateField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPWWWAuthenticateField guid: (GUID fromString: '{4624187c-34a5-4d58-b821-ed15781a6c54}')!
HTTPWWWAuthenticateField comment: ''!
!HTTPWWWAuthenticateField categoriesForClass!Unclassified! !
!HTTPWWWAuthenticateField methodsFor!

isBasic
	"^a Boolean
I return true if I represent a header for basic authentication. c.f. RFC 2617 sec 2."

	^false!

isDigest
	"^a Boolean
I return true if I represent a header for digest authentication. c.f. RFC 2617 sec 3."

	^false! !
!HTTPWWWAuthenticateField categoriesFor: #isBasic!public!testing! !
!HTTPWWWAuthenticateField categoriesFor: #isDigest!public!testing! !

!HTTPWWWAuthenticateField class methodsFor!

fieldName
	^'WWW-Authenticate'! !
!HTTPWWWAuthenticateField class categoriesFor: #fieldName!accessing!public! !

