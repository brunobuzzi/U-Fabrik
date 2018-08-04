"Filed out from Dolphin Smalltalk 7"!

XmiReader subclass: #XmiVisualParadigm
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
XmiVisualParadigm guid: (GUID fromString: '{b357135e-3fbe-45e1-a58d-c085385f94e9}')!
XmiVisualParadigm comment: ''!
!XmiVisualParadigm categoriesForClass!Unclassified! !
!XmiVisualParadigm methodsFor!

createHierarchyRelationFor: anIXMLDOMElement 
	"The receiver link to UML classes with a inheritance relation, description is obtained from <anIXMLDOMElement>"
	| parentClass childClass superclassElement |

	childClass := umlClasses at: (anIXMLDOMElement getAttribute: 'name').
	superclassElement := self getClassElementWithId: ((anIXMLDOMElement selectSingleNode: 'generalization') getAttribute: 'general').
	parentClass := umlClasses at:  (superclassElement getAttribute: 'name').

	childClass umlSuperclass: parentClass.

	childClass instanceClass umlSuperclass: parentClass instanceClass.!

createSourceSideMultiplicityFor: relationElement for: anUMLRelation 
	"Creates the multiplicity for the source part"
	| ownedEndNode isNavigable |

	ownedEndNode := (relationElement selectNodes: 'ownedEnd') first.
	isNavigable := (ownedEndNode getAttribute: 'isNavigable') = 'true'.

	^self createSideMultiplicityFor: relationElement for: anUMLRelation sideNode: ownedEndNode isNavigable: isNavigable!

createTargetSideMultiplicityFor: relationElement for: anUMLRelation 
	"Creates the multiplicity for the target part"
	| ownedEndNode isNavigable |

	ownedEndNode := (relationElement selectNodes: 'ownedEnd') last.
	isNavigable := (ownedEndNode getAttribute: 'isNavigable') = 'true'.

	^self createSideMultiplicityFor: relationElement for: anUMLRelation sideNode: ownedEndNode isNavigable: isNavigable!

extractMultiplicityValueFrom: ownedEndElement
	"The receiver extract the multiplicity value from <ownedEndElement>"
	| multiplicityString selectedNodes |

	multiplicityString := ''.

	selectedNodes := ownedEndElement selectNodes: 'lowerValue'.
	selectedNodes isEmpty ifFalse: [multiplicityString := multiplicityString, (selectedNodes first getAttribute: 'value')].

	selectedNodes := ownedEndElement selectNodes: 'upperValue'.
	selectedNodes isEmpty ifFalse: [multiplicityString := multiplicityString, '..' ,(selectedNodes first getAttribute: 'value')].

	^multiplicityString!

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
							ifFalse: [(self isRelationComplete: (relationElement getAttribute: 'xmi:id' ))
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

	^self getDiagramElements detect: [:each | (each getAttribute: 'xmi:id') = xmiID] ifNone: aBlock!

getClassesNamesAndXmiID
	"Answer a collection of Array where Array first is the class name - Array second is the <xmi> id of the class . 
{ ('Project' 'ERTHY25') '(Person' 'ERTHY14') ('Team' 'ERTHY10') } "
	| classesCollection |

	classesCollection := OrderedCollection new.

	self getClassesNodes do: [:each | classesCollection add: (Array with: ((each getAttribute: 'name') copyWithoutAll: ' ') with: (each getAttribute: 'xmi:id')) ].

	(self getDiagramElements select: [:eachElement | (eachElement getAttribute: 'xmi:type') = 'uml:AssociationClass']) do: [:eachAssClass | 
			classesCollection add: (Array with: ((eachAssClass getAttribute: 'name') copyWithoutAll: ' ') with: (eachAssClass getAttribute: 'xmi:id') with: OrderedCollection new)].

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
			atrID := each getAttribute: 'xmi:id'. "we set the xmi id of the class"
			links := OrderedCollection new.
			((self getDiagramElements select: [:eachElement | (eachElement getAttribute: 'xmi:type') = 'uml:Association']) select: [:eachElement | (((eachElement selectNodes: 'ownedEnd') first getAttribute: 'type') = atrID) or: [(((eachElement selectNodes: 'ownedEnd') last getAttribute: 'type') = atrID)] ])  
			do: [:eachAssoc | 
				links add: (Array with: (eachAssoc getAttribute: 'xmi:id') 
							with: ((eachAssoc selectNodes: 'ownedEnd') first getAttribute: 'type')
							with: ((eachAssoc selectNodes: 'ownedEnd') last getAttribute: 'type'))].
			classesCollection add: (Array with: attrName with: atrID with: links).
			(each selectSingleNode: 'generalization') ifNotNil: [:generalizationNode | 
				links add: (Array with: (generalizationNode getAttribute: 'xmi:id') with: (generalizationNode getAttribute: 'general') with: atrID)].].

		(self getDiagramElements select: [:eachElement | (eachElement getAttribute: 'xmi:type') = 'uml:AssociationClass']) do: [:eachAssClass | 
			classesCollection add: (Array with: (eachAssClass getAttribute: 'name') with: (eachAssClass getAttribute: 'xmi:id') with: OrderedCollection new)].

	^classesCollection!

