"Filed out from Dolphin Smalltalk 7"!

View subclass: #SWLinkButton
	instanceVariableNames: 'swu1 swu2 flag imageExtent commandDescription overState hoverColor outColor disabledColor blendColor swu3 padLeft padRight swu4 swu5 swu6'
	classVariableNames: 'HandCursor IsBlendHotMask IsIconAlignLeftMask IsUnderlineHotMask'
	poolDictionaries: 'CommCtrlConstants'
	classInstanceVariableNames: ''!
SWLinkButton guid: (GUID fromString: '{58fb1910-bad7-4b57-8103-7d3fe435851d}')!
SWLinkButton comment: ''!
!SWLinkButton categoriesForClass!Unclassified! !
!SWLinkButton methodsFor!

beHover
	"This method can be used to manually put the link in the 'hot' state.
	 - This should be followed be a #beNotHover"

	self isEnabled ifFalse: [^nil].
	overState := #hover.
	self validateUserInterface.
	self invalidate!

beNotHover
	overState := #out.
	self invalidate!

blendColor
	^blendColor!

blendColor: aColorOrNil
	"Set the color to blend the icon with when hot.
	If nil, the System's focus color is used"

	blendColor := aColorOrNil.
	self invalidate!

calculateExtent
	| canvas padExtent textExtent |
	canvas := self canvas.
	padExtent := self paddedRectangle extent.
	padExtent x <= 0 ifTrue: [^padExtent max: 0 @ 0].
	"Reduce for icon"
	self hasIcon 
		ifTrue: [padExtent := (padExtent - (self imageExtent x + self padIconText)) @ 0].
	canvas font: self actualFont copy.
	textExtent := canvas 
				textExtent: self text
				width: padExtent x
				alignment: DT_LEFT.
	canvas free.
	^padExtent x @ (padExtent y max: textExtent y)!

command
	"Answer the <commandMessage> which is triggered when clicking the receiver."

	^commandDescription command!

command: command
	"Sets the command associated with the receiver to the <commandMessage>, command."

	commandDescription command: command!

commandDescription
	"Private - Answers a CommandDescription for the receiver"

	^commandDescription!

commandSource
	"Answer the <View> which is considered the source (and therefore typically the <commandTarget>
	at the head of the command route) of the receiver's action command. 
		Like PushButtons ...  start in the parent."

	^self parentView!

cursor
	"Private - Answer the cursor to be used in conjunction with instances of the receiver."

	^self isHoverState ifTrue: [self class handCursor] ifFalse: [super cursor]!

disabledColor
	"Answer the color of the text when the command is disabled"

	^disabledColor!

disabledColor: aColor
	"Set the color of the text for when the command is disabled"

	disabledColor := aColor.
	self invalidate!

