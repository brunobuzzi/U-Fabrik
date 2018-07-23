"Filed out from Dolphin Smalltalk 7"!

WebFormElement subclass: #WebInputField
	instanceVariableNames: 'size maxLength type'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebInputField guid: (GUID fromString: '{e95c4674-96a9-4b09-9418-2e1d40502c48}')!
WebInputField comment: ''!
!WebInputField categoriesForClass!Unclassified! !
!WebInputField methodsFor!

aspect: aSymbol for: anObject size: aNumber
	^self aspect: aSymbol for: anObject; size: aNumber!

hidden
	^self type = 'hidden'!

hidden: aBoolean
	"make this input field hidden one"
	aBoolean ifTrue: [self type: 'hidden']!

initialize
	super initialize.
	self type: 'text'.!

isHidden
	^self type = 'hidden'!

isInputField
	^true!

isPassword
	^self type = 'password'!

maxLength: aNumber
	"maximum number of characters allowed in this input field"
	self attributesAt: #maxlength put: aNumber printString!

password
	^self type = 'password'!

password: aBoolean
	"if true, then value will not be shown in input field"
	self type: 'password'.!

prepareAttributesToPrintOn: aSession
	self value notNil ifTrue:
		[self attributesAt: #value put: 
			(WebFormElement autoConvertAndEncodeValue: self value)]!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession.
	self scriptBefore notNil ifTrue: 
		[self scriptBefore printHTMLPageOn: aStream for: aRequest on: aSession.].
	aStream nextPutAll: self ident, '<input'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: self tagClosing.
	self scriptAfter notNil ifTrue: 
		[self scriptAfter printHTMLPageOn: aStream for: aRequest on: aSession].!

resetHidden
	self hidden: false!

resetPassword
	self password: false!

saveThroughAdapterValue: aValueString
	| vlue |
	aValueString isNil ifTrue: [^nil].  "error?"
	vlue :=  AIDASite convertFromWeb: aValueString on: self session. "ensure unicode!!"
	vlue := (WebFormElement autoConvertString:  vlue toObject: self value).
	self value: vlue.!

setHidden
	self hidden: true!

setPassword
	self password: true!

shouldIdent
	^false!

size: aNumber
	"number of characters displayed in this input field"
	self attributesAt: #size put: aNumber printString! !
!WebInputField categoriesFor: #aspect:for:size:!initialize-release!public! !
!WebInputField categoriesFor: #hidden!private! !
!WebInputField categoriesFor: #hidden:!private! !
!WebInputField categoriesFor: #initialize!initialize-release!public! !
!WebInputField categoriesFor: #isHidden!public!testing! !
!WebInputField categoriesFor: #isInputField!public!testing! !
!WebInputField categoriesFor: #isPassword!public!testing! !
!WebInputField categoriesFor: #maxLength:!attributes!public! !
!WebInputField categoriesFor: #password!private! !
!WebInputField categoriesFor: #password:!private! !
!WebInputField categoriesFor: #prepareAttributesToPrintOn:!printing!public! !
!WebInputField categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebInputField categoriesFor: #resetHidden!attributes!public! !
!WebInputField categoriesFor: #resetPassword!attributes!public! !
!WebInputField categoriesFor: #saveThroughAdapterValue:!private! !
!WebInputField categoriesFor: #setHidden!attributes!public! !
!WebInputField categoriesFor: #setPassword!attributes!public! !
!WebInputField categoriesFor: #shouldIdent!public!testing! !
!WebInputField categoriesFor: #size:!attributes!public! !

!WebInputField class methodsFor!

adaptIndex: aNumber ofCollection: aCollection

	^self new aspect: aNumber for: aCollection!

aspect: aSymbol for: anObject
	^self new aspect: aSymbol for: anObject!

aspect: aSymbol for: anObject size: aNumber
	^self new aspect: aSymbol for: anObject size: aNumber!

for: anObject
	^self new aspect: nil for: anObject!

size: aNumber aspect: aSymbol forObject: anObject
	"OBSOLETE!!"
	^self new size: aNumber; aspect: aSymbol for: anObject! !
!WebInputField class categoriesFor: #adaptIndex:ofCollection:!instance creation!public! !
!WebInputField class categoriesFor: #aspect:for:!instance creation!public! !
!WebInputField class categoriesFor: #aspect:for:size:!instance creation!public! !
!WebInputField class categoriesFor: #for:!instance creation!public! !
!WebInputField class categoriesFor: #size:aspect:forObject:!instance creation!public! !

