"Filed out from Dolphin Smalltalk 7"!

Object subclass: #DelimitedFile
	instanceVariableNames: 'filename delimiter codepage records'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DelimitedFile guid: (GUID fromString: '{088ff7ba-6812-482f-be53-0362b858a59f}')!
DelimitedFile comment: ''!
!DelimitedFile categoriesForClass!Unclassified! !
!DelimitedFile methodsFor!

codepage
	codepage isNil ifTrue: [self codepage: self defaultCodepage].
	^codepage!

codepage: aSymbol
	" #utf8 #cp1250  #iso2 #'7bit'"
	codepage := aSymbol.!

crlf
	"return an cr-lf combination"

	^(Character cr) asSymbol ", (Character lf) asSymbol".!

defaultCodepage
	^#cp1250 "Windows"!

defaultDelimiter
	"default delimiter is ; "

	^$;!

delimiter
	"delimiter is a character, which separate fields in a delimited file"
	delimiter isNil ifTrue: [self delimiter: self defaultDelimiter].
	^delimiter!

delimiter: aCharacter
	"delimiter is a character, which separate fields in a delimited file"
	delimiter := aCharacter.!

endOfLine: aStream
	"return true if we are at the end of line (on cr or lf characters)"
	aStream peek isNil ifTrue: [^true].
	^(aStream peek = Character cr or: [aStream peek = Character lf]).!

filename
	^filename!

filename: aFilename
	filename := aFilename.!

initialize!

newRecordFrom: aStream

	"read one line from delimited file, detect and separate fields and convert to
	appropriate objects into an ordered collection. return that collection"

	| collection field |
	collection := OrderedCollection new.
	[self endOfLine: aStream] whileFalse:
		[field := self readFieldFrom: aStream.
		collection add: field].
	self skipEndOfLine: aStream.
	^collection!

readFieldFrom: aStream
	"read one field from delimited file, and convert to appropriate object. Return that object"
	| object stream |
	aStream peek = $" ifTrue:  "start of a text field"
		[object := aStream upTo: $"; upTo: $".
		(self endOfLine: aStream) ifFalse: [aStream upTo: self delimiter].
		^self codepage = #'7bit' 
			ifTrue: [AIDASite oldConvertToUnicode: (AIDASite returnCP852From7BitString: object)]
			ifFalse: [AIDASite convert: object fromCodepage: self codepage] ].
	stream := WriteStream on: String new.
	[aStream peek = self delimiter or: [self endOfLine: aStream]] 
		whileFalse: [aStream peek isNil ifTrue: [^stream contents]. stream nextPut: aStream next].
	aStream peek = self delimiter ifTrue: [aStream skip: 1].
	object := stream contents. stream close.
	^object
"
	(object includes: $. ) false
		ifTrue:
			[(Date readSloFrom: object readStream) notNil 
				ifTrue: [^Date readSloFrom: object readStream]
				ifFalse: [^object asInteger]]
		ifFalse: [^object asInteger].
"!

readFrom: aFilenameString
	"read a delimited file and convert content to object representation in 'records' collection"
	| stream | 
	self filename: aFilenameString asFilename.
	[stream :=  self filename readStream.
	self readFromStream: stream] 
		ensure: [stream close].

"DelimitedFile readFrom: 'm:\geoplin\tarifni\exports\ddnevnik.txt' "!

readFromStream: aStream
	"read a delimited file and convert content to object representation in 'records' collection"
	[aStream atEnd] whileFalse: [self records add: (self newRecordFrom: aStream)]!

records
	"when aDelimitedFile is created on a existing file, all records (lines in a file) are 
	converted and stored in this ordered collection. Fields in each record are stored in 
	another ordered collection as objects of appropriate class (texts as Strings, 
	numbers as Integers or Floats, dates as Dates)"

	records isNil ifTrue: [self records:OrderedCollection new].
	^records!

records: aCollection
	records := aCollection.!

skipEndOfLine: aStream

	"skip all cr and lf characters)"

	[aStream atEnd] whileFalse: 
		[(aStream peek = Character cr or: [aStream peek = Character lf]) 
			ifTrue:	[aStream skip: 1]
			ifFalse: [^self]
		].!

writeToFile
	self writeToFile: self filename.
"
|dmFile|
dmFile := DelimitedFile fileToWrite: 'test.dat'.
dmFile records 
	add: (Array with: 123 with: 'abcd' with: 345);
	add: (Array with: 234 with: 'CDE' with: 567).
dmFile writeToFile
"!

writeToFile: aFilenameString
	"export all records to delimited file"
	| stream | 
	self filename: aFilenameString asFilename.
	[stream :=  self filename writeStream.
	records do: [:record | self writeRecord: record to: stream] ]
		ensure: [stream close].
"
|dmFile|
dmFile := DelimitedFile new.
dmFile records 
	add: (Array with: 123 with: 'abcd' with: 345);
	add: (Array with: 234 with: 'CDE' with: 567).
dmFile writeToFile: 'test.dat'
"! !
!DelimitedFile categoriesFor: #codepage!accessing!public! !
!DelimitedFile categoriesFor: #codepage:!accessing!public! !
!DelimitedFile categoriesFor: #crlf!private! !
!DelimitedFile categoriesFor: #defaultCodepage!accessing!public! !
!DelimitedFile categoriesFor: #defaultDelimiter!accessing!public! !
!DelimitedFile categoriesFor: #delimiter!accessing!public! !
!DelimitedFile categoriesFor: #delimiter:!accessing!public! !
!DelimitedFile categoriesFor: #endOfLine:!private! !
!DelimitedFile categoriesFor: #filename!accessing!public! !
!DelimitedFile categoriesFor: #filename:!accessing!public! !
!DelimitedFile categoriesFor: #initialize!initialize - release!public! !
!DelimitedFile categoriesFor: #newRecordFrom:!private! !
!DelimitedFile categoriesFor: #readFieldFrom:!private! !
!DelimitedFile categoriesFor: #readFrom:!file reading!public! !
!DelimitedFile categoriesFor: #readFromStream:!file reading!public! !
!DelimitedFile categoriesFor: #records!accessing!public! !
!DelimitedFile categoriesFor: #records:!accessing!public! !
!DelimitedFile categoriesFor: #skipEndOfLine:!private! !
!DelimitedFile categoriesFor: #writeToFile!file writing!public! !
!DelimitedFile categoriesFor: #writeToFile:!file writing!public! !

!DelimitedFile class methodsFor!

fileToWrite: aFilenameString

	"create a new instance on a specified (empty) file to write. After you fill records attribute with all
	data, call writeToFile method to do actual exporting to this file"

	| instance |
	instance := self new.
	instance filename: aFilenameString asFilename.
	^instance.!

new
	^super new initialize!

readFrom: aFilenameString

	"read a specified delimited file and store records in a records attribute. Use default delimiter
	for field separator (character ; )"

	| instance |
	instance := self new.
	instance readFrom: aFilenameString.
	^instance.

"DelimitedFile readFrom: 'i:\projekti\dare\proizvod.txt' "! !
!DelimitedFile class categoriesFor: #fileToWrite:!instance creation!public! !
!DelimitedFile class categoriesFor: #new!instance creation!public! !
!DelimitedFile class categoriesFor: #readFrom:!instance creation!public! !

