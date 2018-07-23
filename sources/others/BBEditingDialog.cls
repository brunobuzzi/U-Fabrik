"Filed out from Dolphin Smalltalk 7"!

BBDialog subclass: #BBEditingDialog
	instanceVariableNames: 'atomicContainer domainModel state answer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBEditingDialog guid: (GUID fromString: '{014c37b5-016a-4b73-83b4-621477ab2868}')!
BBEditingDialog comment: ''!
!BBEditingDialog categoriesForClass!Unclassified! !
!BBEditingDialog methodsFor!

accept

	answer := self atomicComposite model.

	self atomicComposite accept.

	super exit.!

adding

	^state = #add!

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

defaultAdditionalAccelerators

	self atomicCompositeOrNil isNil ifTrue: [^nil].
	^self atomicComposite class defaultAdditionalAccelerators!

domainModel
	^domainModel!

domainModel: anObject
	domainModel := anObject!

editing

	^state = #edit!

enabledAccept

	self atomicCompositeOrNil isNil ifTrue: [^true].
	^self atomicComposite enabledAccept!

exit

"	self atomicComposite cancelConnection.
	self session abort.
	self session beginTransaction."
	answer := nil.
	super exit.!

icon

	^domainModel icon!

initializeAccelerators

	self registerAdditionalAccelerators!

isEditShell

	^true!

onViewOpened

	super onViewOpened.

"	self setImageOf: 'accept' with: self administradorDeIconos aceptarIcon.
	self setImageOf: 'cancel' with: self administradorDeIconos cancelarIcon.

"!

queryCommand: query 
	| command |

	command := query commandSymbol.

	command = #accept ifTrue: [query isEnabled: true"self enabledAccept".^true].
	command = #exit ifTrue: [query isEnabled: true.^true].!

sessionComposite: anObject
#deprecated.
	"sessionComposite := anObject"!

setCaption

	view caption: 'Editando <', self atomicComposite model printName, '>'!

state
	^state!

state: anObject
	state := anObject!

updateEditingIcon

	view smallIcon: self icon.
	view largeIcon: self icon.

! !
!BBEditingDialog categoriesFor: #accept!public! !
!BBEditingDialog categoriesFor: #adding!public! !
!BBEditingDialog categoriesFor: #answer!public! !
!BBEditingDialog categoriesFor: #atomicComposite!public! !
!BBEditingDialog categoriesFor: #atomicCompositeOrNil!public! !
!BBEditingDialog categoriesFor: #atomicContainer!public! !
!BBEditingDialog categoriesFor: #atomicContainer:!public! !
!BBEditingDialog categoriesFor: #createComponents!public! !
!BBEditingDialog categoriesFor: #defaultAdditionalAccelerators!public! !
!BBEditingDialog categoriesFor: #domainModel!public! !
!BBEditingDialog categoriesFor: #domainModel:!public! !
!BBEditingDialog categoriesFor: #editing!public! !
!BBEditingDialog categoriesFor: #enabledAccept!public! !
!BBEditingDialog categoriesFor: #exit!public! !
!BBEditingDialog categoriesFor: #icon!public! !
!BBEditingDialog categoriesFor: #initializeAccelerators!public! !
!BBEditingDialog categoriesFor: #isEditShell!public! !
!BBEditingDialog categoriesFor: #onViewOpened!public! !
!BBEditingDialog categoriesFor: #queryCommand:!public! !
!BBEditingDialog categoriesFor: #sessionComposite:!public! !
!BBEditingDialog categoriesFor: #setCaption!public! !
!BBEditingDialog categoriesFor: #state!public! !
!BBEditingDialog categoriesFor: #state:!public! !
!BBEditingDialog categoriesFor: #updateEditingIcon!public! !

!BBEditingDialog class methodsFor!

additionalAccelerators

	^super additionalAccelerators, #(#(#exit 'ESC') #(#accept 'ENTER'))!

createOn: aModel forAdd: atomicCompositeClass sessionComposite: aSessionComposite state: aSymbol
	| dialog atomic extent |

	dialog := self createOn: aModel.
	dialog domainModel: aModel.
	dialog state: aSymbol.
	dialog sessionComposite: aSessionComposite.
	atomic := atomicCompositeClass createIn: dialog atomicContainer on: aModel.
	dialog view extent: ((atomic view extent x + 35) @ (atomic view extent y + 100)).
	dialog caption: ('Editando <', atomic modelName,'>').
	dialog atomicContainer view layoutManager: ProportionalLayout new.
	dialog updateEditingIcon; initializeAccelerators.
	^dialog!

createOn: aModel forAdd: atomicCompositeClass state: aSymbol
	| dialog atomic |

	dialog := self createOn: aModel.
	dialog domainModel: aModel.
	dialog state: aSymbol.
	atomic := atomicCompositeClass createIn: dialog atomicContainer on: aModel.
	atomic model: aModel.
	dialog view extent: ((atomic view extent x + 30) @ (atomic view extent y)).
"	dialog caption: ('Editando <', atomic modelName,'>')."
	dialog atomicContainer view layoutManager: ProportionalLayout new.
"	dialog updateEditingIcon; initializeAccelerators."
	dialog view smallIcon: aModel icon.
	atomic setListSelections.
	dialog setCaption.
	^dialog showModal!

createOn: aModel forAdd: atomicCompositeClass state: aSymbol caption: aString
	| dialog atomic |

	dialog := self createOn: aModel.
	dialog domainModel: aModel.
	dialog state: aSymbol.
	atomic := atomicCompositeClass createIn: dialog atomicContainer on: aModel.
	atomic model: aModel.
	dialog view extent: ((atomic view extent x + 35) @ (atomic view extent y + 120)).
