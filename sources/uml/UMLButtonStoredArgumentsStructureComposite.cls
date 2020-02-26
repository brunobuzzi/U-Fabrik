"Filed out from Dolphin Smalltalk 7"!

UMLAbstractButtonStructureComposite subclass: #UMLButtonStoredArgumentsStructureComposite
	instanceVariableNames: 'classesPresenter methodNamePresenter classListBooleanPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLButtonStoredArgumentsStructureComposite guid: (GUID fromString: '{d479dedc-01ac-4b73-85cc-8d38300cead5}')!
UMLButtonStoredArgumentsStructureComposite comment: '"This version of the UML Almighty only allow one argument in the Web Commands"'!
!UMLButtonStoredArgumentsStructureComposite categoriesForClass!MVP-Resources-UFabrik! !
!UMLButtonStoredArgumentsStructureComposite methodsFor!

addClass
	| newClass |

	newClass := DetalleDeOpciones 
		listaCon: (self defaultVirtualMachine getAllClassesAsSortedCollection collect: [:each | UMLClassOrInstanceList fromUMLClass: each])
		para: 'UMLClasses view' 
		titulo: 'Select the class of the argument'.
	
	newClass ifNil: [^self] ifNotNil: [:value | classesPresenter model add: newClass last].

	self refreshMethodName.!

checkNumberOfArgumentsWithMethodName

	^classesPresenter model size = (methodPresenter selection methodName subStrings: ':') size
!

createComponents

	super createComponents.

	classesPresenter := self add: ListPresenter new name: 'classesPresenter'.
	methodNamePresenter := self add: TextPresenter new name: 'methodNamePresenter'.
	classListBooleanPresenter := self add: BooleanPresenter new name: 'classListBooleanPresenter'.!

createMethod
	| sourceCode |
	self checkNumberOfArgumentsWithMethodName 
		ifFalse: 
			[^MessageBox notify: 'There is a missmatch with the number of arguments'
				caption: self applicationName].
	sourceCode := methodName asString.
	sourceCode := sourceCode 
				, '
