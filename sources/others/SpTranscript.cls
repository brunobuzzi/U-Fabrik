"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SpTranscript
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpTranscript guid: (GUID fromString: '{cc6d69ed-afc7-4644-8845-1e87a1de086a}')!
SpTranscript comment: ''!
!SpTranscript categoriesForClass!Unclassified! !
!SpTranscript class methodsFor!

cr	
	^ SpEnvironment isHeadless
		ifTrue: [self]
		ifFalse: [Transcript cr]!

nextPut: anObject
	^self show: (String with: anObject)!

nextPutAll: aCollection 
	^self show: aCollection!

show: aString
	^ SpEnvironment isHeadless
		ifTrue: [self]
		ifFalse: [Transcript show: aString]! !
!SpTranscript class categoriesFor: #cr!logging!public! !
!SpTranscript class categoriesFor: #nextPut:!logging!public! !
!SpTranscript class categoriesFor: #nextPutAll:!logging!public! !
!SpTranscript class categoriesFor: #show:!logging!public! !

