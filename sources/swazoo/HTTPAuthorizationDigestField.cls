"Filed out from Dolphin Smalltalk 7"!

HTTPAuthorizationField subclass: #HTTPAuthorizationDigestField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPAuthorizationDigestField guid: (GUID fromString: '{b2ed4c38-434a-4876-9197-7b9edc0902cb}')!
HTTPAuthorizationDigestField comment: ''!
!HTTPAuthorizationDigestField categoriesForClass!Unclassified! !
!HTTPAuthorizationDigestField methodsFor!

valuesAsStringOn: aStream 
	aStream nextPutAll: 'Digest '.
	super valuesAsStringOn: aStream.
	^self! !
!HTTPAuthorizationDigestField categoriesFor: #valuesAsStringOn:!printing!public! !

