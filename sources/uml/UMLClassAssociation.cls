"Filed out from Dolphin Smalltalk 7"!

UMLClass subclass: #UMLClassAssociation
	instanceVariableNames: 'associationClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLClassAssociation guid: (GUID fromString: '{f867f540-d7e8-47bc-a927-6f4e949f7c49}')!
UMLClassAssociation comment: 'This class represent the Association Classes in a UML Model.

This class -UMLClassAssociation- represent the class itself while UMLAssociationClass represent the association.

associationClass - is an instance of UMLAssociationClass relation.

The receiver is heavely related with UMLAssociationClass.

'!
!UMLClassAssociation categoriesForClass!Unclassified! !
!UMLClassAssociation methodsFor!

associationClass
	^associationClass!

associationClass: anObject
	associationClass := anObject!

generateAttributesForRelations
	" Generate the receiver's attributes for each relations "

	"we generate the attributes (instances variables) for each relation in that is not an association"
	(relations reject:[:each | each isAssociationClass]) do: [:each | self generateAttributeForRelation: each].
	"super generateAttributesForRelations." "we generate the attributes (instances variables) for each relation in the regular way"

	"self addRelation: associationClass."

	"we generate the attributes for the classes that the receiver connect "
	self getParentClasses do: [:each | | instVariable |
		instVariable := UMLAssociationClassAttribute new.
		instVariable name: (each name first asLowercase asString, each name allButFirst) asSymbol;
			originalType: each name;
			type: each;
			relation: associationClass;
			umlClass: self;
			yourself.
		self addAttribute: instVariable.].!

getAllRelationsNames
	^super getAllRelationsNames 
		, (OrderedCollection with: associationClass sourceClassName with: associationClass targetClassName)!

getInstVarNameForClass: anUMLClass 

	(associationClass targetClass == anUMLClass) ifTrue: [^anUMLClass nameForRelation asSymbol].
	(associationClass sourceClass == anUMLClass) ifTrue: [^anUMLClass nameForRelation asSymbol].

	(associationClass targetClass allSubclasses includes: anUMLClass) ifTrue: [^associationClass targetClass nameForRelation asSymbol].

	(associationClass sourceClass allSubclasses includes: anUMLClass) ifTrue: [^associationClass sourceClass nameForRelation asSymbol].

	^nil!

getParentClasses
	"The receiver answer <anOrderedCollection> with the two classes that connect "

	^OrderedCollection with: associationClass sourceClass with: associationClass targetClass!

isClassAssociation
	^true!

relationFor: anUMLClass ifNone: aBlock
	| detectedRelation |

	detectedRelation := relations select: [:each | ((each relatedClassTo: self) == anUMLClass) or:[(anUMLClass allSuperclasses 
						anySatisfy: [:eachSuperClass | (each relatedClassTo: self) == eachSuperClass  ]) ]].

	detectedRelation isEmpty ifFalse: [^detectedRelation first].

	^anUMLClass relationFor: self ifNone: aBlock.
	! !
!UMLClassAssociation categoriesFor: #associationClass!accessing!private! !
!UMLClassAssociation categoriesFor: #associationClass:!accessing!private! !
!UMLClassAssociation categoriesFor: #generateAttributesForRelations!attributes!public!relations!xmi-relations! !
!UMLClassAssociation categoriesFor: #getAllRelationsNames!public! !
!UMLClassAssociation categoriesFor: #getInstVarNameForClass:!public! !
!UMLClassAssociation categoriesFor: #getParentClasses!public! !
!UMLClassAssociation categoriesFor: #isClassAssociation!accessing!public! !
!UMLClassAssociation categoriesFor: #relationFor:ifNone:!public! !

