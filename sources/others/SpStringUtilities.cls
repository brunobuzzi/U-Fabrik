"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SpStringUtilities
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpStringUtilities guid: (GUID fromString: '{10ecb9dd-969f-427b-8cd4-03ad76bbc68b}')!
SpStringUtilities comment: ''!
!SpStringUtilities categoriesForClass!Unclassified! !
!SpStringUtilities class methodsFor!

bytes: subjectBytes asStringUsingEncodingNames: anEncodingName 
	^subjectBytes asStringEncoding: anEncodingName!

prevIndexOf: anElement from: startIndex to: stopIndex in: aString
	"Answer the previous index of anElement within the receiver between startIndex and stopIndex
	 working backwards through the receiver.  If the receiver does not contain anElement, answer nil"

	startIndex to: stopIndex by: -1 do:
		[:i |
		(aString at: i) = anElement
			ifTrue: [^i]].
	^nil!

string: subjectString asBytesUsingEncodingNamed: anEncodingName 
	^subjectString asByteArrayEncoding: anEncodingName!

stringFromBytes: aByteArray 
	"^a String
	In GemStone ['Hello, World' asByteArray asString] returns the string 'aByteArray' !!
	This is the boring long way of getting a string from a ByteArray - but it does work
	in GemStone."
	"SpStringUtilities stringFromBytes: ('Hello, World' asByteArray)"

	^aByteArray asString
!

tokensBasedOn: separatorString in: aString 
	"Answer an OrderedCollection of the sub-sequences
	 of the receiver that are separated by anObject."

	^aString subStrings: separatorString!

trimBlanksFrom: aString 
	"I return a copy of aString with all leading and trailing blanks removed."

	^aString trimBlanks! !
!SpStringUtilities class categoriesFor: #bytes:asStringUsingEncodingNames:!private!services-encoding! !
!SpStringUtilities class categoriesFor: #prevIndexOf:from:to:in:!private!services! !
!SpStringUtilities class categoriesFor: #string:asBytesUsingEncodingNamed:!private!services-encoding! !
!SpStringUtilities class categoriesFor: #stringFromBytes:!public!services-encoding! !
!SpStringUtilities class categoriesFor: #tokensBasedOn:in:!public!services! !
!SpStringUtilities class categoriesFor: #trimBlanksFrom:!public!services! !

