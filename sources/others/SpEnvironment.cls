"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SpEnvironment
	instanceVariableNames: ''
	classVariableNames: 'ImageShutdownTaskBlocks ImageStartupTaskBlocks'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpEnvironment guid: (GUID fromString: '{680e304e-a02e-4c24-b34b-a2a1c9025422}')!
SpEnvironment comment: 'Prueba'!
!SpEnvironment categoriesForClass!Unclassified! !
!SpEnvironment class methodsFor!

addImageShutdownTask: aBlock for: anObject 
	"^self
	I add aBlock to the list of actions and note that this is for anObject"

	self imageShutdownTaskBlocks at: anObject put: aBlock.
	^self
!

addImageStartupTask: aBlock for: anObject 
	"^self
	I add aBlock to the list of actions and note that this is for anObject"

	self imageStartupTaskBlocks at: anObject put: aBlock.
	^self
!

allSubclassesOf: aClass
	"^an Array
	I return the array of classes which are subclasses of aClass."

	^aClass allSubclasses asArray
	
"SpEnvironment allSubclassesOf: Error"!

base64DecodeAsString: base64EncodedString
	"Decodes a base64EncodedString, and answer the string decoded. "
 
	| outputStream |
	#eamAdded.
	outputStream := ByteArray writeStream: base64EncodedString size.
	Base64Codec decodeFrom: base64EncodedString readStream onto: outputStream.
	^outputStream contents asString!

base64EncodeString: aString 

	| outputStream |
	#eamAdded.
	outputStream := WriteStream on: String new.
	Base64Codec encodeFrom:  aString asByteArray readStream onto: outputStream.
	^outputStream contents asString!

byteArrayFromHexString: aString 
	
	^ByteArray fromHexString: aString!

characterFromInteger: anInteger 
	^Character value: anInteger
	
"SpEnvironment characterFromInteger: 32"!

collectGarbage

	#eamAdded.
	MemoryManager current collectGarbage!

compactingGC

	#eamAdded.
	MemoryManager current compact!

evaluate: aString in: anEnvironment

	^Compiler evaluate: aString!

evaluate: aString receiver: anObject in: anEnvironment 

	#eamChanged.
	^Compiler evaluate: aString for: anObject logged: false
!

hexStringFromByteArray: aByteArray 

	^String streamContents: [:stream | aByteArray printHexOn: stream]!

imageShutdownTaskBlocks
	"self imageShutdownTaskBlocks"
	ImageShutdownTaskBlocks isNil 
		ifTrue: [ImageShutdownTaskBlocks := WeakIdentityDictionary new].
	^ImageShutdownTaskBlocks!

imageStartupTaskBlocks
	"self imageStartupTaskBlocks"
	ImageStartupTaskBlocks isNil 
		ifTrue: [ImageStartupTaskBlocks := WeakIdentityDictionary new].
	^ImageStartupTaskBlocks!

initialize
	super initialize.
	SessionManager current
		when: #sessionStopped
			send: #shutDown
			to: self;
		when: #sessionStarted
			send: #startUp
			to: self!

integerFromString: aString
	"^an Integer
	We need this because of what looks like a bug in GemStone's String>>asNumber 
	(e.g. '16rFF' -> 1.6000000000000000E+01, not 255)."

	^aString asNumber
	
"SpEnvironment integerFromString: '32' "!

isAmbraiSmalltalk
	^false!

isDolphin
	^true!

isGemStone
	^false!

isGNUSmalltalk
	^false!

isHeadless
	^RuntimeSessionManager current isConsoleApplication!

isObjectStudio
	^false!

isSmalltalkX
	^false!

isSmalltalkXY
	^false!

isSqueak
	^false!

isVASmalltalk
	^false!

isVisualSmalltalk
	^false!

isVisualWorks
	^false!

onUnix
	"we are running on Unix, yes or no?"
	^false!

onWindows
	"we are running on Windows, yes or no?"
	^true!

removeShutdownActionFor: anObject 
	"^self
	I remove the task block for an object it it has one"

	self imageShutdownTaskBlocks removeKey: anObject ifAbsent: [nil].
	^self!

