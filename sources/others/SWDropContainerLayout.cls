"Filed out from Dolphin Smalltalk 7"!

LayoutManager subclass: #SWDropContainerLayout
	instanceVariableNames: 'dropExtents minWidth un1'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SWDropContainerLayout guid: (GUID fromString: '{71051450-b0e1-4d2d-839a-0d67e817735c}')!
SWDropContainerLayout comment: ''!
!SWDropContainerLayout categoriesForClass!Unclassified! !
!SWDropContainerLayout methodsFor!

arrangementAspect
	"Private - Answer an Aspect description for the arrangement aspect of Views that
    	are managed by the recever. Since the aspect contains a SWDrop*Extent instance
    	this must be marked as immutable to ensure that the changes are flushed back correctly"

	^(Aspect name: #arrangement) beImmutable!

arrangementOf: aView
	"Answer the dropExtent for aView. This will lazily
	generate one if none has currently been set."

	| layout |
	^dropExtents at: aView
		ifAbsent: 
			[layout := aView swLayoutDropExtentClass new.
			self arrangementOf: aView put: layout.
			layout]!

arrangementOf: aView put: aFramingConstraints
	"Set the arrangement parameter of aView in the receiver to be "

	dropExtents at: aView put: aFramingConstraints!

initialize
	"Private - Initialize the state of the receiver."

	super initialize.
	dropExtents := LookupTable new!

isOpenOf: aView
	"#toggleIsOpenOf: and #isOpenOf: are helper methods that can be used by a 
	presenter to manage the inner views. See the Sample package for how to use them."

	| actualView arrangement |
	actualView := self managedViewOf: aView.
	arrangement := self arrangementOf: actualView.
	^arrangement isOpen!

isVertical
	^true!

layoutContainer: aContainerView
	"Performs a layout operation on the contents in aContainerView"

	self 
		layoutContainer: aContainerView
		movedView: nil
		to: nil!

layoutContainer: aContainerView movedView: aViewOrNil to: aPointOrNil
	"Private - Performs a layout operation on the contents in aContainerView"

	(self 
		viewsToRectanglesOf: aContainerView
		movedView: aViewOrNil
		to: aPointOrNil) do: [:each | each key rectangle: each value]!

managedViewOf: aView
	"Answer aView if it is managed by the receiver, if not check if its parent is managed (typically a ReferenceView), 
		and answer that.
	Note: this method is a convienience method used 
		by the helper methods #toggleIsOpenOf: and isOpenOf:
	These methods are sent by Presenters, and if ReferenceViews are used,
		the receiver manages the referenceView not the aView argument."

	^(dropExtents includesKey: aView) 
		ifTrue: [aView]
		ifFalse: 
			[(dropExtents includesKey: aView parentView) 
				ifTrue: [aView parentView]
				ifFalse: [self error: 'The view is not managed']]!

minWidth
	^minWidth!

minWidth: anIntegerOrNil
	minWidth := anIntegerOrNil!

preferredLayoutExtentOf: aContainerView
	| viewsToRects parentInsets width bottomView bottomRect |
	(viewsToRects := self 
				viewsToRectanglesOf: aContainerView
				movedView: nil
				to: nil) isEmpty 
		ifTrue: [^nil].
	parentInsets := aContainerView parentView actualInsets.
	width := aContainerView parentView clientExtent x - parentInsets left 
				- parentInsets right.
	minWidth notNil ifTrue: [width := width max: minWidth].
	bottomView := viewsToRects last key.
	bottomRect := viewsToRects last value.
	^width @ (bottomRect bottom + (self arrangementOf: bottomView) outsets bottom)!

removeSubView: aView
	"Remove view from the collection of views which have been explicitly
	arranged by the receiver.
	Answer view."

	dropExtents removeKey: aView ifAbsent: [].
	^super removeSubView: aView!

reposition: aMovedView to: aPoint
	"Private - The view, aView, has been moved to aPoint. Ask the receiver to do the repositioning
	and layout all the other views under its jurisdiction. In some circumstances the movement
	may not be allowed."

	"Note: after this message is sent by the splitter, the splitter asks parentView to layout.
	 - We need to tell the ScollingDecorator that the parentView's layout may be invalid, 
	   which may result in more laying-out than necessary"

	self 
		layoutContainer: aMovedView parentView
		movedView: aMovedView
		to: aPoint.
	"repositioning may have caused one of the views to change #isOpen.
	This will allow a presenter (in #queryCommand:) to update any commands that depend on #isOpen."
	aMovedView parentView invalidateUserInterface.
	"Invalidate the parentView layout (the outer container), as the change in size may change the scroll bars
		and then tell the ScrollingDecorator to validate"

	"Note: to see the problem this solves, 
		1/ comment out the next two lines.
		2/ In a view with the vert scroll-bar showing, use the splitter to shorten a container such that
		   the scroll bar will no longer be needed.
	  result = mess"
	aMovedView parentView invalidateLayout.
	aMovedView parentView parentView validateLayout!

resolutionScaledBy: scale
	"Private - The receiver is being loaded and it has been determined that the pixel resolution
	has changed since the point at which the view was saved. Scale any internal pixels by <Point>
	scale."

	minWidth notNil ifTrue: [minWidth := (minWidth * scale x) truncated].
	dropExtents values do: [:each | each resolutionScaledBy: scale]!

toggleIsOpenOf: aView
	"Answer whether the view is now open"

	"#toggleIsOpenOf: and #isOpenOf: are helper methods that can be used by a 
	presenter to manage the inner views. See the Sample package for how to use them."

	| actualView arrangement |
	actualView := self managedViewOf: aView.
	(arrangement := self arrangementOf: actualView) toggleIsOpen.
	actualView invalidateLayout.
	"Invalidate the parentView layout (the outer container), as the change in size may change the scroll bars
		and then tell the ScrollingDecorator to validate

	See #reposition:to: notes"
	actualView parentView invalidateLayout.
	actualView parentView parentView validateLayout.
	^arrangement isOpen!

viewsToRectanglesOf: aContainerView movedView: aViewOrNil to: aPointOrNil
	"Answer a collection of view to position rectangle associations"

	| subviews top |
	self assert: [aViewOrNil isNil = aPointOrNil isNil].
	subviews := aContainerView managedSubViews.
	top := aContainerView actualInsets top.
	^(1 to: subviews size) collect: 
			[:index | 
			| aView nextView layout newRect |
			aView := subviews at: index.
			index < subviews size ifTrue: [nextView := subviews at: index + 1].
			layout := self arrangementOf: aView.
			"The trackingBottom argument is only notNil when the view below
			aView is a Splitter that has just been repositioned"
			newRect := layout 
						rectangleTop: top
						parent: aContainerView
						trackingBottom: ((nextView notNil and: [aViewOrNil == nextView]) 
								ifTrue: [aPointOrNil y]
								ifFalse: []).
			top := newRect bottom + layout outsets bottom.
			aView -> newRect]! !
!SWDropContainerLayout categoriesFor: #arrangementAspect!public! !
!SWDropContainerLayout categoriesFor: #arrangementOf:!public! !
!SWDropContainerLayout categoriesFor: #arrangementOf:put:!public! !
!SWDropContainerLayout categoriesFor: #initialize!public! !
!SWDropContainerLayout categoriesFor: #isOpenOf:!public! !
!SWDropContainerLayout categoriesFor: #isVertical!public! !
!SWDropContainerLayout categoriesFor: #layoutContainer:!public! !
!SWDropContainerLayout categoriesFor: #layoutContainer:movedView:to:!public! !
!SWDropContainerLayout categoriesFor: #managedViewOf:!public! !
!SWDropContainerLayout categoriesFor: #minWidth!public! !
!SWDropContainerLayout categoriesFor: #minWidth:!public! !
!SWDropContainerLayout categoriesFor: #preferredLayoutExtentOf:!public! !
!SWDropContainerLayout categoriesFor: #removeSubView:!public! !
!SWDropContainerLayout categoriesFor: #reposition:to:!public! !
!SWDropContainerLayout categoriesFor: #resolutionScaledBy:!public! !
!SWDropContainerLayout categoriesFor: #toggleIsOpenOf:!public! !
!SWDropContainerLayout categoriesFor: #viewsToRectanglesOf:movedView:to:!public! !

!SWDropContainerLayout class methodsFor!

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

	^2! !
!SWDropContainerLayout class categoriesFor: #stbConvertFrom:!public! !
!SWDropContainerLayout class categoriesFor: #stbVersion!public! !

