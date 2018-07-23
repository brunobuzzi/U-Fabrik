"Filed out from Dolphin Smalltalk 7"!

WebInputField subclass: #WebFileInputField
	instanceVariableNames: 'filenameAspect contentTypeAspect writeStream writeBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebFileInputField guid: (GUID fromString: '{11ffc56a-a2ae-4481-9f05-ee8947e2e0e7}')!
WebFileInputField comment: ''!
!WebFileInputField categoriesForClass!Unclassified! !
!WebFileInputField methodsFor!

acceptFileAttributesFrom: aRequest field: aString
	| mutator |
	self filenameAspect notNil ifTrue:
		[| filename |
		mutator := (self filenameAspect asString, ':') asSymbol.
		filename := AIDASite convert: (aRequest postDataAt: aString) filenameWithoutPath fromCodepage: self session codePage.
		self object perform: mutator with: filename].
	self contentTypeAspect notNil ifTrue:
		[mutator := (self contentTypeAspect asString, ':') asSymbol.
		self object perform: mutator with: (aRequest postDataAt: aString) contentType]!

aspect: aSymbol filenameAspect: aSymbol2 contentTypeAspect: aSymbol3 forObject: anObject
	^self aspect: aSymbol for: anObject; 
		filenameAspect: aSymbol2; 
		contentTypeAspect: aSymbol3!

aspect: aSymbol filenameAspect: aSymbol2 forObject: anObject
	^self aspect: aSymbol for: anObject; filenameAspect: aSymbol2!

contentTypeAspect
	^contentTypeAspect!

contentTypeAspect: aSymbol
	contentTypeAspect := aSymbol!

filenameAspect
	^filenameAspect!

filenameAspect: aSymbol
	filenameAspect := aSymbol!

initialize
	super initialize.
	self type: 'file'.!

isFileInputField
	^true!

isInputField
	^false!

isStreamed
	"file is received directly from request into output stream"
	^self writeStream notNil or: [self writeBlock notNil]!

prepareAttributesToPrintOn: aSession
	"just override value preparation to nothing"!

writeBlock
	^writeBlock!

writeBlock: aBlockClosure
	"this block will be called just before start of streaming to writeStream"
	writeBlock := aBlockClosure!

writeStream
	^writeStream!

writeStream: aStream
	"output binary stream where uploaded file will be directy writen"
	writeStream := aStream! !
!WebFileInputField categoriesFor: #acceptFileAttributesFrom:field:!aspect adapting!public! !
!WebFileInputField categoriesFor: #aspect:filenameAspect:contentTypeAspect:forObject:!aspect adapting!public! !
!WebFileInputField categoriesFor: #aspect:filenameAspect:forObject:!aspect adapting!public! !
!WebFileInputField categoriesFor: #contentTypeAspect!accessing!public! !
!WebFileInputField categoriesFor: #contentTypeAspect:!accessing!public! !
!WebFileInputField categoriesFor: #filenameAspect!accessing!public! !
!WebFileInputField categoriesFor: #filenameAspect:!accessing!public! !
!WebFileInputField categoriesFor: #initialize!initialize-release!public! !
!WebFileInputField categoriesFor: #isFileInputField!public!testing! !
!WebFileInputField categoriesFor: #isInputField!public!testing! !
!WebFileInputField categoriesFor: #isStreamed!public!testing! !
!WebFileInputField categoriesFor: #prepareAttributesToPrintOn:!printing!public! !
!WebFileInputField categoriesFor: #writeBlock!accessing!public! !
!WebFileInputField categoriesFor: #writeBlock:!accessing!public! !
!WebFileInputField categoriesFor: #writeStream!accessing!public! !
!WebFileInputField categoriesFor: #writeStream:!accessing!public! !

!WebFileInputField class methodsFor!

aspect: aSymbol filenameAspect: aSymbol2 contentTypeAspect: aSymbol3 forObject: anObject

	^self new aspect: aSymbol for: anObject; 
		filenameAspect: aSymbol2;
		contentTypeAspect: aSymbol3!

aspect: aSymbol filenameAspect: aSymbol2 forObject: anObject

	^self new aspect: aSymbol for: anObject; 
		filenameAspect: aSymbol2!

beforeStreamingDo: aBlock filenameAspect: aSymbol2 contentTypeAspect: aSymbol3 forObject: anObject
	"A block will be called just before streaming begins, with a HTTPPostDatum as parameter. Block
	  must set a write stream in datum (for instance open an output file and stream on it)"
	"example block: [:datum | datum writeStream: 'myfile' writeStream binary] "
	^self new 
		writeBlock: aBlock; 
		object: anObject; 
		filenameAspect: aSymbol2;
		contentTypeAspect: aSymbol3!

beforeStreamingDo: aBlock filenameAspect: aSymbol2 forObject: anObject
	"A block will be called just before streaming begins, with a HTTPPostDatum as parameter. Block
	 must set a write stream in datum (for instance open an output file and stream on it)"
	"example block: [:datum | datum writeStream: 'myfile' writeStream binary] "
	"Don't forget to close such a stream after!! This can be done in App action method"
	^self new 
		writeBlock: aBlock; 
		object: anObject; 
		filenameAspect: aSymbol2!

toStream: aStream filenameAspect: aSymbol2 contentTypeAspect: aSymbol3 forObject: anObject
	"wrrite uploaded file directly to aStream, which must be binary"
	^self new 
		writeStream: aStream; 
		object: anObject; 
		filenameAspect: aSymbol2;
		contentTypeAspect: aSymbol3!

toStream: aStream filenameAspect: aSymbol2 forObject: anObject
	"wrrite uploaded file directly to aStream, which must be binary"
	^self new 
		writeStream: aStream; 
		object: anObject; 
		filenameAspect: aSymbol2! !
!WebFileInputField class categoriesFor: #aspect:filenameAspect:contentTypeAspect:forObject:!instance creation!public! !
!WebFileInputField class categoriesFor: #aspect:filenameAspect:forObject:!instance creation!public! !
!WebFileInputField class categoriesFor: #beforeStreamingDo:filenameAspect:contentTypeAspect:forObject:!instance creation!public! !
!WebFileInputField class categoriesFor: #beforeStreamingDo:filenameAspect:forObject:!instance creation!public! !
!WebFileInputField class categoriesFor: #toStream:filenameAspect:contentTypeAspect:forObject:!instance creation!public! !
!WebFileInputField class categoriesFor: #toStream:filenameAspect:forObject:!instance creation!public! !

