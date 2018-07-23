"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #ContentDispositionField
	instanceVariableNames: 'type parameters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ContentDispositionField guid: (GUID fromString: '{20c73c70-1aed-49c9-a5b2-8845073d7619}')!
ContentDispositionField comment: ''!
!ContentDispositionField categoriesForClass!Unclassified! !
!ContentDispositionField methodsFor!

isContentDisposition
	^true!

parameterAt: aString 
	^parameters at: aString ifAbsent: [nil]!

parseValueFrom: aString 
	| sourceStream |
	sourceStream := aString readStream.
	type := HTTPString trimBlanksFrom: (sourceStream upTo: $;).
	parameters := self readParametersFrom: sourceStream.
	^self! !
!ContentDispositionField categoriesFor: #isContentDisposition!public!testing! !
!ContentDispositionField categoriesFor: #parameterAt:!public!services! !
!ContentDispositionField categoriesFor: #parseValueFrom:!private! !

!ContentDispositionField class methodsFor!

fieldName
	^'Content-Disposition'! !
!ContentDispositionField class categoriesFor: #fieldName!accessing!public! !

