"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebStubElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebStubElement guid: (GUID fromString: '{96b7f7a6-b2f5-4390-a561-9e9531ee7705}')!
WebStubElement comment: 'WebStubElement is an element which will be replaced with a real one after Ajax update

Example:

	u := WebStubElement newFor: #ajaxShowElement.
	(e addNilLinkText: ''update'') onClickUpdate: u.
	e add: u.

This will show the element at the click to link by updating the empty stub element.'!
!WebStubElement categoriesForClass!Unclassified! !
!WebStubElement methodsFor!

initialize
	self addComment: 'stub'.
	^self!

isStubElement
	^true!

printHTMLPageOn: aStream for: aRequest on: aSession
	"as compact div as possible, without identation, eol"
	aStream nextPutAll: self ident, '<div'. 
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll:  '><!!-- '.
	aStream nextPutAll: self elements first "comment" text.
	aStream nextPutAll: ' --></div>', self eol.! !
!WebStubElement categoriesFor: #initialize!initialize-release!public! !
!WebStubElement categoriesFor: #isStubElement!public!testing! !
!WebStubElement categoriesFor: #printHTMLPageOn:for:on:!printing!public! !

!WebStubElement class methodsFor!

newFor: anElementMethodSymbol
	^super new
		method: anElementMethodSymbol;
		setDiv;
		registerId;
		initialize! !
!WebStubElement class categoriesFor: #newFor:!instance creation!public! !

