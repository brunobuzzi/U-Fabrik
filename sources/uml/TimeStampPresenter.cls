"Filed out from Dolphin Smalltalk 7"!

Presenter subclass: #TimeStampPresenter
	instanceVariableNames: 'datePresenter timePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TimeStampPresenter guid: (GUID fromString: '{19e63982-543c-4c72-b2a4-3e7a813c96ce}')!
TimeStampPresenter comment: ''!
!TimeStampPresenter categoriesForClass!Unclassified! !
!TimeStampPresenter methodsFor!

createComponents

	super createComponents.

	datePresenter := self add: DatePresenter new name: 'date'.
	timePresenter := self add: TimePresenter new name: 'time'.!

model: aTimeStamp

	super model: aTimeStamp.

	datePresenter model: (aTimeStamp aspectValue: #date).
	timePresenter model: (aTimeStamp aspectValue: #time).
!

value
	^DateAndTime fromDate: (datePresenter value) time: (timePresenter value)! !
!TimeStampPresenter categoriesFor: #createComponents!public! !
!TimeStampPresenter categoriesFor: #model:!public! !
!TimeStampPresenter categoriesFor: #value!public! !

!TimeStampPresenter class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 721158 ##(Smalltalk.SystemColor)  33 328198 ##(Smalltalk.Point)  601 131 517 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 16 234 256 98 4 410 8 ##(Smalltalk.DateTimePicker)  98 16 0 416 98 2 8 1140916230 1 656 721990 2 ##(Smalltalk.ValueHolder)  0 0 1376774 ##(Smalltalk.PluggableSearchPolicy)  459270 ##(Smalltalk.Message)  8 #= 98 0 802 8 #hash 98 0 262406 ##(Smalltalk.Date)  70769 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 656 0 8 4294907977 852486 ##(Smalltalk.NullConverter)  0 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 11 11 530 581 55 656 1106 8 #text: 98 1 8 'Monday, November 17, 1997' 656 1106 8 #range: 98 1 98 2 0 0 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 39 1 0 0 32 0 0 0] 98 0 530 193 193 0 27 8 'date' 410 672 98 16 0 416 98 2 8 1140916235 1 1424 738 0 0 770 802 832 98 0 802 880 98 0 262406 ##(Smalltalk.Time)  1 946 8 4278190080 0 5 0 0 0 1424 0 8 4294907977 1010 0 0 0 1042 202 208 98 3 1106 1136 98 2 530 11 65 530 581 57 1424 1106 1216 98 1 8 '12:00:00 AM' 1424 1106 1280 98 1 98 2 0 0 1424 1330 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 32 0 0 0 39 1 0 0 60 0 0 0] 98 0 1392 0 27 8 'time' 590342 ##(Smalltalk.Rectangle)  530 11 11 530 11 11 1042 202 208 98 1 1106 1136 98 2 530 2879 21 530 601 131 416 1330 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 203 6 0 0 75 0 0 0] 98 2 656 1424 1392 0 27 )! !
!TimeStampPresenter class categoriesFor: #resource_Default_view!public!resources-views! !

