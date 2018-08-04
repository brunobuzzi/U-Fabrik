"Filed out from Dolphin Smalltalk 7"!

XmiReader subclass: #XmiEnterpriseArchitect
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
XmiEnterpriseArchitect guid: (GUID fromString: '{8d6acbfa-b629-41f6-b595-fbd47bfa6d1b}')!
XmiEnterpriseArchitect comment: ''!
!XmiEnterpriseArchitect categoriesForClass!Unclassified! !
!XmiEnterpriseArchitect methodsFor!

createHierarchyRelationFor: anIXMLDOMElement 
	"The receiver link to UML classes with a inheritance relation, description is obtained from <anIXMLDOMElement>"
	| relatedClasses |

	relatedClasses := self getSourceAndTargetClassesOf: (anIXMLDOMElement getAttribute: 'xmi:idref'). "we get the source and target of the relation"

	relatedClasses first umlSuperclass: relatedClasses second.

	relatedClasses first instanceClass umlSuperclass: relatedClasses second instanceClass.
!

createRelationsOfClassAssociations
	"EnterpriseArchitect do nothing because all Class Associations have been create at this point.
	This is to maitain import compability with VisualParadigm"!

createSourceSideMultiplicityFor: relationElement for: anUMLRelation
	"Creates the multiplicity for the source part"

	^self createSideMultiplicityFor: relationElement xpath: 'source/type' for: anUMLRelation!

createTargetSideMultiplicityFor: relationElement for: anUMLRelation
	"Creates the multiplicity for the target part"

	^self createSideMultiplicityFor: relationElement xpath: 'target/type' for: anUMLRelation!

generateUMLClasses
	"The receiver generates the UMLClasses from the XMI 2.1 file. The UMLStructure is anOrderedCollection of Arrays (one for each class), where each Array has three positions.
	The first is the name of the class
	The second is the <xmi:id> of the class
	The third represent the relations of the class and is anOrderedCollection of <xmi:id> where each <xmi:id> is the ID of the relation "
	| umlStructure |

	self createAllClasses.

	umlStructure := self getClassesNamesIDandRelationsID.

	umlStructure do: [:eachClassArray | | umlClass relationElement umlRelation relatedClass sourceTargetArray |
		umlClass := (umlClasses at: eachClassArray first) instanceClass."the first position contains the name of the class"
		eachClassArray third "the third element is a collection of id of each relation of the class" 
			do: [:eachRelationIdArray |
						(generatedRelations includesKey: eachRelationIdArray first)
						ifFalse: [generatedRelations at: eachRelationIdArray first put: eachRelationIdArray first.
							relationElement := self getRelationElementWithId: eachRelationIdArray first. "get the XMI element of the xmi:id <eachRelationID>"
							(self isHierarchyRelation: relationElement) "if is a hierarchy relation we NOT process it"
							ifFalse: [(self isRelationComplete: (relationElement getAttribute: 'xmi:idref' ))
								ifTrue: [umlRelation := self generateRelationFrom: relationElement. "generate the UMLRelation for the XMI Relation element"
									umlClass addRelation: umlRelation. "add the relation to the class that is in process"
									sourceTargetArray := self getSourceAndTargetElementNamesOf: eachRelationIdArray first. "get the names of the source and target class of the relation"

									relatedClass := umlClasses at: ((sourceTargetArray first = umlClass name) "we obtain the related class of the class that is in process in order to add the relation too"
										ifTrue: [sourceTargetArray second] 
										ifFalse: [sourceTargetArray first]).
									(umlRelation targetClass == umlRelation sourceClass) ifFalse: [relatedClass instanceClass addRelation: umlRelation]]]
							ifTrue: [self createHierarchyRelationFor: relationElement]].

 ]].

	^umlClasses collect: [:each | each instanceClass]!

getClassElementWithId: xmiID ifNone: aBlock
	"Get from all elements in the XMI model the element with id = <xmiID>"

	^self getDiagramElements detect: [:each | (each getAttribute: 'xmi:idref') = xmiID] ifNone: aBlock!

getClassesNamesAndXmiID
	"Answer a collection of Array where Array first is the class name - Array second is the <xmi> id of the class . 
{ ('Project' 'ERTHY25') '(Person' 'ERTHY14') ('Team' 'ERTHY10') } "
	| classesCollection |

	classesCollection := OrderedCollection new.

	self getClassesNodes do: [:each | classesCollection add: (Array with: ((each getAttribute: 'name') copyWithoutAll: ' ') with: (each getAttribute: 'xmi:idref')) ].

	^classesCollection!

