"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ImageStream
	instanceVariableNames: 'imageStream progressValue'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ImageStream guid: (GUID fromString: '{44e765c0-3111-499a-aeb3-88e5747b0815}')!
ImageStream comment: 'ImageStream 

Copyright (C) 1995-1998 AOKI Atsushi, All Rights Reserved.'!
!ImageStream categoriesForClass!Unclassified! !
!ImageStream methodsFor!

atEnd
	^imageStream atEnd!

close
	imageStream close!

compute: aBlock 
	(self progressValue isKindOf: ValueHolder)
		ifTrue: [self progressValue compute: aBlock]!

contents
	^imageStream contents!

convertValue: value from: fromScale to: toScale 
	^value = 0
		ifTrue: [0]
		ifFalse: [value = fromScale
				ifTrue: [toScale]
				ifFalse: [(value + 1 * (toScale + 1) / (fromScale + 1)) rounded - 1 max: 0]]!

cr
	^imageStream nextPut: Character cr asInteger!

errorCanNotRead
	self error: 'can''t read the image'.
	^nil!

errorCanNotWrite
	self error: 'can''t write the image'.
	^nil!

hasMagicNumber: aByteArray 
	| position array |
	position := imageStream position.
	imageStream size - position >= aByteArray size
		ifTrue: 
			[array := (imageStream next: aByteArray size) asByteArray.
			array = aByteArray ifTrue: [^true]].
	imageStream position: position.
	^false!

lf
	^imageStream nextPut: Character lf asInteger!

next
	^imageStream next!

next: size 
	^imageStream next: size!

nextImage
	^self subclassResponsibility!

nextLong
	^(imageStream next bitShift: 24)
		+ (imageStream next bitShift: 16) + (imageStream next bitShift: 8) + imageStream next!

nextLongPut: a32BitW 
	imageStream nextPut: ((a32BitW bitShift: -24)
			bitAnd: 255).
	imageStream nextPut: ((a32BitW bitShift: -16)
			bitAnd: 255).
	imageStream nextPut: ((a32BitW bitShift: -8)
			bitAnd: 255).
	imageStream nextPut: (a32BitW bitAnd: 255).
	^a32BitW!

nextPut: aByte 
	^imageStream nextPut: aByte!

nextPutAll: aByteArray 
	^imageStream nextPutAll: aByteArray!

nextPutImage: anImage 
	^self subclassResponsibility!

nextWord
	^(imageStream next bitShift: 8)
		+ imageStream next!

nextWordPut: a16BitW 
	imageStream nextPut: ((a16BitW bitShift: -8)
			bitAnd: 255).
	imageStream nextPut: (a16BitW bitAnd: 255).
	^a16BitW!

