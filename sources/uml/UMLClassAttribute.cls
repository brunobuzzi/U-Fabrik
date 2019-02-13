"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLClassAttribute
	instanceVariableNames: 'name type umlClass originalType description alias isEnabled isLargeString'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLClassAttribute guid: (GUID fromString: '{b2b7ea1f-11a8-49d3-8ee0-bfc0dcf3f545}')!
UMLClassAttribute comment: 'This class represent the attributes of an UMLClass.

Instances Variables:

name 	- attribute''s name.
type 		- attribute''s type (anUMLClass).
umlClass	- UMLClass that own the attribute'!
!UMLClassAttribute categoriesForClass!Unclassified! !
!UMLClassAttribute methodsFor!

alias
	^alias!

alias: anObject
	alias := anObject asSymbol!

asUMLTreeNode

	^UMLTreeNode instVarName: name value: type!

attributeName

	^name!

className

	^umlClass name!

description
	^description!

description: anObject
	description := anObject!

getInitializeType
	^self getType!

getInitializeTypeFor: anUMLClass

	^self getType!

getName

	alias ifNotNil: [:value | ^value].
	^name!

getType
	^type!

hasAlias

	^alias notNil!

hasMultipleInstances

	^false!

icon

	type ifNil: [^nil icon].
	(type class == String) ifTrue: [^String icon].
	^type smalltalkClass icon!

initialize

	super initialize.

	name := ''.
	originalType := ''.
	description := ''.
	isEnabled := true.
	isLargeString := false.!

isAssociationClass
	^false!

isBasic

	^true!

isEnabled
	^isEnabled!

isEnabled: anObject
	isEnabled := anObject!

isLargeString
	^isLargeString!

isLargeString: anObject
	isLargeString := anObject!

isSelfReferenceAttribute

	^false!

name
	^name!

name: anObject
	name := anObject!

originalType
	^originalType!

originalType: anObject
	originalType := anObject!

printAlias

	alias ifNil: [^'none'].

	^alias!

printLargeString

	^isLargeString printString!

printOn: aStream

	super printOn: aStream.

	aStream
		nextPut: $<;
		nextPutAll: self printURAName;
		nextPut: $>.!

printTypeName

	(type class == String) ifTrue: [^type].
	^type name!

printURAName

	umlClass ifNil: [^''].
	^umlClass name, '.', name, ' {', type name, '}'!

relationIsManyToMany

	^false!

relationIsOneToManyOrManyToOne

	^false!

relationIsOneToOne

	^false!

setTypeAsUMLType

	^type := self class mapUMLOriginalType: originalType
"	(type isKindOf: UMLBasicType class) 
	ifFalse: [type := UMLBasicType allSubclasses detect: [:eachType | eachType basicStrings anySatisfy: [:eachBasicString | ('*', eachBasicString, '*') match:  type asString] ] 
								ifNone: [UMLUndefinedType].].

	^type := self virtualMachine virtualMachineClassNamed: type virtualMachineClassName."!

type
	^type!

type: anObject
	type := anObject!

typeName
	^type name!

umlClass
	^umlClass!

umlClass: anObject
	umlClass := anObject!

umlClassName
	^umlClass name!

uninstall

	type := nil.
	umlClass := nil.!

virtualMachine
	^umlClass virtualMachine! !
!UMLClassAttribute categoriesFor: #alias!accessing!private! !
!UMLClassAttribute categoriesFor: #alias:!accessing!private! !
!UMLClassAttribute categoriesFor: #asUMLTreeNode!public! !
!UMLClassAttribute categoriesFor: #attributeName!public! !
!UMLClassAttribute categoriesFor: #className!public! !
!UMLClassAttribute categoriesFor: #description!accessing!private! !
!UMLClassAttribute categoriesFor: #description:!accessing!private! !
!UMLClassAttribute categoriesFor: #getInitializeType!public! !
!UMLClassAttribute categoriesFor: #getInitializeTypeFor:!public! !
!UMLClassAttribute categoriesFor: #getName!public! !
!UMLClassAttribute categoriesFor: #getType!public! !
!UMLClassAttribute categoriesFor: #hasAlias!public! !
!UMLClassAttribute categoriesFor: #hasMultipleInstances!public! !
!UMLClassAttribute categoriesFor: #icon!public! !
!UMLClassAttribute categoriesFor: #initialize!public! !
!UMLClassAttribute categoriesFor: #isAssociationClass!public! !
!UMLClassAttribute categoriesFor: #isBasic!public! !
!UMLClassAttribute categoriesFor: #isEnabled!accessing!private! !
!UMLClassAttribute categoriesFor: #isEnabled:!accessing!private! !
!UMLClassAttribute categoriesFor: #isLargeString!accessing!private! !
!UMLClassAttribute categoriesFor: #isLargeString:!accessing!private! !
!UMLClassAttribute categoriesFor: #isSelfReferenceAttribute!public! !
!UMLClassAttribute categoriesFor: #name!accessing!private! !
!UMLClassAttribute categoriesFor: #name:!accessing!private! !
!UMLClassAttribute categoriesFor: #originalType!accessing!private! !
!UMLClassAttribute categoriesFor: #originalType:!accessing!private! !
!UMLClassAttribute categoriesFor: #printAlias!public! !
!UMLClassAttribute categoriesFor: #printLargeString!public! !
!UMLClassAttribute categoriesFor: #printOn:!public! !
!UMLClassAttribute categoriesFor: #printTypeName!public! !
!UMLClassAttribute categoriesFor: #printURAName!public! !
!UMLClassAttribute categoriesFor: #relationIsManyToMany!public! !
!UMLClassAttribute categoriesFor: #relationIsOneToManyOrManyToOne!public! !
!UMLClassAttribute categoriesFor: #relationIsOneToOne!public! !
!UMLClassAttribute categoriesFor: #setTypeAsUMLType!importing XML!public! !
!UMLClassAttribute categoriesFor: #type!accessing!private! !
!UMLClassAttribute categoriesFor: #type:!accessing!private! !
!UMLClassAttribute categoriesFor: #typeName!public! !
!UMLClassAttribute categoriesFor: #umlClass!accessing!private! !
!UMLClassAttribute categoriesFor: #umlClass:!accessing!private! !
!UMLClassAttribute categoriesFor: #umlClassName!public! !
!UMLClassAttribute categoriesFor: #uninstall!public! !
!UMLClassAttribute categoriesFor: #virtualMachine!public! !

