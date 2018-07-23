"Filed out from Dolphin Smalltalk 7"!

HTTPResponse subclass: #HTTPWebDAVResponse
	instanceVariableNames: 'xmlResponse'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPWebDAVResponse guid: (GUID fromString: '{8370dbbd-134b-4feb-8548-8a2ce8fad905}')!
HTTPWebDAVResponse comment: ''!
!HTTPWebDAVResponse categoriesForClass!Unclassified! !
!HTTPWebDAVResponse methodsFor!

code: anInteger 
	code := anInteger.
	(#(200 207) includes: code) ifFalse: [self addDefaultBody].!

writeTo: aSwazooStream inResponseTo: aRequest
	self prepareXMLEntity.
	super writeTo: aSwazooStream inResponseTo: aRequest!

xmlResponse
	xmlResponse isNil ifTrue: [self initXMLResponse].
	^xmlResponse! !
!HTTPWebDAVResponse categoriesFor: #code:!accessing!public! !
!HTTPWebDAVResponse categoriesFor: #writeTo:inResponseTo:!private-printing!public! !
!HTTPWebDAVResponse categoriesFor: #xmlResponse!private! !