"Automatically generated method for Buttons with Arguments"
| array args |
	array := OrderedCollection newInstance.
	array add: ''' 
					, methodPresenter selection methodName asString 
					, '''. "this is the name method to be executed when the button is pressed"
	args := OrderedCollection newInstance. "here is the collection of arguments" '.
	classesPresenter model do: 
			[:eachUMLClassOrInstanceList | 
			sourceCode := sourceCode , '
	args add: (OrderedCollection with: ' 
						, eachUMLClassOrInstanceList umlclass name asString , ' with: ' 
						, eachUMLClassOrInstanceList printBooleanValue 
							, '. "the first element is the uml class the second element indicates whether is a collection of instances [true] or a collection of uml classes [false]"'].
	sourceCode := sourceCode , '
	array add: args.' , String lineDelimiter 
				, (tabsPresenter hasSelection 
						ifFalse: ['']
						ifTrue: 
							['array add: ''' , tabsPresenter selection 
								, '''."this is the tab where the button will be created" ' , String lineDelimiter]) 
					, '^array asArray'.
	^self compileCommandMethod: sourceCode!

model: anUMLClass

	super  model: anUMLClass.

	methodPresenter model: (ListModel on: (anUMLClass allImplementationsAsSortedCollection select: [:each | (each methodName occurrencesOf: $:) = 1])).
	"This version of the U-Fabrik only allow one argument in the Web Commands"!

refreshMethodName
	| newText subStringMethodName |

	methodNamePresenter model: '' asValue.
	methodPresenter hasSelection ifFalse: [^self].

	newText := ''.
	subStringMethodName := methodPresenter selection methodName subStrings: ':'.
	subStringMethodName keysAndValuesDo: [:eachKey :eachValue |  
		newText := newText, (eachValue, ': ').
		(classesPresenter model size >=  eachKey)
		ifTrue: [newText  := newText, 'a', (classesPresenter model at: eachKey) name, String lineDelimiter.] 
		ifFalse: [newText  := newText, String lineDelimiter]].

	methodNamePresenter model: newText asValue!

removeClass

	classesPresenter hasSelection ifFalse: [^self].

	classesPresenter model remove: classesPresenter selection.

	self refreshMethodName.!

switchListType

	classesPresenter hasSelection ifFalse: [^self].

	classesPresenter selection switchListType! !
!UMLButtonStoredArgumentsStructureComposite categoriesFor: #addClass!public! !
!UMLButtonStoredArgumentsStructureComposite categoriesFor: #checkNumberOfArgumentsWithMethodName!public! !
!UMLButtonStoredArgumentsStructureComposite categoriesFor: #createComponents!public! !
!UMLButtonStoredArgumentsStructureComposite categoriesFor: #createMethod!public! !
!UMLButtonStoredArgumentsStructureComposite categoriesFor: #model:!public! !
!UMLButtonStoredArgumentsStructureComposite categoriesFor: #refreshMethodName!public! !
!UMLButtonStoredArgumentsStructureComposite categoriesFor: #removeClass!public! !
!UMLButtonStoredArgumentsStructureComposite categoriesFor: #switchListType!public! !

!UMLButtonStoredArgumentsStructureComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 432 98 15 0 416 98 2 8 1140850688 131073 528 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 528 498 1 1 410 432 98 15 0 528 98 2 8 1140850688 131073 640 0 0 0 5 0 0 0 640 0 234 256 98 4 410 8 ##(Smalltalk.ComboBox)  98 17 0 640 98 2 8 1412498947 1025 736 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 736 0 8 4294903301 459270 ##(Smalltalk.Message)  8 #methodName 98 0 864 401 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  31 41 1170 991 47 736 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 20 0 0 0 254 1 0 0 43 0 0 0] 98 0 1170 193 193 0 27 8 'methodsPresenter' 410 752 98 17 0 640 98 2 8 1412498947 1025 1312 818 202 208 864 0 896 914 8 4278190080 0 5 0 0 0 1312 0 8 4294903301 978 8 #displayString 98 0 864 401 1042 202 208 98 1 1106 1136 98 2 1170 31 161 1170 991 47 1312 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 80 0 0 0 254 1 0 0 103 0 0 0] 98 0 1280 0 27 8 'tabsPresenter' 0 1042 202 208 98 1 1106 1136 98 2 1170 1 1 1170 1051 241 640 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 13 2 0 0 120 0 0 0] 98 4 736 410 8 ##(Smalltalk.GroupBox)  98 14 0 640 98 2 8 1140850695 65 1840 0 914 8 4278190080 0 5 0 0 0 1840 0 8 4294903169 1042 202 208 98 2 1106 1136 98 2 1170 11 1 1170 1031 111 1840 1106 8 #text: 98 1 8 'Method to execute' 1840 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 0 0 0 0 8 2 0 0 55 0 0 0] 98 0 1280 0 27 1312 410 1856 98 14 0 640 98 2 8 1140850695 65 2192 0 914 1936 0 5 0 0 0 2192 0 8 4294903169 1042 202 208 98 2 1106 1136 98 2 1170 11 121 1170 1031 101 2192 1106 2096 98 1 8 'Tab to be placed' 2192 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 60 0 0 0 8 2 0 0 110 0 0 0] 98 0 1280 0 27 1280 0 27 0 0 0 410 8 ##(Smalltalk.MultilineTextEdit)  98 16 0 528 98 2 8 1142952260 1025 2496 721990 2 ##(Smalltalk.ValueHolder)  0 32 1310726 ##(Smalltalk.EqualitySearchPolicy)  0 914 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 10 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #chooseSelectionFont 8 '&Font...' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 2722 1 2754 8 #bePlain 8 '&Plain' 1 1 0 0 0 2722 1 2754 8 #toggleBold 8 '&Bold' 1 1 0 0 0 2722 1 2754 8 #toggleItalic 8 '&Italic' 1 1 0 0 0 2722 1 2754 8 #toggleUnderlined 8 '&Underlined' 1 1 0 0 0 2818 4097 2674 0 16 98 3 2722 1025 2754 8 #alignParagraphLeft 8 '&Left' 1 1 0 0 0 2722 1025 2754 8 #alignParagraphCenter 8 '&Centre' 1 1 0 0 0 2722 1025 2754 8 #alignParagraphRight 8 '&Right' 1 1 0 0 0 8 '&Align' 0 1 0 0 0 0 0 2818 4097 2722 1 2754 8 #chooseSelectionColor 8 '&Colour...' 1 1 0 0 0 8 '' 0 1 0 0 0 0 0 0 0 2496 0 8 4294903303 852486 ##(Smalltalk.NullConverter)  0 0 11 1042 202 208 98 5 1106 1136 98 2 1170 1 241 1170 1051 231 2496 1106 8 #contextMenu: 98 1 2688 2496 1106 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 2496 1106 8 #isTextModified: 98 1 32 2496 1106 8 #setMarginWidths: 98 1 98 2 7 7 2496 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 120 0 0 0 13 2 0 0 235 0 0 0] 98 0 1280 0 27 234 256 98 2 2496 8 'methodNamePresenter' 0 1042 202 208 98 1 1106 1136 98 2 1170 1 1 1170 1051 471 528 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 13 2 0 0 235 0 0 0] 98 2 640 2496 1280 0 27 410 432 98 15 0 416 98 2 8 1140850688 131073 4112 0 594 31 0 5 0 0 0 4112 1180166 ##(Smalltalk.ProportionalLayout)  234 240 864 32 234 256 864 0 1042 202 208 98 1 1106 1136 98 2 1170 1 1061 1170 1051 71 4112 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 18 2 0 0 13 2 0 0 53 2 0 0] 98 3 410 8 ##(Smalltalk.PushButton)  98 20 0 4112 98 2 8 1140924416 1 4416 0 0 0 5 0 0 0 4416 0 8 4294903169 2754 8 #addClass 8 'Add Class' 1 1 0 0 32 0 0 0 1042 202 208 98 3 1106 1136 98 2 1170 1 1 1170 351 71 4416 1106 8 #isEnabled: 98 1 32 4416 1106 2096 98 1 8 'Add Class' 4416 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 175 0 0 0 35 0 0 0] 98 0 1280 0 29 410 4432 98 20 0 4112 98 2 8 1140924416 1 4816 0 0 0 5 0 0 0 4816 0 8 4294903169 2754 8 #removeClass 8 'Remove Class' 1 1 0 0 32 0 0 0 1042 202 208 98 3 1106 1136 98 2 1170 351 1 1170 351 71 4816 1106 4688 98 1 32 4816 1106 2096 98 1 8 'Remove Class' 4816 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 175 0 0 0 0 0 0 0 94 1 0 0 35 0 0 0] 98 0 1280 0 29 410 4432 98 20 0 4112 98 2 8 1140924416 1 5184 0 0 0 5 0 0 0 5184 0 8 4294903169 2754 8 #createMethod 8 'Create Method' 1 1 0 0 32 0 0 0 1042 202 208 98 3 1106 1136 98 2 1170 701 1 1170 351 71 5184 1106 4688 98 1 32 5184 1106 2096 98 1 8 'Create Method' 5184 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 94 1 0 0 0 0 0 0 13 2 0 0 35 0 0 0] 98 0 1280 0 29 1280 0 27 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 5552 0 0 0 5 0 0 0 5552 4194 234 240 864 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 5552 98 2 8 1140850688 131073 5680 0 914 8 4278190080 0 5 0 0 0 5680 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.ListPresenter)  8 #resource_UMLClassOrInstanceList_view 0 1042 202 208 98 1 1106 1136 98 2 1170 1 1 1170 1051 591 5680 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 13 2 0 0 39 1 0 0] 864 1280 0 27 8 'classesPresenter' 0 1042 202 208 98 1 1106 1136 98 2 1170 1 471 1170 1051 591 5552 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 235 0 0 0 13 2 0 0 18 2 0 0] 98 1 5680 1280 0 27 234 256 864 0 1042 202 208 98 1 1106 1136 98 2 1170 3199 21 1170 1051 1131 416 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 76 8 0 0 63 2 0 0] 98 3 528 5552 4112 1280 0 27 )! !
!UMLButtonStoredArgumentsStructureComposite class categoriesFor: #resource_Default_view!public!resources-views! !

