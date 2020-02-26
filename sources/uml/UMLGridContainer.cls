"Filed out from Dolphin Smalltalk 7"!

UMLBasicContainer subclass: #UMLGridContainer
	instanceVariableNames: 'containerPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLGridContainer guid: (GUID fromString: '{59eca27a-61ee-4517-be82-84555d73b692}')!
UMLGridContainer comment: 'Used for set of basic objects (string, number, date, time), has GridLayout configuration to hold a number of basic object presenters.'!
!UMLGridContainer categoriesForClass!MVP-Resources-UFabrik! !
!UMLGridContainer methodsFor!

container

	^view viewNamed: 'container'!

createComponents

	super createComponents.

	containerPresenter := self add: Presenter new name: 'container'.!

generateComponents

	self setLayoutManager.
	self setViewAspects.
	model components do: [:each | | obejctAspect resourceIdentifier aspectPresenter staticTextPresenter  smalltalkError errorString |
		smalltalkError := false.
		[obejctAspect := each instance getVariableOrImplementationNamed: each aspectName. "answer anUMLInstance - anUMLString for example"] on: Error do: [:ex | smalltalkError := true. errorString := ex].
		staticTextPresenter := (TextPresenter create: 'Static text' in: containerPresenter) view text: each aspectName capitalized. "this is the componente Label"
		staticTextPresenter view hasStaticEdge: true.
		smalltalkError 
		ifTrue: [aspectPresenter := TextPresenter create: 'Static text' in: containerPresenter.
			aspectPresenter view hasStaticEdge: true;
				backcolor: Color red;
				forecolor: Color black.
			aspectPresenter value: ('Error executing: <', each aspectName, '>', String lineDelimiter, errorString messageText).]
		ifFalse: [	"the mapping table is in UMLVirtualMachine class #resourceIdentifierMapping"
			(obejctAspect vmPerform: #isBasic) smalltalkObject "the aspect MUST be a simple object "
			ifTrue: [resourceIdentifier := obejctAspect resourceIdentifier. "answer aResourceIdentifier for the previous UMLInstance - String --> TextPresenter - Boolean --> BooleanPresenter - Date --> DatePresenter, etc" 
			aspectPresenter := resourceIdentifier owningClass create: resourceIdentifier name in: containerPresenter on: obejctAspect smalltalkObject. "here we create the component"
			aspectPresenter registerUMLObjectAspect: each aspectName.
			((aspectPresenter view class == TextPresenter) or:[aspectPresenter view class == NumberPresenter]) ifTrue: [aspectPresenter view updatePerChar: true].
			aspectPresenter view hasStaticEdge: true.
			each isReadOnly 
			ifTrue: [aspectPresenter view isEnabled: false. staticTextPresenter view forecolor: Color blue] 
			ifFalse: [aspectPresenter when: #valueChanged send: #onUpdateIn: to: (each instance getVariableNamed: each aspectName) with: aspectPresenter].] 
		ifFalse: [TextPresenter create: 'Multiline text' in: containerPresenter on: ('Error on method <', each aspectName, '> is not a simple object')].
].
		].

	
!

setLayoutManager
	| layoutManager numberOfAspects columns rows |

	layoutManager := self container layoutManager.

	numberOfAspects := model components size.
	numberOfAspects even
	ifTrue: [columns := 4. rows := (model components size / 2) integerPart]
	ifFalse: [columns := 4. rows := ((model components size + 1) / 2) integerPart].

	layoutManager columns: columns.
	layoutManager rows:	rows.!

setViewAspects
! !
!UMLGridContainer categoriesFor: #container!public! !
!UMLGridContainer categoriesFor: #createComponents!public! !
!UMLGridContainer categoriesFor: #generateComponents!public! !
!UMLGridContainer categoriesFor: #setLayoutManager!public!uml mvp layout! !
!UMLGridContainer categoriesFor: #setViewAspects!public! !

!UMLGridContainer class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ScrollingDecorator)  98 18 0 0 98 2 8 1143996416 131073 416 0 0 0 7 0 0 0 416 1573190 1 ##(Smalltalk.ScrollingDecoratorLayout)  16 234 256 98 2 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 7 0 0 0 560 656390 ##(Smalltalk.GridLayout)  3 1 1 1 234 256 98 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 834 1101 681 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 38 2 0 0 84 1 0 0] 98 0 834 193 193 0 27 8 'container' 0 834 1 1 16 834 17 17 706 202 208 98 1 770 800 98 2 834 3199 21 834 1101 681 416 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 101 8 0 0 94 1 0 0] 98 1 560 944 0 27 )! !
!UMLGridContainer class categoriesFor: #resource_Default_view!public!resources-views! !

