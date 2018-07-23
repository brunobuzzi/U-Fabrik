"Filed out from Dolphin Smalltalk 7"!

WebText subclass: #WebRawText
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebRawText guid: (GUID fromString: '{a8ad2edd-3d9e-4b82-b82b-8322ed362f73}')!
WebRawText comment: 'WebRawText for plain ascii text, without any encodings!!'!
!WebRawText categoriesForClass!Unclassified! !
!WebRawText methodsFor!

printHTMLPageOn: aStream for: aRequest on: aSession
	text notNil ifTrue: [aStream nextPutAll: self text].!

text: aString
	text := aString! !
!WebRawText categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebRawText categoriesFor: #text:!accessing!public! !

