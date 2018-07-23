"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPAllowField
	instanceVariableNames: 'methods'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPAllowField guid: (GUID fromString: '{8506e016-899a-4ae0-af2e-5c9ec2ef306d}')!
HTTPAllowField comment: ''!
!HTTPAllowField categoriesForClass!Unclassified! !
!HTTPAllowField methodsFor!

methods
	methods isNil ifTrue: [methods := OrderedCollection new].
	^methods!

valuesAsStringOn: targetStream 
	self methods isEmpty 
		ifFalse: 
			[targetStream nextPutAll: self methods first.
			2 to: self methods size
				do: 
					[:methodIndex | 
					targetStream
						nextPut: $,;
						nextPutAll: (self methods at: methodIndex)]].
	^self! !
!HTTPAllowField categoriesFor: #methods!accessing!public! !
!HTTPAllowField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPAllowField class methodsFor!

fieldName
	^'Allow'! !
!HTTPAllowField class categoriesFor: #fieldName!accessing!public! !

