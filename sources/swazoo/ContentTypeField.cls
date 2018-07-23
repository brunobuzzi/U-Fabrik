"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #ContentTypeField
	instanceVariableNames: 'mediaType transferCodings'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ContentTypeField guid: (GUID fromString: '{0efaa04e-0451-4a2c-ae2e-e930527f9dc9}')!
ContentTypeField comment: ''!
!ContentTypeField categoriesForClass!Unclassified! !
!ContentTypeField methodsFor!

defaultMediaType
	"^a String
See RFC 2616 '7.2.1 Type'.  If no media type is specified, application/octet-stream is the default."

	^'application/octet-stream'!

isContentType
	^true!

mediaType
	^mediaType isNil ifTrue: [self defaultMediaType] ifFalse: [mediaType]!

mediaType: aString 
	mediaType := aString.
	^self!

parseValueFrom: aString 
	| sourceStream |
	sourceStream := aString readStream.
	mediaType := (HTTPString trimBlanksFrom: (sourceStream upTo: $;)).
	transferCodings := self readParametersFrom: sourceStream.
	^self!

transferCodings
	transferCodings isNil ifTrue: [transferCodings := String new].
	^transferCodings!

valuesAsStringOn: aStream 
	aStream nextPutAll: self mediaType.
	self transferCodings isEmpty ifFalse: 
		[self transferCodings keysAndValuesDo: 
			[:name :value | 
			aStream
				nextPutAll: ' ';
				nextPutAll: name;
				nextPut: $=;
				nextPutAll: value]].
	^self! !
!ContentTypeField categoriesFor: #defaultMediaType!accessing!public! !
!ContentTypeField categoriesFor: #isContentType!public!testing! !
!ContentTypeField categoriesFor: #mediaType!accessing!public! !
!ContentTypeField categoriesFor: #mediaType:!accessing!public! !
!ContentTypeField categoriesFor: #parseValueFrom:!private! !
!ContentTypeField categoriesFor: #transferCodings!accessing!public! !
!ContentTypeField categoriesFor: #valuesAsStringOn:!printing!public! !

!ContentTypeField class methodsFor!

fieldName
	^'Content-Type'! !
!ContentTypeField class categoriesFor: #fieldName!accessing!public! !

