"Filed out from Dolphin Smalltalk 7"!

AIDAProtocolAdaptor subclass: #AIDAIndexedAdaptor
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAIndexedAdaptor guid: (GUID fromString: '{0110fdfd-0c87-4654-87f6-937c7f60412d}')!
AIDAIndexedAdaptor comment: ''!
!AIDAIndexedAdaptor categoriesForClass!Unclassified! !
!AIDAIndexedAdaptor methodsFor!

index

	^index!

index: aNumber

	index := aNumber!

value

	^self subject at: self index!

value: aValue

	self subject at: self index put: aValue! !
!AIDAIndexedAdaptor categoriesFor: #index!accessing!public! !
!AIDAIndexedAdaptor categoriesFor: #index:!accessing!public! !
!AIDAIndexedAdaptor categoriesFor: #value!accessing!public! !
!AIDAIndexedAdaptor categoriesFor: #value:!accessing!public! !

!AIDAIndexedAdaptor class methodsFor!

forIndex: aNumber

	^super new index: aNumber! !
!AIDAIndexedAdaptor class categoriesFor: #forIndex:!instance creation!public! !

