"Filed out from Dolphin Smalltalk 7"!

HTTPWWWAuthenticateField subclass: #HTTPWWWAuthenticateBasicField
	instanceVariableNames: 'realm'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPWWWAuthenticateBasicField guid: (GUID fromString: '{efb55006-5ebe-4209-87d4-74d0def44378}')!
HTTPWWWAuthenticateBasicField comment: ''!
!HTTPWWWAuthenticateBasicField categoriesForClass!Unclassified! !
!HTTPWWWAuthenticateBasicField methodsFor!

isBasic
	"^a Boolean
I return true if I represent a header for basic authentication. c.f. RFC 2617 sec 2."

	^true!

realm
	"^a String
I return the realm for which I represent an autentication challenge.  This string will be presented to the browser user in the login dialog."

	^realm!

realm: anObject
	realm := anObject!

valuesAsStringOn: aStream 
	aStream
		nextPutAll: 'Basic realm="';
		nextPutAll: self realm;
		nextPut: $".
	^self! !
!HTTPWWWAuthenticateBasicField categoriesFor: #isBasic!public!testing! !
!HTTPWWWAuthenticateBasicField categoriesFor: #realm!accessing!public! !
!HTTPWWWAuthenticateBasicField categoriesFor: #realm:!accessing!public! !
!HTTPWWWAuthenticateBasicField categoriesFor: #valuesAsStringOn:!printing!public! !

