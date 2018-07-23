"Filed out from Dolphin Smalltalk 7"!

HTTPWebDAVResponse subclass: #HTTPPropFindResponse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPPropFindResponse guid: (GUID fromString: '{6bbf00b6-d884-4e19-94fb-4acf6a349dd8}')!
HTTPPropFindResponse comment: ''!
!HTTPPropFindResponse categoriesForClass!Unclassified! !
!HTTPPropFindResponse methodsFor!

multiEnd
	"add closing tags for that multiresponse"
	"actualy nothing to do?"! !
!HTTPPropFindResponse categoriesFor: #multiEnd!building responses!public! !

!HTTPPropFindResponse class methodsFor!

new
	| response |
	response := super multiStatus.
	response contentType: 'application/xml; charset="utf-8"'.
	^response! !
!HTTPPropFindResponse class categoriesFor: #new!instance creation!public! !

