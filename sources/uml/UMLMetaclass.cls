"Filed out from Dolphin Smalltalk 7"!

UMLClassDescription subclass: #UMLMetaclass
	instanceVariableNames: 'instanceClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLMetaclass guid: (GUID fromString: '{167baa16-2d3a-4fd2-bd8f-d35d0dc71f4b}')!
UMLMetaclass comment: 'This class represent the class of the UMLClass.

Each UMLClass is a LOGICAL instance (implemented by the Virtual Machine) of UMLMetaclass.

Each UMLMetaclass has it''s own behavior.'!
!UMLMetaclass categoriesForClass!Unclassified! !
!UMLMetaclass methodsFor!

allImplementations

	umlSuperclass name = 'UndefinedObject' ifTrue: [^implementations asOrderedCollection].
	^implementations asOrderedCollection , umlSuperclass allImplementations!

allRelations
	^OrderedCollection new!

classNameForImplementationList

	^self className, ' meta'!

compileNewFromMethodFor: anUMLClass triggerAttribute: anUMLRelationClassAttribute
	"The receiver create <anUMLPasrsedImplementation> named #newFrom: to related class of <anUMLClass>"
	| initializeStream objectName varName umlImplementation methodName |

	initializeStream := WriteStream on: String new.

	methodName := 'newFrom', anUMLRelationClassAttribute umlClassName, ':'.
	objectName := 'a', anUMLClass name.
	varName := anUMLClass name first asLowercase asString, anUMLClass name allButFirst.
	initializeStream nextPutAll: methodName, objectName, String lineDelimiter;
		nextPutAll: '	| newObject | ', String lineDelimiter, String lineDelimiter;
		nextPutAll: '	newObject := super new.', String lineDelimiter.
	"see issue #66 - if the relation is not navigable then this call must not be done"
	(anUMLRelationClassAttribute isNavigable:  (anUMLRelationClassAttribute relatedClassTo: anUMLClass)) 
	ifTrue: [initializeStream nextPutAll: '	newObject ',  varName, ': ', objectName, '.',String lineDelimiter].
	
	initializeStream nextPutAll: '	^newObject'.
	
	umlImplementation := UMLParsedImplementation newWithCode: initializeStream contents.

	self addImplementation: umlImplementation!

defaultTopObjectClass

	^virtualMachine objectClass getMetaclass!

fetchMethodNamed: aSymbol ifNone: aBlock
	"The receiver send the correct message to the Virtual Machine to fecth the method named <aSymbol> if none evaluates <aBlock>"

	^virtualMachine fetchMetaclassMethodNamed: aSymbol for: self ifNone: aBlock!

getAllRelationsNames

	^OrderedCollection new!

getMetaclass
	^self!

initialize

	super initialize.

	implementations := LookupTable new.!

instanceClass
	^instanceClass!

instanceClass: anObject
	instanceClass := anObject!

instanceClassSpecification

	^UMLClass!

isMetaclass

	^true!

newNamed: aString 
	"Set the receiver with name <aString> and it's class specification"

	name := aString.
	instanceClass := self instanceClassSpecification createFrom: self.!

newNamedWithoutClassInstance: aString 

	name := aString.!

printOn: aStream

	super printOn: aStream.

	aStream
		nextPut: $<;
		nextPutAll: name;
		nextPut: $>.!

relations
	^OrderedCollection new!

setInstanceClass: anUMLClass

	instanceClass := anUMLClass.
	anUMLClass metaclass: self.!

setInstanceClassSuperClass: anUMLVirtualMachineClass 
	" Set the receiver's instance class superclass with <anUMLVirtualMachineClass >"

	instanceClass umlSuperclass: anUMLVirtualMachineClass.!

umlClass
	^self!

umlModel

	^virtualMachine umlModelOf: instanceClass!

uninstall

	instancesVariables := Set new.
	implementations := Set new.
	virtualMachine := nil.
	categoriesCatalogue := #().
	subclasses := Set new.
	umlSuperclass := nil.
	traits := Set new.
	instanceClass := nil.! !
!UMLMetaclass categoriesFor: #allImplementations!public!relations! !
!UMLMetaclass categoriesFor: #allRelations!public! !
!UMLMetaclass categoriesFor: #classNameForImplementationList!public! !
!UMLMetaclass categoriesFor: #compileNewFromMethodFor:triggerAttribute:!initialize generation!public! !
!UMLMetaclass categoriesFor: #defaultTopObjectClass!public! !
!UMLMetaclass categoriesFor: #fetchMethodNamed:ifNone:!public! !
!UMLMetaclass categoriesFor: #getAllRelationsNames!get elements!public!relations! !
!UMLMetaclass categoriesFor: #getMetaclass!public! !
!UMLMetaclass categoriesFor: #initialize!public! !
!UMLMetaclass categoriesFor: #instanceClass!accessing!private! !
!UMLMetaclass categoriesFor: #instanceClass:!accessing!private! !
!UMLMetaclass categoriesFor: #instanceClassSpecification!public! !
!UMLMetaclass categoriesFor: #isMetaclass!public! !
!UMLMetaclass categoriesFor: #newNamed:!initialization!public! !
!UMLMetaclass categoriesFor: #newNamedWithoutClassInstance:!initialization!public! !
!UMLMetaclass categoriesFor: #printOn:!public! !
!UMLMetaclass categoriesFor: #relations!public! !
!UMLMetaclass categoriesFor: #setInstanceClass:!initialization!public! !
!UMLMetaclass categoriesFor: #setInstanceClassSuperClass:!public! !
!UMLMetaclass categoriesFor: #umlClass!public! !
!UMLMetaclass categoriesFor: #umlModel!gui!public! !
!UMLMetaclass categoriesFor: #uninstall!public! !

!UMLMetaclass class methodsFor!

icon

	^Icon fromId: 'Metaclass.ico'!

newNamed: aString

	^super new initialize
		newNamed: aString;
		yourself.!

newNamed: aString for: anUMLClass

	^super new initialize
		newNamedWithoutClassInstance: aString;
		setInstanceClass: anUMLClass;
		yourself.!

newNamedWithoutClassInstance: aString

	^super new initialize
		newNamedWithoutClassInstance: aString;
		yourself.! !
!UMLMetaclass class categoriesFor: #icon!public! !
!UMLMetaclass class categoriesFor: #newNamed:!public! !
!UMLMetaclass class categoriesFor: #newNamed:for:!public! !
!UMLMetaclass class categoriesFor: #newNamedWithoutClassInstance:!public! !

