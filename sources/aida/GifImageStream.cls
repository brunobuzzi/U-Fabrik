"Filed out from Dolphin Smalltalk 7"!

ImageStream subclass: #GifImageStream
	instanceVariableNames: 'width height bitsPerPixel colorPalette rowByteSize xpos ypos pass interlace codeSize clearCode eoiCode freeCode maxCode prefixTable suffixTable remainBitCount bufByte bufStream transparentPixel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GifImageStream guid: (GUID fromString: '{fa2bafe4-5e78-4bed-a4bd-4ab3eb34da17}')!
GifImageStream comment: 'GifImageStream 

Copyright (C) 1995-1998 AOKI Atsushi, All Rights Reserved.'!
!GifImageStream categoriesForClass!Unclassified! !
!GifImageStream methodsFor!

checkCodeSize
	(freeCode > maxCode and: [codeSize < 12])
		ifTrue:
			[codeSize := codeSize + 1.
			maxCode := (1 bitShift: codeSize) - 1]!

fillBuffer
	| packSize |
	packSize := self next.
	bufStream := ReadStream on: (self next: packSize)!

flushBits
	remainBitCount = 0
		ifFalse: 
			[self nextBytePut: bufByte.
			remainBitCount := 0].
	self flushBuffer!

flushBuffer
	bufStream isEmpty ifTrue: [^self].
	self nextPut: bufStream size.
	self nextPutAll: bufStream contents.
	bufStream := WriteStream on: (ByteArray new: 256)!

flushCode
	self flushBits!

nextBits
	| integer readBitCount shiftCount |
	integer := 0.
	remainBitCount = 0
		ifTrue: 
			[readBitCount := 8.
			shiftCount := 0]
		ifFalse: 
			[readBitCount := remainBitCount.
			shiftCount := remainBitCount - 8].
	[readBitCount < codeSize]
		whileTrue: 
			[self peekByte isNil ifTrue: [^eoiCode].
			integer := integer + (self nextByte bitShift: shiftCount).
			shiftCount := shiftCount + 8.
			readBitCount := readBitCount + 8].
	self peekByte isNil ifTrue: [^eoiCode].
	(remainBitCount := readBitCount - codeSize) = 0
		ifTrue: [integer := integer + (self nextByte bitShift: shiftCount)]
		ifFalse: [integer := integer + (self peekByte bitShift: shiftCount)].
	^integer bitAnd: maxCode!

nextBitsPut: anInteger 
	| integer writeBitCount shiftCount |
	shiftCount := 0.
	remainBitCount = 0
		ifTrue: 
			[writeBitCount := 8.
			integer := anInteger]
		ifFalse: 
			[writeBitCount := remainBitCount.
			integer := bufByte + (anInteger bitShift: 8 - remainBitCount)].
	[writeBitCount < codeSize]
		whileTrue: 
			[self nextBytePut: ((integer bitShift: shiftCount)
					bitAnd: 255).
			shiftCount := shiftCount - 8.
			writeBitCount := writeBitCount + 8].
	(remainBitCount := writeBitCount - codeSize) = 0
		ifTrue: [self nextBytePut: (integer bitShift: shiftCount)]
		ifFalse: [bufByte := integer bitShift: shiftCount].
	^anInteger!

nextByte
	bufStream atEnd
		ifTrue:
			[self atEnd ifTrue: [^nil].
			self fillBuffer].
	^bufStream next!

nextBytePut: aByte
	bufStream nextPut: aByte.
	bufStream size >= 254 ifTrue: [self flushBuffer]!

