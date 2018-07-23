"Filed out from Dolphin Smalltalk 7"!

ImageStream subclass: #BmpImageStream
	instanceVariableNames: 'bfType bfSize bfReserved1 bfReserved2 bfOffBits biSize biWidth biHeight biPlanes biBitCount biCompression biSizeImage biXPelsPerMeter biYPelsPerMeter biClrUsed biClrImportant imagePalette imageObject'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BmpImageStream guid: (GUID fromString: '{34cc045e-c1b8-4b5a-bac2-3ed12d9284e1}')!
BmpImageStream comment: 'BmpImageStream 

Copyright (C) 1995-1998 AOKI Atsushi, All Rights Reserved.'!
!BmpImageStream categoriesForClass!Unclassified! !
!BmpImageStream methodsFor!

nextImage
	self readBitmapFileHeader.
	self readBitmapInfoHeader.
	self readImagePalette.
	self readImageData.
	^imageObject!

nextLSBLong
	^self next + (self next bitShift: 8) + (self next bitShift: 16) + (self next bitShift: 24)!

nextLSBLongPut: a32BitW 
	self nextPut: (a32BitW bitAnd: 255).
	self nextPut: ((a32BitW bitShift: -8)
			bitAnd: 255).
	self nextPut: ((a32BitW bitShift: -16)
			bitAnd: 255).
	self nextPut: ((a32BitW bitShift: -24)
			bitAnd: 255)!

nextLSBWord
	^self next + (self next bitShift: 8)!

nextLSBWordPut: a16BitW 
	self nextPut: (a16BitW bitAnd: 255).
	self nextPut: ((a16BitW bitShift: -8)
			bitAnd: 255)!

readBitmapFileHeader
	| position |
	position := self position.
	(self hasMagicNumber: 'BM' asByteArray)
		ifFalse: [^self errorCanNotRead].
	self position: position.
	bfType := self nextWord.
	bfSize := self nextLSBLong.
	bfReserved1 := self nextLSBWord.
	bfReserved2 := self nextLSBWord.
	bfOffBits := self nextLSBLong!

readBitmapInfoHeader
	biSize := self nextLSBLong.
	biWidth := self nextLSBLong.
	biHeight := self nextLSBLong.
	biPlanes := self nextLSBWord.
	biBitCount := self nextLSBWord.
	biCompression := self nextLSBLong.
	biSizeImage := self nextLSBLong.
	biXPelsPerMeter := self nextLSBLong.
	biYPelsPerMeter := self nextLSBLong.
	biClrUsed := self nextLSBLong.
	biClrImportant := self nextLSBLong!

readDepth1Data
	| image total progress count index |
	self position: bfOffBits.
	image := Image
				extent: biWidth @ biHeight
				depth: biBitCount
				palette: imagePalette.
	total := biWidth * biHeight.
	progress := 0.
	self progress: progress / total.
	biHeight - 1
		to: 0
		by: -1
		do: 
			[:y | 
			count := 128.
			0 to: biWidth - 1
				do: 
					[:x | 
					count = 128 ifTrue: [index := self next].
					image
						atX: x
						y: y
						put: (index bitAnd: count).
					count := count / 2.
					count < 1 ifTrue: [count := 128].
					progress := progress + 1.
					self progress: progress / total]].
	^image!

readDepth24Data
	| image total progress count rgb color index |
	self position: bfOffBits.
	image := Image
				extent: biWidth @ biHeight
				depth: biBitCount
				palette: imagePalette.
	total := biWidth * biHeight.
	progress := 0.
	self progress: progress / total.
	biHeight - 1
		to: 0
		by: -1
		do: 
			[:y | 
			count := 0.
			0 to: biWidth - 1
				do: 
					[:x | 
					rgb := self next + (self next bitShift: 8) + (self next bitShift: 16).
					color := self colorValueFrom: rgb.
					index := image palette indexOfPaintNearest: color.
					image
						atX: x
						y: y
						put: index.
					count := count + 3.
					progress := progress + 1.
					self progress: progress / total].
			[count \\ 4 = 0]
				whileFalse: 
					[self next.
					count := count + 1]].
	^image!

readDepth8Data
	| image total progress count index |
	self position: bfOffBits.
	image := Image
				extent: biWidth @ biHeight
				depth: biBitCount
				palette: imagePalette.
	total := biWidth * biHeight.
	progress := 0.
	self progress: progress / total.
	biHeight - 1
		to: 0
		by: -1
		do: 
			[:y | 
			count := 0.
			0 to: biWidth - 1
				do: 
					[:x | 
					index := self next.
					image
						atX: x
						y: y
						put: index.
					count := count + 1.
					progress := progress + 1.
					self progress: progress / total].
			[count \\ 4 = 0]
				whileFalse: 
					[self next.
					count := count + 1]].
	^image!

