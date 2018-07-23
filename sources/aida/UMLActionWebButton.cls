"Filed out from Dolphin Smalltalk 7"!

UMLWebButton subclass: #UMLActionWebButton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLActionWebButton guid: (GUID fromString: '{dc6712cb-60a8-4a1f-aa66-9bced3169ef8}')!
UMLActionWebButton comment: ''!
!UMLActionWebButton categoriesForClass!Unclassified! !
!UMLActionWebButton methodsFor!

printHTMLPageOn: aStream for: aRequest on: aSession
	"self image notNil ifTrue:
		[self prepareImageAttributeOn: aSession]."
	self ensureOnClickReturnFalseAtEnd. "for ajaxSubmit"
	self prepareToHTMLPrintOn: aSession.
	aStream nextPutAll: self ident, '<a href="?view=main"'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: ('><span>', text ,'</span>').
	aStream nextPutAll: self tagClosing.! !
!UMLActionWebButton categoriesFor: #printHTMLPageOn:for:on:!printing!public! !

!UMLActionWebButton class methodsFor!

text: aString action: aSymbol

	^self new 
		text: aString;
		action: aSymbol;
		class: #button;
		type: #submit;
		ajaxSubmit;
		yourself.!

text: aString action: aSymbol class: symbolClass

	^self new 
		text: aString;
		action: aSymbol;
		class: symbolClass;
		type: #submit;
		ajaxSubmit;
		yourself.!

text: aString actionWithoutAjax: aSymbol

	^self new 
		text: aString;
		action: aSymbol;
		class: #button;
		type: #submit;
		yourself.! !
!UMLActionWebButton class categoriesFor: #text:action:!public! !
!UMLActionWebButton class categoriesFor: #text:action:class:!public! !
!UMLActionWebButton class categoriesFor: #text:actionWithoutAjax:!public! !

