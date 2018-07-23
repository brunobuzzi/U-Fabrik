"Filed out from Dolphin Smalltalk 7"!

MimeObject subclass: #HTTPPostDatum
	instanceVariableNames: 'filename writeStream writeBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPPostDatum guid: (GUID fromString: '{96df92c7-d314-4c06-bc67-b0abaea9182d}')!
HTTPPostDatum comment: ''!
!HTTPPostDatum categoriesForClass!Unclassified! !
!HTTPPostDatum methodsFor!

defaultContentType
	^'text/plain'!

filename
	^filename!

filename: aString
	filename := aString!

filenameWithoutPath
	"M$ Internet Explorer includes full path in filename of uploaded file!! "
	self filename isNil ifTrue: [^nil].
	^(self filename includes: $\ ) 
		ifTrue: [self filename copyFrom: (self filename lastIndexOf: $\ )+1 to: self filename size]
		ifFalse: [self filename]!

isStreamed
	"this postDatum is streamed - it has an output stream to receive data into or a block 
	which will set it"
	^self writeStream notNil or: [self writeBlock notNil]!

writeBlock
	^writeBlock!

writeBlock: aBlockClosure
	"this block will be called just before start of streaming to writeStream. It can be used to 
	open the writeStream, because on that time we already know the filename of uploaded file. 
	As a parameter this postDatum is sent"
	writeBlock := aBlockClosure!

writeStream
	^writeStream!

writeStream: aWriteStream
	"a binary stream where to put directly a post data"
	writeStream := aWriteStream! !
!HTTPPostDatum categoriesFor: #defaultContentType!private-accessing!public! !
!HTTPPostDatum categoriesFor: #filename!accessing!public! !
!HTTPPostDatum categoriesFor: #filename:!accessing!public! !
!HTTPPostDatum categoriesFor: #filenameWithoutPath!accessing!public! !
!HTTPPostDatum categoriesFor: #isStreamed!public!testing! !
!HTTPPostDatum categoriesFor: #writeBlock!accessing!public! !
!HTTPPostDatum categoriesFor: #writeBlock:!accessing!public! !
!HTTPPostDatum categoriesFor: #writeStream!accessing!public! !
!HTTPPostDatum categoriesFor: #writeStream:!accessing!public! !

