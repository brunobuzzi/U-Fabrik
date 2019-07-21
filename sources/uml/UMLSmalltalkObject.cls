"Filed out from Dolphin Smalltalk 7"!

Object subclass: #UMLSmalltalkObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLSmalltalkObject guid: (GUID fromString: '{945046c6-1c4b-4d40-a20a-4996cd3adc12}')!
UMLSmalltalkObject comment: ''!
!UMLSmalltalkObject categoriesForClass!Unclassified! !
!UMLSmalltalkObject methodsFor!

add: anObject

	anObject instVarAt: (anObject class indexOfInstVar: self class name asUMLInstVarName asString) put: self.
	^(self instVarAt: (self class indexOfInstVar: anObject class name asUMLInstVarName asString)) add: anObject!

basicAdd: anObject

	^(self instVarNamed: anObject class name asUMLInstVarName) add: anObject!

basicRemove: anObject

!

categoryCollections

	self subclassResponsibility!

collectionAspects

	^self collectionVariables!

collectionObjectClasses

	^OrderedCollection new
		add: OrderedCollection;
		add: SortedCollection;
		add: Array;
		yourself.!

collectionVariables
	| index collectionVariables |

	collectionVariables := Dictionary new.
	self class instVarNames do: [:each | | value |
		index := self class indexOfInstVar: each.
		value := self instVarAt: index.
		collectionVariables at: each put: value].

	^collectionVariables select: [:each | self collectionObjectClasses includes: each class]!

existsInDatabase
	^false!

mutualAdd: anObject

	(anObject instVarNamed: self class name asUMLInstVarName asString) add: self.
	^(self instVarNamed: anObject class name asUMLInstVarName asString) add: anObject!

mutualRemove: anObject

!

objectAspects
	| index objectAspects |

	objectAspects := Dictionary new.
	self class instVarNames do: [:each | | value |
		index := self class indexOfInstVar: each.
		value := self instVarAt: index.
		objectAspects at: each put: value].

	^objectAspects reject: [:each | (self collectionObjectClasses includes: each class) or: [self simpleObjectClasses includes: each class ] ]!

remove: anObject

!

removeFromGlobalObjects
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method removes the receiver object from the first cache.
	U-Fabrik <primitive: 402>"
	| session |

	session := self reStoreSession.
	session remove: self.
	session checkpoint.
	^self!

reStoreSession

	^self class server sessionFor: self!

simpleAspects
	| index simpleAspects |

	simpleAspects := Dictionary new.
	self class instVarNames do: [:each | | value |
		index := self class indexOfInstVar: each.
		value := self instVarAt: index.
		simpleAspects at: each put: value].

	^simpleAspects select: [:each | self simpleObjectClasses includes: each class]!

simpleObjectClasses

	^##(OrderedCollection new
		add: Date;
		add: Time;
		add: DateAndTime;
		add: Number;
		add: String;
		add: Float;
		add: Integer;
		add: LargeInteger;
		add: SmallInteger;
		add: ScaledDecimal;
		yourself).!

storeAsGlobalObject
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method adds the receiver object from the first cache.
	U-Fabrik <primitive: 401>"
"	| session |

	session := self class newReStoreSession.
	session add: self.
	session checkpoint.
	^self"

"NOT USED, use: storeAsGlobalObjectIn: "!

storeAsGlobalObjectIn: aBBReStoreSession
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method adds the receiver object from the first cache.
	U-Fabrik <primitive: 401>"

	aBBReStoreSession add: self.
	aBBReStoreSession checkpoint.
	^self! !
!UMLSmalltalkObject categoriesFor: #add:!public! !
!UMLSmalltalkObject categoriesFor: #basicAdd:!public! !
!UMLSmalltalkObject categoriesFor: #basicRemove:!public! !
!UMLSmalltalkObject categoriesFor: #categoryCollections!public! !
!UMLSmalltalkObject categoriesFor: #collectionAspects!public! !
!UMLSmalltalkObject categoriesFor: #collectionObjectClasses!public! !
!UMLSmalltalkObject categoriesFor: #collectionVariables!public! !
!UMLSmalltalkObject categoriesFor: #existsInDatabase!public! !
!UMLSmalltalkObject categoriesFor: #mutualAdd:!public! !
!UMLSmalltalkObject categoriesFor: #mutualRemove:!public! !
!UMLSmalltalkObject categoriesFor: #objectAspects!public! !
!UMLSmalltalkObject categoriesFor: #remove:!public! !
!UMLSmalltalkObject categoriesFor: #removeFromGlobalObjects!public! !
!UMLSmalltalkObject categoriesFor: #reStoreSession!public! !
!UMLSmalltalkObject categoriesFor: #simpleAspects!public! !
!UMLSmalltalkObject categoriesFor: #simpleObjectClasses!public! !
!UMLSmalltalkObject categoriesFor: #storeAsGlobalObject!public! !
!UMLSmalltalkObject categoriesFor: #storeAsGlobalObjectIn:!public! !

