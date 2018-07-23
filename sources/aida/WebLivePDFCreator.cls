"Filed out from Dolphin Smalltalk 7"!

WebMethodResource subclass: #WebLivePDFCreator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebLivePDFCreator guid: (GUID fromString: '{cc99f2c1-d1ba-449e-8363-6c18d9756dff}')!
WebLivePDFCreator comment: 'WebLivePDFCreator created PDF from HTML source together with Table of contents!! It uses external HTMLDOC converter (http://www.htmldoc.org/)'!
!WebLivePDFCreator categoriesForClass!Unclassified! !
!WebLivePDFCreator methodsFor!

aidaDontCache
	"refresh content always!! "
	^true!

expiresTimestamp
	^nil!

printHTMLPageOn: aStream for: aRequest on: aSession
	| html pdf |
	html := AIDASite convert: (self object perform: self method) toCodepage: #'iso-8859-2'.
	pdf := self convertToPdf: html.
	aStream nextPutAll:  pdf asByteString.! !
!WebLivePDFCreator categoriesFor: #aidaDontCache!accessing!public! !
!WebLivePDFCreator categoriesFor: #expiresTimestamp!accessing!public! !
!WebLivePDFCreator categoriesFor: #printHTMLPageOn:for:on:!printing!public! !

!WebLivePDFCreator class methodsFor!

fromHtmlMethod: aMethodSymbol on: anObject site: anAIDASite
	"this method should return a complete html page!! "
	| docname |
	docname := (anObject class canUnderstand: #preferedUrlName) 
		ifTrue: [anObject preferedUrlName] ifFalse: ['live'].
	^self fromMethod: aMethodSymbol on: anObject 
		contentType: 'application/pdf' preferedUrl: '/generated/', docname, '.pdf' site: anAIDASite! !
!WebLivePDFCreator class categoriesFor: #fromHtmlMethod:on:site:!instance creation!public! !

