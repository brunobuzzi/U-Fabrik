"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Numberer
	instanceVariableNames: 'counters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Numberer guid: (GUID fromString: '{9e9f3086-037e-4bf8-bfa1-d45b5dc4be9f}')!
Numberer comment: 'Numberer is used to provide counters for things like invoice numbers

Instance Variables:
	counters	<Dictionary>	 counters for different purposes'!
!Numberer categoriesForClass!Unclassified! !
!Numberer methodsFor!

counters
	counters isNil ifTrue: [self initCounters].
	^counters!

currentCounter: aSymbol
	"get curent (last nextCounter) number"
	(self counters includesKey: aSymbol) ifFalse: [self resetCounter: aSymbol].
	^self counters at: aSymbol!

decrementCounter: aSymbol
	"get next number and increment this counter"
	^self counters at: aSymbol put: (((self currentCounter: aSymbol) - 1) max: 0)!

initCounters
	counters := Dictionary new!

nextCounter: aSymbol
	"get next number and increment this counter"
	^self counters at: aSymbol put: (self peekCounter: aSymbol)!

peekCounter: aSymbol
	"get next number but not increment it"
	(self counters includesKey: aSymbol) ifFalse: [self resetCounter: aSymbol].
	^(self counters at: aSymbol) + 1!

resetCounter: aSymbol
	"put counter to 0, peekCounter will then return 1"
	self counters at: aSymbol put: 0!

setCounter: aSymbol to: aNumber
	"use it sparingly!!"
	^self counters at: aSymbol put: aNumber! !
!Numberer categoriesFor: #counters!private! !
!Numberer categoriesFor: #currentCounter:!accessing!public! !
!Numberer categoriesFor: #decrementCounter:!private! !
!Numberer categoriesFor: #initCounters!initialize-release!public! !
!Numberer categoriesFor: #nextCounter:!accessing!public! !
!Numberer categoriesFor: #peekCounter:!accessing!public! !
!Numberer categoriesFor: #resetCounter:!accessing!public! !
!Numberer categoriesFor: #setCounter:to:!private! !

