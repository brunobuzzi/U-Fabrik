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

"detecta si todas variables estan definida en el metodo o son variables de la clase <anUMLClass>,devuelve las que estan en infraccion"
	undefinedVariables := self getUndefinedVariablesIn: aStMethodNode for: anUMLClass.

	undefinedClasses := self getUndefinedClassesIn: aStMethodNode for: anUMLClass.

	unimplementedMethods := self getUnimplementedMethodsIn: aStMethodNode for: anUMLClass.

	implementedMethodsOutsideUMLModel := self getLooseMethodIn: aStMethodNode for: anUMLClass.

	result := Array with: undefinedVariables with: unimplementedMethods with: implementedMethodsOutsideUMLModel with: undefinedClasses.

	(result allSatisfy: [:each | each isEmpty]) ifTrue: [^true] .

	self setCompilationErrorsWith: result.

	^false

	!

developmentEnvironment

	^UMLDevelopmentEnvironment default!

getLooseMethodIn: aStMethodNode for: anUMLClass

	^(aStMethodNode allNodes select:[:e | e isMessage and: [e selector ~=  #initialize]])
		select: [:each | self defaultVirtualMachine hasLooseDefinitionNamed: each selector for: anUMLClass umlModel].!

getUndefinedClassesIn: aStMethodNode for: anUMLClass

	^(aStMethodNode allNodes select:[:e | e isVariable and: [e name first isUpperCase] ]) 
		reject: [:each | self defaultVirtualMachine hasClassNamed: each name ].!

getUndefinedVariablesIn: aStMethodNode for: anUMLClass

	^(aStMethodNode allNodes select:[:e | e isVariable and: [(e name ~=  'self') and: [(e name ~=  'super') and: [e name first isLowerCase] ] ]]) 
		reject: [:each | 
			(aStMethodNode allDefinedVariables includes: each name) or: [anUMLClass hasAnyVariableNamed: each name asSymbol] ]!

getUnimplementedMethodsIn: aStMethodNode for: anUMLClass

	^(aStMethodNode allNodes select:[:e | e isMessage]) reject: [:each | 
		each receiver isVariable 
		ifTrue: [each receiver name first isUpperCase 
			ifTrue: [self defaultVirtualMachine hasMetaDefinitionNamed: each selector] 
			ifFalse: [self defaultVirtualMachine hasDefinitionNamed: each selector] ]
		ifFalse: [self defaultVirtualMachine hasDefinitionNamed: each selector].].!

hasSelectedCategory
	^false!

isCategoryBrowser

	^false!

mainComposite
	^self!

onCategoriaAdded
	^self!

parser

	^SmalltalkParser!

setCompilationErrorsWith: anArray
	| treeModel roots |

	roots := OrderedCollection with: (UMLCompilationBranch name: 'Undefined Variables') with: (UMLCompilationBranch name: 'Unimplemented Messages') with: (UMLCompilationBranch name: 'Loose Messages') with: (UMLCompilationBranch name: 'Undefined Classes').
	treeModel := TreeModel withRoots: roots.

	anArray keysAndValuesDo: [:eachIndex :eachCollection | 
		eachCollection do: [:each | treeModel add: (UMLCompilationError node: each) asChildOf: (roots at: eachIndex)].].

	self setSanityCheckWith: treeModel.

	"self selectSanityCard."! !
!UMLEnvironmentTool categoriesFor: #aboutUMLAlmighty!public! !
!UMLEnvironmentTool categoriesFor: #checkCompilationErrorsFor:inClass:!compiling!public! !
!UMLEnvironmentTool categoriesFor: #developmentEnvironment!public! !
!UMLEnvironmentTool categoriesFor: #getLooseMethodIn:for:!compiling!public! !
!UMLEnvironmentTool categoriesFor: #getUndefinedClassesIn:for:!compiling!public! !
!UMLEnvironmentTool categoriesFor: #getUndefinedVariablesIn:for:!compiling!public! !
!UMLEnvironmentTool categoriesFor: #getUnimplementedMethodsIn:for:!compiling!public! !
!UMLEnvironmentTool categoriesFor: #hasSelectedCategory!public! !
!UMLEnvironmentTool categoriesFor: #isCategoryBrowser!public! !
!UMLEnvironmentTool categoriesFor: #mainComposite!public! !
!UMLEnvironmentTool categoriesFor: #onCategoriaAdded!public! !
!UMLEnvironmentTool categoriesFor: #parser!public! !
!UMLEnvironmentTool categoriesFor: #setCompilationErrorsWith:!compiling!public! !