!UMLClassAttribute class methodsFor!

addType: typeName class: anUMLClass

	^self mappingDictionary at: typeName put: anUMLClass name!

anyStringMapUMLOriginalType: aString

	aString ifNil: [^nil].
	^self mappingDictionary keys detect: [:each |
		((aString asUppercase indexOfSubCollection: each asUppercase) ~= 0) or:[(each asUppercase indexOfSubCollection: aString asUppercase) ~= 0]] ifNone: ['UndefinedObject']!

defaultTypeMapping

	^LookupTable new
		at: 'char' put: 'String';
		at: 'string' put: 'String';
		at: 'boolean' put: 'Boolean';
		at: 'true' put: 'Boolean';
		at: 'false' put: 'Boolean';
		at: 'int' put: 'Number';
		at: 'float' put: 'Number';
		at: 'decimal' put: 'Number';
		at: 'integer' put: 'Number';
		at: 'num' put: 'Number';
		at: 'date' put: 'Date';
		at: 'time' put: 'Time';
		at: 'timestamp' put: 'TimeStamp';
		yourself.!

icon

	^String icon!

identityStringMapUMLOriginalType: aString

	aString ifNil: [^nil].
	^self mappingDictionary keys detect: [:each |(aString asUppercase = each asUppercase)] ifNone: ['UndefinedObject']!

initializeTypeMapping

	^self typeMapping!

mappingDictionary

	^self defaultVirtualMachine typeMapping!

mapUMLOriginalType: aString
	| stringUMLClass |

	aString ifNil: [^self defaultVirtualMachine nilObject umlClass].
	stringUMLClass := (self identityStringMapUMLOriginalType: aString) ifNotNil: [:value | value] ifNil: [self anyStringMapUMLOriginalType: aString].
	stringUMLClass ifNil: [stringUMLClass := 'UndefinedObject'].

	^self defaultVirtualMachine 
		getAnyClassNamed: (self mappingDictionary at: stringUMLClass ifAbsent: [^self defaultVirtualMachine nilObject umlClass]) 
		ifAbsent: [self defaultVirtualMachine nilObject umlClass]!

removeType: typeName 

	^self mappingDictionary removeKey: typeName !

typeMapping
	| mapping |

	mapping := self defaultTypeMapping.

	self visualParadigmTypeMapping: mapping.
		
	^mapping!

typeMappingAsOrderedCollection
	| mappings |

	mappings := OrderedCollection new.
	self mappingDictionary keysAndValuesDo: [:eachKey :eachValue | 
		mappings add: (OrderedCollection with: eachKey with: eachValue).].

	^mappings!

visualParadigmTypeMapping: aLookupTable

	^aLookupTable
		at: 'char_id' put: 'String';
		at: 'string_id' put: 'String';
		at: 'boolean_id' put: 'Boolean';
		at: 'int_id' put: 'Number';
		at: 'float_id' put: 'Number';
		at: 'decimal_id' put: 'Number';
		at: 'integer_id' put: 'Number';
		at: 'num_id' put: 'Number';
		at: 'date_id' put: 'Date';
		at: 'time_id' put: 'Time';
		at: 'timestamp_id' put: 'TimeStamp';		
		yourself.! !
!UMLClassAttribute class categoriesFor: #addType:class:!public!type mapping! !
!UMLClassAttribute class categoriesFor: #anyStringMapUMLOriginalType:!public!type mapping! !
!UMLClassAttribute class categoriesFor: #defaultTypeMapping!public!type mapping initialization! !
!UMLClassAttribute class categoriesFor: #icon!public! !
!UMLClassAttribute class categoriesFor: #identityStringMapUMLOriginalType:!public!type mapping! !
!UMLClassAttribute class categoriesFor: #initializeTypeMapping!public!type mapping initialization! !
!UMLClassAttribute class categoriesFor: #mappingDictionary!public!type mapping! !
!UMLClassAttribute class categoriesFor: #mapUMLOriginalType:!public!type mapping! !
!UMLClassAttribute class categoriesFor: #removeType:!public!type mapping! !
!UMLClassAttribute class categoriesFor: #typeMapping!public!type mapping initialization! !
!UMLClassAttribute class categoriesFor: #typeMappingAsOrderedCollection!public!type mapping! !
!UMLClassAttribute class categoriesFor: #visualParadigmTypeMapping:!public!type mapping initialization! !

