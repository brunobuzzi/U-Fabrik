"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLBlockClosureNode
	instanceVariableNames: 'arguments sequenceNode selfObject snapshot umlInstance'
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

getAllBlocksDefinitions
	| blocks |

	blocks := OrderedCollection with: self.
	sequenceNode getBlocks do: [:each | blocks add: each].
	^blocks!

getBlocks

	^sequenceNode getBlocks!

getNodeAt: index

	^sequenceNode getNodeAt: index!

globalIdentifierNames

	 ^sequenceNode globalIdentifierNames!

hasReferencesTo: implementationName

	^sequenceNode hasReferenceTo: implementationName!

hasUMLBlock
	^true!

initialize
	super initialize.
	arguments := #().!

isUMLBlock

	^true!

messagesCollect: aMonadicValuable 
	"The receiver iterate over it's messages nodes and apply the Block <aMonadicValuable> with each node as parameter"

	^self nodes collect: aMonadicValuable!

nodes

	^sequenceNode nodes!

printMessage

	^sequenceNode printString
!

printOn: aStream

	super printOn: aStream.

	aStream
		nextPut: $<;
		nextPutAll: self printMessage;
		nextPut: $>.!

sequenceNode
	^sequenceNode!

sequenceNode: anObject
	sequenceNode := anObject!

setExecutionSnapshot: anUMLExecutionSnapshot 

	snapshot := anUMLExecutionSnapshot!

snapshot
	^snapshot!

snapshot: anObject
	snapshot := anObject!

temporaries
	^sequenceNode temporaries!

umlInstance
	^umlInstance!

umlInstance: anObject
	umlInstance := anObject!

value: firstElement value: secondElement
	"This method is ONLY used to support <asSortedCollection: aBlock> using native Dolphin Sort algorithm so, can NOT be used for any other funcionality "

	^(umlInstance vmPerform: #valueWithArguments: withArguments: (Array with: (Array with: firstElement with: secondElement))) smalltalkObject

" this method ALWAYS return Smallalk Native aBoolean because is used by the Native Dolphin Sort algorithm.
Check for more details:
UMLVirtualMachine>>processPrimitiveCall_127:withArguments:snapshot:
"!

variableName
	^Error notYetImplemented! !
!UMLBlockClosureNode categoriesFor: #allNames!public! !
!UMLBlockClosureNode categoriesFor: #arguments!accessing!private! !
!UMLBlockClosureNode categoriesFor: #arguments:!accessing!private! !
!UMLBlockClosureNode categoriesFor: #asTreeModel!public! !
!UMLBlockClosureNode categoriesFor: #blockNames!public! !
!UMLBlockClosureNode categoriesFor: #canBeEvaluated!public! !
!UMLBlockClosureNode categoriesFor: #catchException!public! !
!UMLBlockClosureNode categoriesFor: #externalObjectNames!public! !
!UMLBlockClosureNode categoriesFor: #formattedCode!public! !
!UMLBlockClosureNode categoriesFor: #getAllBlocksDefinitions!public! !
!UMLBlockClosureNode categoriesFor: #getBlocks!public! !
!UMLBlockClosureNode categoriesFor: #getNodeAt:!public! !
!UMLBlockClosureNode categoriesFor: #globalIdentifierNames!public! !
!UMLBlockClosureNode categoriesFor: #hasReferencesTo:!public! !
!UMLBlockClosureNode categoriesFor: #hasUMLBlock!public! !
!UMLBlockClosureNode categoriesFor: #initialize!public! !
!UMLBlockClosureNode categoriesFor: #isUMLBlock!public! !
!UMLBlockClosureNode categoriesFor: #messagesCollect:!public! !
!UMLBlockClosureNode categoriesFor: #nodes!public! !
!UMLBlockClosureNode categoriesFor: #printMessage!public! !
!UMLBlockClosureNode categoriesFor: #printOn:!public! !
!UMLBlockClosureNode categoriesFor: #sequenceNode!accessing!private! !
!UMLBlockClosureNode categoriesFor: #sequenceNode:!accessing!private! !
!UMLBlockClosureNode categoriesFor: #setExecutionSnapshot:!public! !
!UMLBlockClosureNode categoriesFor: #snapshot!accessing!private! !
!UMLBlockClosureNode categoriesFor: #snapshot:!accessing!private! !
!UMLBlockClosureNode categoriesFor: #temporaries!context!public! !
!UMLBlockClosureNode categoriesFor: #umlInstance!accessing!private! !
!UMLBlockClosureNode categoriesFor: #umlInstance:!accessing!private! !
!UMLBlockClosureNode categoriesFor: #value:value:!public! !
!UMLBlockClosureNode categoriesFor: #variableName!public! !

!UMLBlockClosureNode class methodsFor!

icon

	^BlockClosure icon! !
!UMLBlockClosureNode class categoriesFor: #icon!public! !

