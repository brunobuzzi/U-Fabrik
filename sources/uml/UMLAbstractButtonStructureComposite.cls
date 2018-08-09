"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLAbstractButtonStructureComposite
	instanceVariableNames: 'methodPresenter tabsPresenter methodName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAbstractButtonStructureComposite guid: (GUID fromString: '{dfff6cd8-81d8-4d3f-8e44-4fb37a30755c}')!
UMLAbstractButtonStructureComposite comment: ''!
!UMLAbstractButtonStructureComposite categoriesForClass!Unclassified! !
!UMLAbstractButtonStructureComposite methodsFor!

compileCommandMethod: aString 
	| newImplementation |

	newImplementation := UMLParsedImplementation newWithCode: aString.
	self model addImplementation: newImplementation.
	self topShell methodDone: newImplementation.


 !

createComponents

	super createComponents.

	methodPresenter := self add: ListPresenter new name: 'methodsPresenter'.
	tabsPresenter := self add: ListPresenter new name: 'tabsPresenter'.!

methodName
	^methodName!

methodName: anObject
	methodName := anObject!

model: anUMLClass

	super  model: anUMLClass.

	methodPresenter model: (ListModel on: anUMLClass allImplementationsAsSortedCollection).
	tabsPresenter model: (ListModel on: anUMLClass allCollectionsToShow)! !
!UMLAbstractButtonStructureComposite categoriesFor: #compileCommandMethod:!public! !
!UMLAbstractButtonStructureComposite categoriesFor: #createComponents!public! !
!UMLAbstractButtonStructureComposite categoriesFor: #methodName!accessing!private! !
!UMLAbstractButtonStructureComposite categoriesFor: #methodName:!accessing!private! !
!UMLAbstractButtonStructureComposite categoriesFor: #model:!public! !

