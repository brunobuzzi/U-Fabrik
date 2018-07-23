"Filed out from Dolphin Smalltalk 7"!

ImageStream subclass: #BosImageStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BosImageStream guid: (GUID fromString: '{511ad13c-04ca-45e9-92ac-0aea739eab83}')!
BosImageStream comment: 'BosImageStream 

Copyright (C) 1995-1998 AOKI Atsushi, All Rights Reserved.'!
!BosImageStream categoriesForClass!Unclassified! !
!BosImageStream methodsFor!

readHeader
	(self hasMagicNumber: 'BosImage' asByteArray)
		ifFalse: [^self errorCanNotRead]!

writeHeader
	self nextPutAll: 'BosImage' asByteArray.! !
!BosImageStream categoriesFor: #readHeader!decoding!public! !
!BosImageStream categoriesFor: #writeHeader!encoding!public! !

!BosImageStream class methodsFor!

copyright
	^'Copyright (C) 1995-1998 AOKI Atsushi, All Rights Reserved.'!

example1
	"BosImageStream example1."

	| image filename stream |
	image := Image fromUser.
	filename := 'zzz.bos' asFilename.
	stream := BosImageStream on: filename writeStream.
	[Cursor write showWhile: [stream nextPutImage: image]]
		valueNowOrOnUnwindDo: [stream close].
	^image!

example2
	"BosImageStream example2."

	| filename stream image |
	filename := 'zzz.bos' asFilename.
	stream := BosImageStream on: filename readStream.
	[Cursor read showWhile: [image := stream nextImage]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image!

example3
	"BosImageStream example3."

	| image filename stream |
	image := Image fromUser.
	filename := 'zzz.bos' asFilename.
	stream := BosImageStream on: filename writeStream.
	[Cursor write
		showWhile: 
			[stream compute: [:value | Transcript cr; show: value printString].
			stream nextPutImage: image]]
		valueNowOrOnUnwindDo: [stream close].
	^image!

example4
	"BosImageStream example4."

	| filename stream image |
	filename := 'zzz.bos' asFilename.
	stream := BosImageStream on: filename readStream.
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
!BosImageStream class categoriesFor: #copyright!copyright!public! !
!BosImageStream class categoriesFor: #example1!examples!public! !
!BosImageStream class categoriesFor: #example2!examples!public! !
!BosImageStream class categoriesFor: #example3!examples!public! !
!BosImageStream class categoriesFor: #example4!examples!public! !
!BosImageStream class categoriesFor: #system!copyright!public! !
!BosImageStream class categoriesFor: #version!copyright!public! !

