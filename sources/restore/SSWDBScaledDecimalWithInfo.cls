"Filed out from Dolphin Smalltalk 7"!

SSWDBClassWithInfo subclass: #SSWDBScaledDecimalWithInfo
	instanceVariableNames: 'scale precision'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBScaledDecimalWithInfo guid: (GUID fromString: '{f9276a82-4893-11d5-b1df-0010a70883e2}')!
SSWDBScaledDecimalWithInfo comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBScaledDecimalWithInfo categoriesForClass!Unclassified! !
!SSWDBScaledDecimalWithInfo methodsFor!

infoClass

	"15/4/2001"

	^ScaledDecimal!

precision

	"15/4/2001

	precision stores the total number of digits that should be in this pseudo-ScaledDecimal.
	precision is optional; it is used by SQL (to create tables) and not ScaledDecimal itself
	 - if omitted, a sensible fallback will be used"

	^precision!

precision: anInteger

	"15/4/2001

	precision stores the total number of digits that should be in this pseudo-ScaledDecimal.
	precision is optional; it is used by SQL (to create tables) and not ScaledDecimal itself
	 - if omitted, a sensible fallback will be used"

	precision := anInteger!

scale

	"15/4/2001

	scale stores the scale of ScaledDecimal which the receiver creates/represents"

	^scale!

scale: anInteger

	"15/4/2001

	scale stores the scale of ScaledDecimal which the receiver creates/represents"

	scale := anInteger!

writeSQLTypeOn: aStream  using: anSQLDialect

	"9/3/01

	Form is something like DECIMAL(precision,scale)"

	| actualPrecision |

	self precision isNil 
		ifTrue: [actualPrecision := 15]
		ifFalse: [actualPrecision := self precision].

	aStream nextPutAll: (anSQLDialect decimal formatWith: actualPrecision printString with: self scale printString)! !
!SSWDBScaledDecimalWithInfo categoriesFor: #infoClass!constants!public! !
!SSWDBScaledDecimalWithInfo categoriesFor: #precision!accessing!public! !
!SSWDBScaledDecimalWithInfo categoriesFor: #precision:!accessing!public! !
!SSWDBScaledDecimalWithInfo categoriesFor: #scale!accessing!public! !
!SSWDBScaledDecimalWithInfo categoriesFor: #scale:!accessing!public! !
!SSWDBScaledDecimalWithInfo categoriesFor: #writeSQLTypeOn:using:!printing!public! !

