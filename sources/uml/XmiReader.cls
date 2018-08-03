"Filed out from Dolphin Smalltalk 7"!

Object subclass: #XmiReader
	instanceVariableNames: 'xmlDocument umlClasses generatedRelations duplicatedClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
XmiReader guid: (GUID fromString: '{14559338-2423-45b4-940f-63d7d1ce1059}')!
XmiReader comment: ''!
!XmiReader categoriesForClass!Unclassified! !
!XmiReader methodsFor!

askForAnotherClassNameFor: aString in: classesDictionary
	| newName |

	newName := aString.
	[classesDictionary includesKey: newName] whileTrue: [newName := Prompter prompt: 'Enter another name for <', aString, '>' caption: self applicationName].

	^newName
	!

createHierarchyRelationFor: anIXMLDOMElement 
	"The receiver link to UML classes with a inheritance relation, description is obtained from <anIXMLDOMElement>"

	self subclassResponsibility!

createRelationMultiplicityFor: anIXMLDOMElement for: anUMLRelation
	"The receiver create and set the multiplicity of <anUMLRelation> getting description from <anIXMLDOMElement>"

	^anUMLRelation umlRelationMultiplicityClass new
		sourceMultiplicity: anUMLRelation sourceMultiplicity;
		targetMultiplicity: anUMLRelation targetMultiplicity;
		association: anUMLRelation;
		yourself.
		!

createRelationsOfClassAssociations

	self subclassResponsibility!

createSideMultiplicityFor: relationElement xpath: sourceTargetXpath for: anUMLRelation 

	self subclassResponsibility!

createSourceSideMultiplicityFor: relationElement for: anUMLRelation 
	"Creates the multiplicity for the source part"
	| attributeID |

	attributeID := (relationElement selectNodes: 'memberEnd') first getAttribute: 'xmi:idref'.

	^self createSideMultiplicityFor: relationElement relation: anUMLRelation attributeID: attributeID isSource: true!

createTargetSideMultiplicityFor: relationElement for: anUMLRelation 
	"Creates the multiplicity for the source part"
	| attributeID |

	attributeID := (relationElement selectNodes: 'memberEnd') last getAttribute: 'xmi:idref'.

	^self createSideMultiplicityFor: relationElement relation: anUMLRelation attributeID: attributeID isSource: false!

duplicatedClass
	^duplicatedClass!

duplicatedClass: anObject
	duplicatedClass := anObject!

free

	super free.

	xmlDocument basicFree.
	xmlDocument := nil.

	self initialize.!

generateRelationFrom: relationElement 
	"Creates anUMLRelation from the XMI definition <relationElement> "

	self subclassResponsibility!

generateUMLAttributesTo: anOrderedCollection
	"We generate the attributes to all classes. The path order is top-down, classes without superclasses first"
	| classesSuperclasses classOrder |

	classesSuperclasses := anOrderedCollection collect: [:each | each allSuperclassesUsingNil size]."we create a dictionay with classes names and number of superclasses"
	classOrder := Dictionary new. "we create a dictionay with the numbers of superclasses as keys and a collection of classes names as values"
	classesSuperclasses keysAndValuesDo: [:eachKey :eachValue |
		(classOrder includesKey: eachValue) ifFalse: [classOrder at: eachValue put: OrderedCollection new].
		(classOrder at: eachValue) add: eachKey].
"<classOrder> is a Dictionary of collections. The keys are the number of superclasses and the value is a collection of classes names -to be proccesed-"
	classOrder do: [:eachCollection | self generateAttributesToAll: (eachCollection collect: [:each | (umlClasses at: each) instanceClass]) ].!

generateUMLClasses
	"The receiver generates the UMLClasses from the XMI 2.1 file. The UMLStructure is anOrderedCollection of Arrays (one for each class), where each Array has three positions.
	The first is the name of the class
	The second is the <xmi:id> of the class
	The third represent the relations of the class and is anOrderedCollection of <xmi:id> where each <xmi:id> is the ID of the relation "

	self subclassResponsibility!

getAttributeElementWithID: attrID

	self subclassResponsibility!

getClassElementWithId: xmiID
	"Get from all elements in the XMI model the element with id = <xmiID>"

	^self getClassElementWithId: xmiID ifNone: [nil]!

getClassElementWithId: xmiID ifNone: aBlock
	"Get from all elements in the XMI model the element with id = <xmiID>"

	self subclassResponsibility!

getClassesNamesAndXmiID

	self subclassResponsibility!

getClassesNamesIDandRelationsID
	"Answer anOrderedCollection of Arrays containing classes names, ids, relations. 
	Each Array has 3 positions.
	1. Class name
	2. Xmi id of the class
	3. An OrderedCollection of Array, each Array 3 positions: 1. xmi id of relation 2. source xmi id 3. target xmi id"

	self subclassResponsibility!

