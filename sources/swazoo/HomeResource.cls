"Filed out from Dolphin Smalltalk 7"!

FileResource subclass: #HomeResource
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HomeResource guid: (GUID fromString: '{d92f6f14-aa90-44b9-9000-9cd2f49dd7a9}')!
HomeResource comment: ''!
!HomeResource categoriesForClass!Unclassified! !
!HomeResource methodsFor!

answerTo: aRequest 
	aRequest tailPath isEmpty ifTrue: [^nil].
	(self validateHomePath: aRequest tailPath first) ifFalse: [^nil].
	^super answerTo: aRequest!

rootFileFor: aRequest 
	| homeKey file |
	homeKey := aRequest tailPath first copyFrom: 2
				to: aRequest tailPath first size.
	file := (self fileDirectory construct: homeKey) construct: 'html'.
	(aRequest tailPath copyFrom: 2 to: aRequest tailPath size) 
		do: [:each | each = '..' ifFalse: [file := file construct: each]].
	^file!

validateHomePath: aString 
	^aString first = $~! !
!HomeResource categoriesFor: #answerTo:!accessing!public! !
!HomeResource categoriesFor: #rootFileFor:!private! !
!HomeResource categoriesFor: #validateHomePath:!private! !

