"Filed out from Dolphin Smalltalk 7"!

WebWidget subclass: #WebNonHTMLResource
	instanceVariableNames: 'contentType content filename'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebNonHTMLResource guid: (GUID fromString: '{2dcf5ac9-404a-4506-934c-76c91dba7eaa}')!
WebNonHTMLResource comment: 'NonHTMLResource for returning information in other formats like PDF, plain text etc.

Usage: in your view method for returning PDF as an example:

  MyApp>>viewAsPDF

	^WebNonHTMLResource forPDF: self pdf

Response will be with content type ''application/pdf'', while url extension will still be .html. If you want appropriate url extension too, you need to temporary register that element in urlResolver and redirect to it.'!
!WebNonHTMLResource categoriesForClass!Unclassified! !
!WebNonHTMLResource methodsFor!

content
	^content!

content: anObject
	content := anObject!

contentType
	^contentType!

contentType: anObject
	contentType := anObject!

filename
	^filename!

filename: anObject
	filename := anObject!

printHTMLPageOn: aStream for: aRequest on: aSession
	self filename isNil
		ifTrue: [aStream nextPutAll: self content]
		ifFalse: [aStream nextPutAll: 
			(SpFilename named: self filename) 
				underlyingFilename contentsOfEntireBinaryFile asByteString]!

printWebPageFor: aRequest on: aSession 
	^self! !
!WebNonHTMLResource categoriesFor: #content!accessing!public! !
!WebNonHTMLResource categoriesFor: #content:!accessing!public! !
!WebNonHTMLResource categoriesFor: #contentType!accessing!public! !
!WebNonHTMLResource categoriesFor: #contentType:!accessing!public! !
!WebNonHTMLResource categoriesFor: #filename!accessing!public! !
!WebNonHTMLResource categoriesFor: #filename:!accessing!public! !
!WebNonHTMLResource categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebNonHTMLResource categoriesFor: #printWebPageFor:on:!printing!public! !

!WebNonHTMLResource class methodsFor!

forPDF: aByteArray
	^super new
		contentType: 'application/pdf';
		content: aByteArray!

forPDFFile: aFilenameString
	^super new
		contentType: 'application/pdf';
		filename: aFilenameString!

forText: aByteArray
	^super new
		contentType: 'text/plain';
		content: aByteArray!

forXML: aByteArray
	^super new
		contentType: 'text/xml';
		content: aByteArray! !
!WebNonHTMLResource class categoriesFor: #forPDF:!instance creation!public! !
!WebNonHTMLResource class categoriesFor: #forPDFFile:!instance creation!public! !
!WebNonHTMLResource class categoriesFor: #forText:!instance creation!public! !
!WebNonHTMLResource class categoriesFor: #forXML:!instance creation!public! !

