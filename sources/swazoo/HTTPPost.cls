"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPPost
	instanceVariableNames: 'postData entityBody readPosition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPPost guid: (GUID fromString: '{3176e735-cbf7-4d2e-9b53-f782dc700c6a}')!
HTTPPost comment: '
HTTPPost 

rfc26216 section 9.5

   The POST method is used to request that the origin server accept the
   entity enclosed in the request as a new subordinate of the resource
   identified by the Request-URI in the Request-Line.

Instance Variables:
	entityBody	<>	
	postData	<HTTPPostDataArray>	

'!
!HTTPPost categoriesForClass!Unclassified! !
!HTTPPost methodsFor!

applicationOctetStreamFrom: aStream 
	"^self 
rfc 2046 says:
The recommended action for an implementation that receives an 'application/octet-stream' entity is to simply offer to put the data in a file, with any Content-Transfer-Encoding undone, or perhaps to use it as input to a user-specified process.
This method used to do a crlf -> cr conversion on the octet-stream, but was not clear why."

	self entityBody: (HTTPString 
				stringFromBytes: (aStream nextBytes: self contentLength)).
	^self!

blockStreamingFrom: aSwazooStream to: outStream until: aBoundaryBytes "detected"
	"copy by 8k blocks for optimal performance until a boundary of MIME part is detected"
	"Finish appropriatelly streaming at the end (skip crlf etc.)"
	| boundary start nrOfBoundary contents inPrevious remainingBoundary boundaryIndex |
	boundary := aSwazooStream readBuffer isBinary 
		ifTrue: [aBoundaryBytes asByteArray] ifFalse: [aBoundaryBytes asByteString].
	start := self readPosition.
	[true] whileTrue:
		[nrOfBoundary := 0.
		[nrOfBoundary = 0] whileTrue:
			[nrOfBoundary := aSwazooStream readBuffer signsOfBoundary: boundary.
			nrOfBoundary = 0 ifTrue: "no boundary in current buffer content"
				[contents := aSwazooStream readBuffer readContents.
				outStream nextPutAll: contents. 
				self incReadPosition: contents size.
				self checkToEnlargeBufferIn: aSwazooStream from: start. "for effective streaming"
				aSwazooStream fillBuffer] ].
		"copy and stream out content up to potential boundary"
		boundaryIndex := aSwazooStream readBuffer indexOfBoundary: boundary.
		inPrevious := aSwazooStream readBuffer copyBufferTo: boundaryIndex-1.
		outStream nextPutAll: 
			(inPrevious copyFrom: 1 to: (inPrevious size-2 max: 0) "without potential crlf"). 
		self incReadPosition: inPrevious size. "potential crlf included!!"

		nrOfBoundary = boundary size ifTrue: "full boundary detected, lets finish here"
			[aSwazooStream skip: boundary size. "skip boundary"
			self incReadPosition: boundary size.
			^true].  "streaming complete"

		self incReadPosition: nrOfBoundary.
		aSwazooStream fillBuffer. "let's get next buffer"
		remainingBoundary := boundary copyFrom: nrOfBoundary+1 to: boundary size.
		(aSwazooStream readBuffer startsWith:  remainingBoundary) ifTrue: "bound. ends in next buff?"
			[aSwazooStream skip: remainingBoundary size + 2.  "skip remaining bound. and crlf"
			self incReadPosition: remainingBoundary size + 2.
			^true]. "streaming complete"

		outStream 
			nextPutAll: (inPrevious copyFrom: inPrevious size-2 to: inPrevious size);  "potential crlf"
			nextPutAll: (boundary copyFrom: 1 to: nrOfBoundary).  "boundary part in prev.buff."
		] "continue from the start"!

checkToEnlargeBufferIn: aSwazooStream from: startPosition
	"enlarge buffer to 1MB (if not already) if more than 100KB already read"
	aSwazooStream readBuffer isEnlarged ifTrue: [^nil].
	(self readPosition - startPosition) > 100000 "about 100KB" 
		ifTrue: [aSwazooStream readBuffer resizeEnlarge].!

containsHeaderNecessaryFields
	"content type and (content length or chunked transfer encoding)"
	(self headers includesFieldOfClass: ContentTypeField) ifFalse: [^false].
	(self headers includesFieldOfClass: HTTPContentLengthField) ifTrue: [^true].
	^(self headers fieldNamed: 'Transfer-encoding' ifNone: [^false]) value = 'chunked'!

