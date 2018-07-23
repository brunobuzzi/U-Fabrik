"Filed out from Dolphin Smalltalk 7"!

WebButton subclass: #WebImageButton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebImageButton guid: (GUID fromString: '{fc3107b4-d87e-42b1-a61a-32fca17baf5e}')!
WebImageButton comment: ''!
!WebImageButton categoriesForClass!Unclassified! !
!WebImageButton methodsFor!

becomeCancelButton

	self type: 'reset'!

printHTMLPageOn: aStream forSession: aSession
	self prepareToHTMLPrintOn: aSession.
	aStream nextPutAll: self ident; 
		nextPutAll: '<input '.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '>'.
"
		nextPutAll: '<input style=background-image: url(''../images/editar2.gif'')'.
super printHTMLPageOn: aStream forSession: aSession.
	aStream nextPutAll:  '</button>'.
"! !
!WebImageButton categoriesFor: #becomeCancelButton!public! !
!WebImageButton categoriesFor: #printHTMLPageOn:forSession:!printing!private! !