packBits: bits depthFrom8To: depth width: xSize height: ySize pad: pad 
	| maxPixelVal pixelInByte bitsWidth pBitsWidth pBits |
	(#(1 2 4) includes: depth)
		ifFalse: [^self error: 'depth must be 1, 2, or 4'].
	(#(8 16 32) includes: pad)
		ifFalse: [^self error: 'pad must be 8, 16, or 32'].
	maxPixelVal := (1 bitShift: depth)
				- 1.
	pixelInByte := 8 / depth.
	bitsWidth := xSize * 8 + pad - 1 // pad * (pad / 8).
	pBitsWidth := xSize * depth + pad - 1 // pad * (pad / 8).
	pBits := ByteArray new: pBitsWidth * ySize.
	1 to: ySize
		do: 
			[:i | 
			| bitIndex pBitIndex pixelVal count |
			bitIndex := i - 1 * bitsWidth.
			pBitIndex := i - 1 * pBitsWidth.
			pixelVal := 0.
			count := 0.
			1 to: xSize
				do: 
					[:j | 
					| val |
					val := bits at: (bitIndex := bitIndex + 1).
					val > maxPixelVal ifTrue: [^self error: 'can''t pack bits'].
					pixelVal := (pixelVal bitShift: depth)
								+ val.
					(count := count + 1) >= pixelInByte
						ifTrue: 
							[pBits at: (pBitIndex := pBitIndex + 1) put: pixelVal.
							pixelVal := 0.
							count := 0]].
			count > 0 ifTrue: [pBits at: (pBitIndex := pBitIndex + 1) put: (pixelVal bitShift: depth * (pixelInByte - count))]].
	^pBits!

peekByte
	bufStream atEnd
		ifTrue:
			[self atEnd ifTrue: [^nil].
			self fillBuffer].
	^bufStream peek!

readBitData
	| bits outCodes outCount bitMask initCodeSize code curCode oldCode inCode finChar set |
	pass := 0.
	xpos := 0.
	ypos := 0.
	rowByteSize := width * 8 + 7 // 8.
	remainBitCount := 0.
	bufByte := 0.
	bufStream := ReadStream on: ByteArray new.
	bits := ByteArray new: width * height.
	outCodes := ByteArray new: 1025.
	outCount := 0.
	bitMask := (1 bitShift: bitsPerPixel)
				- 1.
	prefixTable := Array new: 4096.
	suffixTable := Array new: 4096.
	initCodeSize := self next.
	self setParameters: initCodeSize.
	set := Set new: height.
	self progress: set size / height.
	[(code := self readCode) = eoiCode]
		whileFalse: [code = clearCode
				ifTrue: 
					[self setParameters: initCodeSize.
					curCode := oldCode := code := self readCode.
					finChar := curCode bitAnd: bitMask.
					set add: ypos.
					self progress: set size / height.
					self writePixel: finChar to: bits]
				ifFalse: 
					[curCode := inCode := code.
					curCode >= freeCode
						ifTrue: 
							[curCode := oldCode.
							outCodes at: (outCount := outCount + 1) put: finChar].
					[curCode > bitMask]
						whileTrue: 
							[outCount > 1024 ifTrue: [^self error: 'corrupt GIF file (OutCount)'].
							outCodes at: (outCount := outCount + 1) put: (suffixTable at: curCode + 1).
							curCode := prefixTable at: curCode + 1].
					finChar := curCode bitAnd: bitMask.
					outCodes at: (outCount := outCount + 1) put: finChar.
					outCount
						to: 1
						by: -1
						do: 
							[:i | 
							set add: ypos.
							self progress: set size / height.
							self writePixel: (outCodes at: i)
								to: bits].
					outCount := 0.
					prefixTable at: freeCode + 1 put: oldCode.
					suffixTable at: freeCode + 1 put: finChar.
					oldCode := inCode.
					freeCode := freeCode + 1.
					self checkCodeSize]].
	prefixTable := suffixTable := nil.
	^bits!

readCode
	^self nextBits!

readGraphicControlExtensionBlock
	| isTransparent |
	self next.
	isTransparent := (self next bitAnd: 1)
				= 1.
	self next: 2.
	isTransparent
		ifTrue: [transparentPixel := self next]
		ifFalse: [self next].
	self next!

readPixelFrom: bits
	| pixel |
	ypos >= height ifTrue: [^nil].
	pixel := bits at: (ypos * rowByteSize + xpos + 1).
	self updatePixelPosition.
	^pixel!

readWord
	^self next + (self next bitShift: 8)!

setParameters: initCodeSize
	clearCode := 1 bitShift: initCodeSize.
	eoiCode := clearCode + 1.
	freeCode := clearCode + 2.
	codeSize := initCodeSize + 1.
	maxCode := (1 bitShift: codeSize) - 1!

transparentPixel: aPixelValueOrNil 
	transparentPixel := aPixelValueOrNil!

unpackBits: bits depthTo8From: depth width: xSize height: ySize pad: pad 
	| bitMask pixelInByte bitsWidth upBitsWidth stopWidth trailingSize upBits |
	(#(1 2 4) includes: depth)
		ifFalse: [^self error: 'depth must be 1, 2, or 4'].
	(#(8 16 32) includes: pad)
		ifFalse: [^self error: 'pad must be 8, 16, or 32'].
	bitMask := (1 bitShift: depth)
				- 1.
	pixelInByte := 8 / depth.
	bitsWidth := xSize * depth + pad - 1 // pad * (pad / 8).
	upBitsWidth := xSize * 8 + pad - 1 // pad * (pad / 8).
	stopWidth := xSize * depth + 7 // 8.
	trailingSize := xSize - (stopWidth - 1 * pixelInByte).
	upBits := ByteArray new: upBitsWidth * ySize.
	1 to: ySize
		do: 
			[:i | 
			| bitIndex upBitIndex val |
			bitIndex := i - 1 * bitsWidth.
			upBitIndex := i - 1 * upBitsWidth.
			1 to: stopWidth - 1
				do: 
					[:j | 
					val := bits at: (bitIndex := bitIndex + 1).
					upBitIndex := upBitIndex + pixelInByte.
					1 to: pixelInByte
						do: 
							[:k | 
							upBits at: upBitIndex - k + 1 put: (val bitAnd: bitMask).
							val := val bitShift: depth negated]].
			val := (bits at: (bitIndex := bitIndex + 1))
						bitShift: depth negated * (pixelInByte - trailingSize).
			upBitIndex := upBitIndex + trailingSize.
			1 to: trailingSize
				do: 
					[:k | 
					upBits at: upBitIndex - k + 1 put: (val bitAnd: bitMask).
					val := val bitShift: depth negated]].
	^upBits!

updatePixelPosition
	(xpos := xpos + 1) >= width ifFalse: [^self].
	xpos := 0.
	interlace
		ifFalse: 
			[ypos := ypos + 1.
			^self].
	pass = 0
		ifTrue: 
			[(ypos := ypos + 8) >= height
				ifTrue: 
					[pass := pass + 1.
					ypos := 4].
			^self].
	pass = 1
		ifTrue: 
			[(ypos := ypos + 8) >= height
				ifTrue: 
					[pass := pass + 1.
					ypos := 2].
			^self].
	pass = 2
		ifTrue: 
			[(ypos := ypos + 4) >= height
				ifTrue: 
					[pass := pass + 1.
					ypos := 1].
			^self].
	pass = 3
		ifTrue: 
			[ypos := ypos + 2.
			^self].
	^self error: 'can''t happen'!

writeCode: aCode
	self nextBitsPut: aCode!

writeCodeAndCheckCodeSize: aCode
	self writeCode: aCode.
	self checkCodeSize!

writePixel: pixel to: bits 
	bits at: ypos * rowByteSize + xpos + 1 put: pixel.
	self updatePixelPosition!

writeWord: aWord 
	self nextPut: (aWord bitAnd: 255).
	self nextPut: ((aWord bitShift: -8)
			bitAnd: 255).
	^aWord! !
!GifImageStream categoriesFor: #checkCodeSize!private! !
!GifImageStream categoriesFor: #fillBuffer!packing!public! !
!GifImageStream categoriesFor: #flushBits!bits access!public! !
!GifImageStream categoriesFor: #flushBuffer!packing!public! !
!GifImageStream categoriesFor: #flushCode!encoding!public! !
!GifImageStream categoriesFor: #nextBits!bits access!public! !
!GifImageStream categoriesFor: #nextBitsPut:!bits access!public! !
!GifImageStream categoriesFor: #nextByte!packing!public! !
!GifImageStream categoriesFor: #nextBytePut:!packing!public! !
!GifImageStream categoriesFor: #packBits:depthFrom8To:width:height:pad:!private! !
!GifImageStream categoriesFor: #peekByte!packing!public! !
!GifImageStream categoriesFor: #readBitData!decoding!public! !
!GifImageStream categoriesFor: #readCode!decoding!public! !
!GifImageStream categoriesFor: #readGraphicControlExtensionBlock!GIF89a!public! !
!GifImageStream categoriesFor: #readPixelFrom:!encoding!public! !
!GifImageStream categoriesFor: #readWord!decoding!public! !
!GifImageStream categoriesFor: #setParameters:!private! !
!GifImageStream categoriesFor: #transparentPixel:!GIF89a!public! !
!GifImageStream categoriesFor: #unpackBits:depthTo8From:width:height:pad:!private! !
!GifImageStream categoriesFor: #updatePixelPosition!private! !
!GifImageStream categoriesFor: #writeCode:!encoding!public! !
!GifImageStream categoriesFor: #writeCodeAndCheckCodeSize:!encoding!public! !
!GifImageStream categoriesFor: #writePixel:to:!decoding!public! !
!GifImageStream categoriesFor: #writeWord:!encoding!public! !

!GifImageStream class methodsFor!

copyright
	^'Copyright (C) 1995-1998 AOKI Atsushi, All Rights Reserved.'!

example1
	"GifImageStream example1."

	| image filename stream |
	image := Image fromUser.
	filename := 'zzz.gif' asFilename.
	stream := GifImageStream on: filename writeStream.
	[Cursor write showWhile: [stream nextPutImage: image]]
		valueNowOrOnUnwindDo: [stream close].
	^image!

example2
	"GifImageStream example2."

	| filename stream image |
	filename := 'zzz.gif' asFilename.
	stream := GifImageStream on: filename readStream.
	[Cursor read showWhile: [image := stream nextImage]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image!

example3
	"GifImageStream example3."

	| image filename stream |
	image := Image fromUser.
	filename := 'zzz.gif' asFilename.
	stream := GifImageStream on: filename writeStream.
	[Cursor write
		showWhile: 
			[stream compute: [:value | Transcript cr; show: value printString].
			stream nextPutImage: image]]
		valueNowOrOnUnwindDo: [stream close].
	^image!

example4
	"GifImageStream example4."

	| filename stream image |
	filename := 'zzz.gif' asFilename.
	stream := GifImageStream on: filename readStream.
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
!GifImageStream class categoriesFor: #copyright!copyright!public! !
!GifImageStream class categoriesFor: #example1!examples!public! !
!GifImageStream class categoriesFor: #example2!examples!public! !
!GifImageStream class categoriesFor: #example3!examples!public! !
!GifImageStream class categoriesFor: #example4!examples!public! !
!GifImageStream class categoriesFor: #system!copyright!public! !
!GifImageStream class categoriesFor: #version!copyright!public! !

