"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLDevelopmentEnvironment
	instanceVariableNames: 'currentOpenedTools'
	classVariableNames: 'Default'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDevelopmentEnvironment guid: (GUID fromString: '{8a44ae38-0b7f-4c32-9664-0bf3b2c25df2}')!
UMLDevelopmentEnvironment comment: ''!
!UMLDevelopmentEnvironment categoriesForClass!Unclassified! !
!UMLDevelopmentEnvironment methodsFor!

currentOpenedTools
	^currentOpenedTools!

currentOpenedTools: anObject
	currentOpenedTools := anObject!

initialize

	super initialize.

	currentOpenedTools := OrderedCollection new.!

onAttribute: anUMLClassAttribute removedFromClass: anUMLClass in: anUMLEnvironmentTool

	self purgeUMLTools.

	((currentOpenedTools copyWithout: anUMLEnvironmentTool) select: [:each | each isCategoryBrowser not and: [(each hasSelectedClass and: [(each selectedClassDescription == anUMLClass)])]])
		do: [:each | each refreshInstancesVariables].
!

onCategoryRemoved: anUMLCategory in: anUMLEnvironmentTool

	self purgeUMLTools.

	"((currentOpenedTools copyWithout: anUMLEnvironmentTool) select: [:each | (each hasSelectedCategory and: [(each selectedCategory == anUMLCategory)]) or: [anUMLEnvironmentTool isCategoryBrowser]])
		do: [:each | each onCategoriaAdded]."

	currentOpenedTools do: [:each | each onCategoriaAdded].
!

onClass: anUMLClass removedFromModel: anUMLModel in:anUMLEnvironmentTool

	self purgeUMLTools.

	((currentOpenedTools copyWithout: anUMLEnvironmentTool) select: [:each | each hasSelectedModel])
		do: [:each | | selectedClass |
			(each hasSelectedClass and: [each selectedClass ~~  anUMLClass]) ifTrue: [selectedClass := each selectedClass].
			each refreshClasses.
			each selectModel: anUMLModel ifAbsent: [].
			selectedClass ifNotNil: [:value | each selectClass: value ifAbsent: []]. ].
!

onMethod: anUMLParsedImplementation addedToCategory: anUMLCategory in: anUMLEnvironmentTool

	self purgeUMLTools.

	(currentOpenedTools  select: [:each | each hasSelectedCategory and: [(each selectedCategory == anUMLCategory)]])
		do: [:each | each onCategoriaChanged].
!

onMethod: anUMLParsedImplementation removedFromCategory: anUMLCategory in: anUMLEnvironmentTool

	self purgeUMLTools.

	(currentOpenedTools select: [:each | each hasSelectedCategory and: [(each selectedCategory == anUMLCategory)]])
		do: [:each | each onCategoriaChanged].
!

onMethod: anUMLParsedImplementation removedFromClass: anUMLClass in:anUMLEnvironmentTool
	"The receiver refresh all UML Tools that has <anUMLClass> as selected class and remove the implementation <anUMLParsedImplementation> from <anUMLClass>"

	self purgeUMLTools.

	((currentOpenedTools copyWithout: anUMLEnvironmentTool) select: [:each | (each hasSelectedClass and: [(each selectedClassDescription == anUMLClass)]) or: [each isCategoryBrowser]])
		do: [:each | each onMethodRemoved].
!

onNewAttribute: anUMLClassAttribute addedToClass: anUMLClass in: anUMLEnvironmentTool

	self purgeUMLTools.

	((currentOpenedTools copyWithout: anUMLEnvironmentTool) select: [:each | each hasSelectedClass and: [(each selectedClassDescription == anUMLClass)]])
		do: [:each | each refreshInstancesVariables].
!

onNewCategoryAdded: anUMLCategory in: anUMLEnvironmentTool

	self purgeUMLTools.

	"((currentOpenedTools copyWithout: anUMLEnvironmentTool topShell mainComposite) select: [:each | (each hasSelectedCategory and: [(each selectedCategory == anUMLCategory)]) or: [anUMLEnvironmentTool isCategoryBrowser]])
		do: [:each | each onCategoriaAdded]."

	(currentOpenedTools copyWithout: anUMLEnvironmentTool topShell mainComposite) do: [:each | each onCategoriaAdded].!

onNewClass: anUMLClass addedToModel: anUMLModel in: anUMLEnvironmentTool

	self purgeUMLTools.

	((currentOpenedTools copyWithout: anUMLEnvironmentTool) select: [:each | each hasSelectedModel])
		do: [:each | | selectedClass |
			(each hasSelectedClass and: [each selectedClass ~~  anUMLClass]) ifTrue: [selectedClass := each selectedClass].
			each refreshClasses.
			each selectModel: anUMLModel ifAbsent: [].
			selectedClass ifNotNil: [:value | each selectClass: value ifAbsent: []]. ].
!

onNewMethod: anUMLParsedImplementation addedToClass: anUMLClass in: anUMLEnvironmentTool
	"The receiver refresh all UML Tools that has <anUMLClass> as selected class and adds the new implementation <anUMLParsedImplementation>"

	self purgeUMLTools.

	((currentOpenedTools copyWithout: anUMLEnvironmentTool) select: [:each | each hasSelectedClass and: [(each selectedClassDescription == anUMLClass)]])
		do: [:each | | implementation |
			each hasSelectedImplementation ifTrue: [implementation := each selectedImplementation].
			each onNewMethodAdded: anUMLParsedImplementation.
			(anUMLParsedImplementation methodName = implementation name) ifTrue: [each selectImplementation: anUMLParsedImplementation] ].