on: aStream 
	imageStream := aStream.
	(imageStream respondsTo: #binary)
		ifTrue: [imageStream binary].
	self progressValue: (ValueHolder with: nil)!

position
	^imageStream position!

position: anInteger 
	^imageStream position: anInteger!

progress
	^self progressValue value!

progress: normalizedNumber 
	(0 <= normalizedNumber and: [normalizedNumber <= 1])
		ifTrue: 
			[| truncatedValue |
			truncatedValue := normalizedNumber roundTo: 0.005.
			self progressValue value = truncatedValue ifFalse: [self progressValue value: truncatedValue]]!

progressValue
	^progressValue!

progressValue: aValueHolder 
	progressValue := aValueHolder!

show: anImage 
	^self class show: anImage!

size
	^imageStream size!

skip: anInteger 
	^imageStream skip: anInteger!

space
	^imageStream nextPut: Character space asInteger!

tab
	^imageStream nextPut: Character tab asInteger! !
!ImageStream categoriesFor: #atEnd!public!stream access! !
!ImageStream categoriesFor: #close!public!stream access! !
!ImageStream categoriesFor: #compute:!progress!public! !
!ImageStream categoriesFor: #contents!public!stream access! !
!ImageStream categoriesFor: #convertValue:from:to:!private! !
!ImageStream categoriesFor: #cr!public!stream access! !
!ImageStream categoriesFor: #errorCanNotRead!private! !
!ImageStream categoriesFor: #errorCanNotWrite!private! !
!ImageStream categoriesFor: #hasMagicNumber:!private! !
!ImageStream categoriesFor: #lf!public!stream access! !
!ImageStream categoriesFor: #next!public!stream access! !
!ImageStream categoriesFor: #next:!public!stream access! !
!ImageStream categoriesFor: #nextImage!accessing!public! !
!ImageStream categoriesFor: #nextLong!public!stream access! !
!ImageStream categoriesFor: #nextLongPut:!public!stream access! !
!ImageStream categoriesFor: #nextPut:!public!stream access! !
!ImageStream categoriesFor: #nextPutAll:!public!stream access! !
!ImageStream categoriesFor: #nextPutImage:!accessing!public! !
!ImageStream categoriesFor: #nextWord!public!stream access! !
!ImageStream categoriesFor: #nextWordPut:!public!stream access! !
!ImageStream categoriesFor: #on:!initialize-release!public! !
!ImageStream categoriesFor: #position!public!stream access! !
!ImageStream categoriesFor: #position:!public!stream access! !
!ImageStream categoriesFor: #progress!progress!public! !
!ImageStream categoriesFor: #progress:!progress!public! !
!ImageStream categoriesFor: #progressValue!progress!public! !
!ImageStream categoriesFor: #progressValue:!progress!public! !
!ImageStream categoriesFor: #show:!public!viewing! !
!ImageStream categoriesFor: #size!public!stream access! !
!ImageStream categoriesFor: #skip:!public!stream access! !
!ImageStream categoriesFor: #space!public!stream access! !
!ImageStream categoriesFor: #tab!public!stream access! !

!ImageStream class methodsFor!

assert: assertBlock do: doBlock ensure: ensureBlock 
	assertBlock value.
	[doBlock value]
		valueNowOrOnUnwindDo: [ensureBlock value]!

colorPalette256Array
	"ImageStream colorPalette256Array."
	^#(	#(8191 8191 8191)
		#(8191 8191 6553)
		#(8191 8191 4915)
		#(8191 8191 3276)
		#(8191 8191 1638)
		#(8191 8191 0)
		#(8191 6553 8191)
		#(8191 6553 6553)
		#(8191 6553 4915)
		#(8191 6553 3276)
		#(8191 6553 1638)
		#(8191 6553 0)
		#(8191 4915 8191)
		#(8191 4915 6553)
		#(8191 4915 4915)
		#(8191 4915 3276)
		#(8191 4915 1638)
		#(8191 4915 0)
		#(8191 3276 8191)
		#(8191 3276 6553)
		#(8191 3276 4915)
		#(8191 3276 3276)
		#(8191 3276 1638)
		#(8191 3276 0)
		#(8191 1638 8191)
		#(8191 1638 6553)
		#(8191 1638 4915)
		#(8191 1638 3276)
		#(8191 1638 1638)
		#(8191 1638 0)
		#(8191 0 8191)
		#(8191 0 6553)
		#(8191 0 4915)
		#(8191 0 3276)
		#(8191 0 1638)
		#(8191 0 0)
		#(6553 8191 8191)
		#(6553 8191 6553)
		#(6553 8191 4915)
		#(6553 8191 3276)
		#(6553 8191 1638)
		#(6553 8191 0)
		#(6553 6553 8191)
		#(6553 6553 6553)
		#(6553 6553 4915)
		#(6553 6553 3276)
		#(6553 6553 1638)
		#(6553 6553 0)
		#(6553 4915 8191)
		#(6553 4915 6553)
		#(6553 4915 4915)
		#(6553 4915 3276)
		#(6553 4915 1638)
		#(6553 4915 0)
		#(6553 3276 8191)
		#(6553 3276 6553)
		#(6553 3276 4915)
		#(6553 3276 3276)
		#(6553 3276 1638)
		#(6553 3276 0)
		#(6553 1638 8191)
		#(6553 1638 6553)
		#(6553 1638 4915)
		#(6553 1638 3276)
		#(6553 1638 1638)
		#(6553 1638 0)
		#(6553 0 8191)
		#(6553 0 6553)
		#(6553 0 4915)
		#(6553 0 3276)
		#(6553 0 1638)
		#(6553 0 0)
		#(4915 8191 8191)
		#(4915 8191 6553)
		#(4915 8191 4915)
		#(4915 8191 3276)
		#(4915 8191 1638)
		#(4915 8191 0)
		#(4915 6553 8191)
		#(4915 6553 6553)
		#(4915 6553 4915)
		#(4915 6553 3276)
		#(4915 6553 1638)
		#(4915 6553 0)
		#(4915 4915 8191)
		#(4915 4915 6553)
		#(4915 4915 4915)
		#(4915 4915 3276)
		#(4915 4915 1638)
		#(4915 4915 0)
		#(4915 3276 8191)
		#(4915 3276 6553)
		#(4915 3276 4915)
		#(4915 3276 3276)
		#(4915 3276 1638)
		#(4915 3276 0)
		#(4915 1638 8191)
		#(4915 1638 6553)
		#(4915 1638 4915)
		#(4915 1638 3276)
		#(4915 1638 1638)
		#(4915 1638 0)
		#(4915 0 8191)
		#(4915 0 6553)
		#(4915 0 4915)
		#(4915 0 3276)
		#(4915 0 1638)
		#(4915 0 0)
		#(3276 8191 8191)
		#(3276 8191 6553)
		#(3276 8191 4915)
		#(3276 8191 3276)
		#(3276 8191 1638)
		#(3276 8191 0)
		#(3276 6553 8191)
		#(3276 6553 6553)
		#(3276 6553 4915)
		#(3276 6553 3276)
		#(3276 6553 1638)
		#(3276 6553 0)
		#(3276 4915 8191)
		#(3276 4915 6553)
		#(3276 4915 4915)
		#(3276 4915 3276)
		#(3276 4915 1638)
		#(3276 4915 0)
		#(3276 3276 8191)
		#(3276 3276 6553)
		#(3276 3276 4915)
		#(3276 3276 3276)
		#(3276 3276 1638)
		#(3276 3276 0)
		#(3276 1638 8191)
		#(3276 1638 6553)
		#(3276 1638 4915)
		#(3276 1638 3276)
		#(3276 1638 1638)
		#(3276 1638 0)
		#(3276 0 8191)
		#(3276 0 6553)
		#(3276 0 4915)
		#(3276 0 3276)
		#(3276 0 1638)
		#(3276 0 0)
		#(1638 8191 8191)
		#(1638 8191 6553)
		#(1638 8191 4915)
		#(1638 8191 3276)
		#(1638 8191 1638)
		#(1638 8191 0)
		#(1638 6553 8191)
		#(1638 6553 6553)
		#(1638 6553 4915)
		#(1638 6553 3276)
		#(1638 6553 1638)
		#(1638 6553 0)
		#(1638 4915 8191)
		#(1638 4915 6553)
		#(1638 4915 4915)
		#(1638 4915 3276)
		#(1638 4915 1638)
		#(1638 4915 0)
		#(1638 3276 8191)
		#(1638 3276 6553)
		#(1638 3276 4915)
		#(1638 3276 3276)
		#(1638 3276 1638)
		#(1638 3276 0)
		#(1638 1638 8191)
		#(1638 1638 6553)
		#(1638 1638 4915)
		#(1638 1638 3276)
		#(1638 1638 1638)
		#(1638 1638 0)
		#(1638 0 8191)
		#(1638 0 6553)
		#(1638 0 4915)
		#(1638 0 3276)
		#(1638 0 1638)
		#(1638 0 0)
		#(0 8191 8191)
		#(0 8191 6553)
		#(0 8191 4915)
		#(0 8191 3276)
		#(0 8191 1638)
		#(0 8191 0)
		#(0 6553 8191)
		#(0 6553 6553)
		#(0 6553 4915)
		#(0 6553 3276)
		#(0 6553 1638)
		#(0 6553 0)
		#(0 4915 8191)
		#(0 4915 6553)
		#(0 4915 4915)
		#(0 4915 3276)
		#(0 4915 1638)
		#(0 4915 0)
		#(0 3276 8191)
		#(0 3276 6553)
		#(0 3276 4915)
		#(0 3276 3276)
		#(0 3276 1638)
		#(0 3276 0)
		#(0 1638 8191)
		#(0 1638 6553)
		#(0 1638 4915)
		#(0 1638 3276)
		#(0 1638 1638)
		#(0 1638 0)
		#(0 0 8191)
		#(0 0 6553)
		#(0 0 4915)
		#(0 0 3276)
		#(0 0 1638)
		#(7645 0 0)
		#(7099 0 0)
		#(6007 0 0)
		#(5461 0 0)
		#(4369 0 0)
		#(3822 0 0)
		#(2730 0 0)
		#(2184 0 0)
		#(1092 0 0)
		#(546 0 0)
		#(0 7645 0)
		#(0 7099 0)
		#(0 6007 0)
		#(0 5461 0)
		#(0 4369 0)
		#(0 3822 0)
		#(0 2730 0)
		#(0 2184 0)
		#(0 1092 0)
		#(0 546 0)
		#(0 0 7645)
		#(0 0 7099)
		#(0 0 6007)
		#(0 0 5461)
		#(0 0 4369)
		#(0 0 3822)
		#(0 0 2730)
		#(0 0 2184)
		#(0 0 1092)
		#(0 0 546)
		#(7645 7645 7645)
		#(7099 7099 7099)
		#(6007 6007 6007)
		#(5461 5461 5461)
		#(4369 4369 4369)
		#(3822 3822 3822)
		#(2730 2730 2730)
		#(2184 2184 2184)
		#(1092 1092 1092)
		#(546 546 546)
		#(0 0 0)
	)!

