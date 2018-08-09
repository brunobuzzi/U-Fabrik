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

icon

	^Icon fromId: 'Compiler.ico'!

parseExpression: expresionCode
	"The receiver answer <StProgramNode> that represent the parsed code <expresionCode>"

	^self defaultParserClass parseExpression: expresionCode!

parseMethod: methodCode
	"The receiver answer <aStMethodNode> that represent the parsed code <methodCode>"

	^self defaultParserClass parseMethod: methodCode! !
!UMLCompiler class categoriesFor: #defaultParserClass!public! !
!UMLCompiler class categoriesFor: #getLooseMethodIn:for:!public!uml compilation errors! !
!UMLCompiler class categoriesFor: #getUndefinedClassesIn:for:!public!uml compilation errors! !
!UMLCompiler class categoriesFor: #getUndefinedVariablesIn:for:!public!uml compilation errors! !
!UMLCompiler class categoriesFor: #getUnimplementedMethodsIn:for:!public!uml compilation errors! !
!UMLCompiler class categoriesFor: #icon!public! !
!UMLCompiler class categoriesFor: #parseExpression:!public!uml compile! !
!UMLCompiler class categoriesFor: #parseMethod:!public!uml compile! !

