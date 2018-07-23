"Filed out from Dolphin Smalltalk 7"!

WebFormElement subclass: #WebTextArea
	instanceVariableNames: 'rows columns'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebTextArea guid: (GUID fromString: '{750d37b4-aea4-4067-a784-693149e0b921}')!
WebTextArea comment: ''!
!WebTextArea categoriesForClass!Unclassified! !
!WebTextArea methodsFor!

aspect: aSymbol for: anObject size: aNumber
	^self aspect: aSymbol for: anObject; size: aNumber!

autoConvertAndEncodeValue: aValue
	| vlue |
	vlue := WebFormElement autoConvertToString: aValue. "dates, numbers etc."
	vlue := AIDASite encodeQuoteEntitiesIn: vlue.               "char entity encoding just for double quote '' "
	^vlue!

autoConvertAndEncodeValue: aValue on: aSession
	| vlue |
	vlue := WebFormElement autoConvertToString: aValue.   "dates, numbers etc."
	vlue := AIDASite encodeQuoteEntitiesIn: vlue.               "char entity encoding just for double quote '' "
	vlue := AIDASite convertToWeb: vlue on: aSession.      "UTF-8 encoding"
	^vlue!

columns: aNumber
	^self attributesAt: #cols put: aNumber printString!

initialize
	super initialize.
	self columns: 5; rows: 5; wrap: 'soft'.!

isTextArea
	^true!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession.
	self scriptBefore notNil ifTrue: 
		[self scriptBefore printHTMLPageOn: aStream for: aRequest on: aSession].
	aStream nextPutAll: self ident, '<textarea'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '>'.
	self value notNil ifTrue:
		[aStream nextPutAll:    "encode only quotes as &quot; then UTF8" 
			(self autoConvertAndEncodeValue: self value on: aSession)]. 
	aStream nextPutAll: '</textarea>'.
	self scriptAfter notNil ifTrue: 
		[self scriptAfter printHTMLPageOn: aStream for: aRequest on: aSession].!

rows: aNumber
	^self attributesAt: #rows put: aNumber printString!

saveThroughAdapterValue: aValueString
	| vlue |
	vlue :=  AIDASite convertFromWeb: aValueString on: self session. "ensure unicode!!"
	vlue := (WebFormElement autoConvertString:  vlue toObject: self value).
	self value: vlue.!

shouldIdent
	^false!

size: aPoint
	"set the size of area in format colums@rows"
	self columns: aPoint x.
	self rows: aPoint y.!

wrap: aString
	"how to wrap text in area"
	^self attributesAt: #wrap put: aString! !
!WebTextArea categoriesFor: #aspect:for:size:!initialize-release!public! !
!WebTextArea categoriesFor: #autoConvertAndEncodeValue:!printing!public! !
!WebTextArea categoriesFor: #autoConvertAndEncodeValue:on:!printing!public! !
!WebTextArea categoriesFor: #columns:!attributes!public! !
!WebTextArea categoriesFor: #initialize!initialize-release!public! !
!WebTextArea categoriesFor: #isTextArea!public!testing! !
!WebTextArea categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebTextArea categoriesFor: #rows:!attributes!public! !
!WebTextArea categoriesFor: #saveThroughAdapterValue:!private! !
!WebTextArea categoriesFor: #shouldIdent!public!testing! !
!WebTextArea categoriesFor: #size:!attributes!public! !
!WebTextArea categoriesFor: #wrap:!attributes!public! !

!WebTextArea class methodsFor!

aspect: aSymbol for: anObject
	^self new aspect: aSymbol for: anObject!

aspect: aSymbol for: anObject size: aNumber
	^self new aspect: aSymbol for: anObject size: aNumber! !
!WebTextArea class categoriesFor: #aspect:for:!instance creation!public! !
!WebTextArea class categoriesFor: #aspect:for:size:!instance creation!public! !

