"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SWDropExtent
	instanceVariableNames: 'outsets closeHeight openHeight isOpen trackedHeight un1'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SWDropExtent guid: (GUID fromString: '{67717ebe-dd39-48a7-9a5a-ee33e0a5d698}')!
SWDropExtent comment: ''!
!SWDropExtent categoriesForClass!Unclassified! !
!SWDropExtent methodsFor!

actualHeight
	^trackedHeight 
		ifNil: [self height]
		ifNotNil: 
			[:o | 
			"manually update isOpen"

			isOpen := o > closeHeight.
			"constrain to the closeHeight"
			o max: closeHeight]!

closeHeight
	^closeHeight!

closeHeight: anInteger
	"Set the height in pixels of the view when in the closed mode.
	Note: this also sets the minimum height that the user can set via tracking a Splitter"

	closeHeight := anInteger!

height
	^isOpen ifTrue: [openHeight] ifFalse: [closeHeight]!

initialize
	super initialize.
	outsets := 10 @ 10 corner: 10 @ 10.
	closeHeight := 20.
	openHeight := 100.
	isOpen := true!

isOpen
	^isOpen!

isOpen: aBoolean
	isOpen := aBoolean!

openHeight
	^openHeight!

openHeight: anInteger
	"Set the height in pixels of the view when in the open mode.
	Note: the user can increase the height via  tracking a Splitter"

	openHeight := anInteger!

outsets
	^outsets!

outsets: aRectangle
	"Note: like insets, both origin and corner should be > 0@0"

	outsets := aRectangle!

rectangleTop: top parent: aParentView trackingBottom: anIntegerOrNil
	| insets actualHeight |
	#stayDown.
	"If the user is repositioning, calculate the height they want
	 - Dont set trackedHeight to nil (ie the user is not repositioning) ... we 
			only reset this if the user toggle's isOpen."
	anIntegerOrNil notNil 
		ifTrue: [trackedHeight := anIntegerOrNil - top - outsets top - outsets bottom].
	"If we have a trackedHeight we use it, otherwise it is the normal height.
	(Note: #actualHeight also updates #isOpen in case the user's tracking
		effectively opens/closes the view"
	#todo.
	"If the view has #usePreferredExtent = true, should we use
	its preferred extent in place of #openHeight?"
	actualHeight := self actualHeight.
	insets := aParentView actualInsets.
	^(insets left + outsets left) @ (top + outsets top) 
		corner: (aParentView clientExtent x - insets right - outsets right) 
				@ (top + outsets top + actualHeight)!

resolutionScaledBy: scale
	"Private - The receiver is being loaded and it has been determined that the pixel resolution
	has changed since the point at which the view was saved. Scale any internal pixels by <Point>
	scale."

	closeHeight := (closeHeight * scale y) truncated.
	openHeight := (openHeight * scale y) truncated
	"outsets ?"!

toggleIsOpen
	"Note: reset any tracked height to nil"

	trackedHeight := nil.
	isOpen := isOpen not! !
!SWDropExtent categoriesFor: #actualHeight!public! !
!SWDropExtent categoriesFor: #closeHeight!public! !
!SWDropExtent categoriesFor: #closeHeight:!public! !
!SWDropExtent categoriesFor: #height!public! !
!SWDropExtent categoriesFor: #initialize!public! !
!SWDropExtent categoriesFor: #isOpen!public! !
!SWDropExtent categoriesFor: #isOpen:!public! !
!SWDropExtent categoriesFor: #openHeight!public! !
!SWDropExtent categoriesFor: #openHeight:!public! !
!SWDropExtent categoriesFor: #outsets!public! !
!SWDropExtent categoriesFor: #outsets:!public! !
!SWDropExtent categoriesFor: #rectangleTop:parent:trackingBottom:!public! !
!SWDropExtent categoriesFor: #resolutionScaledBy:!public! !
!SWDropExtent categoriesFor: #toggleIsOpen!public! !

!SWDropExtent class methodsFor!

new
	^super new initialize!

publishedAspectsOfInstances
	"Answer a <LookupTable> of the <Aspect>s published by instances of the receiver."

	^(super publishedAspectsOfInstances)
		add: (Aspect integer: #closeHeight);
		add: (Aspect integer: #openHeight);
		add: (Aspect boolean: #isOpen);
		add: (Aspect name: #outsets);
		yourself!

stbConvertFrom: anSTBClassFormat
	"Convert from earlier version models.
		1: Added 'minWidth' instance variable, default to nil."

	^
	[:data | 
	| newInstance |
	newInstance := self basicNew.
	1 to: data size do: [:i | newInstance instVarAt: i put: (data at: i)].
	newInstance]!

stbVersion
	"Answer the current binary filer version number for instances of the receiver."

	^1! !
!SWDropExtent class categoriesFor: #new!public! !
!SWDropExtent class categoriesFor: #publishedAspectsOfInstances!public! !
!SWDropExtent class categoriesFor: #stbConvertFrom:!public! !
!SWDropExtent class categoriesFor: #stbVersion!public! !

