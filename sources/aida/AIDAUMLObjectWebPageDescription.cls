"Filed out from Dolphin Smalltalk 7"!

AIDAObjectWebPageDescription subclass: #AIDAUMLObjectWebPageDescription
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAUMLObjectWebPageDescription guid: (GUID fromString: '{db0e6672-90b6-4d1c-8a9a-5aa1f6dab0a6}')!
AIDAUMLObjectWebPageDescription comment: ''!
!AIDAUMLObjectWebPageDescription categoriesForClass!Unclassified! !
!AIDAUMLObjectWebPageDescription methodsFor!

applyFirstElementOn: aWebElement with: anOrderedCollection
	| firstElement |

	aWebElement newRow"; addBreak; addBreak".
	firstElement := anOrderedCollection first.
	aWebElement cell addTextH2: firstElement groupName.
	aWebElement newRow.
		aWebElement cell attributesAt: #style put: 'background: Gainsboro;color: Navy;border-style:outset;border-width:1px;'.
	aWebElement cell addText: firstElement caption.
	aWebElement cell addBreak.
	firstElement hasLink
	ifTrue: [aWebElement cell addLinkTo: firstElement secondaryObject text: firstElement umlValue]
	ifFalse: [firstElement addAIDAElementTo: aWebElement cell value: firstElement umlValue.].!

applyOn: aWebElement  with: anOrderedCollection
	| index |

	index := 1.
	aWebElement table attributesAt: #style put: 'background: white;width:100%;'.
	self applyFirstElementOn: aWebElement with: anOrderedCollection.
	anOrderedCollection allButFirst do: [:each | 
		(index = 4) 
		ifTrue: [index := 0.
			aWebElement newRow.].
		index isZero ifFalse: [aWebElement newCell].
		aWebElement cell addText: each caption.
		aWebElement cell attributesAt: #style put: 'background: Gainsboro;color: Navy;border-style:outset;border-width:1px;'.
		aWebElement cell addBreak.

		each hasLink 
		ifTrue: [aWebElement cell addLinkTo: each secondaryObject text: each umlValue.]
		ifFalse: [each addAIDAElementTo: aWebElement cell value: each umlValue].
		index := index + 1.].
! !
!AIDAUMLObjectWebPageDescription categoriesFor: #applyFirstElementOn:with:!public! !
!AIDAUMLObjectWebPageDescription categoriesFor: #applyOn:with:!public! !

