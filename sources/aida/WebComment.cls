"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebComment
	instanceVariableNames: 'text'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebComment guid: (GUID fromString: '{0aa79844-3a5b-4ff1-b308-e62052d90c83}')!
WebComment comment: ''!
!WebComment categoriesForClass!Unclassified! !
!WebComment methodsFor!

initialize
	text := ''.!

printHTMLPageOn: aStream for: aRequest on: aSession
	aStream nextPutAll: self ident, '<!!-- '.
	aStream nextPutAll: self text.
	aStream nextPutAll: ' -->', self eol.!

shouldIdent
	^false!

text
	^text!

text: aString
	text := aString.! !
!WebComment categoriesFor: #initialize!initialize-release!public! !
!WebComment categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebComment categoriesFor: #shouldIdent!private! !
!WebComment categoriesFor: #text!accessing!public! !
!WebComment categoriesFor: #text:!accessing!public! !

!WebComment class methodsFor!

new
	^super new initialize!

text: aString
	^self new text: aString

"WebText text: 'test'"! !
!WebComment class categoriesFor: #new!instance creation!public! !
!WebComment class categoriesFor: #text:!instance creation!public! !

