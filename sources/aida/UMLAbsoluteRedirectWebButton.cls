"Filed out from Dolphin Smalltalk 7"!

UMLRedirectWebButton subclass: #UMLAbsoluteRedirectWebButton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAbsoluteRedirectWebButton guid: (GUID fromString: '{05222230-1698-4b71-a0a8-0de58f344087}')!
UMLAbsoluteRedirectWebButton comment: ''!
!UMLAbsoluteRedirectWebButton categoriesForClass!Unclassified! !
!UMLAbsoluteRedirectWebButton methodsFor!

printHTMLPageOn: aStream for: aRequest on: aSession
	"self image notNil ifTrue:
		[self prepareImageAttributeOn: aSession]."

	self ensureOnClickReturnFalseAtEnd. "for ajaxSubmit"
	"self prepareToHTMLPrintOn: aSession."
	aStream nextPutAll: self ident, '<a href="http://localhost:', (AIDASite named: 'U-Fabrik Web Server') port printString,'/', destinationView, '"'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: ('><span>', text ,'</span>').
	aStream nextPutAll: self tagClosing.! !
!UMLAbsoluteRedirectWebButton categoriesFor: #printHTMLPageOn:for:on:!printing!public! !

