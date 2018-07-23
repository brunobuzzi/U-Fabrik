"Filed out from Dolphin Smalltalk 7"!

HTTPAuthorizationField subclass: #HTTPAuthorizationBasicField
	instanceVariableNames: 'userid password'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPAuthorizationBasicField guid: (GUID fromString: '{974885a1-c41c-4b1e-9161-b177ac9016bb}')!
HTTPAuthorizationBasicField comment: ''!
!HTTPAuthorizationBasicField categoriesForClass!Unclassified! !
!HTTPAuthorizationBasicField methodsFor!

password
	"^a String
I return the password string (as defined in RFC 2617 pp.2) part of the user-pass value in my credentials."

	password isNil ifTrue: [self resolveUserPass].
	^password!

resolveUserPass
	"^self
I look at my credentials string and pull out the userid and password.  Note that having to check for atEnd before the upToEnd is for GemStone which crashes if upToEnd is used when already atEnd."

	"(Base64EncodingReadStream on: 'YnJ1Y2U6c3F1aWRzdXBwbGllZHBhc3N3b3Jk' ) upToEnd asString "

	| userPassString sourceStream |
	userPassString := userPassString := (ByteArray fromBase64String: self credentials) asString.
	sourceStream := ReadStream on: userPassString.
	userid := sourceStream upTo: $:.
	password := sourceStream atEnd 
				ifTrue: [String new]
				ifFalse: [sourceStream upToEnd].
	^self!

userid
	"^a String
I return the userid string (as defined in RFC 2617 pp.2) part of the user-pass value in my credentials."

	userid isNil ifTrue: [self resolveUserPass].
	^userid!

valuesAsStringOn: aStream 
	aStream nextPutAll: 'Basic '.
	super valuesAsStringOn: aStream.
	^self! !
!HTTPAuthorizationBasicField categoriesFor: #password!public!services! !
!HTTPAuthorizationBasicField categoriesFor: #resolveUserPass!private! !
!HTTPAuthorizationBasicField categoriesFor: #userid!public!services! !
!HTTPAuthorizationBasicField categoriesFor: #valuesAsStringOn:!printing!public! !

