"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPAcceptField
	instanceVariableNames: 'mediaTypes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPAcceptField guid: (GUID fromString: '{1a405775-f4cf-49f1-9c25-544d48e9a133}')!
HTTPAcceptField comment: ''!
!HTTPAcceptField categoriesForClass!Unclassified! !
!HTTPAcceptField methodsFor!

combineWith: aHeaderField 
	"^self
I simply take my values and concatenate the values of aHeaderField."

	self mediaTypes addAll: aHeaderField mediaTypes.
	^self!

mediaTypes
	mediaTypes isNil ifTrue: [mediaTypes := OrderedCollection new].
	^mediaTypes!

parseValueFrom: aString 
	mediaTypes := HTTPString subCollectionsFrom: aString delimitedBy: $,.
	^self!

valuesAsStringOn: targetStream 
	self mediaTypes isEmpty 
		ifFalse: 
			[targetStream nextPutAll: self mediaTypes first.
			2 to: self mediaTypes size
				do: 
					[:methodIndex | 
					targetStream
						nextPut: $,;
						nextPutAll: (self mediaTypes at: methodIndex)]].
	^self! !
!HTTPAcceptField categoriesFor: #combineWith:!public!services! !
!HTTPAcceptField categoriesFor: #mediaTypes!accessing!public! !
!HTTPAcceptField categoriesFor: #parseValueFrom:!private! !
!HTTPAcceptField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPAcceptField class methodsFor!

fieldName
	^'Accept'! !
!HTTPAcceptField class categoriesFor: #fieldName!accessing!public! !