emptyData
	self ensureFullRead.
	^self postData select: [:each | each value isEmpty]!

ensureFullRead
	"that is, everything is read from a socket stream. Important because of defered parsing
	of postData"
	self postData isParsed ifFalse: 
		[self parsePostDataFrom: self postData stream.
		self postData setParsed]!

entityBody
	^entityBody!

entityBody: aString
	entityBody := aString!

for: aRequestLine readFrom: aSwazooStream 
	super for: aRequestLine readFrom: aSwazooStream.
	self initPostDataFor: aSwazooStream.
"	self parsePostDataFrom: aSwazooStream." "defered until first access of postData!! "!

incReadPosition
	self readPosition: self readPosition + 1!

incReadPosition: anInteger
	self readPosition: self readPosition + anInteger!

initPostDataFor: aSwazooStream
	postData := HTTPPostDataArray newOn: aSwazooStream!

isPost
	^true!

isPostDataEmpty
	self ensureFullRead.
	^self postData isEmpty!

isPostDataStreamedAt: aKey
	^(self postData at: aKey ifAbsent: [^false]) isStreamed!

multipartDataFrom: aSwazooStream
	"read all mime parts and put them in postData" 
	"read directly from stream, without intermediate buffers"
	| contentTypeField boundary part |
	contentTypeField := self headers fieldOfClass: ContentTypeField
				ifNone: [^aSwazooStream nextBytes: self contentLength]. "just skip"
	boundary := contentTypeField transferCodings at: 'boundary'
				ifAbsent: [^aSwazooStream nextBytes: self contentLength]. "just skip"
	self skipMimePreambleAndBoundary: boundary from: aSwazooStream. 
	part := #something. 
	[part notNil] whileTrue: 
		[part := self partFromStream: aSwazooStream boundary: boundary.
		part notNil ifTrue: [self postDataAt: part key put: part value]].
	self skipMimeEpilogueFrom: aSwazooStream. "all to the end  as defined by contentLegth"
	aSwazooStream readBuffer isEnlarged  "if MIME part larger that 100KB was read"
		ifTrue: [aSwazooStream readBuffer resizeShrink]. "that is, release memory"!

parsePostDataFrom: aSwazooStream 
	| mediaType |
	self containsHeaderNecessaryFields ifFalse: 
		[^SwazooHTTPPostError raiseSignal: 'Content-Type and Content-Length or chunked needed'].
	mediaType := (self headers fieldOfClass: ContentTypeField) mediaType.
	mediaType = 'application/x-www-form-urlencoded' 
		ifTrue: [^self urlencodedDataFrom: aSwazooStream].
	mediaType = 'multipart/form-data' 
		ifTrue: [^self multipartDataFrom: aSwazooStream].
	^self applicationOctetStreamFrom: aSwazooStream.!

