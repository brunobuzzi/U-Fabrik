"Filed out from Dolphin Smalltalk 7"!

UMLWebButton subclass: #UMLRedirectWebButton
	instanceVariableNames: 'destinationView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLRedirectWebButton guid: (GUID fromString: '{6f6af826-b2eb-48b4-a8db-93ff6ac0bb1c}')!
UMLRedirectWebButton comment: ''!
!UMLRedirectWebButton categoriesForClass!Unclassified! !
!UMLRedirectWebButton methodsFor!

destinationView
	^destinationView!

destinationView: anObject
	destinationView := anObject!

printHTMLPageOn: aStream for: aRequest on: aSession
	"self image notNil ifTrue:
		[self prepareImageAttributeOn: aSession]."

	self ensureOnClickReturnFalseAtEnd. "for ajaxSubmit"
	"self prepareToHTMLPrintOn: aSession."
	aStream nextPutAll: self ident, '<a href="', destinationView, '"'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: ('><span>', text ,'</span>').
	aStream nextPutAll: self tagClosing.! !
!UMLRedirectWebButton categoriesFor: #destinationView!accessing!private! !
!UMLRedirectWebButton categoriesFor: #destinationView:!accessing!private! !
!UMLRedirectWebButton categoriesFor: #printHTMLPageOn:for:on:!printing!public! !

!UMLRedirectWebButton class methodsFor!

text: aString action: aSymbol

	^self new 
		destinationView: '#';
		text: aString;
		action: aSymbol;
		class: #button;
		type: #submit;
		"ajaxSubmit;"
		yourself.!

text: aString action: aSymbol class: symbolClass

	^self new 
		destinationView: '#';
		text: aString;
		action: aSymbol;
		class: symbolClass;
		type: #submit;
		"ajaxSubmit;"
		yourself.!

text: aString action: aSymbol destinationView: destinationView

	^self new 
		destinationView: destinationView;
		text: aString;
		action: aSymbol;
		class: #button;
		type: #submit;
		"ajaxSubmit;"
		yourself.! !
!UMLRedirectWebButton class categoriesFor: #text:action:!public! !
!UMLRedirectWebButton class categoriesFor: #text:action:class:!public! !
!UMLRedirectWebButton class categoriesFor: #text:action:destinationView:!public! !

