"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLRelationComposite
	instanceVariableNames: 'multiplicityClassesPresenter sourceClassesPresenter sourceTextPresenter sourceMultiplicityPresenter targetClassesPresenter targetTextPresenter targetMultiplicityPresenter relationTypePresenter isEditOperation aliasPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLRelationComposite guid: (GUID fromString: '{3119ac57-2217-4dc5-b967-ef8d2d9dba4d}')!
UMLRelationComposite comment: ''!
!UMLRelationComposite categoriesForClass!Unclassified! !
!UMLRelationComposite methodsFor!

cancel

	self parentPresenter exit!

changeUMLRelation
	| newRelationMultiplicity newSourceMultiplicity newTargetMultiplicity |

	newRelationMultiplicity := multiplicityClassesPresenter selection association: model.
	newSourceMultiplicity := (sourceMultiplicityPresenter selection association: model) text: sourceTextPresenter value; yourself.
	newTargetMultiplicity := (targetMultiplicityPresenter selection association: model) text: targetTextPresenter value; yourself.
	newSourceMultiplicity isNavigable: targetTextPresenter value notEmpty.
	newTargetMultiplicity isNavigable: sourceTextPresenter value notEmpty.
	newRelationMultiplicity targetMultiplicity: newTargetMultiplicity;
		sourceMultiplicity: newSourceMultiplicity.

	model relationMultiplicity: newRelationMultiplicity;
		sourceMultiplicity: newSourceMultiplicity;
		sourceClass: sourceClassesPresenter selection;
		targetMultiplicity: newTargetMultiplicity;
		targetClass: targetClassesPresenter selection.

	(self model sourceClass includesRelation: self model) ifTrue: [^model].
	model sourceClass addRelation: model.
	model targetClass addRelation: model.!

createComponents

	super createComponents.

	multiplicityClassesPresenter := self add: ListPresenter new name: 'multiplicityClasses'.
	sourceClassesPresenter := self add: ListPresenter new name: 'sourceClasses'.
	sourceTextPresenter := self add: TextPresenter new name: 'sourceText'.
	sourceMultiplicityPresenter := self add: ListPresenter new name: 'sourceMultiplicity'.
	targetClassesPresenter := self add: ListPresenter new name: 'targetClasses'.
	targetTextPresenter := self add: TextPresenter new name: 'targetText'.
	targetMultiplicityPresenter := self add: ListPresenter new name: 'targetMultiplicity'.
	relationTypePresenter := self add: ListPresenter new name: 'relationType'.
	aliasPresenter := self add: TextPresenter new name: 'alias'.!

disableComboClasses

	isEditOperation := true.
	sourceClassesPresenter view isEnabled: false.
	targetClassesPresenter view isEnabled: false.!

isEditOperation
	^isEditOperation!

