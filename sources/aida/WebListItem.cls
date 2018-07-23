"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebListItem
	instanceVariableNames: 'tag'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebListItem guid: (GUID fromString: '{ea886834-90b5-408e-8361-6ac2a2d4d318}')!
WebListItem comment: ''!
!WebListItem categoriesForClass!Unclassified! !
!WebListItem methodsFor!

initialize
	self setListItem!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession. 
	aStream nextPutAll: self ident, '<', self tag.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '>'.
	super printHTMLPageOn: aStream for: aRequest on: aSession.
	aStream nextPutAll: self ident, '</', self tag, '>', self eol.!

setDefinition
	self tag: 'dd'!

setDefinitionTerm
	self tag: 'dt'!

setListItem
	self tag: 'li'!

shouldIdent
	^false!

tag
	^tag!

tag: aString
	tag := aString! !
!WebListItem categoriesFor: #initialize!initialize-release!public! !
!WebListItem categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebListItem categoriesFor: #setDefinition!accessing!public! !
!WebListItem categoriesFor: #setDefinitionTerm!accessing!public! !
!WebListItem categoriesFor: #setListItem!accessing!public! !
!WebListItem categoriesFor: #shouldIdent!public!testing! !
!WebListItem categoriesFor: #tag!accessing!public! !
!WebListItem categoriesFor: #tag:!accessing!public! !

!WebListItem class methodsFor!

new
	^super new initialize!

newDefinition
	^self new setDefinition "dd"!

newDefinitionTerm
	^self new setDefinitionTerm "dt"!

newListItem
	^self new setListItem "li"! !
!WebListItem class categoriesFor: #new!instance creation!public! !
!WebListItem class categoriesFor: #newDefinition!instance creation!public! !
!WebListItem class categoriesFor: #newDefinitionTerm!instance creation!public! !
!WebListItem class categoriesFor: #newListItem!instance creation!public! !

