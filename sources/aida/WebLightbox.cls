"Filed out from Dolphin Smalltalk 7"!

WebWidget subclass: #WebLightbox
	instanceVariableNames: 'component'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebLightbox guid: (GUID fromString: '{dda7b07d-f4a6-4cdb-b88b-6a0bce48e152}')!
WebLightbox comment: ''!
!WebLightbox categoriesForClass!Unclassified! !
!WebLightbox methodsFor!

build
	| e f |
	super build.
	e := (WebElement newId: 'overlay').
	f := (WebElement newId: 'lightbox')
		style: 'display: none;'.
	f add: self component.
	self add: e; add: f.!

component
	^component!

component: aWebComponent
	"aWebComponent can be a WebComponent or WebElement"
	component := aWebComponent!

initialize
	self app style ensureJsResourceForLightbox.
	self app style ensureJavascriptForLightboxInHeader.!

lightboxStyle
	^ '
html { overflow: hidden; }
body { overflow: hidden; }
form {width: 100%}
div#overlay {
	z-index: 9998;
	background-color: black;
	filter: alpha(opacity=10);
	-moz-opacity: 0.1;
	opacity: 0.1;
}
div#overlay[id] { position: fixed; }
div#lightbox { 
	background: #ffffff;
	z-index: 9999;
	padding: 10px;
	border: 1px solid #000000;
}'!

printHTMLPageOn: aStream for: aRequest on: aSession
	aStream nextPutAll: '<style>', self lightboxStyle, '</style>'. 
	super printHTMLPageOn: aStream for: aRequest on: aSession.
	aStream nextPutAll: '<script> updateLightbox() </script>'.! !
!WebLightbox categoriesFor: #build!printing!public! !
!WebLightbox categoriesFor: #component!accessing!public! !
!WebLightbox categoriesFor: #component:!accessing!public! !
!WebLightbox categoriesFor: #initialize!initialize-release!public! !
!WebLightbox categoriesFor: #lightboxStyle!accessing!public! !
!WebLightbox categoriesFor: #printHTMLPageOn:for:on:!printing!public! !

!WebLightbox class methodsFor!

newFor: aComponent
	^self new 
		component: aComponent;
		initialize;
		yourself! !
!WebLightbox class categoriesFor: #newFor:!instance creation!public! !

