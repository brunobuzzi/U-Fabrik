"Filed out from Dolphin Smalltalk 7"!

BBDialog subclass: #UMLSimpleValueDialog
	instanceVariableNames: 'atomicContainer answer simplePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLSimpleValueDialog guid: (GUID fromString: '{3fb5c3fd-c43c-47ed-83b0-266ccf3c3862}')!
UMLSimpleValueDialog comment: ''!
!UMLSimpleValueDialog categoriesForClass!Unclassified! !
!UMLSimpleValueDialog methodsFor!

accept

	answer := simplePresenter value.

	super exit.


	!

answer
	"Answer the model if the receiver was confirmed (with #apply, #ok) or nil otherwise"

	^answer!

atomicComposite

	^atomicContainer  subPresenters last!

atomicCompositeOrNil

	atomicContainer  subPresenters isEmpty ifTrue: [^nil].
	^atomicContainer  subPresenters last!

atomicContainer
	^atomicContainer!

atomicContainer: anObject
	atomicContainer := anObject!

createComponents

	super createComponents.

	atomicContainer := self add: Presenter new name: 'atomicContainer'.!

exit

"	self atomicComposite cancelConnection.
	self session abort.
	self session beginTransaction."
	answer := nil.
	super exit.!

simplePresenter
	^simplePresenter!

simplePresenter: anObject
	simplePresenter := anObject! !
!UMLSimpleValueDialog categoriesFor: #accept!public!transactions! !
!UMLSimpleValueDialog categoriesFor: #answer!accessing!public! !
!UMLSimpleValueDialog categoriesFor: #atomicComposite!public! !
!UMLSimpleValueDialog categoriesFor: #atomicCompositeOrNil!public! !
!UMLSimpleValueDialog categoriesFor: #atomicContainer!accessing!private! !
!UMLSimpleValueDialog categoriesFor: #atomicContainer:!accessing!private! !
!UMLSimpleValueDialog categoriesFor: #createComponents!public! !
!UMLSimpleValueDialog categoriesFor: #exit!public!transactions! !
!UMLSimpleValueDialog categoriesFor: #simplePresenter!accessing!private! !
!UMLSimpleValueDialog categoriesFor: #simplePresenter:!accessing!private! !

!UMLSimpleValueDialog class methodsFor!

createFor: anUMLVirtualMachineClass
	| dialog resourceIndetifier |

	dialog := self create.

	resourceIndetifier := self defaultVirtualMachine resourceIdentifierFor: anUMLVirtualMachineClass.
	dialog simplePresenter: (resourceIndetifier owningClass createIn: dialog atomicContainer).
	dialog atomicContainer view layoutManager: ProportionalLayout new.
	^dialog showModal!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 167 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1409286144 131073 592 0 0 0 7 0 0 0 592 0 234 256 98 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  21 21 834 829 719 592 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 168 1 0 0 113 1 0 0] 98 0 834 193 193 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 994 8 #fixedParentRight 1 994 8 #fixedParentTop 1 994 8 #fixedParentBottom -59 410 608 98 15 0 416 98 2 8 1140850688 131073 1136 0 0 0 7 0 0 0 1136 530 234 240 98 4 410 8 ##(Smalltalk.PushButton)  98 20 0 1136 98 2 8 1140924416 1 1248 0 0 0 7 0 0 0 1248 0 8 4294902751 1180998 4 ##(Smalltalk.CommandDescription)  8 #cancel 8 'Cancel' 1 1 0 0 32 0 0 0 706 202 208 98 2 770 800 98 2 834 679 15 834 151 47 1248 770 8 #text: 98 1 8 'Cancel' 1248 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 83 1 0 0 7 0 0 0 158 1 0 0 30 0 0 0] 98 0 944 0 29 962 994 8 #fixedPreviousRight 21 994 8 #fixedViewLeft 151 994 8 #fixedViewBottom -45 1104 1 410 1264 98 20 0 1136 98 2 8 1141055488 1 1744 0 0 0 7 0 0 0 1744 0 8 4294902751 1346 8 #accept 8 'OK' 1 1 0 0 16 0 0 0 706 202 208 98 3 770 800 98 2 834 509 15 834 151 47 1744 770 8 #isEnabled: 98 1 32 1744 770 1536 98 1 8 'OK' 1744 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 254 0 0 0 7 0 0 0 73 1 0 0 30 0 0 0] 98 0 944 0 29 962 994 8 #fixedViewRight -149 1040 -169 1712 -45 1104 1 234 256 688 590342 ##(Smalltalk.Rectangle)  834 11 11 834 1 1 706 202 208 98 1 770 800 98 2 834 21 739 834 829 61 1136 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 113 1 0 0 168 1 0 0 143 1 0 0] 98 2 1744 1248 944 0 27 962 1008 1 1040 1 1104 -59 1104 1 234 256 98 2 592 8 'atomicContainer' 2194 834 21 21 834 21 21 0 0 0 0 15653 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 0 8 1983391416 706 202 208 98 3 770 800 98 2 834 2879 21 834 901 891 416 770 1536 98 1 8 'Enter the value you wish' 416 770 8 #updateMenuBar 688 416 882 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 97 7 0 0 199 1 0 0] 98 2 592 1136 944 0 27 )! !
!UMLSimpleValueDialog class categoriesFor: #createFor:!public! !
!UMLSimpleValueDialog class categoriesFor: #resource_Default_view!public!resources-views! !

