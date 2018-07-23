"Filed out from Dolphin Smalltalk 7"!

HTTPWebDAVResponse subclass: #HTTPLockResponse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPLockResponse guid: (GUID fromString: '{1c7a38b2-bc32-495f-97e6-920305d182b3}')!
HTTPLockResponse comment: ''!
!HTTPLockResponse categoriesForClass!Unclassified! !
!HTTPLockResponse class methodsFor!

new
	| response |
	response := super ok.
	response contentType: 'application/xml; charset="utf-8"'.
	^response! !
!HTTPLockResponse class categoriesFor: #new!instance creation!public! !

