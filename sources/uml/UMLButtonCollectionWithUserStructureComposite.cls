"Filed out from Dolphin Smalltalk 7"!

UMLButtonCollectionStructureComposite subclass: #UMLButtonCollectionWithUserStructureComposite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLButtonCollectionWithUserStructureComposite guid: (GUID fromString: '{d783ceb8-6d85-43b2-a86a-f5ab37e85514}')!
UMLButtonCollectionWithUserStructureComposite comment: ''!
!UMLButtonCollectionWithUserStructureComposite categoriesForClass!Unclassified! !
!UMLButtonCollectionWithUserStructureComposite methodsFor!

compileCommandMethod: aString 
	| parsedMethod newImplementation |

	parsedMethod := self umlCompiler parseMethod: aString.
	newImplementation := (UMLParsedImplementation newNamed: parsedMethod selector) parsedCode: parsedMethod.
	self model subject addImplementation: newImplementation.
	self topShell methodDone: newImplementation.!

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
	args add: ''' , argumentsMethodPresenter selection 
				, '''. "method to be executed to obtain all arguments in this case <' 
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

	methodPresenter model: (ListModel on: (anUMLClass allImplementationsAsSortedCollection select: [:each | (each methodName occurrencesOf: $:) = 2])).
	"This version of the U-Fabrik only allow one argument in the Web Commands"

	argumentsMethodPresenter model: (ListModel on: ((anUMLClass collectionVariables collect: [:each | each attributeName]) asOrderedCollection, self topShell loginManager implementationsNamesAsOrderedCollection select: [:each | (each occurrencesOf: $:) = 0]) asSortedCollection).

! !
!UMLButtonCollectionWithUserStructureComposite categoriesFor: #compileCommandMethod:!public! !
!UMLButtonCollectionWithUserStructureComposite categoriesFor: #createMethod!public! !
!UMLButtonCollectionWithUserStructureComposite categoriesFor: #model:!public! !

