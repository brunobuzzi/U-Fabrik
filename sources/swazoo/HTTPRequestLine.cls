"Filed out from Dolphin Smalltalk 7"!

Object subclass: #HTTPRequestLine
	instanceVariableNames: 'method requestURI httpVersion'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPRequestLine guid: (GUID fromString: '{e1d2148d-995d-4ab3-a4ec-3bab9e93dd1b}')!
HTTPRequestLine comment: ''!
!HTTPRequestLine categoriesForClass!Unclassified! !
!HTTPRequestLine methodsFor!

httpVersion
	^httpVersion!

httpVersion: anArray 
	httpVersion := anArray.
	^self!

isHttp10
	^self httpVersion last = 0!

isHttp11
	^self httpVersion last = 1!

method
	^method!

method: aString
"For development testing only"
	method := aString.
	^self!

parseHTTPVersionFrom: aSwazooStream 
	| major minor |
	self skipSpacesIn: aSwazooStream.
	aSwazooStream upTo: $/ asInteger.
	major := (aSwazooStream upTo: $. asInteger) asString asNumber.
	minor := (aSwazooStream upTo: Character cr asInteger) asString asNumber.
	self httpVersion: (Array with: major with: minor).
	aSwazooStream next.
	^self!

parseURIFrom: aSwazooStream 
	"^self
	Really, we should parse the URI directly out of the stream."

	self skipSpacesIn: aSwazooStream.
	requestURI := SwazooURI fromString: 
		(aSwazooStream upTo: Character space asInteger) asString.
	^self!

readFrom: aSwazooStream 
	"^self
I initialize myself to represents a request line read from aStream.  If no valid request line can be found, I throw an exception."

	self skipLeadingBlankLinesIn: aSwazooStream.
	method := (aSwazooStream upTo: Character space asInteger) asString.
	self parseURIFrom: aSwazooStream.
	self parseHTTPVersionFrom: aSwazooStream.
	^self!

requestURI
	^requestURI!

requestURI: aString 
	"Development testing only!!"

	requestURI := aString.
	^self!

skipLeadingBlankLinesIn: aSwazooStream 
	"^self
RFC 2616:
In the interest of robustness, servers SHOULD ignore any empty
line(s) received where a Request-Line is expected. In other words, if
the server is reading the protocol stream at the beginning of a
message and receives a CRLF first, it should ignore the CRLF."

	[aSwazooStream peek == Character cr asInteger] whileTrue: 
			[(((aSwazooStream next: 2) at: 2) == Character lf asInteger) 
				ifFalse: [SwazooHTTPParseError raiseSignal: 'CR without LF']].
	^self!

skipSpacesIn: aSwazooStream 
	[aSwazooStream peek = Character space] 
		whileTrue: [aSwazooStream next].
	^self! !
!HTTPRequestLine categoriesFor: #httpVersion!accessing!public! !
!HTTPRequestLine categoriesFor: #httpVersion:!private! !
!HTTPRequestLine categoriesFor: #isHttp10!public!testing! !
!HTTPRequestLine categoriesFor: #isHttp11!public!testing! !
!HTTPRequestLine categoriesFor: #method!accessing!public! !
!HTTPRequestLine categoriesFor: #method:!private! !
!HTTPRequestLine categoriesFor: #parseHTTPVersionFrom:!parsing!public! !
!HTTPRequestLine categoriesFor: #parseURIFrom:!parsing!public! !
!HTTPRequestLine categoriesFor: #readFrom:!parsing!public! !
!HTTPRequestLine categoriesFor: #requestURI!accessing!public! !
!HTTPRequestLine categoriesFor: #requestURI:!private! !
!HTTPRequestLine categoriesFor: #skipLeadingBlankLinesIn:!private! !
!HTTPRequestLine categoriesFor: #skipSpacesIn:!private! !

!HTTPRequestLine class methodsFor!

readFrom: aSwazooStream 
	^self new readFrom: aSwazooStream! !
!HTTPRequestLine class categoriesFor: #readFrom:!instance creation!public! !