model: anUMLRelation

	isEditOperation := false.
	super model: anUMLRelation.

	aliasPresenter model: (anUMLRelation aspectValue: #alias).
	relationTypePresenter model: (ListModel on: (OrderedCollection with: UMLRelation with: UMLAggregation with: UMLAssociation with: UMLAssociationClass with: UMLComposition)).
		
	multiplicityClassesPresenter model: (ListModel on: UMLAssociationMultiplicity allConcreteClasses).

	sourceClassesPresenter model: (ListModel on: (self defaultVirtualMachine getUMLClasses asSortedCollection: [:a :b | a name <= b name])).

	targetClassesPresenter model: (ListModel on: (self defaultVirtualMachine getUMLClasses asSortedCollection: [:a :b | a name <= b name])).

	sourceMultiplicityPresenter model: (ListModel on: UMLAssociationSideMultiplicity subclasses asOrderedCollection).
	targetMultiplicityPresenter model: (ListModel on: UMLAssociationSideMultiplicity subclasses asOrderedCollection).

	sourceTextPresenter model: (anUMLRelation sourceMultiplicity aspectValue: #text).
	targetTextPresenter model: (anUMLRelation targetMultiplicity aspectValue: #text).

!

onViewOpened

	super onViewOpened.

	relationTypePresenter selection: self model class ifAbsent: [].
	multiplicityClassesPresenter selection: self model relationMultiplicity class ifAbsent: [].
	sourceClassesPresenter selection: self model sourceClass ifAbsent: [].
	targetClassesPresenter selection: self model targetClass ifAbsent: [].
	sourceMultiplicityPresenter selection: self model sourceMultiplicity class ifAbsent: [].
	targetMultiplicityPresenter selection: self model targetMultiplicity class ifAbsent: [].

	relationTypePresenter view isEnabled: false.! !
!UMLRelationComposite categoriesFor: #cancel!public! !
!UMLRelationComposite categoriesFor: #changeUMLRelation!public! !
!UMLRelationComposite categoriesFor: #createComponents!public! !
!UMLRelationComposite categoriesFor: #disableComboClasses!public! !
!UMLRelationComposite categoriesFor: #isEditOperation!accessing!private! !
!UMLRelationComposite categoriesFor: #model:!public! !
!UMLRelationComposite categoriesFor: #onViewOpened!public! !

!UMLRelationComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 432 98 15 0 416 98 2 8 1140850688 131073 528 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 528 0 234 256 98 6 410 8 ##(Smalltalk.ComboBox)  98 17 0 528 98 2 8 1412498947 1025 656 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 656 0 8 4294903223 459270 ##(Smalltalk.Message)  8 #printName 98 0 784 401 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  471 71 1090 421 47 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 35 0 0 0 189 1 0 0 58 0 0 0] 98 0 1090 193 193 0 27 8 'relationType' 410 672 98 17 0 528 98 2 8 1412498947 1025 1232 738 202 208 784 0 816 834 8 4278190080 0 5 0 0 0 1232 0 8 4294903223 898 928 98 0 784 401 962 202 208 98 1 1026 1056 98 2 1090 471 151 1090 421 47 1232 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 75 0 0 0 189 1 0 0 98 0 0 0] 98 0 1200 0 27 8 'multiplicityClasses' 410 8 ##(Smalltalk.TextEdit)  98 16 0 528 98 2 8 1140916352 1025 1584 0 834 8 4278190080 0 5 0 0 0 1584 0 8 4294903237 852486 ##(Smalltalk.NullConverter)  0 0 1 962 202 208 98 3 1026 1056 98 2 1090 471 231 1090 421 47 1584 1026 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 1584 1026 8 #isTextModified: 98 1 32 1584 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 115 0 0 0 189 1 0 0 138 0 0 0] 98 0 1200 0 27 8 'alias' 0 962 202 208 98 1 1026 1056 98 2 1090 1 1 1090 1391 311 528 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 183 2 0 0 155 0 0 0] 98 7 656 410 8 ##(Smalltalk.StaticText)  98 16 0 528 98 2 8 1140850944 1 2208 0 0 0 5 0 0 0 2208 0 8 4294903199 1714 0 0 0 962 202 208 98 2 1026 1056 98 2 1090 301 151 1090 171 41 2208 1026 8 #text: 98 1 8 'Multiplicity' 2208 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 150 0 0 0 75 0 0 0 235 0 0 0 95 0 0 0] 98 0 1200 0 27 1232 410 2224 98 16 0 528 98 2 8 1140850944 1 2544 0 0 0 5 0 0 0 2544 0 8 4294903199 1714 0 0 0 962 202 208 98 2 1026 1056 98 2 1090 301 231 1090 171 41 2544 1026 2448 98 1 8 'Alias' 2544 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 150 0 0 0 115 0 0 0 235 0 0 0 135 0 0 0] 98 0 1200 0 27 410 2224 98 16 0 528 98 2 8 1140850944 1 2848 0 0 0 5 0 0 0 2848 0 8 4294903199 1714 0 0 0 962 202 208 98 2 1026 1056 98 2 1090 301 71 1090 171 41 2848 1026 2448 98 1 8 'Relation Type' 2848 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 150 0 0 0 35 0 0 0 235 0 0 0 55 0 0 0] 98 0 1200 0 27 1584 410 8 ##(Smalltalk.GroupBox)  98 14 0 528 98 2 8 1140850695 65 3152 0 834 8 4278190080 0 5 0 0 0 3152 0 8 4294903235 962 202 208 98 2 1026 1056 98 2 1090 61 21 1090 1271 281 3152 1026 2448 98 1 8 'Relation Options' 3152 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 10 0 0 0 153 2 0 0 150 0 0 0] 98 0 1200 0 27 1200 0 27 0 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 3488 0 0 0 5 0 0 0 3488 1180166 ##(Smalltalk.ProportionalLayout)  234 240 784 32 234 256 784 0 962 202 208 98 1 1026 1056 98 2 1090 1 311 1090 1391 551 3488 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 155 0 0 0 183 2 0 0 174 1 0 0] 98 3 410 432 98 15 0 3488 98 2 8 1140850688 131073 3776 0 594 31 0 5 0 0 0 3776 0 234 256 98 6 410 672 98 17 0 3776 98 2 8 1412498947 1025 3888 738 202 208 784 0 816 0 0 5 0 0 0 3888 0 8 4294903223 898 8 #name 98 0 784 401 962 202 208 98 1 1026 1056 98 2 1090 61 111 1090 521 47 3888 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 55 0 0 0 34 1 0 0 78 0 0 0] 98 0 1200 0 27 8 'sourceClasses' 410 672 98 17 0 3776 98 2 8 1412498947 1025 4224 738 202 208 784 0 816 834 1344 0 5 0 0 0 4224 0 8 4294903223 898 928 98 0 784 401 962 202 208 98 1 1026 1056 98 2 1090 61 271 1090 521 47 4224 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 135 0 0 0 34 1 0 0 158 0 0 0] 98 0 1200 0 27 8 'sourceMultiplicity' 410 1600 98 16 0 3776 98 2 8 1140916352 1 4560 0 786694 ##(Smalltalk.IndexedColor)  33554471 0 5 0 0 0 4560 0 8 4294903237 1714 0 0 1 962 202 208 98 3 1026 1056 98 2 1090 431 331 1090 151 41 4560 1026 1872 98 1 1906 3 1 3 4560 1026 1952 98 1 32 4560 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 215 0 0 0 165 0 0 0 34 1 0 0 185 0 0 0] 98 0 1200 0 27 8 'sourceText' 0 962 202 208 98 1 1026 1056 98 2 1090 1 1 1090 687 551 3776 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 87 1 0 0 19 1 0 0] 98 7 410 2224 98 16 0 3776 98 2 8 1140850944 1 5104 0 0 0 5 0 0 0 5104 0 8 4294903199 1714 0 0 0 962 202 208 98 2 1026 1056 98 2 1090 61 71 1090 161 41 5104 1026 2448 98 1 8 'Source Class' 5104 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 35 0 0 0 110 0 0 0 55 0 0 0] 98 0 1200 0 27 3888 410 2224 98 16 0 3776 98 2 8 1140850944 1 5408 0 0 0 5 0 0 0 5408 0 8 4294903199 1714 0 0 0 962 202 208 98 2 1026 1056 98 2 1090 61 231 1090 241 39 5408 1026 2448 98 1 8 'Source Multiplicity' 5408 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 115 0 0 0 150 0 0 0 134 0 0 0] 98 0 1200 0 27 4224 4560 410 8 ##(Smalltalk.PushButton)  98 20 0 3776 98 2 8 1140924416 1 5712 0 0 0 5 0 0 0 5712 0 8 4294903235 1180998 4 ##(Smalltalk.CommandDescription)  8 #cancel 8 '&Cancel' 1 1 0 0 32 0 0 0 962 202 208 98 3 1026 1056 98 2 1090 21 481 1090 141 51 5712 1026 8 #isEnabled: 98 1 32 5712 1026 2448 98 1 8 '&Cancel' 5712 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 240 0 0 0 80 0 0 0 9 1 0 0] 98 0 1200 0 29 410 3168 98 14 0 3776 98 2 8 1140850695 65 6128 0 834 3248 0 5 0 0 0 6128 0 8 4294903235 962 202 208 98 2 1026 1056 98 2 1090 21 11 1090 631 391 6128 1026 2448 98 1 8 'Source Options' 6128 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 5 0 0 0 69 1 0 0 200 0 0 0] 98 0 1200 0 27 1200 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 3488 98 2 8 1140850688 1 6432 0 834 8 4278190080 0 517 0 0 0 6432 962 202 208 98 1 1026 1056 98 2 1090 687 1 1090 19 551 6432 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 87 1 0 0 0 0 0 0 96 1 0 0 19 1 0 0] 98 0 1200 0 27 410 432 98 15 0 3488 98 2 8 1140850688 131073 6704 0 594 31 0 5 0 0 0 6704 0 234 256 98 6 410 672 98 17 0 6704 98 2 8 1412498947 1025 6816 738 202 208 784 0 816 834 1344 0 5 0 0 0 6816 0 8 4294903223 898 928 4368 784 401 962 202 208 98 1 1026 1056 98 2 1090 101 271 1090 521 47 6816 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 50 0 0 0 135 0 0 0 54 1 0 0 158 0 0 0] 98 0 1200 0 27 8 'targetMultiplicity' 410 1600 98 16 0 6704 98 2 8 1140916352 1 7136 0 4640 0 5 0 0 0 7136 0 8 4294903237 1714 0 0 1 962 202 208 98 3 1026 1056 98 2 1090 471 331 1090 151 41 7136 1026 1872 98 1 1906 3 1 3 7136 1026 1952 98 1 32 7136 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 165 0 0 0 54 1 0 0 185 0 0 0] 98 0 1200 0 27 8 'targetText' 410 672 98 17 0 6704 98 2 8 1412498947 1025 7488 738 202 208 784 0 816 834 1344 0 5 0 0 0 7488 0 8 4294903223 898 4016 4032 784 401 962 202 208 98 1 1026 1056 98 2 1090 91 111 1090 521 47 7488 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 45 0 0 0 55 0 0 0 49 1 0 0 78 0 0 0] 98 0 1200 0 27 8 'targetClasses' 0 962 202 208 98 1 1026 1056 98 2 1090 705 1 1090 687 551 6704 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 96 1 0 0 0 0 0 0 183 2 0 0 19 1 0 0] 98 7 410 2224 98 16 0 6704 98 2 8 1140850944 1 7968 0 0 0 5 0 0 0 7968 0 8 4294903199 1714 0 0 0 962 202 208 98 2 1026 1056 98 2 1090 91 71 1090 141 41 7968 1026 2448 98 1 8 'Target Class' 7968 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 45 0 0 0 35 0 0 0 115 0 0 0 55 0 0 0] 98 0 1200 0 27 7488 410 2224 98 16 0 6704 98 2 8 1140850944 1 8272 0 0 0 5 0 0 0 8272 0 8 4294903199 1714 0 0 0 962 202 208 98 2 1026 1056 98 2 1090 91 231 1090 241 39 8272 1026 2448 98 1 8 'Target Multiplicity' 8272 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 45 0 0 0 115 0 0 0 165 0 0 0 134 0 0 0] 98 0 1200 0 27 6816 7136 410 5728 98 20 0 6704 98 2 8 1140924416 1 8576 0 0 0 5 0 0 0 8576 0 8 4294903235 5810 8 #changeUMLRelation 8 'Commit Changes' 1 1 0 0 32 0 0 0 962 202 208 98 3 1026 1056 98 2 1090 441 461 1090 221 81 8576 1026 6000 98 1 32 8576 1026 2448 98 1 8 'Commit Changes' 8576 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 220 0 0 0 230 0 0 0 74 1 0 0 14 1 0 0] 98 0 1200 0 29 410 3168 98 14 0 6704 98 2 8 1140850695 65 8944 0 834 3248 0 5 0 0 0 8944 0 8 4294903235 962 202 208 98 2 1026 1056 98 2 1090 47 11 1090 611 391 8944 1026 2448 98 1 8 'Target Options' 8944 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 23 0 0 0 5 0 0 0 72 1 0 0 200 0 0 0] 98 0 1200 0 27 1200 0 27 1200 0 27 234 256 784 0 962 202 208 98 1 1026 1056 98 2 1090 3199 21 1090 1391 861 416 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 1 6 0 0 10 0 0 0 184 8 0 0 184 1 0 0] 98 2 528 3488 1200 0 27 )! !
!UMLRelationComposite class categoriesFor: #resource_Default_view!public!resources-views! !