getClassNodeOf: anUMLClass
	"Answer an XMI element that match with <anUMLClass>"

	anUMLClass isClassAssociation 
	ifTrue: [^self getDiagramElements detect: [:eachElement | ((eachElement getAttribute: 'xmi:type') = 'uml:AssociationClass') and: [(eachElement getAttribute: 'name') = anUMLClass name]] ifNone: [nil]].

	^self getClassesNodes detect: [:each | ((each getAttribute: 'name') copyWithoutAll: ' ') = anUMLClass name] ifNone: [nil]!

getDiagramConnectors
	| connectors |

	connectors := self getDiagramElements.
	^connectors select: [:each | #('uml:Association') includes: (each getAttribute: 'xmi:type')]!

getDiagramElements
	"Answer a collection of XMI elements of the file "

	^self selectNodes: 'xmi:XMI/uml:Model//ownedMember'!

getMachineStateNodes
	"Get from XMI diagrams all elements that are UML States answer IXMLDOM elements"
	| diagramElements |

	diagramElements :=  self selectNodes: '//ownedMember'.
	^diagramElements select: [:each | (each getAttribute: 'xmi:type') = 'uml:StateMachine']!

getRelationElementWithId: xmiID
	"Get the XMI relation element with xmi id equal to <xmiID>"

	^self getDiagramConnectors detect: [:each | (each getAttribute: 'xmi:id') = xmiID] ifNone: [self getClassesNodes detect: [:each | (each selectSingleNode: 'generalization') notNil and: [((each selectSingleNode: 'generalization') getAttribute: 'xmi:id') = xmiID] ] ifNone: [nil] ]!

getSourceAndTargetElementOf: relationID
	"Answer anArray with the XMLDOMElement of the classes that are source and target in the relation with id <relationID>"
	| relationElement |

	relationElement := self getRelationElementWithId: relationID.
	
	^Array 
		with: (self getClassElementWithId: ((relationElement selectNodes: 'ownedEnd') first getAttribute: 'type'))
		with: (self getClassElementWithId: ((relationElement selectNodes: 'ownedEnd') last getAttribute: 'type'))!

getStateElementWithId: xmiID
	"Get from all elements in the XMI model the element with id = <xmiID>"

	^self getStateElementWithId: xmiID ifNone: []!

getStateElementWithId: xmiID ifNone: aBlock
	"Get from all elements in the XMI model the element with id = <xmiID>"

	^self getStateNodes detect: [:each | (each getAttribute: 'xmi:idref') = xmiID] ifNone: aBlock!

getStateMachineNames
	| diagramElements |

	diagramElements := self selectNodes: '//uml:Diagram'.

	^diagramElements select: [:each | (each getAttribute: 'diagramType') = 'StateDiagram']!

getStateNodes
	"Get from XMI diagrams all elements that are UML States answer IXMLDOM elements"

	^self selectNodes: 'xmi:XMI/uml:Model//ownedMember/region/subvertex'!

getStatesMachineNamesAndXmiID
	"Answer a collection of Array where Array first is the class name - Array second is the <xmi> id of the UML State. 
{ ('Project' 'ERTHY25') '(Person' 'ERTHY14') ('Team' 'ERTHY10') } "
	| stateNodes stateMachineNames statesCollection |

	statesCollection := OrderedCollection new.
	stateNodes := self getMachineStateNodes.
	stateMachineNames := self getStateMachineNames.

	stateNodes do: [:each | statesCollection add: (Array with: ((each getAttribute: 'name') copyWithoutAll: ' ') with: (each getAttribute: 'xmi:id') with: each) ].

	^statesCollection!

