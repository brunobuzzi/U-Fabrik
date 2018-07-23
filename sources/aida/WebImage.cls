"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebImage
	instanceVariableNames: 'image imageMap'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebImage guid: (GUID fromString: '{6bdbc994-d989-4a8f-8616-888d31e11440}')!
WebImage comment: ''!
!WebImage categoriesForClass!Unclassified! !
!WebImage methodsFor!

alt: aString
	self attributes at: #alt put: aString!

border: aNumber
	self attributesAt: #border put: aNumber printString!

height: aNumber
	self attributesAt: #height put: aNumber printString!

hspace: aNumber
	self attributesAt: #hspace put: aNumber printString!

image
	^image!

image: anImage
	"set the image object of WebImage. 
	If nil, then urlreference should exist for image somewhere else"
	image := anImage.!

image: anImage align: aSymbol
	"set the image object of WebImage. and aligment"
	self image: anImage.
	self align: aSymbol!

imageAlign: aSymbol
	"#left #center #right"
	self attributesAt: #align put: aSymbol asString!

imageMap
	^imageMap!

imageMap: anImageMap
	imageMap := anImageMap!

initialize
	self border: 0.
	self alt: ''.!

name: aString
	self attributesAt: #name put: aString!

prepareAttributesToPrintOn: aSession
	self src: (self urlOnSession: aSession).
	self imageMap notNil ifTrue: [self usemap: self imageMap name].!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession. 
	self scriptBefore notNil ifTrue: 
		[self scriptBefore printHTMLPageOn: aStream for: aRequest on: aSession].
	aStream nextPutAll: self ident, '<img'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: self tagClosing.
	self imageMap notNil ifTrue: 
		[imageMap printHTMLPageOn: aStream for: aRequest on: aSession].
	self scriptAfter notNil ifTrue: 
		[self scriptAfter printHTMLPageOn: aStream for: aRequest on: aSession].!

shouldIdent
	^false!

size: aPoint
	"set the size of an image in format width@height"
	self width: aPoint x.
	self height: aPoint y.!

src: aString
	self attributesAt: #src put: aString!

urlForLiveImageOn: aSession
	 ^aSession site urlResolver halfUrlFor: self image!

urlForMethodImageOn: aSession
	 ^aSession site urlResolver halfUrlFor: self image!

urlOnSession: aSession
	self image isNil ifTrue: [^''].
	self image isString ifTrue: [^self image].
	(self image isKindOf: WebLiveImage) ifTrue: [^self urlForLiveImageOn: aSession].
	(self image isKindOf: WebMethodImage) ifTrue: [^self urlForMethodImageOn: aSession].
	^aSession site urlResolver halfUrlFor: self image.!

usemap: aString
	self attributesAt: #usemap put: aString!

width: aNumber
	self attributesAt: #width put: aNumber printString! !
!WebImage categoriesFor: #alt:!attributes!public! !
!WebImage categoriesFor: #border:!attributes!public! !
!WebImage categoriesFor: #height:!attributes!public! !
!WebImage categoriesFor: #hspace:!attributes!public! !
!WebImage categoriesFor: #image!accessing!public! !
!WebImage categoriesFor: #image:!accessing!public! !
!WebImage categoriesFor: #image:align:!accessing!public! !
!WebImage categoriesFor: #imageAlign:!attributes!public! !
!WebImage categoriesFor: #imageMap!accessing!public! !
!WebImage categoriesFor: #imageMap:!accessing!public! !
!WebImage categoriesFor: #initialize!initialize-release!public! !
!WebImage categoriesFor: #name:!attributes!public! !
!WebImage categoriesFor: #prepareAttributesToPrintOn:!printing!public! !
!WebImage categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebImage categoriesFor: #shouldIdent!public!testing! !
!WebImage categoriesFor: #size:!attributes!public! !
!WebImage categoriesFor: #src:!attributes!public! !
!WebImage categoriesFor: #urlForLiveImageOn:!public!urls! !
!WebImage categoriesFor: #urlForMethodImageOn:!public!urls! !
!WebImage categoriesFor: #urlOnSession:!public!urls! !
!WebImage categoriesFor: #usemap:!attributes!public! !
!WebImage categoriesFor: #width:!attributes!public! !

!WebImage class methodsFor!

gif: aSymbol
	"this method will be called in your webStyle and this method 
	should return a gif in byte array format"
	| methodImage image |
	image := self new.
	methodImage := WebMethodImage
		fromMethod: aSymbol 
		on: image style 
		contentType: 'image/gif' 
		site: image site.
	^image image: methodImage!

gif: aSymbol  size: aPoint
	"this method will be called in your webStyle and this method 
	should return a gif in byte array format"
	| methodImage image |
	image := self new.
	methodImage := WebMethodImage
		fromMethod: aSymbol 
		on: image style 
		contentType: 'image/gif' 
		site: image site.
	^image image: methodImage;  size: aPoint!

image: anImage
	^self new image: anImage!

image: anImage align: aSymbol
	^self new image: anImage align: aSymbol!

image: anImage size: aPoint
	^self new image: anImage; size: aPoint!

jpeg: aSymbol
	"this method will be called in your webStyle and this method 
	should return a jpeg in byte array format"
	| methodImage image |
	image := self new.
	methodImage := WebMethodImage
		fromMethod: aSymbol 
		on: image style 
		contentType: 'image/jpeg' 
		site: image site.
	^image image: methodImage!

jpeg: aSymbol  size: aPoint
	"this method will be called in your webStyle and this method 
	should return a jpeg in byte array format"
	| methodImage image |
	image := self new.
	methodImage := WebMethodImage
		fromMethod: aSymbol 
		on: image style 
		contentType: 'image/jpeg' 
		site: image site.
	^image image: methodImage;  size: aPoint!

new
	^super new initialize!

png: aSymbol
	"this method will be called in your webStyle and this method 
	should return a png in byte array format"
	| methodImage image |
	image := self new.
	methodImage := WebMethodImage
		fromMethod: aSymbol 
		on: image style 
		contentType: 'image/png' 
		site: image site.
	^image image: methodImage!

png: aSymbol  size: aPoint
	"this method will be called in your webStyle and this method 
	should return a jpeg in byte array format"
	| methodImage image |
	image := self new.
	methodImage := WebMethodImage
		fromMethod: aSymbol 
		on: image style 
		contentType: 'image/png' 
		site: image site.
	^image image: methodImage;  size: aPoint! !
!WebImage class categoriesFor: #gif:!instance creation!public! !
!WebImage class categoriesFor: #gif:size:!instance creation!public! !
!WebImage class categoriesFor: #image:!instance creation!public! !
!WebImage class categoriesFor: #image:align:!instance creation!public! !
!WebImage class categoriesFor: #image:size:!instance creation!public! !
!WebImage class categoriesFor: #jpeg:!instance creation!public! !
!WebImage class categoriesFor: #jpeg:size:!instance creation!public! !
!WebImage class categoriesFor: #new!instance creation!public! !
!WebImage class categoriesFor: #png:!instance creation!public! !
!WebImage class categoriesFor: #png:size:!instance creation!public! !

