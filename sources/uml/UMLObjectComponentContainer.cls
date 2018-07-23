"Filed out from Dolphin Smalltalk 7"!

UMLComponentContainer subclass: #UMLObjectComponentContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLObjectComponentContainer guid: (GUID fromString: '{4d022fff-2757-4dba-a530-95195a5e7598}')!
UMLObjectComponentContainer comment: ''!
!UMLObjectComponentContainer categoriesForClass!Unclassified! !
!UMLObjectComponentContainer methodsFor!

generateComponents
	| listPresenter object componentDescriptor umlObject listModel |

	(model components size > 1) ifTrue: [^self generateMultipleComponents].
	componentDescriptor := model components first.
	object := componentDescriptor instance.
	[umlObject := (object getVariableOrImplementationNamed: componentDescriptor aspectName)] on: Error do: [:ex | ^self showError: ex messageText for: componentDescriptor aspectName].
	(umlObject vmPerform: #isDomainObject) smalltalkObject 
	ifTrue: [listPresenter := UMLOneElementListComposite create: 'Default view' in: self.
		listPresenter view name: componentDescriptor aspectName.
		componentDescriptor isReadOnly ifTrue: [listPresenter disableAddRemoveToolbar].
		listModel := umlObject 
			ifNotNil: [:value | value createListViewFor: listPresenter. OrderedCollection with: umlObject] 
			ifNil: [OrderedCollection new].
		listPresenter model: (ListModel on: listModel).]
	ifFalse: [TextPresenter create: 'Multiline text' in: self on: ('Error on method <', componentDescriptor aspectName, '> is not a simple object')]!

generateMultipleComponents
	| listPresenter object componentDescriptor umlObject listModel |

	view layoutManager isVertical: true.
	model components do: [:each | | error |
		error := false.
		componentDescriptor := each.
		object := componentDescriptor instance.
		[umlObject := (object getVariableOrImplementationNamed: componentDescriptor aspectName)] on: Error 
			do: [:ex | self showError: ex messageText for: componentDescriptor aspectName. error := true.].
		error 
		ifFalse: [(umlObject vmPerform: #isDomainObject) smalltalkObject 
			ifTrue: [
				listPresenter := UMLOneElementListComposite create: 'Default view' in: self.
				listPresenter view name: componentDescriptor aspectName.
				componentDescriptor isReadOnly ifTrue: [listPresenter disableAddRemoveToolbar].
				listModel := umlObject 
					ifNotNil: [:value | value createListViewFor: listPresenter. OrderedCollection with: umlObject] 
					ifNil: [OrderedCollection new].
				listPresenter model: (ListModel on: listModel).]
			ifFalse: [TextPresenter create: 'Multiline text' in: self on: ('Error on method <', componentDescriptor aspectName, '> is not a simple object')].].].! !
!UMLObjectComponentContainer categoriesFor: #generateComponents!public! !
!UMLObjectComponentContainer categoriesFor: #generateMultipleComponents!public! !