"	dialog caption: ('Editando <', atomic modelName,'>')."
	dialog atomicContainer view layoutManager: ProportionalLayout new.
"	dialog updateEditingIcon; initializeAccelerators."
	dialog view smallIcon: aModel icon.
	atomic setListSelections.
	dialog view caption: aString.
	^dialog showModal!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 167 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 592 0 0 0 7 0 0 0 592 530 234 240 98 4 410 8 ##(Smalltalk.PushButton)  98 17 0 592 98 2 8 1141055488 1 720 0 0 0 7 0 0 0 720 0 8 4294902913 1180998 4 ##(Smalltalk.CommandDescription)  8 #accept 8 'OK' 1 1 0 0 16 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  509 15 1010 151 47 720 946 8 #isEnabled: 98 1 32 720 946 8 #text: 98 1 8 'OK' 720 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 254 0 0 0 7 0 0 0 73 1 0 0 30 0 0 0] 98 0 1010 193 193 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.FramingCalculation)  8 #fixedViewRight -149 1290 1312 8 #fixedParentRight -169 1290 1312 8 #fixedViewBottom -45 1290 1312 8 #fixedParentBottom 1 410 736 98 17 0 592 98 2 8 1140924416 1 1440 0 0 0 7 0 0 0 1440 0 8 4294902913 818 8 #cancel 8 'Cancel' 1 1 0 0 32 882 202 208 98 2 946 976 98 2 1010 679 15 1010 151 47 1440 946 1120 98 1 8 'Cancel' 1440 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 83 1 0 0 7 0 0 0 158 1 0 0 30 0 0 0] 98 0 1232 0 27 1250 1290 1312 8 #fixedPreviousRight 21 1290 1312 8 #fixedViewLeft 151 1376 -45 1408 1 234 256 98 0 590342 ##(Smalltalk.Rectangle)  1010 11 11 1010 1 1 882 202 208 98 1 946 976 98 2 1010 21 739 1010 829 61 592 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 113 1 0 0 168 1 0 0 143 1 0 0] 98 2 720 1440 1232 0 27 1250 1290 1312 8 #fixedParentLeft 1 1344 1 1408 -59 1408 1 410 608 98 15 0 416 98 2 8 1409286144 131073 2160 0 0 0 7 0 0 0 2160 0 234 256 1872 0 882 202 208 98 1 946 976 98 2 1010 21 21 1010 829 719 2160 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 168 1 0 0 113 1 0 0] 98 0 1232 0 27 1250 2128 1 1344 1 1290 1312 8 #fixedParentTop 1 1408 -59 234 256 98 2 2160 8 'atomicContainer' 1890 1010 21 21 1010 21 21 0 0 0 0 9669 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 0 8 1998624608 882 202 208 98 2 946 976 98 2 1010 2879 21 1010 901 891 416 946 8 #updateMenuBar 1872 416 1170 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 97 7 0 0 199 1 0 0] 98 2 2160 592 1232 0 27 )!

showModalOn: aModel forAdd: atomicCompositeClass sessionComposite: aSessionComposite

	^self showModalOn: aModel forAdd: atomicCompositeClass sessionComposite: aSessionComposite state: #add!

showModalOn: aModel forAdd: atomicCompositeClass sessionComposite: aSessionComposite state: aSymbol

	^(self createOn: aModel forAdd: atomicCompositeClass sessionComposite: aSessionComposite state: aSymbol) showModal!

showModalOn: aModel forEdit: atomicCompositeClass sessionComposite: aSessionComposite

	^self showModalOn: aModel forAdd: atomicCompositeClass sessionComposite: aSessionComposite state: #edit!

showOn: aModel forAdd: atomicCompositeClass sessionComposite: aSessionComposite

	^self showOn: aModel forAdd: atomicCompositeClass sessionComposite: aSessionComposite state: #add!

showOn: aModel forAdd: atomicCompositeClass sessionComposite: aSessionComposite state: aSymbol

	^(self createOn: aModel forAdd: atomicCompositeClass sessionComposite: aSessionComposite state: aSymbol) show!

showOn: aModel forEdit: atomicCompositeClass sessionComposite: aSessionComposite

	^self showOn: aModel forAdd: atomicCompositeClass sessionComposite: aSessionComposite state: #edit! !
!BBEditingDialog class categoriesFor: #additionalAccelerators!public! !
!BBEditingDialog class categoriesFor: #createOn:forAdd:sessionComposite:state:!public! !
!BBEditingDialog class categoriesFor: #createOn:forAdd:state:!public! !
!BBEditingDialog class categoriesFor: #createOn:forAdd:state:caption:!public! !
!BBEditingDialog class categoriesFor: #resource_Default_view!public! !
!BBEditingDialog class categoriesFor: #showModalOn:forAdd:sessionComposite:!public! !
!BBEditingDialog class categoriesFor: #showModalOn:forAdd:sessionComposite:state:!public! !
!BBEditingDialog class categoriesFor: #showModalOn:forEdit:sessionComposite:!public! !
!BBEditingDialog class categoriesFor: #showOn:forAdd:sessionComposite:!public! !
!BBEditingDialog class categoriesFor: #showOn:forAdd:sessionComposite:state:!public! !
!BBEditingDialog class categoriesFor: #showOn:forEdit:sessionComposite:!public! !

