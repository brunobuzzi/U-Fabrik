"Filed out from Dolphin Smalltalk 7"!

XmiReader subclass: #XmiUModel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
XmiUModel guid: (GUID fromString: '{36164814-6663-479a-8582-2a8ed83dee5c}')!
XmiUModel comment: ''!
!XmiUModel categoriesForClass!Unclassified! !
!XmiUModel methodsFor!

createHierarchyRelationFor: anIXMLDOMElement 
	"The receiver link to UML classes with a inheritance relation, description is obtained from <anIXMLDOMElement>"
	| parentClass childClass superclassElement |

	childClass := umlClasses at: (anIXMLDOMElement getAttribute: 'name').
	superclassElement := self getClassElementWithId: ((anIXMLDOMElement selectSingleNode: 'generalization') getAttribute: 'general').
	parentClass := umlClasses at:  (superclassElement getAttribute: 'name').

	childClass umlSuperclass: parentClass.

	childClass instanceClass umlSuperclass: parentClass instanceClass.!

createSourceSideMultiplicityForAssociationClass: relationElement for: anUMLRelation 
	"Creates the multiplicity for the source part"
	| sideNode |

	sideNode := (relationElement selectNodes: 'ownedEnd/lowerValue') first.

	^self createSourceSideMultiplicityForAssociationClass: relationElement for: anUMLRelation sideNode: sideNode!

createTargetSideMultiplicityForAssociationClass: relationElement for: anUMLRelation 
	"Creates the multiplicity for the target part"
	| sideNode |

	sideNode := (relationElement selectNodes: 'ownedEnd/lowerValue') last.

	^self createSourceSideMultiplicityForAssociationClass: relationElement for: anUMLRelation sideNode: sideNode!

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

getAttributeElementWithID: xmiID

	^self getAttributesElements detect: [:each | (each getAttribute: 'xmi:id') = xmiID] ifNone: [nil]!

getAttributesElements

	^self getClassesNodes inject: OrderedCollection new into: [:all :each | 
		all addAll: (each selectNodes: 'ownedAttribute'). 
		all]!

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
			classesCollection add: (Array with: (eachAssClass getAttribute: 'name') with: (eachAssClass getAttribute: 'xmi:id'))].

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
				do: [:eachAttributeAssociation | | assocID |
					assocID  := eachAttributeAssociation getAttribute: 'xmi:id'.
					links add: (Array with: assocID
								with: (((self getRelationElementWithId: assocID) selectNodes: 'memberEnd') first getAttribute: 'xmi:idref')
								with: (((self getRelationElementWithId: assocID) selectNodes: 'memberEnd') last getAttribute: 'xmi:idref'))].
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

	^(self selectNodes: 'xmi:XMI/uml:Package/ownedMember')!

getRelationElementWithId: xmiID 
	"Get the XMI relation element with xmi id equal to <xmiID>"

	^self getDiagramConnectors detect: [:each | (each getAttribute: 'xmi:id') = xmiID] ifNone: [self getClassesNodes detect: [:each | (each selectSingleNode: 'generalization') notNil and: [((each selectSingleNode: 'generalization') getAttribute: 'xmi:id') = xmiID] ] ifNone: [nil] ]!

getSourceAndTargetElementOf: relationID
	"Answer anArray with the XMLDOMElement of the classes that are source and target in the relation with id <relationID>"
	| relationElement sourceAttributeID targetAttributeID sourceClass targetClass |

	relationElement := self getRelationElementWithId: relationID.
	((relationElement selectNodes: 'ownedEnd') size < 2) ifTrue: [^self getSourceAndTargetNavigableElementOf: relationElement].
	sourceAttributeID := (relationElement selectNodes: 'ownedEnd') first getAttribute: 'type'.
	targetAttributeID := (relationElement selectNodes: 'ownedEnd') last getAttribute: 'type'.

	sourceClass := sourceAttributeID ifNil: [nil] ifNotNil: [:value | value].
	targetClass := targetAttributeID ifNil: [nil] ifNotNil: [:value | value].

	^Array 
		with: (self getClassElementWithId: sourceClass)
		with: (self getClassElementWithId: targetClass)!