readImageData
	biCompression = 0 ifFalse: [^self errorCanNotRead].
	imageObject := nil.
	biBitCount = 24 ifTrue: [imageObject := self readDepth24Data].
	biBitCount = 8 ifTrue: [imageObject := self readDepth8Data].
	biBitCount = 1 ifTrue: [imageObject := self readDepth1Data].
	imageObject isNil ifTrue: [^self errorCanNotRead].
	^imageObject!

readImagePalette
	imagePalette := nil.
	biBitCount = 24 ifTrue: [imagePalette := self readDepth24Palette].
	biBitCount = 8 ifTrue: [imagePalette := self readDepth8Palette].
	biBitCount = 1 ifTrue: [imagePalette := self readDepth1Palette].
	imagePalette isNil ifTrue: [^self errorCanNotRead]!

writeBitmapFileHeader
	bfType := ($B asInteger bitShift: 8)
				+ $M asInteger.
	bfSize := 0.
	bfReserved1 := 0.
	bfReserved2 := 0.
	bfOffBits := nil.
	imageObject bitsPerPixel = 8 ifTrue: [bfOffBits := 54 + (imageObject palette size * 4)].
	imageObject bitsPerPixel = 24 ifTrue: [bfOffBits := 54].
	bfOffBits isNil ifTrue: [^self errorCanNotWrite].
	self nextWordPut: bfType.
	self nextLSBLongPut: bfSize.
	self nextLSBWordPut: bfReserved1.
	self nextLSBWordPut: bfReserved2.
	self nextLSBLongPut: bfOffBits!

writeBitmapInfoHeader
	biSize := 40.
	biWidth := imageObject width.
	biHeight := imageObject height.
	biPlanes := 1.
	biBitCount := imageObject bitsPerPixel.
	biCompression := 0.
	biSizeImage := 0.
	biXPelsPerMeter := 0.
	biYPelsPerMeter := 0.
	biClrUsed := 0.
	imageObject bitsPerPixel = 8 ifTrue: [biClrUsed := (imageObject palette size)].
	biClrImportant := 0.
	self nextLSBLongPut: biSize.
	self nextLSBLongPut: biWidth.
	self nextLSBLongPut: biHeight.
	self nextLSBWordPut: biPlanes.
	self nextLSBWordPut: biBitCount.
	self nextLSBLongPut: biCompression.
	self nextLSBLongPut: biSizeImage.
	self nextLSBLongPut: biXPelsPerMeter.
	self nextLSBLongPut: biYPelsPerMeter.
	self nextLSBLongPut: biClrUsed.
	self nextLSBLongPut: biClrImportant!

writeDepth24Data
	| total progress count index color rgb |
	self position = bfOffBits ifFalse: [^self errorCanNotWrite].
	total := biWidth * biHeight.
	progress := 0.
	self progress: progress / total.
	biHeight - 1
		to: 0
		by: -1
		do: 
			[:y | 
			count := 0.
			0 to: biWidth - 1
				do: 
					[:x | 
					index := imageObject atX: x y: y.
					color := imageObject palette at: index.
					rgb := self rgbIntegerFrom: color.
					self nextPut: (rgb bitAnd: 255).
					self nextPut: ((rgb bitShift: -8)
							bitAnd: 255).
					self nextPut: ((rgb bitShift: -16)
							bitAnd: 255).
					count := count + 3.
					progress := progress + 1.
					self progress: progress / total].
			[count \\ 4 = 0]
				whileFalse: 
					[self nextPut: 0.
					count := count + 1]].
	^imageObject!

writeDepth24Palette
	^imageObject palette!

writeDepth8Data
	| count index |
	self position = bfOffBits ifFalse: [^self errorCanNotWrite].
"
	total := biWidth * biHeight.
	progress := 0.
	self progress: progress / total. 
"
	biHeight - 1
		to: 0
		by: -1
		do: 
			[:y | 
			count := 0.
			0 to: biWidth - 1
				do: 
					[:x | 
					index := imageObject atX: x y: y.
					self nextPut: index.
					count := count + 1.
"					progress := progress + 1.
					self progress: progress / total
"
					].
			[count \\ 4 = 0]
				whileFalse: 
					[self nextPut: 0.
					count := count + 1]].
	^imageObject!