partFromStream: aSwazooStream boundary: aBoundaryBytes
	"one mime part from a stream. Nil if no more multipart data"
	"Squeak specific"
	| bytes name filename datum contentType |
	bytes := aSwazooStream nextBytes: 2. self incReadPosition: 2.
	bytes = '--' asByteArray  ifTrue: [^nil].    "end of multipart data"
		
	name := nil. datum := nil. contentType := nil. "just to avoid compilation warning"
	[true] whileTrue: [| line |  "read all lines and at the end a body of that part"
		line := [(aSwazooStream upTo: Character cr asInteger) asString] "Squeak specific"
			on: Error do: [:ex | ''].  "usually nothing to read anymore), why happen this anyway?"
		self readPosition: self readPosition + line size + 1 "cr".
		line := bytes asString, line. bytes := ''.
		aSwazooStream peekByte = Character lf asInteger ifTrue: [| field | "this is a name line"
			aSwazooStream nextByte.  self incReadPosition. "skip linefeed"
			line isEmpty 	ifTrue: [| | "empty line indicates start of entity"
				name isNil ifTrue: [^nil].  "name must be read in previous circle"
				datum contentType: contentType. "completes datum's contentType read in a prev step"
 				^name -> (self readEntityFrom: aSwazooStream 
					datum: datum boundary: aBoundaryBytes)].
			field := HeaderField fromLine: line.
			field isContentDisposition ifTrue: 
					[name := (field parameterAt: 'name') copyWithout: $". 
					datum := (self isPostDataStreamedAt: name)
						ifTrue: [self postData at: name]  "streamed datum must exist before"
						ifFalse: [HTTPPostDatum new].
					contentType notNil ifTrue: [datum contentType: contentType]. "if read in prev.circle"
					filename := field parameterAt: 'filename' .   "only for file uploads"
					filename notNil ifTrue: [datum filename: (filename copyWithout: $")] ].
			field isContentType ifTrue: [contentType := field mediaType ] ] ]!

postData
	^postData!

postDataAt: aKey 
	^self postDataAt: aKey ifAbsent: [nil]!

postDataAt: aKey beforeStreamingDo: aBlockClosure
	"announce that you want to receive post data directly to a binary stream, which will be set
	by aBlockClosure. That block must receive and argument, which is a HTTPostDatum and 
	here it can set a writeStream"
	"Fails if post data is already read"
	self postData isParsed 
		ifTrue: [^self error: 'HTTPost already parsed, streaming not possible anymore!!'].
	^self postDataAt: aKey put: (HTTPPostDatum new writeBlock: aBlockClosure)!

postDataAt: aKey do: aBlock 
	| val |
	self ensureFullRead. "defered parsing of postData"
	val := self postData at: aKey ifAbsent: [nil].
	val isNil ifFalse: [aBlock value: val]!

postDataAt: aKey ifAbsent: aBlock 
	self ensureFullRead. "defered parsing of postData"
	^self postData at: aKey ifAbsent: aBlock!

postDataAt: aKey put: aPostDatum 
	"for testing purposes"

	self postData at: aKey put: aPostDatum!

postDataAt: aKey putString: aString 
	"for testing purposes"

	self postDataAt: aKey put: (HTTPPostDatum new value: aString)!

postDataAt: aKey streamTo: aWriteStream
	"announce that you want to receive post data directly to aWriteStream, 
	which must be binary. Fails if post data is already read"
	self postData isParsed 
		ifTrue: [^self error: 'HTTPost already parsed, streaming not possible anymore!!'].
	^self postDataAt: aKey put: (HTTPPostDatum new writeStream: aWriteStream)!

postDataKeys
	self ensureFullRead. "defered parsing of postData"
	^self postData keys!

postDataStringAt: aKey 
	^(self postDataAt: aKey ifAbsent: [^nil]) value!

postKeysAndValuesDo: aTwoArgBlock 
	self ensureFullRead. "defered parsing of postData"
	self postData 
		keysAndValuesDo: [:key :each | aTwoArgBlock value: key value: each value]!

readEntityFrom: aSwazooStream datum: aDatum boundary: aBoundaryBytes
	"read one entity from a stream and put into datum. Stream it if streamed. Also call a block 
	(if any) just before start of streaming, with a datum as parameter. This block can then set 
	a write stream in datum (for instance open a output file and stream on it)"
	| outStream |
	aDatum writeBlock notNil 
		ifTrue: [aDatum writeBlock value: aDatum]. "this should set writeStream if not already!!" 
	outStream := (aDatum isStreamed and: [aDatum writeStream notNil])
		ifTrue: [aDatum writeStream] ifFalse: [WriteStream on: ByteArray new].
	self blockStreamingFrom: aSwazooStream to: outStream until: ('--', aBoundaryBytes). "efficient streaming"
	aDatum isStreamed not ifTrue: "otherwise entity is already streamed to the output"
		[aDatum value: outStream contents asString].
	^aDatum!

readPosition
	"position in a read stream. just temporary"
	readPosition isNil ifTrue: [^1].
	^readPosition!

readPosition: aNumber
	readPosition := aNumber!

skipMimeEpilogueFrom: aSwazooStream
	"skip a mime epilogue until end of post data defined by contentLength"
	"example:
		--boundary--
		This is the epilogue.  It is also to be ignored
	"
	[self readPosition < self contentLength] whileTrue: 
		[aSwazooStream next. "just skip"
		self incReadPosition].!

skipMimePreambleAndBoundary: aBoundaryBytes from: aSwazooStream
	"skip a mime preamble until first boundary starts then skip that boundary too"
	"example:
		Content-type: multipart/mixed; boundary=''boundary''

		This is the preamble.  It is to be ignored, though it is
		a handy place to include an explanatory note to non-MIME compliant readers.
		--boundary
		..."
	| dummy |
	dummy := WriteStream on: ByteArray new.
	self blockStreamingFrom: aSwazooStream to: dummy until: ('--', aBoundaryBytes)!

urlencodedDataFrom: aStream 
	| entity tokens |
	(self headers includesFieldOfClass: HTTPContentLengthField) ifFalse: [^self].
	entity := aStream nextBytes: self contentLength.
	tokens := HTTPString subCollectionsFrom: (HTTPString stringFromBytes: entity) delimitedBy: $&.
	(tokens collect: [:each | HTTPString subCollectionsFrom: each delimitedBy: $=]) 
		do: 	[:keyVal | | datum key |
			datum := HTTPPostDatum new.
			datum value: (HTTPString decodedHTTPFrom: 
 				(keyVal last collect: [:char | 
					char = $+ ifTrue: [Character space] ifFalse: [char]])).
			key := (HTTPString decodedHTTPFrom: 
 				(keyVal first collect: [:char | 
					char = $+ ifTrue: [Character space] ifFalse: [char]])).
			self postDataAt: key put: datum]! !
!HTTPPost categoriesFor: #applicationOctetStreamFrom:!private! !
!HTTPPost categoriesFor: #blockStreamingFrom:to:until:!private-parsing support!public! !
!HTTPPost categoriesFor: #checkToEnlargeBufferIn:from:!private-parsing support!public! !
!HTTPPost categoriesFor: #containsHeaderNecessaryFields!private-parsing support!public! !
!HTTPPost categoriesFor: #emptyData!accessing!public! !
!HTTPPost categoriesFor: #ensureFullRead!parsing!public! !
!HTTPPost categoriesFor: #entityBody!accessing!public! !
!HTTPPost categoriesFor: #entityBody:!private! !
!HTTPPost categoriesFor: #for:readFrom:!parsing!public! !
!HTTPPost categoriesFor: #incReadPosition!private! !
!HTTPPost categoriesFor: #incReadPosition:!private! !
!HTTPPost categoriesFor: #initPostDataFor:!initialize-release!public! !
!HTTPPost categoriesFor: #isPost!public!testing! !
!HTTPPost categoriesFor: #isPostDataEmpty!public!testing! !
!HTTPPost categoriesFor: #isPostDataStreamedAt:!public!testing! !
!HTTPPost categoriesFor: #multipartDataFrom:!private-parsing!public! !
!HTTPPost categoriesFor: #parsePostDataFrom:!parsing!public! !
!HTTPPost categoriesFor: #partFromStream:boundary:!private-parsing!public! !
!HTTPPost categoriesFor: #postData!private! !
!HTTPPost categoriesFor: #postDataAt:!accessing!public! !
!HTTPPost categoriesFor: #postDataAt:beforeStreamingDo:!accessing!public! !
!HTTPPost categoriesFor: #postDataAt:do:!accessing!public! !
!HTTPPost categoriesFor: #postDataAt:ifAbsent:!accessing!public! !
!HTTPPost categoriesFor: #postDataAt:put:!accessing!public! !
!HTTPPost categoriesFor: #postDataAt:putString:!accessing!public! !
!HTTPPost categoriesFor: #postDataAt:streamTo:!accessing!public! !
!HTTPPost categoriesFor: #postDataKeys!accessing!public! !
!HTTPPost categoriesFor: #postDataStringAt:!accessing!public! !
!HTTPPost categoriesFor: #postKeysAndValuesDo:!accessing!public! !
!HTTPPost categoriesFor: #readEntityFrom:datum:boundary:!private-parsing!public! !
!HTTPPost categoriesFor: #readPosition!private! !
!HTTPPost categoriesFor: #readPosition:!private! !
!HTTPPost categoriesFor: #skipMimeEpilogueFrom:!private-parsing support!public! !
!HTTPPost categoriesFor: #skipMimePreambleAndBoundary:from:!private-parsing support!public! !
!HTTPPost categoriesFor: #urlencodedDataFrom:!private-parsing!public! !

!HTTPPost class methodsFor!

methodName
	^'POST'! !
!HTTPPost class categoriesFor: #methodName!accessing!public! !

