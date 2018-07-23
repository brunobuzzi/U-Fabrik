"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SWDropSplitterExtent
	instanceVariableNames: 'height un1'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SWDropSplitterExtent guid: (GUID fromString: '{903fa724-2123-47aa-9257-b17dd58ad5f3}')!
SWDropSplitterExtent comment: ''!
!SWDropSplitterExtent categoriesForClass!Unclassified! !
!SWDropSplitterExtent methodsFor!

height
	^height!

height: anInteger
	"Set the height of the Splitter"

	height := anInteger!

initialize
	super initialize.
	height := ((View frameWidths: 262144) - 1) y	"WS_THICKFRAME"!

outsets
	^0 @ 0 extent: 0 @ 0!

rectangleTop: top parent: aParentView trackingBottom: anIntegerOrNil
	| insets |
	insets := aParentView actualInsets.
	"Like the ProportionalLayoutManager, position the splitter within the parentView's insets"
	^insets left @ top 
		corner: (aParentView clientExtent x - insets right) @ (top + self height)!

resolutionScaledBy: scale
	"Private - The receiver is being loaded and it has been determined that the pixel resolution
	has changed since the point at which the view was saved. Scale any internal pixels by <Point>
	scale."

	height := (height * scale y) truncated max: 1! !
!SWDropSplitterExtent categoriesFor: #height!public! !
!SWDropSplitterExtent categoriesFor: #height:!public! !
!SWDropSplitterExtent categoriesFor: #initialize!public! !
!SWDropSplitterExtent categoriesFor: #outsets!public! !
!SWDropSplitterExtent categoriesFor: #rectangleTop:parent:trackingBottom:!public! !
!SWDropSplitterExtent categoriesFor: #resolutionScaledBy:!public! !

!SWDropSplitterExtent class methodsFor!

new
	^super new initialize! !
!SWDropSplitterExtent class categoriesFor: #new!public! !

