"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebSeparator
	instanceVariableNames: 'type size length'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebSeparator guid: (GUID fromString: '{aece27ad-5c8f-4c40-8b05-672138aba376}')!
WebSeparator comment: ''!
!WebSeparator categoriesForClass!Unclassified! !
!WebSeparator methodsFor!

printHTMLPageOn: aStream for: aRequest on: aSession
	| tag |
	self prepareToHTMLPrintOn: aSession. 
	type = #paragraph ifTrue: [tag := 'p'].
	type = #break ifTrue: [tag := 'br'].
	type = #ruler ifTrue: [tag := 'hr'].
	aStream nextPutAll: self ident, '<', tag.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: self tagClosing, self eol.!

shouldIdent
	^self type ~= #break!

size: aNumber
	"size of a ruler"
	self attributesAt: #size put: aNumber printString.!

type
	^type!

type: aSymbol
	"#ruler #paragraph #break"
	type := aSymbol.! !
!WebSeparator categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebSeparator categoriesFor: #shouldIdent!public!testing! !
!WebSeparator categoriesFor: #size:!attributes!public! !
!WebSeparator categoriesFor: #type!accessing!public! !
!WebSeparator categoriesFor: #type:!accessing!public! !

!WebSeparator class methodsFor!

break
	
	^ self new type: #break!

paragraph
	
	^ self new type: #paragraph!

rulerSize: aNumber
	
	^(self new) type: #ruler; size: aNumber! !
!WebSeparator class categoriesFor: #break!instance creation!public! !
!WebSeparator class categoriesFor: #paragraph!instance creation!public! !
!WebSeparator class categoriesFor: #rulerSize:!instance creation!public! !

