"Filed out from Dolphin Smalltalk 7"!

AIDAAbstractWebElement subclass: #AIDASimpleObjectWebPageDescription
	instanceVariableNames: 'object cells'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDASimpleObjectWebPageDescription guid: (GUID fromString: '{d19ea665-fe01-4887-8cde-1337582bdd96}')!
AIDASimpleObjectWebPageDescription comment: ''!
!AIDASimpleObjectWebPageDescription categoriesForClass!Unclassified! !
!AIDASimpleObjectWebPageDescription methodsFor!

addCell: anAIDATableCell

	^cells add: anAIDATableCell!

applyOn: aWebElement 
	| firstElement |

	firstElement := cells first.
	firstElement hasLink
	ifTrue: [aWebElement cell addLinkTo: firstElement secondaryObject text: firstElement value]
	ifFalse: [aWebElement cell addText: firstElement value].

	cells allButFirst do: [:each | 
		each hasLink 
		ifTrue: [aWebElement newCell addLinkTo: each secondaryObject text: each value]
		ifFalse: [aWebElement newCell addText: each value].].!

cells
	^cells!

cells: anObject
	cells := anObject!

initialize

	super initialize.

	cells := OrderedCollection new.!

object
	^object!

object: anObject
	object := anObject! !
!AIDASimpleObjectWebPageDescription categoriesFor: #addCell:!public! !
!AIDASimpleObjectWebPageDescription categoriesFor: #applyOn:!public! !
!AIDASimpleObjectWebPageDescription categoriesFor: #cells!accessing!private! !
!AIDASimpleObjectWebPageDescription categoriesFor: #cells:!accessing!private! !
!AIDASimpleObjectWebPageDescription categoriesFor: #initialize!public! !
!AIDASimpleObjectWebPageDescription categoriesFor: #object!accessing!private! !
!AIDASimpleObjectWebPageDescription categoriesFor: #object:!accessing!private! !

!AIDASimpleObjectWebPageDescription class methodsFor!

on: anObject

	^super new initialize
		object: anObject;
		yourself.! !
!AIDASimpleObjectWebPageDescription class categoriesFor: #on:!public! !