getStatesNamesAndXmiID
	"Answer a collection of Array where Array first is the class name - Array second is the <xmi> id of the UML State. 
{ ('Project' 'ERTHY25') '(Person' 'ERTHY14') ('Team' 'ERTHY10') } "
	| stateNodes statesCollection |

	statesCollection := OrderedCollection new.
	stateNodes := self getStateNodes.
	stateNodes do: [:each | statesCollection add: (Array with: (each getAttribute: 'name') with: (each getAttribute: 'xmi:id') with: each) ].

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

	^((self getClassElementWithId: xmiID ifNone: [^false]) getAttribute: 'xmi:type') = 'uml:AssociationClass'!

isAssociationRelationXmiID: xmiID 

	^((self getRelationElementWithId: xmiID) getAttribute: 'xmi:type') = 'uml:AssociationClass'!

isHierarchyRelation: anIXMLDOMElement 

	^(anIXMLDOMElement selectSingleNode: 'generalization') notNil! !
!XmiVisualParadigm categoriesFor: #createHierarchyRelationFor:!public! !
!XmiVisualParadigm categoriesFor: #createSourceSideMultiplicityFor:for:!public! !
!XmiVisualParadigm categoriesFor: #createTargetSideMultiplicityFor:for:!public! !
!XmiVisualParadigm categoriesFor: #extractMultiplicityValueFrom:!public! !
!XmiVisualParadigm categoriesFor: #generateUMLClasses!public!uml-class creation! !
!XmiVisualParadigm categoriesFor: #getClassElementWithId:ifNone:!public! !
!XmiVisualParadigm categoriesFor: #getClassesNamesAndXmiID!getting classes!public! !
!XmiVisualParadigm categoriesFor: #getClassesNamesIDandRelationsID!getting classes!public!uml-class creation!xpath! !
!XmiVisualParadigm categoriesFor: #getClassNodeOf:!getting classes!public! !
!XmiVisualParadigm categoriesFor: #getDiagramConnectors!public! !
!XmiVisualParadigm categoriesFor: #getDiagramElements!getting classes!public!xpath! !
!XmiVisualParadigm categoriesFor: #getMachineStateNodes!getting classes!getting states!public!xpath! !
!XmiVisualParadigm categoriesFor: #getRelationElementWithId:!public! !
!XmiVisualParadigm categoriesFor: #getSourceAndTargetElementOf:!getting connectors!public!xpath! !
!XmiVisualParadigm categoriesFor: #getStateElementWithId:!getting states!public! !
!XmiVisualParadigm categoriesFor: #getStateElementWithId:ifNone:!getting states!public! !
!XmiVisualParadigm categoriesFor: #getStateMachineNames!getting states!public! !
!XmiVisualParadigm categoriesFor: #getStateNodes!getting classes!getting states!public!xpath! !
!XmiVisualParadigm categoriesFor: #getStatesMachineNamesAndXmiID!getting states!public! !
!XmiVisualParadigm categoriesFor: #getStatesNamesAndXmiID!getting states!public! !
!XmiVisualParadigm categoriesFor: #getTransitionNodesAndXmiID!getting states!public! !
!XmiVisualParadigm categoriesFor: #isAssociationClassXmiID:!public!uml-class creation!xpath! !
!XmiVisualParadigm categoriesFor: #isAssociationRelationXmiID:!public! !
!XmiVisualParadigm categoriesFor: #isHierarchyRelation:!public! !

!XmiVisualParadigm class methodsFor!

displayName

	^'Visual Paradigm 7.2'! !
!XmiVisualParadigm class categoriesFor: #displayName!public! !

