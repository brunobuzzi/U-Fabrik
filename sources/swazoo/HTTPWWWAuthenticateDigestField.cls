"Filed out from Dolphin Smalltalk 7"!

HTTPWWWAuthenticateField subclass: #HTTPWWWAuthenticateDigestField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPWWWAuthenticateDigestField guid: (GUID fromString: '{f46881d5-81df-4bc1-9214-141e47d584ba}')!
HTTPWWWAuthenticateDigestField comment: ''!
!HTTPWWWAuthenticateDigestField categoriesForClass!Unclassified! !
!HTTPWWWAuthenticateDigestField methodsFor!

isDigest
	"^a Boolean
I return true if I represent a header for digest authentication. c.f. RFC 2617 sec 3."

	^true! !
!HTTPWWWAuthenticateDigestField categoriesFor: #isDigest!public!testing! !

