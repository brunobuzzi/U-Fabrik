"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLEnvironmentTool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLEnvironmentTool guid: (GUID fromString: '{4f7b73c7-543e-48fb-a7bb-81a93beac886}')!
UMLEnvironmentTool comment: ''!
!UMLEnvironmentTool categoriesForClass!Unclassified! !
!UMLEnvironmentTool methodsFor!

aboutUMLAlmighty
	^MessageBox 
		notify: self applicationName, ' version 4.003  
Copyright: Bruno Buzzi Brassesco
bruno.brasesco@gmail.com'
		caption: self applicationName!

checkCompilationErrorsFor: aStMethodNode inClass: anUMLClass
	| undefinedVariables unimplementedMethods result implementedMethodsOutsideUMLModel undefinedClasses |

	undefinedVariables := self umlCompiler getUndefinedVariablesIn: aStMethodNode for: anUMLClass.

	undefinedClasses := self umlCompiler getUndefinedClassesIn: aStMethodNode for: anUMLClass.

	unimplementedMethods := self umlCompiler getUnimplementedMethodsIn: aStMethodNode for: anUMLClass.

	implementedMethodsOutsideUMLModel := self umlCompiler getLooseMethodIn: aStMethodNode for: anUMLClass.

	result := Array with: undefinedVariables with: unimplementedMethods with: implementedMethodsOutsideUMLModel with: undefinedClasses.

	(result allSatisfy: [:each | each isEmpty]) ifTrue: [^true] .

	self setCompilationErrorsWith: result.

	self selectSanityCard.

	^false

	!

developmentEnvironment

	^UMLDevelopmentEnvironment default!

hasSelectedCategory
	^false!

isCategoryBrowser

	^false!

mainComposite
	^self!

onCategoriaAdded
	^self!

selectSanityCard

	self subclassResponsibility!

setCompilationErrorsWith: anArray
	"The receiver create the Sanity Check TreeModel to be displayed to the user"
	| treeModel roots |

	roots := OrderedCollection with: (UMLCompilationBranch name: 'Undefined Variables') "tree roots"
						with: (UMLCompilationBranch name: 'Unimplemented Messages') 
						with: (UMLCompilationBranch name: 'Loose Messages') 
						with: (UMLCompilationBranch name: 'Undefined Classes').

	treeModel := TreeModel withRoots: roots.

	anArray keysAndValuesDo: [:eachIndex :nodeCollection | 
		nodeCollection do: [:each | treeModel add: (UMLCompilationError node: each) asChildOf: (roots at: eachIndex)].].

	self setSanityCheckWith: treeModel.!

setSanityCheckWith: treeModel

	self subclassResponsibility! !
!UMLEnvironmentTool categoriesFor: #aboutUMLAlmighty!public! !
!UMLEnvironmentTool categoriesFor: #checkCompilationErrorsFor:inClass:!compiling!public! !
!UMLEnvironmentTool categoriesFor: #developmentEnvironment!public! !
!UMLEnvironmentTool categoriesFor: #hasSelectedCategory!public! !
!UMLEnvironmentTool categoriesFor: #isCategoryBrowser!public! !
!UMLEnvironmentTool categoriesFor: #mainComposite!public! !
!UMLEnvironmentTool categoriesFor: #onCategoriaAdded!public! !
!UMLEnvironmentTool categoriesFor: #selectSanityCard!public! !
!UMLEnvironmentTool categoriesFor: #setCompilationErrorsWith:!compiling!public! !
!UMLEnvironmentTool categoriesFor: #setSanityCheckWith:!compiling!public! !

