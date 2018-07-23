"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPSetCookieField
	instanceVariableNames: 'cookies'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPSetCookieField guid: (GUID fromString: '{fbbc781b-0830-47ae-babc-e6b6fdffbb53}')!
HTTPSetCookieField comment: ''!
!HTTPSetCookieField categoriesForClass!Unclassified! !
!HTTPSetCookieField methodsFor!

addCookie: aCookieString
	^self cookies add: aCookieString!

combineWith: aSetCookieField 
	"^self
I add the cookies of aSetCookieField to my own collection of cookies."

	self cookies addAll: aSetCookieField cookies.
	^self!

cookies
	cookies isNil ifTrue: [cookies := OrderedCollection new].
	^cookies!

valuesAsStringOn: aStream 
	aStream nextPutAll: (self cookies at: 1).
	2 to: self cookies size
		do: 
			[:cookieIndex | 
			aStream
				nextPutAll: ', ';
				nextPutAll: (self cookies at: cookieIndex)].
	^self! !
!HTTPSetCookieField categoriesFor: #addCookie:!public!services! !
!HTTPSetCookieField categoriesFor: #combineWith:!public!services! !
!HTTPSetCookieField categoriesFor: #cookies!accessing!public! !
!HTTPSetCookieField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPSetCookieField class methodsFor!

fieldName
	^'Set-Cookie'! !
!HTTPSetCookieField class categoriesFor: #fieldName!accessing!public! !