writeDepth8Palette
	| size palette array |
	size := 1 bitShift: biBitCount.
	palette := imageObject palette.
	palette size = size ifFalse: [self errorCanNotWrite].
	array := self rgbIntegerArrayFor: palette.
	array
		do: 
			[:rgb | 
			self nextPut: (rgb bitAnd: 255).
			self nextPut: ((rgb bitShift: -8)
					bitAnd: 255).
			self nextPut: ((rgb bitShift: -16)
					bitAnd: 255).
			self nextPut: 0].
	^imageObject palette!

writeImageData
	biCompression = 0 ifFalse: [^self errorCanNotWrite].
	biBitCount = 24 ifTrue: [^self writeDepth24Data].
	biBitCount = 8 ifTrue: [^self writeDepth8Data].
	^self errorCanNotWrite!

writeImagePalette
	imagePalette := nil.
	biBitCount = 24 ifTrue: [imagePalette := self writeDepth24Palette].
	biBitCount = 8 ifTrue: [imagePalette := self writeDepth8Palette].
	imagePalette isNil ifTrue: [^self errorCanNotWrite]! !
!BmpImageStream categoriesFor: #nextImage!accessing!public! !
!BmpImageStream categoriesFor: #nextLSBLong!public!stream access! !
!BmpImageStream categoriesFor: #nextLSBLongPut:!public!stream access! !
!BmpImageStream categoriesFor: #nextLSBWord!public!stream access! !
!BmpImageStream categoriesFor: #nextLSBWordPut:!public!stream access! !
!BmpImageStream categoriesFor: #readBitmapFileHeader!decoding!public! !
!BmpImageStream categoriesFor: #readBitmapInfoHeader!decoding!public! !
!BmpImageStream categoriesFor: #readDepth1Data!decoding!public! !
!BmpImageStream categoriesFor: #readDepth24Data!decoding!public! !
!BmpImageStream categoriesFor: #readDepth8Data!decoding!public! !
!BmpImageStream categoriesFor: #readImageData!decoding!public! !
!BmpImageStream categoriesFor: #readImagePalette!decoding!public! !
!BmpImageStream categoriesFor: #writeBitmapFileHeader!encoding!public! !
!BmpImageStream categoriesFor: #writeBitmapInfoHeader!encoding!public! !
!BmpImageStream categoriesFor: #writeDepth24Data!encoding!public! !
!BmpImageStream categoriesFor: #writeDepth24Palette!encoding!public! !
!BmpImageStream categoriesFor: #writeDepth8Data!encoding!public! !
!BmpImageStream categoriesFor: #writeDepth8Palette!encoding!public! !
!BmpImageStream categoriesFor: #writeImageData!encoding!public! !
!BmpImageStream categoriesFor: #writeImagePalette!encoding!public! !

!BmpImageStream class methodsFor!

copyright
	^'Copyright (C) 1995-1998 AOKI Atsushi, All Rights Reserved.'!

example1
	"BmpImageStream example1."

	| image filename stream |
	image := Image fromUser.
	filename := 'zzz.bmp' asFilename.
	stream := BmpImageStream on: filename writeStream.
	[Cursor write showWhile: [stream nextPutImage: image]]
		valueNowOrOnUnwindDo: [stream close].
	^image!

example2
	"BmpImageStream example2."

	| filename stream image |
	filename := 'zzz.bmp' asFilename.
	stream := BmpImageStream on: filename readStream.
	[Cursor read showWhile: [image := stream nextImage]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image!

example3
	"BmpImageStream example3."

	| image filename stream |
	image := Image fromUser.
	filename := 'zzz.bmp' asFilename.
	stream := BmpImageStream on: filename writeStream.
	[Cursor write
		showWhile: 
			[stream compute: [:value | Transcript cr; show: value printString].
			stream nextPutImage: image]]
		valueNowOrOnUnwindDo: [stream close].
	^image!

example4
	"BmpImageStream example4."

	| filename stream image |
	filename := 'zzz.bmp' asFilename.
	stream := BmpImageStream on: filename readStream.
	[Cursor read
		showWhile: 
			[stream compute: [:value | Transcript cr; show: value printString].
			image := stream nextImage]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image!

system
	^'Goodies'!

version
	^'003'! !
!BmpImageStream class categoriesFor: #copyright!copyright!public! !
!BmpImageStream class categoriesFor: #example1!examples!public! !
!BmpImageStream class categoriesFor: #example2!examples!public! !
!BmpImageStream class categoriesFor: #example3!examples!public! !
!BmpImageStream class categoriesFor: #example4!examples!public! !
!BmpImageStream class categoriesFor: #system!copyright!public! !
!BmpImageStream class categoriesFor: #version!copyright!public! !

