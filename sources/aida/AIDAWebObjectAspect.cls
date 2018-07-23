"Filed out from Dolphin Smalltalk 7"!

AIDAPageElement subclass: #AIDAWebObjectAspect
	instanceVariableNames: 'caption groupName backgroundImage backgroundColor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAWebObjectAspect guid: (GUID fromString: '{337ea87d-57a1-4469-be28-9ac323ff4b3c}')!
AIDAWebObjectAspect comment: ''!
!AIDAWebObjectAspect categoriesForClass!Unclassified! !
!AIDAWebObjectAspect methodsFor!

addAIDAElementTo: aWebElement value: anObject

	^aWebElement addText: anObject

	!

backgroundColor
	^backgroundColor!

backgroundColor: anObject
	backgroundColor := anObject!

backgroundImage
	^backgroundImage!

backgroundImage: anObject
	backgroundImage := anObject!

caption
	^caption!

caption: anObject
	caption := anObject!

groupName
	^groupName!

groupName: anObject
	groupName := anObject!

hasGroup

	^groupName notEmpty!

initialize

	super initialize.

	caption := ''.
	groupName := ''.
	backgroundColor := 'rgb(245,245,245)'.! !
!AIDAWebObjectAspect categoriesFor: #addAIDAElementTo:value:!public! !
!AIDAWebObjectAspect categoriesFor: #backgroundColor!accessing!private!web background! !
!AIDAWebObjectAspect categoriesFor: #backgroundColor:!accessing!private!web background! !
!AIDAWebObjectAspect categoriesFor: #backgroundImage!accessing!private!web background! !
!AIDAWebObjectAspect categoriesFor: #backgroundImage:!accessing!private!web background! !
!AIDAWebObjectAspect categoriesFor: #caption!accessing!private! !
!AIDAWebObjectAspect categoriesFor: #caption:!accessing!private! !
!AIDAWebObjectAspect categoriesFor: #groupName!accessing!private! !
!AIDAWebObjectAspect categoriesFor: #groupName:!accessing!private! !
!AIDAWebObjectAspect categoriesFor: #hasGroup!public! !
!AIDAWebObjectAspect categoriesFor: #initialize!public! !

!AIDAWebObjectAspect class methodsFor!

row: anAIDATableRow selector: aSymbol caption: aString

	^self row: anAIDATableRow selector: aSymbol caption: aString groupName: ''!

row: anAIDATableRow selector: aSymbol caption: aString groupName: groupName

	^super new initialize
		row: anAIDATableRow;
		selector: aSymbol;
		caption: aString;
		groupName: groupName;
		yourself.!

row: anAIDATableRow selector: aSymbol secondarySelector: secondarySymbol caption: aString

	^self row: anAIDATableRow selector: aSymbol secondarySelector: secondarySymbol caption: aString groupName: ''!

row: anAIDATableRow selector: aSymbol secondarySelector: secondarySymbol caption: aString groupName: groupName

	^super new initialize
		row: anAIDATableRow;
		selector: aSymbol;
		secondarySelector: secondarySymbol;
		hasLink: true;
		caption: aString;
		groupName: groupName;
		yourself.! !
!AIDAWebObjectAspect class categoriesFor: #row:selector:caption:!public! !
!AIDAWebObjectAspect class categoriesFor: #row:selector:caption:groupName:!public! !
!AIDAWebObjectAspect class categoriesFor: #row:selector:secondarySelector:caption:!public! !
!AIDAWebObjectAspect class categoriesFor: #row:selector:secondarySelector:caption:groupName:!public! !

