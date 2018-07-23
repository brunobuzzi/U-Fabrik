"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPUserAgentField
	instanceVariableNames: 'productTokens'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPUserAgentField guid: (GUID fromString: '{ce98b0c5-a0d1-4fc0-9ab4-b22ed53c54ba}')!
HTTPUserAgentField comment: '
RFC 2616: 14.43 User-Agent

   The User-Agent request-header field contains information about the
   user agent originating the request. This is for statistical purposes,
   the tracing of protocol violations, and automated recognition of user
   agents for the sake of tailoring responses to avoid particular user
   agent limitations. User agents SHOULD include this field with
   requests. The field can contain multiple product tokens (section 3.8)
   and comments identifying the agent and any subproducts which form a
   significant part of the user agent. By convention, the product tokens
   are listed in order of their significance for identifying the
   application.

       User-Agent     = "User-Agent" ":" 1*( product | comment )

   Example:

       User-Agent: CERN-LineMode/2.15 libwww/2.17b3'!
!HTTPUserAgentField categoriesForClass!Unclassified! !
!HTTPUserAgentField methodsFor!

parseValueFrom: aString 
	"^self
I could try and parse out the product name and version numbers, but there is no need to worry about this at the moment, so I just record the string."

	productTokens := HTTPString trimBlanksFrom: aString.
	^self!

productTokens
	^productTokens!

valuesAsStringOn: aStream 
	aStream nextPutAll: productTokens.
	^self! !
!HTTPUserAgentField categoriesFor: #parseValueFrom:!private! !
!HTTPUserAgentField categoriesFor: #productTokens!accessing!public! !
!HTTPUserAgentField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPUserAgentField class methodsFor!

fieldName
	^'User-Agent'! !
!HTTPUserAgentField class categoriesFor: #fieldName!accessing!public! !

