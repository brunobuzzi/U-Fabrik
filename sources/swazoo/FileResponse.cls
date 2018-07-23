"Filed out from Dolphin Smalltalk 7"!

HTTPResponse subclass: #FileResponse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FileResponse guid: (GUID fromString: '{3710579f-6786-4ec1-a81b-63d9e0bfe34d}')!
FileResponse comment: ''!
!FileResponse categoriesForClass!Unclassified! !
!FileResponse methodsFor!

contentType
	^self entity contentType!

entity: aMimeObject 
	entity := aMimeObject!

printContentLengthOn: aStream 
	self entity isNil 
		ifFalse: 
			[aStream
				nextPutAll: 'Content-Length: ';
				print: self entity value fileSize.
			self crlfOn: aStream]!

printEntityOn: aStream 
	| rs |
	self entity isNil 
		ifFalse: 
			[rs := self entity value readStream.
			rs lineEndTransparent.
			SpExceptionContext 
				for: 
					[[[rs atEnd] whileFalse: [aStream nextPutAll: (rs nextAvailable: 2000)]] 
						ensure: [rs close]]
				on: SpError
				do: [:ex | ex return]]!

printHeadersOn: aStream 
	self contentType: self entity contentType.
	super printHeadersOn: aStream! !
!FileResponse categoriesFor: #contentType!accessing-headers!public! !
!FileResponse categoriesFor: #entity:!accessing!public! !
!FileResponse categoriesFor: #printContentLengthOn:!private-printing!public! !
!FileResponse categoriesFor: #printEntityOn:!private-printing!public! !
!FileResponse categoriesFor: #printHeadersOn:!private-printing!public! !