!UMLSmalltalkObject class methodsFor!

allGlobalObjects
	"Answer <anOrderedCollection> with all [Global Objects] of the receiver class"

	^self getGlobalObjectSatisfying: [:each | each notNil]!

allGlobalObjectsOn: aBBReStoreSession
	"Answer <anOrderedCollection> with all [Global Objects] of the receiver class"

	^self getGlobalObjectSatisfying: [:each | each notNil] on: aBBReStoreSession!

getFirstGlobalObjectSatisfying: aBlock ifNone: blockException 
	"Answer the first object in the <Global Object Cache> that satisfy (answer true) to the evaluation of <aBlock>
	If non objects satisfy <aBlock> then evaluates the block <blockException>"
	| objects |

	objects := self getGlobalObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects first!

getFirstGlobalObjectSatisfying: aBlock ifNone: blockException on: aBBReStoreSession
	"Answer the first object in the <Global Object Cache> that satisfy (answer true) to the evaluation of <aBlock>
	If non objects satisfy <aBlock> then evaluates the block <blockException>"
	| objects |

	objects := self getGlobalObjectSatisfying: aBlock on: aBBReStoreSession.
	objects isEmpty ifTrue: [^blockException value].
	^objects first!

getGlobalObjectSatisfying: aBlock 
	"Answer a collection of objects in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If none object satisfy <aBlock> then answer an empty OrderedCollection."

	"UFabrik <primitive: 406>"

	^self newReStoreSession instancesOf: self satisfying: aBlock
	!

getGlobalObjectSatisfying: aBlock  on: aBBReStoreSession
	"Answer a collection of objects in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If none object satisfy <aBlock> then answer an empty OrderedCollection."

	"UFabrik <primitive: 406>"

	^aBBReStoreSession instancesOf: self satisfying: aBlock
	!

getLastGlobalObjectSatisfying: aBlock ifNone: blockException 
	"Answer the last object in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If non objects satisfy <aBlock> then evaluates the exception block <blockException>."
	| objects |

	objects := self getGlobalObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects last!

getLastGlobalObjectSatisfying: aBlock ifNone: blockException on: aBBReStoreSession
	"Answer the last object in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If non objects satisfy <aBlock> then evaluates the exception block <blockException>."
	| objects |

	objects := self getGlobalObjectSatisfying: aBlock on: aBBReStoreSession.
	objects isEmpty ifTrue: [^blockException value].
	^objects last!

new

	^super new initialize!

newInstance

	^self new initialize!

newReStoreSession

	^self server newSession!

server

	"^BBReStoreServer serverNamed: 'U-Fabrik' "! !
!UMLSmalltalkObject class categoriesFor: #allGlobalObjects!public! !
!UMLSmalltalkObject class categoriesFor: #allGlobalObjectsOn:!public! !
!UMLSmalltalkObject class categoriesFor: #getFirstGlobalObjectSatisfying:ifNone:!public! !
!UMLSmalltalkObject class categoriesFor: #getFirstGlobalObjectSatisfying:ifNone:on:!public! !
!UMLSmalltalkObject class categoriesFor: #getGlobalObjectSatisfying:!public! !
!UMLSmalltalkObject class categoriesFor: #getGlobalObjectSatisfying:on:!public! !
!UMLSmalltalkObject class categoriesFor: #getLastGlobalObjectSatisfying:ifNone:!public! !
!UMLSmalltalkObject class categoriesFor: #getLastGlobalObjectSatisfying:ifNone:on:!public! !
!UMLSmalltalkObject class categoriesFor: #new!public! !
!UMLSmalltalkObject class categoriesFor: #newInstance!public! !
!UMLSmalltalkObject class categoriesFor: #newReStoreSession!public! !
!UMLSmalltalkObject class categoriesFor: #server!public! !

