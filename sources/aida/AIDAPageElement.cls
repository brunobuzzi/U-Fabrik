"Filed out from Dolphin Smalltalk 7"!

AIDAAbstractWebElement subclass: #AIDAPageElement
	instanceVariableNames: 'selector hasLink row secondarySelector viewFirstObject'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAPageElement guid: (GUID fromString: '{05d55ddd-93b8-4f3a-98f1-0e1f70f45316}')!
AIDAPageElement comment: ''!
!AIDAPageElement categoriesForClass!Unclassified! !
!AIDAPageElement methodsFor!

hasLink
	^hasLink!

hasLink: anObject
	hasLink := anObject!

initialize

	super initialize.

	hasLink := false.
	viewFirstObject := false.!

object

	^row object!

row
	^row!

row: anObject
	row := anObject!

secondaryObject

	viewFirstObject ifFalse: [^self object perform: selector].

	^self object perform: secondarySelector!

secondarySelector
	^secondarySelector!

secondarySelector: anObject
	secondarySelector := anObject!

selector
	^selector!

selector: anObject
	selector := anObject!

umlValue

	hasLink ifFalse: [^(self object vmPerform: selector) smalltalkObject].
	viewFirstObject ifTrue: [^(self object vmPerform: selector) smalltalkObject].
	^(self object vmPerform: secondarySelector) smalltalkObject!

value

	hasLink ifFalse: [^self object perform: selector].
	viewFirstObject ifTrue: [^self object perform: selector].
	^self object perform: secondarySelector!

viewFirstObject
	^viewFirstObject!

viewFirstObject: anObject
	viewFirstObject := anObject! !
!AIDAPageElement categoriesFor: #hasLink!accessing!private! !
!AIDAPageElement categoriesFor: #hasLink:!accessing!private! !
!AIDAPageElement categoriesFor: #initialize!public! !
!AIDAPageElement categoriesFor: #object!public! !
!AIDAPageElement categoriesFor: #row!accessing!private! !
!AIDAPageElement categoriesFor: #row:!accessing!private! !
!AIDAPageElement categoriesFor: #secondaryObject!public! !
!AIDAPageElement categoriesFor: #secondarySelector!accessing!private! !
!AIDAPageElement categoriesFor: #secondarySelector:!accessing!private! !
!AIDAPageElement categoriesFor: #selector!accessing!private! !
!AIDAPageElement categoriesFor: #selector:!accessing!private! !
!AIDAPageElement categoriesFor: #umlValue!public! !
!AIDAPageElement categoriesFor: #value!public! !
!AIDAPageElement categoriesFor: #viewFirstObject!accessing!private! !
!AIDAPageElement categoriesFor: #viewFirstObject:!accessing!private! !

!AIDAPageElement class methodsFor!

row: anAIDATableRow selector: aSymbol

	^super new initialize
		row: anAIDATableRow;
		selector: aSymbol;
		yourself.!

row: anAIDATableRow selector: aSymbol hasLink: aBoolean

	^super new initialize
		row: anAIDATableRow;
		selector: aSymbol;
		hasLink: aBoolean;
		yourself.!

row: anAIDATableRow selector: aSymbol secondarySelector: secondarySymbol

	^self row: anAIDATableRow selector: aSymbol secondarySelector: secondarySymbol hasLink: true!

row: anAIDATableRow selector: aSymbol secondarySelector: secondarySymbol hasLink: aBoolean

	^self row: anAIDATableRow selector: aSymbol secondarySelector: secondarySymbol hasLink: aBoolean viewFirstObject: false!

row: anAIDATableRow selector: aSymbol secondarySelector: secondarySymbol hasLink: aBoolean viewFirstObject: viewFirstBoolean

	^super new initialize
		row: anAIDATableRow;
		selector: aSymbol;
		secondarySelector: secondarySymbol;
		hasLink: aBoolean;
		viewFirstObject: viewFirstBoolean;
		yourself.!

row: anAIDATableRow selector: aSymbol secondarySelector: secondarySymbol viewFirstObject: viewFirstBoolean

	^self row: anAIDATableRow selector: aSymbol secondarySelector: secondarySymbol hasLink: true viewFirstObject: viewFirstBoolean!

row: anAIDATableRow selectorWithLink: aSymbol 

	^super new initialize
		row: anAIDATableRow;
		selector: aSymbol;
		secondarySelector: #yourself;
		hasLink: true;
		yourself.! !
!AIDAPageElement class categoriesFor: #row:selector:!public! !
!AIDAPageElement class categoriesFor: #row:selector:hasLink:!public! !
!AIDAPageElement class categoriesFor: #row:selector:secondarySelector:!public! !
!AIDAPageElement class categoriesFor: #row:selector:secondarySelector:hasLink:!public! !
!AIDAPageElement class categoriesFor: #row:selector:secondarySelector:hasLink:viewFirstObject:!public! !
!AIDAPageElement class categoriesFor: #row:selector:secondarySelector:viewFirstObject:!public! !
!AIDAPageElement class categoriesFor: #row:selectorWithLink:!public! !