removeStartupActionFor: anObject 
	"^self
	I remove the task block for an object it it has one"

	self imageStartupTaskBlocks removeKey: anObject ifAbsent: [nil].
	^self!

runShellCommandString: aCommandString

" not yet ported!!
 
	See ShellLibrary
"!

shutDown
	"Squeak specific!!"
	self imageShutdownTaskBlocks values do: [:shutdownTask | shutdownTask value].
	^self!

startUp
	"Squeak specific!!"
	self imageStartupTaskBlocks values do: [:startupTask | startupTask value].
	^self!

streamStartPosition
	"^an Integer
	Streams start at position 0 in VisualWorks & Squeak, and position 1 in
	GemStone(!!). "
	^ 0!

uninitialize

	SessionManager current removeEventsTriggeredFor: self!

writeStackDumpForException: exception to: targetStream 
	
	exception printTraceOn: targetStream! !
!SpEnvironment class categoriesFor: #addImageShutdownTask:for:!image startup/shutdown!public! !
!SpEnvironment class categoriesFor: #addImageStartupTask:for:!image startup/shutdown!public! !
!SpEnvironment class categoriesFor: #allSubclassesOf:!public!queries! !
!SpEnvironment class categoriesFor: #base64DecodeAsString:!development!public! !
!SpEnvironment class categoriesFor: #base64EncodeString:!public! !
!SpEnvironment class categoriesFor: #byteArrayFromHexString:!hex!public! !
!SpEnvironment class categoriesFor: #characterFromInteger:!public!services! !
!SpEnvironment class categoriesFor: #collectGarbage!development!public! !
!SpEnvironment class categoriesFor: #compactingGC!development!public! !
!SpEnvironment class categoriesFor: #evaluate:in:!public! !
!SpEnvironment class categoriesFor: #evaluate:receiver:in:!public! !
!SpEnvironment class categoriesFor: #hexStringFromByteArray:!hex!public! !
!SpEnvironment class categoriesFor: #imageShutdownTaskBlocks!private! !
!SpEnvironment class categoriesFor: #imageStartupTaskBlocks!private! !
!SpEnvironment class categoriesFor: #initialize!public!testing! !
!SpEnvironment class categoriesFor: #integerFromString:!public!services! !
!SpEnvironment class categoriesFor: #isAmbraiSmalltalk!public!testing-dialects! !
!SpEnvironment class categoriesFor: #isDolphin!public!testing-dialects! !
!SpEnvironment class categoriesFor: #isGemStone!public!testing-dialects! !
!SpEnvironment class categoriesFor: #isGNUSmalltalk!public!testing-dialects! !
!SpEnvironment class categoriesFor: #isHeadless!public! !
!SpEnvironment class categoriesFor: #isObjectStudio!public!testing-dialects! !
!SpEnvironment class categoriesFor: #isSmalltalkX!public!testing-dialects! !
!SpEnvironment class categoriesFor: #isSmalltalkXY!public!testing-dialects! !
!SpEnvironment class categoriesFor: #isSqueak!public!testing-dialects! !
!SpEnvironment class categoriesFor: #isVASmalltalk!public!testing-dialects! !
!SpEnvironment class categoriesFor: #isVisualSmalltalk!public!testing-dialects! !
!SpEnvironment class categoriesFor: #isVisualWorks!public!testing-dialects! !
!SpEnvironment class categoriesFor: #onUnix!public!testing! !
!SpEnvironment class categoriesFor: #onWindows!public!testing! !
!SpEnvironment class categoriesFor: #removeShutdownActionFor:!image startup/shutdown!public! !
!SpEnvironment class categoriesFor: #removeStartupActionFor:!image startup/shutdown!public! !
!SpEnvironment class categoriesFor: #runShellCommandString:!os commands!public! !
!SpEnvironment class categoriesFor: #shutDown!private! !
!SpEnvironment class categoriesFor: #startUp!private! !
!SpEnvironment class categoriesFor: #streamStartPosition!public!services! !
!SpEnvironment class categoriesFor: #uninitialize!public! !
!SpEnvironment class categoriesFor: #writeStackDumpForException:to:!public!services! !

