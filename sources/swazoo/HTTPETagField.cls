"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPETagField
	instanceVariableNames: 'entityTag'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPETagField guid: (GUID fromString: '{d32a1577-4410-4cf2-8df9-20b99b62db16}')!
HTTPETagField comment: '
RFC 2626 14.19 ETag

   The ETag response-header field provides the current value of the
   entity tag for the requested variant. The headers used with entity
   tags are described in sections 14.24, 14.26 and 14.44. The entity tag
   MAY be used for comparison with other entities from the same resource
   (see section 13.3.3).

      ETag = "ETag" ":" entity-tag

   Examples:

      ETag: "xyzzy"
      ETag: W/"xyzzy"
      ETag: ""

'!
!HTTPETagField categoriesForClass!Unclassified! !
!HTTPETagField methodsFor!

entityTag
	^entityTag!

entityTag: aString 
	entityTag := aString.
	^self!

valuesAsStringOn: aStream 
	aStream
		nextPut: $";
		nextPutAll: self entityTag;
		nextPut: $".
	^self! !
!HTTPETagField categoriesFor: #entityTag!accessing!public! !
!HTTPETagField categoriesFor: #entityTag:!accessing!public! !
!HTTPETagField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPETagField class methodsFor!

fieldName
	^'ETag'! !
!HTTPETagField class categoriesFor: #fieldName!accessing!public! !

