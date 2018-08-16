"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLCompiler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLCompiler guid: (GUID fromString: '{041eb6bd-95e5-4ca5-81ae-9a015a4aee0a}')!
UMLCompiler comment: ''!
!UMLCompiler categoriesForClass!Unclassified! !
!UMLCompiler class methodsFor!

defaultParserClass

	^SmalltalkParser!

formatExpression: aString

	^self parseExpression: (self parseExpression: aString) formattedCode!

getAllDefinedVariablesFrom: stringCode

	^(self parseMethod: stringCode) allDefinedVariables!

getAllDefinedVariablesFrom: stringCode satisfying: aBlock

	^(self getAllDefinedVariablesFrom: stringCode) select: aBlock !

getAllTemporariesIn: stringCode

	^(self parseMethod: stringCode) allTemporaryVariables asSortedCollection!

getAllTemporariesIn: stringCode satisfyng: aBlock

	^(self getAllTemporariesIn: stringCode) select: aBlock!

getArgumentsNamesAndTemporariesFrom: stringCode
	| parsedCode |

	parsedCode := self parseMethod: stringCode.

	^parsedCode allTemporaryVariables asSortedCollection, parsedCode argumentNames asSortedCollection!

getArgumentsNamesFrom: stringCode

	^(self parseMethod: stringCode) argumentNames asSortedCollection!

getArgumentsNamesFrom: stringCode satisfying: aBlock

	^(self getArgumentsNamesFrom: stringCode) select: aBlock!

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
		(self defaultVirtualMachine hasMetaDefinitionNamed: each selector) or: [anUMLClass instanceClass hasVariableNamed: each selector asString ]
	].!

hasCompilationFailure: aStMethodNode for: anUMLClass

	^((self getUndefinedClassesIn: aStMethodNode for: anUMLClass) , (self getUndefinedVariablesIn: aStMethodNode for: anUMLClass)) notEmpty!

icon

	^Icon fromId: 'Compiler.ico'!

parseExpression: expresionCode
	"The receiver answer <StProgramNode> that represent the parsed code <expresionCode>"

	^self defaultParserClass parseExpression: expresionCode!

parseMethod: methodCode
	"The receiver answer <aStMethodNode> that represent the parsed code <methodCode>"

	^self defaultParserClass parseMethod: methodCode! !
!UMLCompiler class categoriesFor: #defaultParserClass!public! !
!UMLCompiler class categoriesFor: #formatExpression:!parser queries!public! !
!UMLCompiler class categoriesFor: #getAllDefinedVariablesFrom:!parser queries!public! !
!UMLCompiler class categoriesFor: #getAllDefinedVariablesFrom:satisfying:!parser queries!public! !
!UMLCompiler class categoriesFor: #getAllTemporariesIn:!parser queries!public! !
!UMLCompiler class categoriesFor: #getAllTemporariesIn:satisfyng:!parser queries!public! !
!UMLCompiler class categoriesFor: #getArgumentsNamesAndTemporariesFrom:!parser queries!public! !
!UMLCompiler class categoriesFor: #getArgumentsNamesFrom:!parser queries!public! !
!UMLCompiler class categoriesFor: #getArgumentsNamesFrom:satisfying:!parser queries!public! !
!UMLCompiler class categoriesFor: #getLooseMethodIn:for:!public!uml compilation errors! !
!UMLCompiler class categoriesFor: #getUndefinedClassesIn:for:!public!uml compilation errors! !
!UMLCompiler class categoriesFor: #getUndefinedVariablesIn:for:!public!uml compilation errors! !
!UMLCompiler class categoriesFor: #getUnimplementedMethodsIn:for:!public!uml compilation errors! !
!UMLCompiler class categoriesFor: #hasCompilationFailure:for:!public!uml compilation errors! !
!UMLCompiler class categoriesFor: #icon!public! !
!UMLCompiler class categoriesFor: #parseExpression:!public!uml compile! !
!UMLCompiler class categoriesFor: #parseMethod:!public!uml compile! !

