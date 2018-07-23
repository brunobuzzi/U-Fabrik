"Filed out from Dolphin Smalltalk 7"!

AIDASimpleObjectWebPageDescription subclass: #AIDAObjectWebPageDescription
	instanceVariableNames: 'caption'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAObjectWebPageDescription guid: (GUID fromString: '{2f7f2c3f-89f5-431f-bcd8-3566996cf59f}')!
AIDAObjectWebPageDescription comment: ''!
!AIDAObjectWebPageDescription categoriesForClass!Unclassified! !
!AIDAObjectWebPageDescription methodsFor!

applyFirstElementOn: aWebElement

	^self applyFirstElementOn: aWebElement with: cells!

applyFirstElementOn: aWebElement with: anOrderedCollection
	| firstElement |

	aWebElement newRow"; addBreak; addBreak".
	firstElement := anOrderedCollection first.
	aWebElement cell addText: firstElement groupName.
	aWebElement newRow.
	aWebElement cell attributesAt: #style put: 	'background-image: url(../images/description.gif); 	text-align: right;' "self defaultCaptionBackcolor".
	aWebElement cell addText: firstElement caption.
	aWebElement newCell.
	aWebElement cell attributesAt: #style put: 'background-image: url(../images/values3.gif);' "self defaultValueBackcolor".
	firstElement hasLink
	ifTrue: [aWebElement cell addLinkTo: firstElement secondaryObject text: firstElement value]
	ifFalse: [firstElement addAIDAElementTo: aWebElement cell value: firstElement value.].!

applyOn: aWebElement 
	| groupsNames |

	self hasGroups ifFalse: [^self applyOn: aWebElement with: cells].
	groupsNames := (cells collect: [:each | each groupName]) copyWithoutDuplicates.
	groupsNames do: [:each | self applyOn: aWebElement with: (self cellsInGroupName: each)]
	
!

applyOn: aWebElement  with: anOrderedCollection

	self applyFirstElementOn: aWebElement with: anOrderedCollection.
	anOrderedCollection allButFirst do: [:each | 
		aWebElement newRow.
		aWebElement cell attributesAt: #style put: 'background-image: url(../images/description.gif); text-align: right;' "self defaultCaptionBackcolor".
		aWebElement cell addText: each caption.
		aWebElement newCell.
		aWebElement cell attributesAt: #style put: 'background-image: url(../images/values3.gif);' "self defaultValueBackcolor".
		each hasLink 
		ifTrue: [aWebElement cell addLinkTo: each secondaryObject text: each value.]
		ifFalse: [each addAIDAElementTo: aWebElement cell value: each value].].!

caption
	^caption!

caption: anObject
	caption := anObject!

cellsInGroupName: aString

	^cells select: [:each | each groupName = aString]!

defaultCaptionBackcolor
	"Change the backcolor "

	^'background: Gainsboro'!

defaultValueBackcolor

	^'background: rgb(204,226,200)'!

firstElement

	^cells first!

hasGroups

	^cells anySatisfy: [:each | each hasGroup]!

initialize

	super initialize.

	caption := ''.! !
!AIDAObjectWebPageDescription categoriesFor: #applyFirstElementOn:!public! !
!AIDAObjectWebPageDescription categoriesFor: #applyFirstElementOn:with:!public! !
!AIDAObjectWebPageDescription categoriesFor: #applyOn:!public! !
!AIDAObjectWebPageDescription categoriesFor: #applyOn:with:!public! !
!AIDAObjectWebPageDescription categoriesFor: #caption!accessing!private! !
!AIDAObjectWebPageDescription categoriesFor: #caption:!accessing!private! !
!AIDAObjectWebPageDescription categoriesFor: #cellsInGroupName:!public! !
!AIDAObjectWebPageDescription categoriesFor: #defaultCaptionBackcolor!public! !
!AIDAObjectWebPageDescription categoriesFor: #defaultValueBackcolor!public! !
!AIDAObjectWebPageDescription categoriesFor: #firstElement!public! !
!AIDAObjectWebPageDescription categoriesFor: #hasGroups!public! !
!AIDAObjectWebPageDescription categoriesFor: #initialize!public! !

!AIDAObjectWebPageDescription class methodsFor!

newCaption: aString

	^super new initialize
		caption: aString;
		yourself.! !
!AIDAObjectWebPageDescription class categoriesFor: #newCaption:!public! !

