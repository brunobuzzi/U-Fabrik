"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLTraitComposite
	instanceVariableNames: 'traitNamePresenter methodsPresenter requirementsPresenter sourcePresenter requirementComentsPresenter methodCommentsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTraitComposite guid: (GUID fromString: '{3acd16e7-57f3-4335-be13-dc0045cbb8ba}')!
UMLTraitComposite comment: ''!
!UMLTraitComposite categoriesForClass!Unclassified! !
!UMLTraitComposite methodsFor!

addMethod
	^MessageBox notify: 'Compile the code in the source presenter' caption: self applicationName!

addMethod: anUMLTrait

	methodsPresenter model add: anUMLTrait!

addRequirement
	| name req |
	name := (Prompter prompt: 'Enter Requirement name (message name)' caption: self applicationName) 
				ifNil: [^self].
	req := UMLTraitRequirement new message: name asSymbol.
	model addRequirement: req.
	requirementsPresenter 
		model: (ListModel on: (model requirements asSortedCollection: [:a :b | a message <= b message]))!

createComponents

	super createComponents.

	traitNamePresenter := self add: TextPresenter new name: 'traitNamePresenter'.
	methodsPresenter := self add: ListPresenter new name: 'methodsPresenter'.
	requirementsPresenter := self add: ListPresenter new name: 'requirementsPresenter'.
	requirementComentsPresenter := self add: RichTextComposite new name: 'requirementComentsPresenter'.
	sourcePresenter := self add: UMLTraitWorkspaceComposite new name: 'sourcePresenter'.
	methodCommentsPresenter := self add: RichTextComposite new name: 'methodCommentsPresenter'.!

createSchematicWiring

	super createSchematicWiring.

	methodsPresenter when: #selectionChanged send: #onTraitMethodChanged to: self.

	requirementsPresenter when: #selectionChanged send: #onRequirementChanged to: self.!

getAllText
	^sourcePresenter getAllText!

hasSelectedTrait
	^parentPresenter hasSelectedTrait!

model: anUMLTrait

	super model: anUMLTrait.

	traitNamePresenter value: anUMLTrait name.

	requirementsPresenter model: (ListModel on: anUMLTrait requirements).

	methodsPresenter model: (ListModel on: anUMLTrait methodsAsSortedCollection).!