copyright
	^'Copyright (C) 1995-1998 AOKI Atsushi, All Rights Reserved.'!

fromUser
	"ImageStream show: ImageStream fromUser."

	^self fromDisplay: Rectangle fromUser!

imageStreamClassForFileName: aFilename 
	"ImageStream imageStreamClassForFileName: 'zzz.gif' asFilename."

	| aString aSymbol aClass |
	aString := (aFilename asString reverse copyUpTo: $.) reverse.
	aString := aString asLowercase.
	aSymbol := self imageKindTable at: aString ifAbsent: [nil].
	aSymbol isNil ifTrue: [^nil].
	aClass := Smalltalk at: aSymbol ifAbsent: [nil].
	^aClass!

install
	"ImageStream install."

	self colorPalette256.
	self grayPalette256!

on: aStream 
	^self new on: aStream!

system
	^'Goodies'!

toClipboard: anImage 
	"ImageStream toClipboard: Image fromUser."

	| pixmap |
	pixmap := anImage asRetainedMedium.
	pixmap toClipboard.
	^anImage!

version
	^'003'! !
!ImageStream class categoriesFor: #assert:do:ensure:!controls!public! !
!ImageStream class categoriesFor: #colorPalette256Array!constants of palette!public! !
!ImageStream class categoriesFor: #copyright!copyright!public! !
!ImageStream class categoriesFor: #fromUser!accessing!public! !
!ImageStream class categoriesFor: #imageStreamClassForFileName:!accessing!public! !
!ImageStream class categoriesFor: #install!class initialization!public! !
!ImageStream class categoriesFor: #on:!instance creation!public! !
!ImageStream class categoriesFor: #system!copyright!public! !
!ImageStream class categoriesFor: #toClipboard:!accessing!public! !
!ImageStream class categoriesFor: #version!copyright!public! !