getSourceAndTargetNavigableElementOf: relationElement
	"Answer anArray with the XMLDOMElement of the classes that are source and target in the relation with id <relationID>"
	| sourceAttributeID targetAttributeID |

	sourceAttributeID := (relationElement selectNodes: 'ownedEnd') first getAttribute: 'type'.

	targetAttributeID := ((relationElement selectNodes: 'memberEnd') detect: [:each | (self getAttributeElementWithID: (each getAttribute: 'xmi:idref')) notNil]) 
		getAttribute: 'xmi:idref'.

	targetAttributeID := (self getAttributeElementWithID: targetAttributeID) getAttribute: 'type'.

	^Array 
		with: (self getClassElementWithId: sourceAttributeID)
		with: (self getClassElementWithId: targetAttributeID)!

getTypeFromElement: anIXMLDOMElement 
	| typeID typeElement |

	typeID := anIXMLDOMElement getAttribute: 'type'.
	typeElement := ((self selectNodes: 'xmi:XMI/uml:Package/ownedMember') select: [:each | #('uml:DataType' 'uml:PrimitiveType') includes: (each getAttribute: 'xmi:type')]) detect: [:each | (each getAttribute: 'xmi:id') = typeID ] ifNone: [^'none'].

	^typeElement getAttribute: 'name'


	!

isAssociationClassXmiID: xmiID

	^((self getClassElementWithId: xmiID ifNone: [^false]) getAttribute: 'xmi:type') = 'uml:AssociationClass'!

isAssociationRelationXmiID: xmiID

	^((self getRelationElementWithId: xmiID) getAttribute: 'xmi:type') = 'uml:AssociationClass'!

isHierarchyRelation: anIXMLDOMElement 

	^(anIXMLDOMElement selectSingleNode: 'generalization') notNil!

isTwoEndRelations: relationElement

	^(relationElement selectNodes: 'ownedEnd') size = 2! !
!XmiUModel categoriesFor: #createHierarchyRelationFor:!public! !
!XmiUModel categoriesFor: #createSourceSideMultiplicityForAssociationClass:for:!public! !
!XmiUModel categoriesFor: #createTargetSideMultiplicityForAssociationClass:for:!public! !
!XmiUModel categoriesFor: #generateUMLClasses!public!uml-class creation! !
!XmiUModel categoriesFor: #getAttributeElementWithID:!public! !
!XmiUModel categoriesFor: #getAttributesElements!public! !
!XmiUModel categoriesFor: #getClassElementWithId:ifNone:!public! !
!XmiUModel categoriesFor: #getClassesNamesAndXmiID!public! !
!XmiUModel categoriesFor: #getClassesNamesIDandRelationsID!public! !
!XmiUModel categoriesFor: #getClassNodeOf:!public! !
!XmiUModel categoriesFor: #getDiagramConnectors!public! !
!XmiUModel categoriesFor: #getDiagramElements!public! !
!XmiUModel categoriesFor: #getRelationElementWithId:!public! !
!XmiUModel categoriesFor: #getSourceAndTargetElementOf:!public! !
!XmiUModel categoriesFor: #getSourceAndTargetNavigableElementOf:!public! !
!XmiUModel categoriesFor: #getTypeFromElement:!public! !
!XmiUModel categoriesFor: #isAssociationClassXmiID:!public! !
!XmiUModel categoriesFor: #isAssociationRelationXmiID:!public! !
!XmiUModel categoriesFor: #isHierarchyRelation:!public! !
!XmiUModel categoriesFor: #isTwoEndRelations:!public! !

!XmiUModel class methodsFor!

displayName

	^'UModel version 2010 rel. 3'! !
!XmiUModel class categoriesFor: #displayName!public! !

