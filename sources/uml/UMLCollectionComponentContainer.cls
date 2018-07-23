"Filed out from Dolphin Smalltalk 7"!

UMLComponentContainer subclass: #UMLCollectionComponentContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLCollectionComponentContainer guid: (GUID fromString: '{77525b63-6f22-4abc-b13d-23aea1bce945}')!
UMLCollectionComponentContainer comment: ''!
!UMLCollectionComponentContainer categoriesForClass!Unclassified! !
!UMLCollectionComponentContainer methodsFor!

generateComponents
	| listPresenter object componentDescriptor smalltalkCollection |

	componentDescriptor := model components first.
	object := componentDescriptor instance.
	smalltalkCollection := [(object getVariableOrImplementationNamed: componentDescriptor aspectName) smalltalkObject] on: Error do: [:ex | ^self showError: ex messageText for: componentDescriptor aspectName].
	listPresenter := UMLListComposite create: 'Default view' in: self.
	listPresenter view name: componentDescriptor aspectName. 
	(smalltalkCollection isNil or: [smalltalkCollection isEmpty]) ifTrue: [^listPresenter model: ListModel new].
	smalltalkCollection first createListViewFor: listPresenter.
	componentDescriptor isReadOnly ifTrue: [listPresenter disableAddRemoveToolbar].
	listPresenter model: (ListModel on: smalltalkCollection).! !
!UMLCollectionComponentContainer categoriesFor: #generateComponents!public! !

