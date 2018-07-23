"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPRefererField
	instanceVariableNames: 'uri'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPRefererField guid: (GUID fromString: '{e14f0a8a-a5c6-4049-ad82-fb03ecea6575}')!
HTTPRefererField comment: '
RFC 2616: 14.36 Referer

   The Referer[sic] request-header field allows the client to specify,
   for the server''s benefit, the address (URI) of the resource from
   which the Request-URI was obtained (the "referrer", although the
   header field is misspelled.) The Referer request-header allows a
   server to generate lists of back-links to resources for interest,
   logging, optimized caching, etc. It also allows obsolete or mistyped
   links to be traced for maintenance. The Referer field MUST NOT be
   sent if the Request-URI was obtained from a source that does not have
   its own URI, such as input from the user keyboard.

       Referer        = "Referer" ":" ( absoluteURI | relativeURI )

   Example:

       Referer: http://www.w3.org/hypertext/DataSources/Overview.html

   If the field value is a relative URI, it SHOULD be interpreted
   relative to the Request-URI. The URI MUST NOT include a fragment. See
   section 15.1.3 for security considerations.

'!
!HTTPRefererField categoriesForClass!Unclassified! !
!HTTPRefererField methodsFor!

parseValueFrom: aString 
	uri := SwazooURI fromString: aString.
	^self!

uri
	^uri!

valuesAsStringOn: aStream 
	self uri printOn: aStream.
	^self! !
!HTTPRefererField categoriesFor: #parseValueFrom:!private! !
!HTTPRefererField categoriesFor: #uri!accessing!public! !
!HTTPRefererField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPRefererField class methodsFor!

fieldName
	^'Referer'! !
!HTTPRefererField class categoriesFor: #fieldName!accessing!public! !