getClassesNodes
	"Get from XMI diagrams all elements that are classes answer IXMLDOM elements"
	| diagramElements |

	diagramElements := self getDiagramElements.
	^diagramElements select: [:eachUMLClass | ((eachUMLClass getAttribute: 'xmi:type') = 'uml:Class') and: [(eachUMLClass getAttribute: 'name') notNil] ]!

getClassNodeOf: anUMLClass
	"Answer an XMI element that match with <anUMLClass>"

	^self getClassesNodes detect: [:each | ((each getAttribute: 'name') copyWithoutAll: ' ') = anUMLClass name] ifNone: [nil]!

getDiagramConnectors
	"Answer a collection of XMI connectors of the file "

	self subclassResponsibility!

getDiagramElements
	"Answer a collection of XMI elements of the file "

	self subclassResponsibility!

getMachineStateNodes
	"Get from XMI diagrams all elements that are UML States answer IXMLDOM elements"
	| diagramElements |

	diagramElements :=  self selectNodes: '//packagedElement'.
	^diagramElements select: [:each | ((each getAttribute: 'xmi:type') = 'uml:StateMachine') and: [(each getAttribute: 'name') notNil] ]!

getRelationElementWithId: xmiID
	"Get the XMI relation element with xmi id equal to <xmiID>"

	self subclassResponsibility!

getSourceAndTargetClassesOf: relationID
	"Answer anArray with UMLClasses that are source and target in the relation with id <relationID>"

	^(self getSourceAndTargetElementNamesOf: relationID) collect: [:each | umlClasses at: each]!

getSourceAndTargetElementNamesOf: relationID
	"Answer anArray with the names of the classes that are source and target in the relation with id <relationID>"

	^(self getSourceAndTargetElementOf: relationID) collect: [:each | each getAttribute: 'name' ]!

getSourceAndTargetElementOf: relationID
	"Answer anArray with the XMLDOMElement of the classes that are source and target in the relation with id <relationID>"

	self subclassResponsibility!

getStateElementWithId: xmiID
	"Get from all elements in the XMI model the element with id = <xmiID>"

	self subclassResponsibility!

getStateElementWithId: xmiID ifNone: aBlock
	"Get from all elements in the XMI model the element with id = <xmiID>"

	self subclassResponsibility!

getStateNodes
	"Get from XMI diagrams all elements that are UML States answer IXMLDOM elements"
	| diagramElements |

	diagramElements := self getDiagramElements.
	^diagramElements select: [:each | ((each getAttribute: 'xmi:type') = 'uml:State') and: [(each getAttribute: 'name') notNil] ]!

getStatesMachineNamesAndXmiID
	"Answer a collection of Array where Array first is the class name - Array second is the <xmi> id of the UML State. 
{ ('Project' 'ERTHY25') '(Person' 'ERTHY14') ('Team' 'ERTHY10') } "

	self subclassResponsibility!

getStatesNamesAndXmiID
	"Answer a collection of Array where Array first is the class name - Array second is the <xmi> id of the UML State. 
{ ('Project' 'ERTHY25') '(Person' 'ERTHY14') ('Team' 'ERTHY10') } "

	self subclassResponsibility!

getTransitionNodes
	"Get from XMI diagrams all elements that are UML Transitions answer IXMLDOM elements"
	| diagramElements |

	diagramElements :=  self selectNodes: '//transition'.
	^diagramElements select: [:each | ((each getAttribute: 'xmi:type') = 'uml:Transition') and: [(each getAttribute: 'name') notNil] ]!

getTransitionNodesFor: stateMachineNode
	"Get from XMI diagrams all elements that are UML States answer IXMLDOM elements"
	| diagramElements |

	diagramElements := stateMachineNode selectNodes: '//transition'.
	^diagramElements select: [:each | ((each getAttribute: 'xmi:type') = 'uml:Transition') and: [(each getAttribute: 'name') notNil] ]!

initialize

	super initialize.

	generatedRelations := LookupTable new.
	umlClasses := LookupTable new.
	duplicatedClass := ''.!

isAssociationClassXmiID: xmiID

	self subclassResponsibility!

isAssociationRelationXmiID: xmiID

	self subclassResponsibility!

isHierarchyRelation: anIXMLDOMElement 

	self subclassResponsibility!

isRelationComplete: relationID
	"Answer if <relationID> is complete (with source and target) not nil"

	^(((self getSourceAndTargetElementOf: relationID) allSatisfy: [:each | each notNil])
		and: [(self getSourceAndTargetElementNamesOf: relationID) allSatisfy: [:each | each notNil]])
	and: [((self getSourceAndTargetElementNamesOf: relationID) allSatisfy: [:each | umlClasses includesKey: each ])
		and: [(self getSourceAndTargetClassesOf: relationID) allSatisfy: [:each | each notNil]]]!

loadFrom: pathFile
	| stream xmlSource |

	stream := FileStream read: pathFile text: true.
	xmlSource := stream contents.
	stream close.
	xmlDocument := IXMLDOMDocument2 new.

	self setNamespaceProperties.

	xmlDocument loadText: xmlSource.


