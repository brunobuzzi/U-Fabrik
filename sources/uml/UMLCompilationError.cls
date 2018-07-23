"Filed out from Dolphin Smalltalk 7"!

UMLSanityCheck subclass: #UMLCompilationError
	instanceVariableNames: 'node'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLCompilationError guid: (GUID fromString: '{d203c013-df7f-4a28-9b03-57a93a805acd}')!
UMLCompilationError comment: ''!
!UMLCompilationError categoriesForClass!Unclassified! !
!UMLCompilationError methodsFor!

hasNode

	^true!

name

	^node formattedCode!

node
	^node!

node: anObject
	node := anObject!

sourceInterval
	^node sourceInterval! !
!UMLCompilationError categoriesFor: #hasNode!public! !
!UMLCompilationError categoriesFor: #name!public! !
!UMLCompilationError categoriesFor: #node!accessing!private! !
!UMLCompilationError categoriesFor: #node:!accessing!private! !
!UMLCompilationError categoriesFor: #sourceInterval!public! !

!UMLCompilationError class methodsFor!

icon

	^Icon fromFile: 'LintWarning.ico'!

node: aStProgramNode

	^super new initialize
		node: aStProgramNode;
		yourself.! !
!UMLCompilationError class categoriesFor: #icon!public! !
!UMLCompilationError class categoriesFor: #node:!public! !

