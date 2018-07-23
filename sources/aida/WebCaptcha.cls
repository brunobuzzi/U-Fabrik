"Filed out from Dolphin Smalltalk 7"!

FileProxy subclass: #WebCaptcha
	instanceVariableNames: 'text random'
	classVariableNames: 'Cache'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebCaptcha guid: (GUID fromString: '{d08ae52f-8192-4434-8575-ddb2919c922a}')!
WebCaptcha comment: 'A WebCaptcha provides a CAPTCHA image from input text, to be used for separating humans from bots, for instance when submiting blog comments (http://en.wikipedia.org/wiki/Captcha)

Our capthca is using ImageMagick (http://www.imagemagick.org) which must be installed first. It combines a background image (by default captcha-background.png, must be on current directory) with generated one from provided text in default font (see method fontName, currently Andy), which also must be installed and known to ImageMagick. 

To collect all installed fonts in your system for IMagics, run script
	imagick_type_gen > ~/.magics/type.xml

See http://www.imagemagick.org/Usage/scripts/imagick_type_gen

To see and change parameters of building captcha, look into method #prepareCaptchaImage'!
!WebCaptcha categoriesForClass!Unclassified! !
!WebCaptcha methodsFor!

backgroundImageFilename
	^'captcha-background.png'!

contentsOfCaptcha
	^self filename contentsOfEntireFileBinary asString!

contentType
	^'image/png'.!

fontName
	^'Andy'!

imageSize
	^150@30!

isExpired
	"it exists more than few hours"
	^(SpTimestamp now asSeconds - self preparedTimestamp asSeconds) > (10*3600)!

isRespondingStreamed
	^false!

preparedTimestamp
	^self timestamps at: #prepared ifAbsent: [nil]!

printHTMLPageOn: aStream for: aRequest on: aSession 
	self prepareCaptchaImage.
	aStream nextPutAll: self contentsOfCaptcha.
	self filename delete.
	self class
		addToCache: self ;
		releaseExpiredCaptchas!

printWebPageFor: aRequest on: aSession 
	^self!

random
	random isNil ifTrue: 
		[random := (AIDASite random next * 1000) truncated printString].
	^random!

setPreparedTimestamp
	^self timestamps at: #prepared put: SpTimestamp now.!

size
	^self filename fileSize!

text
	"string to be converted into captcha image"
	text isNil ifTrue: [^''].
	^text!

text: aString
	"string to be converted into captcha image"
	text := aString! !
!WebCaptcha categoriesFor: #backgroundImageFilename!defaults!public! !
!WebCaptcha categoriesFor: #contentsOfCaptcha!printing!public! !
!WebCaptcha categoriesFor: #contentType!private! !
!WebCaptcha categoriesFor: #fontName!defaults!public! !
!WebCaptcha categoriesFor: #imageSize!defaults!public! !
!WebCaptcha categoriesFor: #isExpired!private! !
!WebCaptcha categoriesFor: #isRespondingStreamed!private! !
!WebCaptcha categoriesFor: #preparedTimestamp!private! !
!WebCaptcha categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebCaptcha categoriesFor: #printWebPageFor:on:!printing!public! !
!WebCaptcha categoriesFor: #random!converting!public! !
!WebCaptcha categoriesFor: #setPreparedTimestamp!private! !
!WebCaptcha categoriesFor: #size!private! !
!WebCaptcha categoriesFor: #text!accessing!public! !
!WebCaptcha categoriesFor: #text:!accessing!public! !

!WebCaptcha class methodsFor!

addToCache: aCaptcha
	self cache add: aCaptcha!

new
	"prepare a CAPTCHA with random string"
	| session |
	session := self firstSessionFromStack. "on which we are building this captcha"
	^super new 
		site: (session notNil ifTrue: [session site] ifFalse: [nil]);
		setRandomText!

newFor: aString
	"prepare a CAPTCHA image for that string"
	^self new 
		text: aString!

releaseExpiredCaptchas
	self cache do: [:each | 
		each isExpired ifTrue: [each removeYourself "from url resolver"]]! !
!WebCaptcha class categoriesFor: #addToCache:!private-cache!public! !
!WebCaptcha class categoriesFor: #new!instance creation!public! !
!WebCaptcha class categoriesFor: #newFor:!instance creation!public! !
!WebCaptcha class categoriesFor: #releaseExpiredCaptchas!private-cache!public! !