drawIconOn: canvas in: clientRect
	"Draw the <Icon> image"

	| imageIndex ans position |
	#todo.	"have a backup blt for other images"

	"This is an ugly (very ugly!!) type test ... Hoping it might be cleaner in D6.
		- I check if image is an integer (I have hacked in my own code into Menu's etc
			so that I can use imageIndexes in place of Images.
		- I check if the image is an <Icon> ... if not ignore it"
	imageIndex := (commandDescription image isKindOf: Integer) 
				ifTrue: [commandDescription image]
				ifFalse: 
					[(commandDescription image isKindOf: Icon) 
						ifFalse: 
							[Notification signal: 'SWLinkButton can currently only draw Icons'.
							^nil].
					commandDescription image imageIndex].
	position := (self isIconAlignLeft 
				ifTrue: [clientRect left]
				ifFalse: [clientRect right - self imageExtent x]) 
					@ ((clientRect height - self imageExtent y) // 2 max: 0).
	#todo.	"Implement DrawIndirect for some cool effects on XP"
	ans := (Icon imageManager imageListWithExtent: self imageExtent) 
				drawEx: imageIndex
				on: canvas
				at: position
				backcolor: CLR_NONE
				forecolor: (blendColor ifNil: [CLR_DEFAULT])
				flags: self iconStyleFlag	"(Color systemColor: COLOR_3DHIGHLIGHT)"!

flag
	flag ifNil: [^0].
	^flag!

hasIcon
	^commandDescription image notNil!

hoverColor
	"Answer the color of the text when hover/'hot'"

	^hoverColor!

hoverColor: aColor
	"Set the color of the text for when the view is 'Hot'"

	hoverColor := aColor.
	self invalidate!

iconStyleFlag
	"Answer the flag to use with the ImageList DrawEx function"

	^(self isHoverState and: [self isBlendHot]) 
		ifTrue: 
			["ILD_BLEND50"

			4]
		ifFalse: 
			["ILD_NORMAL"

			0]!

image
	^commandDescription image!

image: anIconOrImageIndex
	"See #drawIconOn:in:"

	commandDescription image: anIconOrImageIndex.
	self invalidate!

imageExtent
	"Answer the extent of the Icon"

	imageExtent ifNil: [^16 @ 16].
	^imageExtent!

imageExtent: aPoint
	imageExtent := aPoint.
	self invalidate!

initialize
	"Private - Initialize the receiver's instance variables."

	super initialize.
	commandDescription := CommandDescription new.
	overState := #out.
	hoverColor := Color blue.
	outColor := Color darkBlue.
	disabledColor := Color gray.
	imageExtent := 16 @ 16.
	flag := IsBlendHotMask | IsIconAlignLeftMask | IsUnderlineHotMask!

isBlendHot
	^self flag allMask: IsBlendHotMask!

isBlendHot: aBoolean
	flag := self flag mask: IsBlendHotMask set: aBoolean.
	self invalidate!

isHoverState
	^overState == #hover!

isIconAlignLeft
	^self flag allMask: IsIconAlignLeftMask!

isIconAlignLeft: aBoolean
	flag := self flag mask: IsIconAlignLeftMask set: aBoolean.
	self invalidate!

isMouseOver
	^self screenRectangle containsPoint: Cursor position!

isUnderlineHot
	^self flag allMask: IsUnderlineHotMask!

isUnderlineHot: aBoolean
	flag := self flag mask: IsUnderlineHotMask set: aBoolean.
	self invalidate!

onLeftButtonReleased: aMouseEvent
	#swWatch.
	#todo.
	"I override super so that I dont trigger an event.
	-Is this the best implementation of this method?"
	self onCommand: self commandDescription.
	^self defaultWindowProcessing: aMouseEvent!

onMouseEntered
	"Need to validateUserInterface first, as this gives presenters a chance
	to modify the receiver in their #queryCommand:"

	self validateUserInterface.
	self invalidate.
	"Give an observer the opportunity to react to changes to the receiver's state
		- typically the receiver is the presenter,"
	self presenter trigger: #mouseEntered!

onMouseLeave
	"Need to validateUserInterface first, as this gives presenters a chance
	to modify the receiver in their #queryCommand:"

	self validateUserInterface.
	self invalidate.
	"Give an observer the opportunity to react to changes to the receiver's state
		- typically the receiver is the presenter,"
	self presenter trigger: #mouseLeave!

onMouseMoved: aMouseEvent
	"Move to the #in state and start the timer
		-If the cursor is still over when we get the first tick, we change to the #hover state"

	overState == #out 
		ifTrue: 
			[overState := #in.
			self resetTimer].
	^super onMouseMoved: aMouseEvent!

onPaintRequired: aPaintEvent
	| canvas padRect textExtent |
	canvas := aPaintEvent canvas.
	"We reduce padRect as we draw into the clientRectangle"
	"Start with the clientRectangle adjusted for any padding"
	padRect := self paddedRectangle.
	padRect width <= 0 ifTrue: [^nil].
	self hasIcon 
		ifTrue: 
			[self drawIconOn: canvas in: padRect.
			"Adjust padRect  to remove the icon's area"
			self isIconAlignLeft 
				ifTrue: [padRect left: padRect left + self imageExtent x + self padIconText]
				ifFalse: [padRect right: padRect right - (self imageExtent x + self padIconText)]].
	"In both cases copy the font ... even if not underlined, 
		I got strange errors if I got a walkback in this method (default font pointSize got set to 0)"
	canvas
		font: ((self isUnderlineHot and: [self isHoverState]) 
					ifTrue: [self actualFont copy beUnderlined]
					ifFalse: 
						[#todo.
						self actualFont	"copy"]);
		setTextColor: self textColor;
		setBkMode: TRANSPARENT.
	textExtent := canvas 
				textExtent: self text
				width: padRect width
				alignment: DT_LEFT.
	#todo.	"If top is < 0, should I align it to top?"
	"Line up the textExtent"
	canvas formatText: self text
		in: ((padRect origin extent: textExtent) leftCenter: padRect leftCenter)!

onPositionChanged: aPositionEvent
	"Private - Handle a window position change event (move or resize).
	"

	aPositionEvent isResize ifTrue: [self invalidate].
	^super onPositionChanged: aPositionEvent!

onTimerTick: timerId
	"Private - Check if the mouse is still in the receiver's client area"

	| justIn isStillOver |
	justIn := overState == #in.
	isStillOver := self isMouseOver.
	justIn & isStillOver 
		ifTrue: 
			[overState := #hover.
			^self onMouseEntered].
	isStillOver 
		ifFalse: 
			[overState := #out.
			self killTimer: self class defaultTimerId.
			justIn not ifTrue: [self onMouseLeave]]!

outColor
	"Answer the color of the text when 'not hot' ... ie the normal color"

	^outColor!

outColor: aColor
	"Set the color of the text for when the view is not 'Hot'"

	outColor := aColor.
	self invalidate!

paddedRectangle
	| clientRect |
	clientRect := self clientRectangle.
	clientRect left: clientRect left + self padLeft.
	clientRect right: clientRect right - self padRight.
	^clientRect!

padIconText
	"Answer the number of pixels space to leave between the icon and text"

	^5!

padLeft
	padLeft ifNil: [^0].
	^padLeft!

padLeft: anInteger
	"Set the number of pixels to ident the icon/text from the left."

	padLeft := anInteger.
	self invalidate!

padRight
	padRight ifNil: [^0].
	^padRight!

padRight: anInteger
	"Set the number of pixels to ident the icon/text from the right."

	padRight := anInteger.
	self invalidate!

resetTimer
	self killTimer: self class defaultTimerId.
	#todo.	"use system hover time?"
	self setTimer: self class defaultTimerId interval: 150!

text: aString
	"Sets the text of the receiver (and its command description) to aString."

	super text: aString.
	commandDescription description: aString.
	self invalidate!

textColor
	self isHoverState ifTrue: [^hoverColor].
	^self isEnabled ifTrue: [outColor] ifFalse: [disabledColor]!

validateUserInterface
	"Set the enabled state of the receiver.
		if any changes we need to invalidate (this method may send #invalidate multiple times
		but these should be collected up by windows"

	| query wasEnabled needsValidate |
	needsValidate := false.
	query := self commandSource queryCommandRouteFor: self commandDescription.
	wasEnabled := self isEnabled.
	self isEnabled: query isEnabled.
	wasEnabled = query isEnabled ifFalse: [self invalidate].
	query text notNil ifTrue: [self text: query text].
	query image notNil ifTrue: [self image: query image]!

wmTimer: message wParam: wParam lParam: lParam
	"Private - A timer event, identified by the <integer> id, wParam, has fired.
	Note: override super to not trigger event"

	#swWatch.
	wParam == WM_ENTERIDLE 
		ifTrue: 
			["Simulated WM_ENTERIDLE fired when menus popped"

			SessionManager inputState enterIdle.
			^0].
	self onTimerTick: wParam.
	^nil! !
!SWLinkButton categoriesFor: #beHover!public! !
!SWLinkButton categoriesFor: #beNotHover!public! !
!SWLinkButton categoriesFor: #blendColor!public! !
!SWLinkButton categoriesFor: #blendColor:!public! !
!SWLinkButton categoriesFor: #calculateExtent!public! !
!SWLinkButton categoriesFor: #command!public! !
!SWLinkButton categoriesFor: #command:!public! !
!SWLinkButton categoriesFor: #commandDescription!public! !
!SWLinkButton categoriesFor: #commandSource!public! !
!SWLinkButton categoriesFor: #cursor!public! !
!SWLinkButton categoriesFor: #disabledColor!public! !
!SWLinkButton categoriesFor: #disabledColor:!public! !
!SWLinkButton categoriesFor: #drawIconOn:in:!public! !
!SWLinkButton categoriesFor: #flag!public! !
!SWLinkButton categoriesFor: #hasIcon!public! !
!SWLinkButton categoriesFor: #hoverColor!public! !
!SWLinkButton categoriesFor: #hoverColor:!public! !
!SWLinkButton categoriesFor: #iconStyleFlag!public! !
!SWLinkButton categoriesFor: #image!public! !
!SWLinkButton categoriesFor: #image:!public! !
!SWLinkButton categoriesFor: #imageExtent!public! !
!SWLinkButton categoriesFor: #imageExtent:!public! !
!SWLinkButton categoriesFor: #initialize!public! !
!SWLinkButton categoriesFor: #isBlendHot!public! !
!SWLinkButton categoriesFor: #isBlendHot:!public! !
!SWLinkButton categoriesFor: #isHoverState!public! !
!SWLinkButton categoriesFor: #isIconAlignLeft!public! !
!SWLinkButton categoriesFor: #isIconAlignLeft:!public! !
!SWLinkButton categoriesFor: #isMouseOver!public! !
!SWLinkButton categoriesFor: #isUnderlineHot!public! !
!SWLinkButton categoriesFor: #isUnderlineHot:!public! !
!SWLinkButton categoriesFor: #onLeftButtonReleased:!public! !
!SWLinkButton categoriesFor: #onMouseEntered!public! !
!SWLinkButton categoriesFor: #onMouseLeave!public! !
!SWLinkButton categoriesFor: #onMouseMoved:!public! !
!SWLinkButton categoriesFor: #onPaintRequired:!public! !
!SWLinkButton categoriesFor: #onPositionChanged:!public! !
!SWLinkButton categoriesFor: #onTimerTick:!public! !
!SWLinkButton categoriesFor: #outColor!public! !
!SWLinkButton categoriesFor: #outColor:!public! !
!SWLinkButton categoriesFor: #paddedRectangle!public! !
!SWLinkButton categoriesFor: #padIconText!public! !
!SWLinkButton categoriesFor: #padLeft!public! !
!SWLinkButton categoriesFor: #padLeft:!public! !
!SWLinkButton categoriesFor: #padRight!public! !
!SWLinkButton categoriesFor: #padRight:!public! !
!SWLinkButton categoriesFor: #resetTimer!public! !
!SWLinkButton categoriesFor: #text:!public! !
!SWLinkButton categoriesFor: #textColor!public! !
!SWLinkButton categoriesFor: #validateUserInterface!public! !
!SWLinkButton categoriesFor: #wmTimer:wParam:lParam:!public! !

!SWLinkButton class methodsFor!

defaultTimerId
	"Answer the id to use for the SetTimer message.
		-This is dependent on the window handle, so it shouldnt clash with other timers"

	^42!

handCursor
	"Answer a the Hand cursor.
	MSDN:
		IDC_HAND 
		Windows 98/Me, Windows 2000/XP: Hand"

	HandCursor isNil 
		ifTrue: 
			[HandCursor := OSVERSIONINFO current isWin95 
						ifTrue: [Cursor arrow]
						ifFalse: [Cursor fromSystemId: 32649	"IDC_HAND"]].
	^HandCursor!

initialize
	"
	self initialize
	"

	IsIconAlignLeftMask := 1.
	IsUnderlineHotMask := 2.
	IsBlendHotMask := 4!

publishedAspectsOfInstances
	"Answer a <LookupTable> of the <Aspect>s published by instances of the receiver."

	^(super publishedAspectsOfInstances)
		add: (Aspect name: #commandDescription);
		add: (Aspect icon: #image);
		add: (Aspect color: #hoverColor);
		add: (Aspect color: #outColor);
		add: (Aspect color: #disabledColor);
		add: (Aspect color: #blendColor);
		add: (Aspect name: #imageExtent);
		add: (Aspect boolean: #isUnderlineHot);
		add: (Aspect boolean: #isIconAlignLeft);
		add: (Aspect boolean: #isBlendHot);
		add: (Aspect integer: #padLeft);
		add: (Aspect integer: #padRight);
		yourself!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.SWLinkButton)  98 28 0 0 98 2 8 1140850688 1 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 7 0 0 0 416 0 0 15 328198 ##(Smalltalk.Point)  33 33 1180998 4 ##(Smalltalk.CommandDescription)  8 #noCommand 0 1 1 0 8 #out 786694 ##(Smalltalk.IndexedColor)  33554465 642 33554441 642 33554447 0 0 0 0 0 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 546 11 11 546 221 51 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 115 0 0 0 30 0 0 0] 98 0 546 193 193 0 27 )!

uninitialize
	HandCursor := nil! !
!SWLinkButton class categoriesFor: #defaultTimerId!public! !
!SWLinkButton class categoriesFor: #handCursor!public! !
!SWLinkButton class categoriesFor: #initialize!public! !
!SWLinkButton class categoriesFor: #publishedAspectsOfInstances!public! !
!SWLinkButton class categoriesFor: #resource_Default_view!public! !
!SWLinkButton class categoriesFor: #uninitialize!public! !

