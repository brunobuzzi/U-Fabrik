"Filed out from Dolphin Smalltalk 7"!

WebTableCell subclass: #WebTableHeader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebTableHeader guid: (GUID fromString: '{26f0da9e-e38e-4b2d-8cf8-665aaf5a84ba}')!
WebTableHeader comment: ''!
!WebTableHeader categoriesForClass!Unclassified! !
!WebTableHeader methodsFor!

isTableHeader
	^true!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession. 
	aStream nextPutAll: self ident, '<th'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '>'.
	elements notNil ifTrue: [elements do: [:element | 
		element notNil ifTrue: 
			[element printHTMLPageOn: aStream for: aRequest on: aSession] ] ].
	aStream nextPutAll: self ident, '</th>', self eol.! !
!WebTableHeader categoriesFor: #isTableHeader!public!testing! !
!WebTableHeader categoriesFor: #printHTMLPageOn:for:on:!printing!public! !

