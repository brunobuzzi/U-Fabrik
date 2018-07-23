"Filed out from Dolphin Smalltalk 7"!

UMLAbstractButtonStructureComposite subclass: #UMLButtonCollectionStructureComposite
	instanceVariableNames: 'argumentsMethodPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLButtonCollectionStructureComposite guid: (GUID fromString: '{238bf907-f4f8-4057-b43d-7b88d9039cfb}')!
UMLButtonCollectionStructureComposite comment: ''!
!UMLButtonCollectionStructureComposite categoriesForClass!Unclassified! !
!UMLButtonCollectionStructureComposite methodsFor!

checkNumberOfArgumentsWithMethodName

	^true

"classesPresenter model size = (methodPresenter selection methodName subStrings: ':') size"
!

createComponents

	super createComponents.

	argumentsMethodPresenter := self add: ListPresenter new name: 'argumentsMethodPresenter'.!

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
	sourceCode := sourceCode , '
	args add: self ' , argumentsMethodPresenter selection 
				, '. "method to be executed to obtain all arguments in this case <' 
					, argumentsMethodPresenter selection , '>"'.
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
	"This version of the U-Fabrik only allow one argument in the Web Commands"

	argumentsMethodPresenter model: (ListModel on: ((anUMLClass collectionVariables collect: [:each | each attributeName]) asOrderedCollection, anUMLClass implementationsNamesAsOrderedCollection select: [:each | (each occurrencesOf: $:) = 0]) asSortedCollection).

! !
!UMLButtonCollectionStructureComposite categoriesFor: #checkNumberOfArgumentsWithMethodName!public! !
!UMLButtonCollectionStructureComposite categoriesFor: #createComponents!public! !
!UMLButtonCollectionStructureComposite categoriesFor: #createMethod!public! !
!UMLButtonCollectionStructureComposite categoriesFor: #model:!public! !

!UMLButtonCollectionStructureComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 432 98 15 0 416 98 2 8 1140850688 131073 528 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 528 498 1 1 410 432 98 15 0 528 98 2 8 1140850688 131073 640 0 0 0 5 0 0 0 640 0 234 256 98 6 410 8 ##(Smalltalk.ComboBox)  98 17 0 640 98 2 8 1412498947 1025 736 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 736 0 8 4294903651 459270 ##(Smalltalk.Message)  8 #methodName 98 0 864 401 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  21 41 1170 981 47 736 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 20 0 0 0 244 1 0 0 43 0 0 0] 98 0 1170 193 193 0 27 8 'methodsPresenter' 410 752 98 17 0 640 98 2 8 1412498947 1025 1312 818 202 208 864 0 896 914 8 4278190080 0 5 0 0 0 1312 0 8 4294903651 978 8 #displayString 98 0 864 401 1042 202 208 98 1 1106 1136 98 2 1170 21 161 1170 981 47 1312 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 80 0 0 0 244 1 0 0 103 0 0 0] 98 0 1280 0 27 8 'tabsPresenter' 410 752 98 17 0 640 98 2 8 1412498947 1025 1680 818 202 208 864 0 896 914 8 4278190080 0 5 0 0 0 1680 0 8 4294903651 978 1472 98 0 864 401 1042 202 208 98 1 1106 1136 98 2 1170 21 301 1170 981 47 1680 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 150 0 0 0 244 1 0 0 173 0 0 0] 98 0 1280 0 27 8 'argumentsMethodPresenter' 0 1042 202 208 98 1 1106 1136 98 2 1170 1 1 1170 1041 371 640 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 8 2 0 0 185 0 0 0] 98 6 736 410 8 ##(Smalltalk.GroupBox)  98 14 0 640 98 2 8 1140850695 65 2192 0 914 8 4278190080 0 5 0 0 0 2192 0 8 4294904001 1042 202 208 98 2 1106 1136 98 2 1170 11 1 1170 1021 111 2192 1106 8 #text: 98 1 8 'Method to execute' 2192 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 0 0 0 0 3 2 0 0 55 0 0 0] 98 0 1280 0 27 1312 410 2208 98 14 0 640 98 2 8 1140850695 65 2544 0 914 2288 0 5 0 0 0 2544 0 8 4294904001 1042 202 208 98 2 1106 1136 98 2 1170 11 121 1170 1021 121 2544 1106 2448 98 1 8 'Tab to be placed' 2544 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 60 0 0 0 3 2 0 0 120 0 0 0] 98 0 1280 0 27 410 2208 98 14 0 640 98 2 8 1140850695 65 2848 0 914 8 4278190080 0 5 0 0 0 2848 0 8 4294904001 1042 202 208 98 2 1106 1136 98 2 1170 11 261 1170 1021 111 2848 1106 2448 98 1 8 'Method to get all arguments' 2848 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 130 0 0 0 3 2 0 0 185 0 0 0] 98 0 1280 0 27 1680 1280 0 27 0 0 0 0 234 256 864 0 1042 202 208 98 1 1106 1136 98 2 1170 1 1 1170 1041 381 528 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 8 2 0 0 190 0 0 0] 98 1 640 1280 0 27 410 432 98 15 0 416 98 2 8 1140850688 131073 3344 0 594 31 0 5 0 0 0 3344 1180166 ##(Smalltalk.ProportionalLayout)  234 240 864 32 234 256 864 590342 ##(Smalltalk.Rectangle)  1170 301 3 1170 301 3 1042 202 208 98 1 1106 1136 98 2 1170 1 381 1170 1041 81 3344 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 190 0 0 0 8 2 0 0 230 0 0 0] 98 1 410 8 ##(Smalltalk.PushButton)  98 20 0 3344 98 2 8 1140924416 1 3712 0 0 0 5 0 0 0 3712 0 8 4294904001 1180998 4 ##(Smalltalk.CommandDescription)  8 #createMethod 8 'Create Method' 1 1 0 0 32 0 0 0 1042 202 208 98 3 1106 1136 98 2 1170 301 3 1170 441 77 3712 1106 8 #isEnabled: 98 1 32 3712 1106 2448 98 1 8 'Create Method' 3712 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 150 0 0 0 1 0 0 0 114 1 0 0 39 0 0 0] 98 0 1280 0 29 1280 0 27 0 0 0 234 256 864 0 1042 202 208 98 1 1106 1136 98 2 1170 3199 21 1170 1041 461 416 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 71 8 0 0 240 0 0 0] 98 2 528 3344 1280 0 27 )! !
!UMLButtonCollectionStructureComposite class categoriesFor: #resource_Default_view!public!resources-views! !

