"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MimeObject
	instanceVariableNames: 'contentType value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MimeObject guid: (GUID fromString: '{d43f5ee3-b909-4fd7-90e3-eba4df25ab0d}')!
MimeObject comment: ''!
!MimeObject categoriesForClass!Unclassified! !
!MimeObject methodsFor!

contentType
	^contentType isNil ifTrue: [self defaultContentType] ifFalse: [contentType]!

contentType: anObject
	contentType := anObject!

defaultContentType
	^'application/octet-stream'!

value
	^value!

value: anObject
	value := anObject! !
!MimeObject categoriesFor: #contentType!accessing!public! !
!MimeObject categoriesFor: #contentType:!accessing!public! !
!MimeObject categoriesFor: #defaultContentType!private-accessing!public! !
!MimeObject categoriesFor: #value!accessing!public! !
!MimeObject categoriesFor: #value:!accessing!public! !