!

loadFromString: xmiString

	xmlDocument := IXMLDOMDocument2 new.

	self setNamespaceProperties.

	xmlDocument loadText: xmiString.
!

selectNodeOfClassNamed: aString

	^self getClassesNodes detect: [:each | (each getAttribute: 'name') = aString] ifNone: [nil]!

selectNodes: aString

	^xmlDocument selectNodes: aString!

setNamespaceProperties

	xmlDocument setProperty_: 'SelectionLanguage' value: 'XPath'.
	xmlDocument setProperty_: 'SelectionNamespaces' value: 'xmlns:xmi="http://schema.omg.org/spec/XMI/2.1" xmlns:uml="http://schema.omg.org/spec/UML/2.0"'.! !
!XmiReader categoriesFor: #askForAnotherClassNameFor:in:!public! !
!XmiReader categoriesFor: #createHierarchyRelationFor:!public! !
!XmiReader categoriesFor: #createRelationMultiplicityFor:for:!public!uml-class creation! !
!XmiReader categoriesFor: #createRelationsOfClassAssociations!attributes!public!uml-class creation! !
!XmiReader categoriesFor: #createSideMultiplicityFor:xpath:for:!public! !
!XmiReader categoriesFor: #createSourceSideMultiplicityFor:for:!public! !
!XmiReader categoriesFor: #createTargetSideMultiplicityFor:for:!public! !
!XmiReader categoriesFor: #duplicatedClass!accessing!private! !
!XmiReader categoriesFor: #duplicatedClass:!accessing!private! !
!XmiReader categoriesFor: #free!public!xmi top method! !
!XmiReader categoriesFor: #generateRelationFrom:!public! !
!XmiReader categoriesFor: #generateUMLAttributesTo:!attributes!public!uml-class creation! !
!XmiReader categoriesFor: #generateUMLClasses!public!uml-class creation! !
!XmiReader categoriesFor: #getAttributeElementWithID:!public! !
!XmiReader categoriesFor: #getClassElementWithId:!public!xmi top method! !
!XmiReader categoriesFor: #getClassElementWithId:ifNone:!public! !
!XmiReader categoriesFor: #getClassesNamesAndXmiID!public! !
!XmiReader categoriesFor: #getClassesNamesIDandRelationsID!public! !
!XmiReader categoriesFor: #getClassesNodes!getting classes!public!xpath! !
!XmiReader categoriesFor: #getClassNodeOf:!getting classes!public! !
!XmiReader categoriesFor: #getDiagramConnectors!public! !
!XmiReader categoriesFor: #getDiagramElements!public! !
!XmiReader categoriesFor: #getMachineStateNodes!getting classes!getting states!public!xpath! !
!XmiReader categoriesFor: #getRelationElementWithId:!public! !
!XmiReader categoriesFor: #getSourceAndTargetClassesOf:!public!xmi top method! !
!XmiReader categoriesFor: #getSourceAndTargetElementNamesOf:!public!xmi top method! !
!XmiReader categoriesFor: #getSourceAndTargetElementOf:!public! !
!XmiReader categoriesFor: #getStateElementWithId:!getting states!public! !
!XmiReader categoriesFor: #getStateElementWithId:ifNone:!getting states!public! !
!XmiReader categoriesFor: #getStateNodes!getting classes!getting states!public!xpath! !
!XmiReader categoriesFor: #getStatesMachineNamesAndXmiID!getting states!public! !
!XmiReader categoriesFor: #getStatesNamesAndXmiID!getting classes!getting states!public! !
!XmiReader categoriesFor: #getTransitionNodes!getting classes!getting states!public!xpath! !
!XmiReader categoriesFor: #getTransitionNodesFor:!getting classes!getting states!public!xpath! !
!XmiReader categoriesFor: #initialize!public! !
!XmiReader categoriesFor: #isAssociationClassXmiID:!public! !
!XmiReader categoriesFor: #isAssociationRelationXmiID:!public! !
!XmiReader categoriesFor: #isHierarchyRelation:!public! !
!XmiReader categoriesFor: #isRelationComplete:!public!xmi top method! !
!XmiReader categoriesFor: #loadFrom:!public!xmi top method! !
!XmiReader categoriesFor: #loadFromString:!public!xmi top method! !
!XmiReader categoriesFor: #selectNodeOfClassNamed:!getting classes!public! !
!XmiReader categoriesFor: #selectNodes:!public!xmi top method! !
!XmiReader categoriesFor: #setNamespaceProperties!public!xmi top method! !

!XmiReader class methodsFor!

fromFile: pathFile

	^super new initialize
		loadFrom: pathFile;
		yourself.!

fromString: xmiString

	^super new initialize
		loadFromString: xmiString;
		yourself.! !
!XmiReader class categoriesFor: #fromFile:!public! !
!XmiReader class categoriesFor: #fromString:!public! !

