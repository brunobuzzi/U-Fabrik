"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPHostField
	instanceVariableNames: 'hostName portNumber'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPHostField guid: (GUID fromString: '{28058f35-2922-4bb3-868d-3e7d366d2584}')!
HTTPHostField comment: ''!
!HTTPHostField categoriesForClass!Unclassified! !
!HTTPHostField methodsFor!

hostName
	^hostName!

parseValueFrom: aString 
	| sourceStream portNumberString |
	sourceStream := ReadStream on: aString.
	hostName := sourceStream upTo: $:.
	portNumberString := sourceStream atEnd 
				ifTrue: [String new]
				ifFalse: [sourceStream upToEnd].
	portNumberString notEmpty 
		ifTrue: [portNumber := portNumberString asNumber].
	^self!

portNumber
	^portNumber isNil ifTrue: [80] ifFalse: [portNumber]!

valuesAsStringOn: aStream 
	aStream nextPutAll: self hostName.
	portNumber notNil 
		ifTrue: 
			[aStream nextPut: $:.
			self portNumber printOn: aStream].
	^self! !
!HTTPHostField categoriesFor: #hostName!accessing!public! !
!HTTPHostField categoriesFor: #parseValueFrom:!private! !
!HTTPHostField categoriesFor: #portNumber!accessing!public! !
!HTTPHostField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPHostField class methodsFor!

fieldName
	^'Host'! !
!HTTPHostField class categoriesFor: #fieldName!accessing!public! !

