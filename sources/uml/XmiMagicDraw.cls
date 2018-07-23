"Filed out from Dolphin Smalltalk 7"!

XmiReader subclass: #XmiMagicDraw
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
XmiMagicDraw guid: (GUID fromString: '{0f584045-2396-42f1-a2b9-f2f34948fe60}')!
XmiMagicDraw comment: ''!
!XmiMagicDraw categoriesForClass!Unclassified! !
!XmiMagicDraw methodsFor!

createHierarchyRelationFor: anIXMLDOMElement 
	"The receiver link to UML classes with a inheritance relation, description is obtained from <anIXMLDOMElement>"
	| parentClass childClass superclassElement |

	childClass := umlClasses at: (anIXMLDOMElement getAttribute: 'name').
	superclassElement := self getClassElementWithId: ((anIXMLDOMElement selectSingleNode: 'generalization') getAttribute: 'general').
	parentClass := umlClasses at:  (superclassElement getAttribute: 'name').

	childClass umlSuperclass: parentClass.

	childClass instanceClass umlSuperclass: parentClass instanceClass.!

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

	(self getClassesNodes select: [:each | (each getAttribute: 'name') notNil]) do: [:each | classesCollection add: (Array with: ((each getAttribute: 'name') copyWithoutAll: ' ') with: (each getAttribute: 'xmi:id')) ].

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
			((each selectNodes: 'ownedAttribute') select: [:eachAtr | (eachAtr getAttribute: 'association') notNil and: [(self isAssociationClassXmiID: (eachAtr getAttribute: 'association')) not] ]) do: [:eachAttributeAssociation | | assocID |
				assocID  := eachAttributeAssociation getAttribute: 'association'.
				links add: (Array with: assocID
							with: (((self getRelationElementWithId: assocID) selectNodes: 'memberEnd') first getAttribute: 'type')
							with: (((self getRelationElementWithId: assocID) selectNodes: 'memberEnd') last getAttribute: 'type'))].
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

	^(self selectNodes: 'xmi:XMI/uml:Model/packagedElement')!

getRelationElementWithId: xmiID 
	"Get the XMI relation element with xmi id equal to <xmiID>"

	^self getDiagramConnectors detect: [:each | (each getAttribute: 'xmi:id') = xmiID] ifNone: [self getClassesNodes detect: [:each | (each selectSingleNode: 'generalization') notNil and: [((each selectSingleNode: 'generalization') getAttribute: 'xmi:id') = xmiID] ] ifNone: [nil] ]!

getSourceAndTargetElementOf: relationID
	"Answer anArray with the XMLDOMElement of the classes that are source and target in the relation with id <relationID>"
	| relationElement sourceAttributeID targetAttributeID sourceClass targetClass sourceNode targetNode |

	relationElement := self getRelationElementWithId: relationID.
	sourceAttributeID := (relationElement selectNodes: 'memberEnd') first getAttribute: 'xmi:idref'.
	targetAttributeID := (relationElement selectNodes: 'memberEnd') last getAttribute: 'xmi:idref'.
	sourceNode := self getAttributeElementWithID: sourceAttributeID.
	targetNode := self getAttributeElementWithID: targetAttributeID.
	(sourceNode isNil and:[targetNode isNil]) ifTrue: [^false].

	sourceClass := sourceNode ifNil: [targetNode getAttribute: 'type'] ifNotNil: [:value | value parentNode getAttribute: 'xmi:id'].
	targetClass := targetNode ifNil: [sourceNode getAttribute: 'type'] ifNotNil: [:value | value parentNode getAttribute: 'xmi:id'].

	^Array 
		with: (self getClassElementWithId: sourceClass)
		with: (self getClassElementWithId: targetClass)!

getTypeFromElement: anIXMLDOMElement 
	| typeID typeElement |

	typeID := anIXMLDOMElement getAttribute: 'type'.
	typeElement := (self selectNodes: 'xmi:XMI/uml:Model/packagedElement') detect: [:each | typeID = (each getAttribute: 'xmi:id')] ifNone: [^'none'].
	^typeElement getAttribute: 'name'


	!

isAssociationClassXmiID: xmiID

	^((self getClassElementWithId: xmiID ifNone: [^false]) getAttribute: 'xmi:type') = 'uml:AssociationClass'!

isAssociationRelationXmiID: xmiID

	^((self getRelationElementWithId: xmiID) getAttribute: 'xmi:type') = 'uml:AssociationClass'!

isHierarchyRelation: anIXMLDOMElement 

	^(anIXMLDOMElement selectSingleNode: 'generalization') notNil! !
!XmiMagicDraw categoriesFor: #createHierarchyRelationFor:!public! !
!XmiMagicDraw categoriesFor: #generateUMLClasses!public!uml-class creation! !
!XmiMagicDraw categoriesFor: #getAttributeElementWithID:!public! !
!XmiMagicDraw categoriesFor: #getAttributesElements!public! !
!XmiMagicDraw categoriesFor: #getClassElementWithId:ifNone:!public! !
!XmiMagicDraw categoriesFor: #getClassesNamesAndXmiID!public! !
!XmiMagicDraw categoriesFor: #getClassesNamesIDandRelationsID!public! !
!XmiMagicDraw categoriesFor: #getClassNodeOf:!getting classes!public! !
!XmiMagicDraw categoriesFor: #getDiagramConnectors!public! !
!XmiMagicDraw categoriesFor: #getDiagramElements!public! !
!XmiMagicDraw categoriesFor: #getRelationElementWithId:!public! !
!XmiMagicDraw categoriesFor: #getSourceAndTargetElementOf:!public! !
!XmiMagicDraw categoriesFor: #getTypeFromElement:!public! !
!XmiMagicDraw categoriesFor: #isAssociationClassXmiID:!public! !
!XmiMagicDraw categoriesFor: #isAssociationRelationXmiID:!public! !
!XmiMagicDraw categoriesFor: #isHierarchyRelation:!public! !

!XmiMagicDraw class methodsFor!

displayName

	^'MagicDraw 16.8'! !
!XmiMagicDraw class categoriesFor: #displayName!public! !

