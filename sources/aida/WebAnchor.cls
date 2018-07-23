"Filed out from Dolphin Smalltalk 7"!

WebText subclass: #WebAnchor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebAnchor guid: (GUID fromString: '{e8bac856-6ab8-43b3-8cea-082134080a6e}')!
WebAnchor comment: ''!
!WebAnchor categoriesForClass!Unclassified! !
!WebAnchor methodsFor!

name: aString
	"name of the anchor. Used for referencing in web links"
	self attributesAt: #name put: aString.!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession. 
	aStream nextPutAll: self ident, '<a'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '>'.
	"print a text with attributes and composite elements"
	super printHTMLPageOn: aStream for: aRequest on: aSession.
	aStream nextPutAll: '</a>', self  eol.!

shouldIndent
	^true! !
!WebAnchor categoriesFor: #name:!attributes!public! !
!WebAnchor categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebAnchor categoriesFor: #shouldIndent!public!testing! !

!WebAnchor class methodsFor!

name: aString
	"make an anchor with specified name"
	^self new name: aString!

name: aString text: anotherString
	"make an anchor with specified name and text"
	^self new name: aString; text: anotherString.!

nr: aNumber
	"make a web anchor in format 'anchorx', for example 'anchor6'"
	^self new name: ('anchor', aNumber printString).!

nr: aNumber text: aString
	"make an anchor with specified numberName ('anchor5') and text"
	^(self nr: aNumber) text: aString.! !
!WebAnchor class categoriesFor: #name:!instance creation!public! !
!WebAnchor class categoriesFor: #name:text:!instance creation!public! !
!WebAnchor class categoriesFor: #nr:!instance creation!public! !
!WebAnchor class categoriesFor: #nr:text:!instance creation!public! !

