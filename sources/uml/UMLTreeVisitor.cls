"Filed out from Dolphin Smalltalk 7"!

StParseNodeVisitor subclass: #UMLTreeVisitor
	instanceVariableNames: 'treeModel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTreeVisitor guid: (GUID fromString: '{591e6cd0-7fab-4090-91e5-d048a6800332}')!
UMLTreeVisitor comment: ''!
!UMLTreeVisitor categoriesForClass!Unclassified! !
!UMLTreeVisitor methodsFor!

treeModel
	^treeModel!

treeModel: anObject
	treeModel := anObject!

visitArgumentNode: anStParameterNode!

visitArgumentNodes: aNodeCollection!

visitAssignmentNode: anAssignmentNode

	treeModel add: anAssignmentNode asChildOf: anAssignmentNode parent.

	self visitNode: anAssignmentNode variable.
	self visitNode: anAssignmentNode value!

visitBlockNode: aStBlockNode

	treeModel add: aStBlockNode asChildOf: aStBlockNode parent.

	self visitNode: aStBlockNode body!

visitCascadeNode: aCascadeNode

	treeModel add: aCascadeNode asChildOf: aCascadeNode parent.

	aCascadeNode messages do: [:each | self visitNode: each].!

visitLiteralArrayNode: aLiteralArrayNode

	treeModel add: aLiteralArrayNode asChildOf: aLiteralArrayNode parent!

visitLiteralNode: aLiteralNode

	treeModel add: aLiteralNode asChildOf: aLiteralNode parent!

visitMessageNode: aMessageNode

	treeModel add: aMessageNode asChildOf: aMessageNode parent.

	self visitNode: aMessageNode receiver.

	aMessageNode arguments do: [:each | self visitNode: each]!

visitMethodNode: aMethodNode

	treeModel := TreeModel withRoots: (OrderedCollection with: aMethodNode).

	self visitArgumentNodes: aMethodNode arguments.

	self visitNode: aMethodNode body!

visitPrimitiveNode: anStPrimitiveNode

	treeModel add: anStPrimitiveNode asChildOf: anStPrimitiveNode parent!

visitReturnNode: aReturnNode

	treeModel add: aReturnNode asChildOf: aReturnNode parent.

	self visitNode: aReturnNode value!

visitSequenceNode: aSequenceNode

	treeModel add: aSequenceNode asChildOf: aSequenceNode parent.

	aSequenceNode statements do: [:each | self visitNode: each ].
!

visitTempDeclNode: anStTempDeclNode!

visitTemporaryNodes: aNodeCollection!

visitVariableNode: aVariableNode

	treeModel add: aVariableNode asChildOf: aVariableNode parent! !
!UMLTreeVisitor categoriesFor: #treeModel!accessing!private! !
!UMLTreeVisitor categoriesFor: #treeModel:!accessing!private! !
!UMLTreeVisitor categoriesFor: #visitArgumentNode:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitArgumentNodes:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitAssignmentNode:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitBlockNode:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitCascadeNode:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitLiteralArrayNode:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitLiteralNode:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitMessageNode:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitMethodNode:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitPrimitiveNode:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitReturnNode:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitSequenceNode:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitTempDeclNode:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitTemporaryNodes:!public!visiting! !
!UMLTreeVisitor categoriesFor: #visitVariableNode:!public!visiting! !

