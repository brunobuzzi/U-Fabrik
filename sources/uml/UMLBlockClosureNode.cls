"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLBlockClosureNode
	instanceVariableNames: 'arguments sequenceNode selfObject snapshot umlInstance isReEntrant reEntrantVarName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLBlockClosureNode guid: (GUID fromString: '{936364a8-0843-4ee0-8dbf-842a8b22db7b}')!
UMLBlockClosureNode comment: ''!
!UMLBlockClosureNode categoriesForClass!Unclassified! !
!UMLBlockClosureNode methodsFor!

allNames

	^arguments asOrderedCollection, sequenceNode allDefinedVariables!

arguments
	^arguments!

arguments: anObject
	arguments := anObject!

asTreeModel
	^TreeModel withRoots: (OrderedCollection with: self)!

blockNames

	^self arguments!

canBeEvaluated

	^true!

catchException

	^snapshot catchException!

externalObjectNames
	| names |

	names := self allNames copyWithoutDuplicates.
	self arguments do: [:each | names remove: each].
	sequenceNode allTemporaryVariables do: [:each | names remove: each].
	^names !

formattedCode

	^sequenceNode formattedCode
!

getArgumentAt: index

	^arguments at: index!

getNodeAt: index

	^sequenceNode getNodeAt: index!

globalIdentifierNames

	 ^sequenceNode globalIdentifierNames!

hasReferencesTo: implementationName

	^sequenceNode hasReferenceTo: implementationName!

initialize
	super initialize.
	arguments := #().
	isReEntrant := false.
!

isReEntrant
	^isReEntrant!

isReEntrant: anObject
	isReEntrant := anObject!

messagesCollect: aMonadicValuable 
	"The receiver iterate over it's messages nodes and apply the Block <aMonadicValuable> with each node as parameter"

	^self nodes collect: aMonadicValuable!

nodes

	^sequenceNode nodes!

printMessage

	^sequenceNode printString
!

printOn: aStream

	"super printOn: aStream."

	aStream
		nextPutAll: 'aBlock {', String lineDelimiter;
		nextPutAll: self printSource;
		nextPutAll: String lineDelimiter, '}'!

printSource

	^self source ifNil: ['']!

reEntrantVarName
	^reEntrantVarName!

reEntrantVarName: anObject
	reEntrantVarName := anObject!

restoreExecutionContext: anUMLExecutionSnapshot

	"the receiver is removed from temporaries in snapshot <anUMLExecutionSnapshot>"
	reEntrantVarName ifNotNil: [
		snapshot copySequenceTemporariesTo: anUMLExecutionSnapshot.
		anUMLExecutionSnapshot removeTemporaryNamed: reEntrantVarName].

	snapshot := anUMLExecutionSnapshot.!

sequenceNode
	^sequenceNode!

sequenceNode: anObject
	sequenceNode := anObject!

snapshot
	^snapshot!

snapshot: anObject
	snapshot := anObject!

source

	^sequenceNode formattedCode
!

temporaryVariables

	^sequenceNode temporaryVariables!

umlInstance
	^umlInstance!

umlInstance: anObject
	umlInstance := anObject!

updateExecutionContext: anUMLExecutionSnapshot
	"The receiver update its execution context with snapshot <anUMLExecutionSnapshot>.
	Used with re-entrant Blocks. 
	The new execution context <anUMLExecutionSnapshot> does not have the Block instance defined in its scope"

	"the receiver now accessible to the snapshot <anUMLExecutionSnapshot>"

	reEntrantVarName ifNotNil: [
		snapshot copySequenceTemporariesTo: anUMLExecutionSnapshot.
		anUMLExecutionSnapshot assignObject: umlInstance toTemporary: reEntrantVarName].

	^snapshot := anUMLExecutionSnapshot!

value: firstElement value: secondElement
	"This method is ONLY used to support <asSortedCollection: aBlock> using native Dolphin Sort algorithm so, can NOT be used for any other funcionality "

	^(umlInstance vmPerform: #valueWithArguments: withArguments: (Array with: (Array with: firstElement with: secondElement))) smalltalkObject

" this method ALWAYS return Smallalk Native aBoolean because is used by the Native Dolphin Sort algorithm.
Check for more details:
UMLVirtualMachine>>processPrimitiveCall_127:withArguments:snapshot:
"! !
!UMLBlockClosureNode categoriesFor: #allNames!public! !
!UMLBlockClosureNode categoriesFor: #arguments!accessing!private! !
!UMLBlockClosureNode categoriesFor: #arguments:!accessing!private! !
!UMLBlockClosureNode categoriesFor: #asTreeModel!public! !
!UMLBlockClosureNode categoriesFor: #blockNames!public! !
!UMLBlockClosureNode categoriesFor: #canBeEvaluated!public! !
!UMLBlockClosureNode categoriesFor: #catchException!public! !
!UMLBlockClosureNode categoriesFor: #externalObjectNames!public! !
!UMLBlockClosureNode categoriesFor: #formattedCode!public! !
!UMLBlockClosureNode categoriesFor: #getArgumentAt:!public! !
!UMLBlockClosureNode categoriesFor: #getNodeAt:!public! !
!UMLBlockClosureNode categoriesFor: #globalIdentifierNames!public! !
!UMLBlockClosureNode categoriesFor: #hasReferencesTo:!public! !
!UMLBlockClosureNode categoriesFor: #initialize!public! !
!UMLBlockClosureNode categoriesFor: #isReEntrant!accessing!private! !
!UMLBlockClosureNode categoriesFor: #isReEntrant:!accessing!private! !
!UMLBlockClosureNode categoriesFor: #messagesCollect:!public! !
!UMLBlockClosureNode categoriesFor: #nodes!public! !
!UMLBlockClosureNode categoriesFor: #printMessage!public! !
!UMLBlockClosureNode categoriesFor: #printOn:!public! !
!UMLBlockClosureNode categoriesFor: #printSource!public! !
!UMLBlockClosureNode categoriesFor: #reEntrantVarName!accessing!private! !
!UMLBlockClosureNode categoriesFor: #reEntrantVarName:!accessing!private! !
!UMLBlockClosureNode categoriesFor: #restoreExecutionContext:!public!re entrant processing! !
!UMLBlockClosureNode categoriesFor: #sequenceNode!accessing!private! !
!UMLBlockClosureNode categoriesFor: #sequenceNode:!accessing!private! !
!UMLBlockClosureNode categoriesFor: #snapshot!accessing!private! !
!UMLBlockClosureNode categoriesFor: #snapshot:!accessing!private! !
!UMLBlockClosureNode categoriesFor: #source!public! !
!UMLBlockClosureNode categoriesFor: #temporaryVariables!public! !
!UMLBlockClosureNode categoriesFor: #umlInstance!accessing!private! !
!UMLBlockClosureNode categoriesFor: #umlInstance:!accessing!private! !
!UMLBlockClosureNode categoriesFor: #updateExecutionContext:!public!re entrant processing! !
!UMLBlockClosureNode categoriesFor: #value:value:!public! !

!UMLBlockClosureNode class methodsFor!

icon

	^BlockClosure icon! !
!UMLBlockClosureNode class categoriesFor: #icon!public! !