onRequirementChanged

	requirementsPresenter hasSelection ifFalse: [^requirementComentsPresenter model: nil].

	requirementComentsPresenter model: (requirementsPresenter selection aspectValue: #comments).!

onTraitMethodChanged

	methodsPresenter hasSelection ifFalse: [methodCommentsPresenter model: nil. ^sourcePresenter setText: ''].

	sourcePresenter setText: methodsPresenter selection printMessage.

	methodCommentsPresenter model: (methodsPresenter selection aspectValue: #comments).!

removeMethod
	methodsPresenter hasSelection ifFalse: [^self].
	(MessageBox confirm: 'Do you want to remove this method ?' caption: self applicationName) 
		ifFalse: [^self].
	model removeMethod: methodsPresenter selection.
	methodsPresenter model remove: methodsPresenter selection!

removeRequirement
	requirementsPresenter hasSelection ifFalse: [^self].
	(MessageBox confirm: 'Do you want to remove this requirement ?' caption: self applicationName) 
		ifFalse: [^self].
	model removeRequirement: requirementsPresenter selection.
	requirementsPresenter model remove: requirementsPresenter selection ifAbsent: []!

requirementsNames

	^requirementsPresenter model collect: [:each | each message]! !
!UMLTraitComposite categoriesFor: #addMethod!public! !
!UMLTraitComposite categoriesFor: #addMethod:!public! !
!UMLTraitComposite categoriesFor: #addRequirement!public! !
!UMLTraitComposite categoriesFor: #createComponents!public! !
!UMLTraitComposite categoriesFor: #createSchematicWiring!public! !
!UMLTraitComposite categoriesFor: #getAllText!public! !
!UMLTraitComposite categoriesFor: #hasSelectedTrait!public! !
!UMLTraitComposite categoriesFor: #model:!public! !
!UMLTraitComposite categoriesFor: #onRequirementChanged!public! !
!UMLTraitComposite categoriesFor: #onTraitMethodChanged!public! !
!UMLTraitComposite categoriesFor: #removeMethod!public! !
!UMLTraitComposite categoriesFor: #removeRequirement!public! !
!UMLTraitComposite categoriesFor: #requirementsNames!public! !

!UMLTraitComposite class methodsFor!

defaultModel

	^UMLTrait new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 2 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #addRequirement 8 'Add Requirement' 1 1 0 0 0 546 1 578 8 #removeRequirement 8 'Remove Requirement' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 432 98 15 0 416 98 2 8 1140850688 131073 752 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 752 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.StaticText)  98 16 0 752 98 2 8 1140850945 262145 944 0 0 0 5 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 944 0 8 4294902731 852486 ##(Smalltalk.NullConverter)  0 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 1106 31 11 1106 1781 51 944 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 5 0 0 0 137 3 0 0 30 0 0 0] 98 0 1106 193 193 0 27 8 'traitNamePresenter' 590342 ##(Smalltalk.Rectangle)  1106 31 11 1106 31 11 1186 202 208 98 1 1250 1280 98 2 1106 1 1 1106 1841 71 752 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 152 3 0 0 35 0 0 0] 98 1 944 1408 0 27 0 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 1664 0 0 0 5 0 0 0 1664 850 234 240 98 2 410 432 98 15 0 1664 98 2 8 1140850688 131073 1776 0 0 0 5 0 0 0 1776 850 234 240 896 32 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 1776 98 2 8 1409355853 1025 1904 590662 2 ##(Smalltalk.ListModel)  202 208 896 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 498 0 16 98 2 546 1 578 8 #addMethod 8 'Add Method' 1 1 0 0 0 546 1 578 8 #removeMethod 8 'Remove Method' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 1904 0 8 4294902559 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Methods' 601 8 #left 2306 8 #methodName 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a : b | a methodName <= b methodName]' 8 #[30 105 226 0 226 32 130 106] 2528 2576 7 513 0 0 0 1904 0 1 0 0 8 #report 896 0 131169 0 0 1186 202 208 98 3 1250 1280 98 2 1106 1 1 1106 911 933 1904 1250 8 #contextMenu: 98 1 2112 1904 1250 8 #text: 98 1 8 'Methods' 1904 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 199 1 0 0 210 1 0 0] 98 0 1408 0 27 8 'methodsPresenter' 0 1186 202 208 98 1 1250 1280 98 2 1106 1 329 1106 1841 933 1776 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 164 0 0 0 152 3 0 0 118 2 0 0] 98 3 1904 410 8 ##(Smalltalk.Splitter)  98 12 0 1776 98 2 8 1140850688 1 3184 0 2066 8 4278190080 0 517 0 0 0 3184 1186 202 208 98 1 1250 1280 98 2 1106 911 1 1106 19 933 3184 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 199 1 0 0 0 0 0 0 208 1 0 0 210 1 0 0] 98 0 1408 0 27 410 432 98 15 0 1776 98 2 8 1140850688 131073 3456 0 0 0 5 0 0 0 3456 850 234 240 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 3456 98 2 8 1140850688 131073 3568 0 2066 8 4278190080 0 5 0 0 0 3568 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLTraitWorkspaceComposite)  8 #resource_Default_view 0 1186 202 208 98 1 1250 1280 98 2 1106 1 247 1106 913 687 3568 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 123 0 0 0 200 1 0 0 210 1 0 0] 896 1408 0 27 7 16 234 256 98 4 410 3584 98 14 0 3456 98 2 8 1140850688 131073 3920 0 2066 8 4278190080 0 5 0 0 0 3920 3682 8 ##(Smalltalk.RichTextComposite)  3728 0 1186 202 208 98 1 1250 1280 98 2 1106 1 1 1106 913 229 3920 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 200 1 0 0 114 0 0 0] 896 1408 0 27 8 'methodCommentsPresenter' 3568 8 'sourcePresenter' 0 1186 202 208 98 1 1250 1280 98 2 1106 929 1 1106 913 933 3456 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 208 1 0 0 0 0 0 0 152 3 0 0 210 1 0 0] 98 3 3920 410 3200 98 12 0 3456 98 2 8 1140850688 1 4384 0 2066 8 4278190080 0 517 0 0 0 4384 1186 202 208 98 1 1250 1280 98 2 1106 1 229 1106 913 19 4384 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 114 0 0 0 200 1 0 0 123 0 0 0] 98 0 1408 0 27 3568 1408 0 27 1408 0 27 7 16 234 256 896 0 1186 202 208 98 1 1250 1280 98 2 1106 1 71 1106 1841 1261 1664 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 35 0 0 0 152 3 0 0 153 2 0 0] 98 3 410 432 98 15 0 1664 98 2 8 1140850688 131073 4816 0 0 0 5 0 0 0 4816 850 234 240 896 32 234 256 98 4 410 1920 98 30 0 4816 98 2 8 1409355853 1025 4944 1986 202 208 896 0 2048 2066 2096 0 5 498 0 16 98 2 546 1 578 608 8 'Add Requirement' 1 1 0 0 0 546 1 578 672 8 'Remove Requirement' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 4944 0 8 4294902559 2306 2336 98 0 2368 2400 0 0 0 0 0 0 202 208 98 1 2450 8 'Requirement Message' 681 2496 2306 8 #message 98 0 2562 0 0 2594 2 1 2624 8 'doIt' 8 '[:a :b | a message <= b message]' 8 #[30 105 226 0 226 32 130 106] 5328 5360 7 513 0 0 0 4944 0 1 0 0 2720 896 0 131169 0 0 1186 202 208 98 3 1250 1280 98 2 1106 1 1 1106 911 311 4944 1250 2864 98 1 5056 4944 1250 2912 98 1 8 'Requirement Message' 4944 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 199 1 0 0 155 0 0 0] 98 0 1408 0 27 8 'requirementsPresenter' 410 3584 98 14 0 4816 98 2 8 1140850688 131073 5696 0 2066 8 4278190080 0 5 0 0 0 5696 3682 4032 3728 0 1186 202 208 98 1 1250 1280 98 2 1106 929 1 1106 913 311 5696 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 208 1 0 0 0 0 0 0 152 3 0 0 155 0 0 0] 896 1408 0 27 8 'requirementComentsPresenter' 0 1186 202 208 98 1 1250 1280 98 2 1106 1 1 1106 1841 311 4816 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 152 3 0 0 155 0 0 0] 98 3 4944 410 3200 98 12 0 4816 98 2 8 1140850688 1 6128 0 2066 8 4278190080 0 517 0 0 0 6128 1186 202 208 98 1 1250 1280 98 2 1106 911 1 1106 19 311 6128 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 199 1 0 0 0 0 0 0 208 1 0 0 155 0 0 0] 98 0 1408 0 27 5696 1408 0 27 410 3200 98 12 0 1664 98 2 8 1140850688 1 6384 0 2066 8 4278190080 0 517 0 0 0 6384 1186 202 208 98 1 1250 1280 98 2 1106 1 311 1106 1841 19 6384 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 155 0 0 0 152 3 0 0 164 0 0 0] 98 0 1408 0 27 1776 1408 0 27 234 256 896 0 1186 202 208 98 2 1250 1280 98 2 1106 2879 21 1106 1841 1331 416 1250 2864 98 1 512 416 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 55 9 0 0 163 2 0 0] 98 2 752 1664 1408 0 27 )! !
!UMLTraitComposite class categoriesFor: #defaultModel!public! !
!UMLTraitComposite class categoriesFor: #resource_Default_view!public!resources-views! !

