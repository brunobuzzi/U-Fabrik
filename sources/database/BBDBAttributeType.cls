"Filed out from Dolphin Smalltalk 7"!

DataBaseObject subclass: #BBDBAttributeType
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBDBAttributeType guid: (GUID fromString: '{cbf60fc2-6931-4ccb-b4c6-01c9005c7a79}')!
BBDBAttributeType comment: ''!
!BBDBAttributeType categoriesForClass!Unclassified! !
!BBDBAttributeType methodsFor!

initialize

	super initialize.

	value := 'String'!

printOn: aStream
	"Append the ASCII representation of the receiver
	 to aStream."

	super printOn: aStream.

	aStream
		nextPutAll: '[', value, ']'.
!

printType

	^value!

value
	^value!

value: anObject
	value := anObject! !
!BBDBAttributeType categoriesFor: #initialize!public! !
!BBDBAttributeType categoriesFor: #printOn:!public! !
!BBDBAttributeType categoriesFor: #printType!public! !
!BBDBAttributeType categoriesFor: #value!accessing!private! !
!BBDBAttributeType categoriesFor: #value:!accessing!private! !

!BBDBAttributeType class methodsFor!

type: aString

	^super new initialize
		value: aString;
		yourself.! !
!BBDBAttributeType class categoriesFor: #type:!public! !

