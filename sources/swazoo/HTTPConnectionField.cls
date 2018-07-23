"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPConnectionField
	instanceVariableNames: 'connectionToken'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPConnectionField guid: (GUID fromString: '{130133fb-9ec2-4e42-a485-48a443e7845f}')!
HTTPConnectionField comment: '
c.f. RFC 2616 14.10

   The Connection header has the following grammar:

       Connection = "Connection" ":" 1#(connection-token)
       connection-token  = token

'!
!HTTPConnectionField categoriesForClass!Unclassified! !
!HTTPConnectionField methodsFor!

connectionToken
	"^a String
Common values are 'close' and 'keep-alive'."

	^connectionToken!

connectionToken: aString 
	"^self"

	connectionToken := aString.
	^self!

connectionTokenIsClose
	^self connectionToken = 'close'!

parseValueFrom: aString 
	connectionToken := HTTPString trimBlanksFrom: aString.
	^self!

setToClose
	self connectionToken: 'close'.
	^self!

setToKeepAlive
	self connectionToken: 'keep-alive'.
	^self!

valuesAsStringOn: aStream 
	aStream nextPutAll: connectionToken.
	^self! !
!HTTPConnectionField categoriesFor: #connectionToken!accessing!public! !
!HTTPConnectionField categoriesFor: #connectionToken:!accessing!public! !
!HTTPConnectionField categoriesFor: #connectionTokenIsClose!public!testing! !
!HTTPConnectionField categoriesFor: #parseValueFrom:!private! !
!HTTPConnectionField categoriesFor: #setToClose!public!services! !
!HTTPConnectionField categoriesFor: #setToKeepAlive!public!services! !
!HTTPConnectionField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPConnectionField class methodsFor!

fieldName
	^'Connection'! !
!HTTPConnectionField class categoriesFor: #fieldName!accessing!public! !