!

onNewRelation: anUMLRelation addedToClass: anUMLClass in: anUMLEnvironmentTool 

	self purgeUMLTools.

	(currentOpenedTools select: [:each | each hasSelectedClass and: [(each selectedClass == anUMLRelation targetClass or: [each selectedClass == anUMLRelation sourceClass])]])
		do: [:each | each refreshRelations.].!

onRelation: anUMLRelation removedFromClass: anUMLClass in: anUMLEnvironmentTool

	self purgeUMLTools.

	(currentOpenedTools select: [:each | each hasSelectedClass and: [(each selectedClass == anUMLRelation targetClass or: [each selectedClass == anUMLRelation sourceClass])]])
		do: [:each | each refreshRelations.].!

purgeUMLTools

	(currentOpenedTools select: [:each | each view == DeafObject current]) do: [:each | currentOpenedTools remove: each]!

registerUMLTool: anUMLEnvironmentTool

	anUMLEnvironmentTool ifNil: [^self].

	currentOpenedTools add: anUMLEnvironmentTool.

	self subscribeToEventsOf: anUMLEnvironmentTool!

subscribeToEventsOf: anUMLEnvironmentTool

	anUMLEnvironmentTool when: #newMethod:toClass:in: send: #onNewMethod:addedToClass:in: to: self.
	anUMLEnvironmentTool when: #method:removedFromClass:in: send: #onMethod:removedFromClass:in: to: self.

	anUMLEnvironmentTool when: #method:removedFromCategory:in: send: #onMethod:removedFromCategory:in: to: self.
	anUMLEnvironmentTool when: #method:addedToCategory:in: send: #onMethod:addedToCategory:in: to: self.


	anUMLEnvironmentTool when: #newCategoryAdded:in: send: #onNewCategoryAdded:in: to: self.
	anUMLEnvironmentTool when: #categoryRemoved:in: send: #onCategoryRemoved:in: to: self.

	anUMLEnvironmentTool when: #newAttribute:addedToClass:in: send: #onNewAttribute:addedToClass:in: to: self.
	anUMLEnvironmentTool when: #removeAttribute:fromClass:in: send: #onAttribute:removedFromClass:in: to: self.

	anUMLEnvironmentTool when: #newClassAdded:toModel:in: send: #onNewClass:addedToModel:in: to: self.
	anUMLEnvironmentTool when: #class:removedFromModel:in: send: #onClass:removedFromModel:in: to: self.

	anUMLEnvironmentTool when: #newRelationAdded:toClass:in: send: #onNewRelation:addedToClass:in: to: self.
	anUMLEnvironmentTool when: #relation:removedFromClass:in: send: #onRelation:removedFromClass:in: to: self.!

unregisterUMLTool: anUMLEnvironmentTool

	anUMLEnvironmentTool ifNil: [^self].

	currentOpenedTools remove: anUMLEnvironmentTool ifAbsent: []! !
!UMLDevelopmentEnvironment categoriesFor: #currentOpenedTools!accessing!private! !
!UMLDevelopmentEnvironment categoriesFor: #currentOpenedTools:!accessing!private! !
!UMLDevelopmentEnvironment categoriesFor: #initialize!public! !
!UMLDevelopmentEnvironment categoriesFor: #onAttribute:removedFromClass:in:!events attributes!public! !
!UMLDevelopmentEnvironment categoriesFor: #onCategoryRemoved:in:!events categories!public! !
!UMLDevelopmentEnvironment categoriesFor: #onClass:removedFromModel:in:!events class!public! !
!UMLDevelopmentEnvironment categoriesFor: #onMethod:addedToCategory:in:!events categories!public! !
!UMLDevelopmentEnvironment categoriesFor: #onMethod:removedFromCategory:in:!events categories!public! !
!UMLDevelopmentEnvironment categoriesFor: #onMethod:removedFromClass:in:!events methods!public! !
!UMLDevelopmentEnvironment categoriesFor: #onNewAttribute:addedToClass:in:!events attributes!public! !
!UMLDevelopmentEnvironment categoriesFor: #onNewCategoryAdded:in:!events categories!public! !
!UMLDevelopmentEnvironment categoriesFor: #onNewClass:addedToModel:in:!events class!public! !
!UMLDevelopmentEnvironment categoriesFor: #onNewMethod:addedToClass:in:!events methods!public! !
!UMLDevelopmentEnvironment categoriesFor: #onNewRelation:addedToClass:in:!events attributes!events categories!events class!events methods!events relations!public! !
!UMLDevelopmentEnvironment categoriesFor: #onRelation:removedFromClass:in:!events attributes!events categories!events class!events methods!events relations!public! !
!UMLDevelopmentEnvironment categoriesFor: #purgeUMLTools!public! !
!UMLDevelopmentEnvironment categoriesFor: #registerUMLTool:!public! !
!UMLDevelopmentEnvironment categoriesFor: #subscribeToEventsOf:!events attributes!events categories!events class!events methods!events relations!public! !
!UMLDevelopmentEnvironment categoriesFor: #unregisterUMLTool:!public! !

!UMLDevelopmentEnvironment class methodsFor!

createSingleton

	Default := super new!

default

	Default ifNil: [self createSingleton].

	^Default!

icon

	^Icon fromId: '!!APPLICATION'! !
!UMLDevelopmentEnvironment class categoriesFor: #createSingleton!private! !
!UMLDevelopmentEnvironment class categoriesFor: #default!public! !
!UMLDevelopmentEnvironment class categoriesFor: #icon!public! !

