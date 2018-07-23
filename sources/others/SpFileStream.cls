"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SpFileStream
	instanceVariableNames: 'underlyingStream filename'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpFileStream guid: (GUID fromString: '{3887f6dc-2f8a-4180-9844-3477baa7c1a4}')!
SpFileStream comment: ''!
!SpFileStream categoriesForClass!Unclassified! !
!SpFileStream methodsFor!

appendingToFilename: aSpFilename
	self filename: aSpFilename.
	underlyingStream := FileStream write: self filename path mode: #append!

atEnd
	^self underlyingStream atEnd!

binary
	^self underlyingStream isBinary!

close
	^self underlyingStream close!

closed
	^self underlyingStream file isNil!

contentsStream
	^self underlyingStream contents readStream!

cr
	^self underlyingStream cr!

filename
	^filename!

filename: aSpFilename
	filename := aSpFilename!

flush
	^self underlyingStream flush!

next
	^self underlyingStream next!

nextPut: anObject 
	^self underlyingStream nextPut: anObject!

nextPutAll: aCollection 
	^self underlyingStream nextPutAll: aCollection!

peek
	^self underlyingStream peek!

position
	^self underlyingStream position!

position: aNumber
	^self underlyingStream position: aNumber!

readingFromFilename: anOSkFilename 
	^self readingFromFileNamed: anOSkFilename asString.!

readingFromFileNamed: aString 
	"^self
I initialize myself to write to a file named aString."

	filename := aString.
	underlyingStream := FileStream read: aString text: false.
	^self!

skip: anInteger
	^self underlyingStream skip: anInteger!

store: anObject 
	^self underlyingStream store: anObject!

throughAll: aCollection
	^self underlyingStream throughAll: aCollection!

underlyingStream
	^underlyingStream!

upTo: anObject
	^self underlyingStream upTo: anObject!

upToAll: aCollection
	^self underlyingStream upToAll: aCollection!

upToEnd
	^self underlyingStream upToEnd!

writingToFilename: aSpFilename 
	self filename: aSpFilename.
	underlyingStream := FileStream write: self filename path.
	^self!

writingToFileNamed: aString 
	"^self
I initialize myself to write to a file named aString."

	#eamAdded.
	filename := aString.
	underlyingStream := FileStream write: aString.
	^self! !
!SpFileStream categoriesFor: #appendingToFilename:!initialize-release!public! !
!SpFileStream categoriesFor: #atEnd!public!services! !
!SpFileStream categoriesFor: #binary!public!services! !
!SpFileStream categoriesFor: #close!public!services! !
!SpFileStream categoriesFor: #closed!public!services! !
!SpFileStream categoriesFor: #contentsStream!accessing!public! !
!SpFileStream categoriesFor: #cr!public!services! !
!SpFileStream categoriesFor: #filename!accessing!public! !
!SpFileStream categoriesFor: #filename:!accessing!public! !
!SpFileStream categoriesFor: #flush!public!services! !
!SpFileStream categoriesFor: #next!public!services! !
!SpFileStream categoriesFor: #nextPut:!public!services! !
!SpFileStream categoriesFor: #nextPutAll:!public!services! !
!SpFileStream categoriesFor: #peek!public!services! !
!SpFileStream categoriesFor: #position!public!services! !
!SpFileStream categoriesFor: #position:!public!services! !
!SpFileStream categoriesFor: #readingFromFilename:!initialize-release!private! !
!SpFileStream categoriesFor: #readingFromFileNamed:!initialize-release!private! !
!SpFileStream categoriesFor: #skip:!public!services! !
!SpFileStream categoriesFor: #store:!public!services! !
!SpFileStream categoriesFor: #throughAll:!public!services! !
!SpFileStream categoriesFor: #underlyingStream!accessing!public! !
!SpFileStream categoriesFor: #upTo:!public!services! !
!SpFileStream categoriesFor: #upToAll:!public!services! !
!SpFileStream categoriesFor: #upToEnd!public!services! !
!SpFileStream categoriesFor: #writingToFilename:!initialize-release!public! !
!SpFileStream categoriesFor: #writingToFileNamed:!initialize-release!private! !

!SpFileStream class methodsFor!

appendingToFilename: aSpFilename 
	"^a SpFileStream
	I create a new instance of myself to append to the file identified by anOSkFilename."

	^self new appendingToFilename: aSpFilename!

readingFromFilename: aSpFilename 
	"^a SpFileStream
	I create a new instance of myself to read the file identified by anOSkFilename."

	^self new readingFromFilename: aSpFilename!

readingFromFileNamed: aString 
	"^a SpFileStream
	I create a new instance of myself to read from a file named aString."

	^self new readingFromFileNamed: aString!

writingToFilename: aSpFilename 
	"^an SpFileStream
	I create a new instance of myself to append to the file identified by aSpFilename."

	^self new writingToFilename: aSpFilename!

writingToFileNamed: aString 
	"^a SpFileStream
	I create a new instance of myself to write to a file named aString."

	^self new writingToFileNamed: aString! !
!SpFileStream class categoriesFor: #appendingToFilename:!instance creation!public! !
!SpFileStream class categoriesFor: #readingFromFilename:!instance creation!public! !
!SpFileStream class categoriesFor: #readingFromFileNamed:!instance creation!public! !
!SpFileStream class categoriesFor: #writingToFilename:!instance creation!public! !
!SpFileStream class categoriesFor: #writingToFileNamed:!instance creation!public! !

