"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLMainShell
	instanceVariableNames: 'container listPresenter umlApplicationUser'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLMainShell guid: (GUID fromString: '{1de20130-258e-48ce-a67b-897d70e56087}')!
UMLMainShell comment: ''!
!UMLMainShell categoriesForClass!Unclassified! !
!UMLMainShell methodsFor!

container

	^container!

createComponents

	super createComponents.

	container := self add: Presenter new name: 'container'.!

exitInspector

	container remove: container view currentCard presenter!

getModel
	^self getUMLObject!

getSimpleAspectsFor: anUMLInstance
	| categoryMethods |

	categoryMethods := anUMLInstance umlClass unorderedMethodsFor: UMLGUICollectionAspectsCategory current.
	^categoryMethods isEmpty
	ifTrue: [ (anUMLInstance basicInstancesVariables size > 6) 
		ifTrue: [anUMLInstance basicInstancesVariables keys asSortedCollection first: 6] 
		ifFalse: [anUMLInstance basicInstancesVariables keys asSortedCollection].]
	ifFalse:[(categoryMethods asOrderedCollection collect: [:each | each methodName])]!

getUMLObject

	^self container view currentCard presenter model!

inspectUMLInstance: anUMLInstance 

	^anUMLInstance inspectUMLWithCustomizedViewInCompositeIn: container!

mainComposite

	^self!

openUMLBrowser
	| selectedClass |

	container view currentCard ifNil: [^UMLModelShell show].
	selectedClass := (container view currentCard model class == UMLInstance)
		ifTrue: [container view currentCard model umlClass] ifFalse: [container view currentCard model last umlClass].

	(UMLModelShell show) selectUMLClass: selectedClass ifAbsent: []!

setMainCollectionWith: collectionOfUMLObjects

	collectionOfUMLObjects isEmpty ifTrue: [^self].

	listPresenter := UMLLoginListComposite createIn: container.

	collectionOfUMLObjects last createListViewFor: listPresenter.

	listPresenter model: (ListModel on: collectionOfUMLObjects).

	listPresenter view arrangement: (CardLabel text: 'Login ' iconBlock: [Icon fromId: 'TextEdit.ico'] )!

umlApplicationUser
	^umlApplicationUser!

umlApplicationUser: anObject
	umlApplicationUser := anObject! !
!UMLMainShell categoriesFor: #container!public! !
!UMLMainShell categoriesFor: #createComponents!public! !
!UMLMainShell categoriesFor: #exitInspector!public! !
!UMLMainShell categoriesFor: #getModel!public! !
!UMLMainShell categoriesFor: #getSimpleAspectsFor:!public! !
!UMLMainShell categoriesFor: #getUMLObject!public! !
!UMLMainShell categoriesFor: #inspectUMLInstance:!public! !
!UMLMainShell categoriesFor: #mainComposite!public! !
!UMLMainShell categoriesFor: #openUMLBrowser!public! !
!UMLMainShell categoriesFor: #setMainCollectionWith:!public! !
!UMLMainShell categoriesFor: #umlApplicationUser!accessing!private! !
!UMLMainShell categoriesFor: #umlApplicationUser:!accessing!private! !

!UMLMainShell class methodsFor!

for: collectionOfUMLObjects

	^super show setMainCollectionWith: collectionOfUMLObjects smalltalkObject;
		yourself.!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 576 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 1 265030 4 ##(Smalltalk.Menu)  0 16 98 2 983366 1 ##(Smalltalk.DividerMenuItem)  4097 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 21415 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  2879 21 994 1461 941 416 930 8 #text: 98 1 8 'UML Main Window' 416 930 8 #updateMenuBar 576 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 121 8 0 0 224 1 0 0] 98 1 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 1200 0 0 0 7 0 0 0 1200 788230 ##(Smalltalk.BorderLayout)  1 1 410 1216 98 15 0 1200 98 2 8 1140850688 131073 1312 0 721158 ##(Smalltalk.SystemColor)  31 0 7 0 0 0 1312 530 234 240 576 32 234 256 576 0 866 202 208 98 1 930 960 98 2 994 1 1 994 1429 51 1312 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 202 2 0 0 25 0 0 0] 98 1 410 8 ##(Smalltalk.ReferenceView)  98 14 0 1312 98 2 8 1140850688 131073 1616 0 482 8 4278190080 0 7 0 0 0 1616 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_UML_Common 0 866 202 208 98 1 930 960 98 2 994 1 1 994 1429 51 1616 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 202 2 0 0 25 0 0 0] 576 994 193 193 0 27 1936 0 27 0 0 0 410 8 ##(Smalltalk.CardContainer)  98 16 0 1200 98 2 8 1140850688 131073 1952 0 1378 31 0 7 0 0 0 1952 655878 ##(Smalltalk.CardLayout)  202 208 576 0 234 256 576 0 410 8 ##(Smalltalk.TabViewXP)  98 28 0 1952 98 2 8 1140851200 1 2112 590662 2 ##(Smalltalk.ListModel)  202 208 576 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  2032 0 1 0 0 0 2112 0 8 4294902977 787814 3 ##(Smalltalk.BlockClosure)  0 0 918822 ##(Smalltalk.CompiledMethod)  2 3 8 ##(Smalltalk.ListControlView)  8 #defaultGetTextBlock 390769283 8 #[30 105 226 0 106] 8 #displayString 2304 7 257 0 2290 0 0 2322 2 3 8 ##(Smalltalk.IconicListAbstract)  8 #defaultGetImageBlock 396680643 8 #[30 105 226 0 106] 8 #iconImageIndex 2416 7 257 0 1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 8 #smallIcons 0 0 0 0 0 866 202 208 98 2 930 960 98 2 994 1 1 994 1429 779 2112 930 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 2112 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 202 2 0 0 133 1 0 0] 98 0 1936 0 27 866 202 208 98 1 930 960 98 2 994 1 51 994 1429 779 1952 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 202 2 0 0 158 1 0 0] 98 1 2112 1936 0 27 234 256 98 2 1952 8 'container' 0 866 202 208 98 1 930 960 98 2 994 1 1 994 1429 829 1200 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 202 2 0 0 158 1 0 0] 98 2 1312 1952 1936 0 27 1936 0 27 )! !
!UMLMainShell class categoriesFor: #for:!public! !
!UMLMainShell class categoriesFor: #resource_Default_view!public!resources-views! !