getClassesNamesIDandRelationsID
	"Answer anOrderedCollection of Arrays containing classes names, ids, relations. 
	Each Array has 3 positions.
	1. Class name
	2. Xmi id of the class
	3. An OrderedCollection of Array, each Array 3 positions: 1. xmi id of relation 2. source xmi id 3. target xmi id"
	| classesCollection |

	classesCollection := OrderedCollection new.
	self getClassesNodes do: [:each | | attrName atrID links |
			attrName := (each getAttribute: 'name') copyWithoutAll: ' '. "we set the name of the class"
			atrID := each getAttribute: 'xmi:idref'. "we set the xmi id of the class"
			links := OrderedCollection new.
			(each selectSingleNode: 'links') "we iterate over class links"
			ifNotNil: [:value | value childNodes do: [:eachLink | 
				links add: (Array with: (eachLink getAttribute: 'xmi:id') "we set relation xmi id"
							with: (eachLink getAttribute: 'start') "we set relation xmi source"
							with: (eachLink getAttribute: 'end'))]]. "we set relation xmi target"
			classesCollection add: (Array with: attrName with: atrID with: links)].

	^classesCollection!

getDiagramConnectors
	"Answer a collection of XMI connectors of the file "

	^(self selectNodes: 'xmi:XMI/xmi:Extension/connectors') first childNodes!

getDiagramElements
	"Answer a collection of XMI elements of the file "

	^(self selectNodes: 'xmi:XMI/xmi:Extension/elements') first childNodes!

getMachineStateNodes
	"Get from XMI diagrams all elements that are UML States answer IXMLDOM elements"
	| diagramElements |

	diagramElements :=  self selectNodes: '//packagedElement'.
	^diagramElements select: [:each | ((each getAttribute: 'xmi:type') = 'uml:StateMachine') and: [(each getAttribute: 'name') notNil] ]!

getRelationElementWithId: xmiID
	"Get the XMI relation element with xmi id equal to <xmiID>"

	^self getDiagramConnectors detect: [:each | (each getAttribute: 'xmi:idref') = xmiID] ifNone: [nil]!

getSourceAndTargetElementOf: relationID
	"Answer anArray with the XMLDOMElement of the classes that are source and target in the relation with id <relationID>"
	| relationElement |

	relationElement := self getRelationElementWithId: relationID.

	^Array 
		with: (self getClassElementWithId: ((relationElement selectSingleNode: 'source') getAttribute: 'xmi:idref'))
		with: (self getClassElementWithId: ((relationElement selectSingleNode: 'target') getAttribute: 'xmi:idref'))!

getStateElementWithId: xmiID
	"Get from all elements in the XMI model the element with id = <xmiID>"

	^self getStateElementWithId: xmiID ifNone: []!

getStateElementWithId: xmiID ifNone: aBlock
	"Get from all elements in the XMI model the element with id = <xmiID>"

	^self getStateNodes detect: [:each | (each getAttribute: 'xmi:idref') = xmiID] ifNone: aBlock!

getStateNodes
	"Get from XMI diagrams all elements that are UML States answer IXMLDOM elements"
	| diagramElements |

	diagramElements := self getDiagramElements.
	^diagramElements select: [:each | ((each getAttribute: 'xmi:type') = 'uml:State') and: [(each getAttribute: 'name') notNil] ]!

getStatesMachineNamesAndXmiID
	"Answer a collection of Array where Array first is the class name - Array second is the <xmi> id of the UML State. 
{ ('Project' 'ERTHY25') '(Person' 'ERTHY14') ('Team' 'ERTHY10') } "
	| stateNodes statesCollection |

	statesCollection := OrderedCollection new.
	stateNodes := self getMachineStateNodes.
	stateNodes do: [:each | statesCollection add: (Array with: ((each getAttribute: 'name') copyWithoutAll: ' ') with: (each getAttribute: 'xmi:id') with: each) ].

	^statesCollection!

