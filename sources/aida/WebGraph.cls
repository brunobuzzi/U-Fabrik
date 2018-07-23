"Filed out from Dolphin Smalltalk 7"!

WebLiveImage subclass: #WebGraph
	instanceVariableNames: 'data margin title graphics'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebGraph guid: (GUID fromString: '{8e8efe55-5ec3-4aee-a453-90c460cb18f2}')!
WebGraph comment: ''!
!WebGraph categoriesForClass!Unclassified! !
!WebGraph methodsFor!

data
	data isNil ifTrue: [data := #(120 200 500 230 90 80 200 100 40)].
	^data!

data: anArray 
	data := anArray!

displayOn: aGraphicsContext
	| rectangle |
	self initGraphics.
	rectangle := Rectangle origin: 2 @ 2 extent: (self width - 4) @ (self height - 4).
	self graphics add: rectangle asStroker.
	self drawAxle.
	self drawYPoints.
	self graph.
	self drawTitle.
	self graphics displayOn: aGraphicsContext.!

distance
	^(self xRightPosition - self xLeftPosition) // self data size!

drawTitle
	| aTitle |
	aTitle:= (self title asComposedText compositionWidth: (self width-40)) centered.
	self graphics add: aTitle at: 20@10!

drawYPoints
	| string c stepOne step mark b |
	c := self yBottomPosition.
	b := self yTopPosition.
	stepOne := 0.
	step :=self stepFor:(self getMax at: 1).
	c to: b
		by: (0-((c - b) // 5))
		do: 
			[:x | 
			string := stepOne printString.
			mark := (string asText emphasizeAllWith: #small) asComposedText.
			mark compositionWidth: 30.
			mark rightFlush.
			graphics add: mark at: (self xLeftPosition - 40) @ ( x -13).
			stepOne := stepOne + step]!

getMax
	| b max1 maxim maxAt |
	max1 := 0.
	b := self data size.
	1 to: b
		do: [:x | (data at: x) > max1 ifTrue: 
					[max1 := data at: x.
					maxAt := x]].
	maxim := max1.
	^Array with: maxim with: maxAt.!

graphics
	graphics isNil ifTrue: [self initGraphics].
	^graphics!

height	
	^300!

heightInPixelsFor:  aNumber

	^(((self yBottomPosition - self yTopPosition) / self margin) * aNumber) truncated

"
|graf|
graf := WebGraf new.
graf data: #(10 20 30 40 50).
graf heightInPixelsFor: 15.
"!

margin
	margin isNil ifTrue: [self margin: (self marginFor: (self getMax at: 1))].
	^margin!

margin: aNumber

	margin := aNumber.!

marginFor:  aNumber

	| margin |
	aNumber < 10 ifTrue: [^10].
	margin := 10 ** ((aNumber log: 10) truncated + 1).
	margin = (aNumber * 10) ifTrue: [^margin / 10].
	aNumber > (margin / 2) ifTrue: [^margin].
	aNumber > (margin / 4) ifTrue: [^margin / 2].
	^margin / 4.

"WebGraf new marginFor: 1001"!

stepFor:  aNumber

	^(self marginFor: aNumber) / 5

"WebGraf new stepFor: 1001"!

title 
	title isNil ifTrue: [title := 'Here comes the title'].
	^title!

title: aString
	title:= aString!

width
	^500!

xLeftPosition
	^50!

xRightPosition
	^self width - 20!

yBottomPosition
	^self height - 30!

yTopPosition
	^40! !
!WebGraph categoriesFor: #data!accessing!public! !
!WebGraph categoriesFor: #data:!accessing!public! !
!WebGraph categoriesFor: #displayOn:!drawing!public! !
!WebGraph categoriesFor: #distance!constants!public! !
!WebGraph categoriesFor: #drawTitle!drawing!public! !
!WebGraph categoriesFor: #drawYPoints!drawing!public! !
!WebGraph categoriesFor: #getMax!accessing!public! !
!WebGraph categoriesFor: #graphics!accessing!public! !
!WebGraph categoriesFor: #height!constants!public! !
!WebGraph categoriesFor: #heightInPixelsFor:!public!transformations! !
!WebGraph categoriesFor: #margin!accessing!public! !
!WebGraph categoriesFor: #margin:!accessing!public! !
!WebGraph categoriesFor: #marginFor:!public!transformations! !
!WebGraph categoriesFor: #stepFor:!public!transformations! !
!WebGraph categoriesFor: #title!accessing!public! !
!WebGraph categoriesFor: #title:!accessing!public! !
!WebGraph categoriesFor: #width!constants!public! !
!WebGraph categoriesFor: #xLeftPosition!constants!public! !
!WebGraph categoriesFor: #xRightPosition!constants!public! !
!WebGraph categoriesFor: #yBottomPosition!constants!public! !
!WebGraph categoriesFor: #yTopPosition!constants!public! !

