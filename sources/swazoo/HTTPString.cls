"Filed out from Dolphin Smalltalk 7"!

Object subclass: #HTTPString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPString guid: (GUID fromString: '{5ffe866f-2a42-4584-bbb2-a6976d8d86e0}')!
HTTPString comment: '
This class contains some utility methods that were previously implemented as extentions to system classes.  This is really a stop-gap until, perhaps, the SwazooStream yeilds HTTPStrings.

'!
!HTTPString categoriesForClass!Unclassified! !
!HTTPString class methodsFor!

decodedHTTPFrom: aCharacterArray 
	"Code taken from the swazoo specific extention to the CharacterArray class"

	| targetStream sourceStream |
	targetStream := WriteStream on: aCharacterArray class new.
	sourceStream := ReadStream on: aCharacterArray.
	[sourceStream atEnd] whileFalse: 
			[| char |
			char := sourceStream next.
			char = $% 
				ifTrue: 
					[targetStream 
						nextPut: (SpEnvironment integerFromString: '16r' , (sourceStream next: 2)) 
								asCharacter]
				ifFalse: 
					[char == $+ 
						ifTrue: [targetStream nextPut: Character space]
						ifFalse: [targetStream nextPut: char]]].
	^targetStream contents!

encodedHTTPFrom: aCharacterArray 
	"Code taken from the swazoo specific extention to the CharacterArray class"

	| targetStream |
	targetStream := WriteStream on: aCharacterArray class new.
	aCharacterArray do: 
			[:char | 
			(self isHTTPReservedCharacter: char) 
				ifTrue: 
					[targetStream nextPut: $%.
					targetStream nextPutAll:
						(char asInteger printPaddedWith: $0 to: 2 base: 16)
"					char asInteger 
						printOn: targetStream
						paddedWith: $0
						to: 2
						base: 16" ]
				ifFalse: [targetStream nextPut: char]].
	^targetStream contents!

isHTTPReservedCharacter: aCharacter 
	"Code taken from the swazoo specific extention to the Character class"

	^(aCharacter isAlphaNumeric or: ['-_.!!~*''()' includes: aCharacter]) not!

newRandomString: anInteger 
	| numbersThroughAlphas targetStream char random |
	numbersThroughAlphas := (48 to: 122) collect: [:each | each asCharacter].
	targetStream := WriteStream on: (String new: anInteger).
	random := Random new.
	[targetStream contents size < anInteger] whileTrue: 
			[char := numbersThroughAlphas 
						at: (random next * (numbersThroughAlphas size - 1)) rounded + 1.
			char isAlphaNumeric ifTrue: [targetStream nextPut: char]].
	^targetStream contents!

stringFromBytes: aByteArray 
	"^a String
In GemStone ['Hello, World' asByteArray asString] returns the string 'aByteArray' !!
This is the boring long way of getting a string from a ByteArray - but it does work
in GemStone."

	"HTTPString stringFromBytes: ('Hello, World' asByteArray)"

	| targetStream |
	targetStream := WriteStream on: String new.
	aByteArray do: [:aByte | targetStream nextPut: aByte asCharacter].
	^targetStream contents!

subCollectionsFrom: aCollection delimitedBy: anObject 
	"^an OrderedCollection
I return the ordered collection of sub-collections from aCollection, delimited
by anObject."

	"HTTPString subCollectionsFrom: 'aaa/bbb/' delimitedBy: $/"

	| subCollections sourceStream |
	subCollections := OrderedCollection new.
	sourceStream := ReadStream on: aCollection.
	[sourceStream atEnd] 
		whileFalse: [subCollections add: (sourceStream upTo: anObject)].
	(aCollection isEmpty 
		or: [(sourceStream
				skip: -1;
				next) == anObject]) 
			ifTrue: [subCollections add: aCollection class new].
	^subCollections!

trimBlanksFrom: aString 
	"^a String
I return a copy of aString with all leading and trailing blanks removed."

	| first last |
	first := 1.
	last := aString size.
	[last > 0 and: [(aString at: last) isSeparator]] 
		whileTrue: [last := last - 1].
	^last == 0 
		ifTrue: [String new]
		ifFalse: 
			[[first < last and: [(aString at: first) isSeparator]] 
				whileTrue: [first := first + 1].
			aString copyFrom: first to: last]! !
!HTTPString class categoriesFor: #decodedHTTPFrom:!decoding!public! !
!HTTPString class categoriesFor: #encodedHTTPFrom:!decoding!public! !
!HTTPString class categoriesFor: #isHTTPReservedCharacter:!decoding!public! !
!HTTPString class categoriesFor: #newRandomString:!instance creation!public! !
!HTTPString class categoriesFor: #stringFromBytes:!decoding!public! !
!HTTPString class categoriesFor: #subCollectionsFrom:delimitedBy:!public!tokens! !
!HTTPString class categoriesFor: #trimBlanksFrom:!decoding!public! !