getStatesNamesAndXmiID
	"Answer a collection of Array where Array first is the class name - Array second is the <xmi> id of the UML State. 
{ ('Project' 'ERTHY25') '(Person' 'ERTHY14') ('Team' 'ERTHY10') } "
	| stateNodes statesCollection |

	statesCollection := OrderedCollection new.
	stateNodes := self getStateNodes.
	stateNodes do: [:each | statesCollection add: (Array with: ((each getAttribute: 'name') copyWithoutAll: ' ') with: (each getAttribute: 'xmi:idref') with: each) ].

	^statesCollection!

getTransitionNodesAndXmiID
	"Answer a collection of Array where Array first is the class name - Array second is the <xmi> id of the UML State. 
{ ('Project' 'ERTHY25') '(Person' 'ERTHY14') ('Team' 'ERTHY10') } "
	| stateNodes statesCollection |

	statesCollection := OrderedCollection new.
	stateNodes := self getTransitionNodes.
	stateNodes do: [:each | statesCollection add: (Array with: ((each getAttribute: 'name') copyWithoutAll: ' ') with: (each getAttribute: 'xmi:id') with: each) ].

	^statesCollection!

isAssociationClassXmiID: xmiID

	^(((self getClassElementWithId: xmiID ifNone: [^false]) selectSingleNode: 'properties') getAttribute: 'nType') = '17'!

isAssociationRelationXmiID: xmiID

	^(((self getRelationElementWithId: xmiID) selectSingleNode: 'extendedProperties') getAttribute: 'associationclass') notNil!

isHierarchyRelation: anIXMLDOMElement 

	^((anIXMLDOMElement selectSingleNode: 'properties') getAttribute: 'ea_type') = 'Generalization'
! !
!XmiEnterpriseArchitect categoriesFor: #createHierarchyRelationFor:!public! !
!XmiEnterpriseArchitect categoriesFor: #createRelationsOfClassAssociations!attributes!public!uml-class creation! !
!XmiEnterpriseArchitect categoriesFor: #createSourceSideMultiplicityFor:for:!public!uml-class creation!xpath! !
!XmiEnterpriseArchitect categoriesFor: #createTargetSideMultiplicityFor:for:!public!uml-class creation!xpath! !
!XmiEnterpriseArchitect categoriesFor: #generateUMLClasses!public!uml-class creation! !
!XmiEnterpriseArchitect categoriesFor: #getClassElementWithId:ifNone:!public! !
!XmiEnterpriseArchitect categoriesFor: #getClassesNamesAndXmiID!getting classes!public! !
!XmiEnterpriseArchitect categoriesFor: #getClassesNamesIDandRelationsID!getting classes!public!uml-class creation!xpath! !
!XmiEnterpriseArchitect categoriesFor: #getDiagramConnectors!getting connectors!public!xpath! !
!XmiEnterpriseArchitect categoriesFor: #getDiagramElements!getting classes!public!xpath! !
!XmiEnterpriseArchitect categoriesFor: #getMachineStateNodes!getting classes!getting states!public!xpath! !
!XmiEnterpriseArchitect categoriesFor: #getRelationElementWithId:!getting connectors!public! !
!XmiEnterpriseArchitect categoriesFor: #getSourceAndTargetElementOf:!getting connectors!public!xpath! !
!XmiEnterpriseArchitect categoriesFor: #getStateElementWithId:!getting states!public! !
!XmiEnterpriseArchitect categoriesFor: #getStateElementWithId:ifNone:!getting states!public! !
!XmiEnterpriseArchitect categoriesFor: #getStateNodes!getting classes!getting states!public!xpath! !
!XmiEnterpriseArchitect categoriesFor: #getStatesMachineNamesAndXmiID!getting states!public! !
!XmiEnterpriseArchitect categoriesFor: #getStatesNamesAndXmiID!getting states!public! !
!XmiEnterpriseArchitect categoriesFor: #getTransitionNodesAndXmiID!getting states!public! !
!XmiEnterpriseArchitect categoriesFor: #isAssociationClassXmiID:!public!uml-class creation!xpath! !
!XmiEnterpriseArchitect categoriesFor: #isAssociationRelationXmiID:!getting connectors!public!uml-class creation!xpath! !
!XmiEnterpriseArchitect categoriesFor: #isHierarchyRelation:!public!xpath! !

!XmiEnterpriseArchitect class methodsFor!

displayName

	^'Enterprise Architect 7.0'! !
!XmiEnterpriseArchitect class categoriesFor: #displayName!public! !

