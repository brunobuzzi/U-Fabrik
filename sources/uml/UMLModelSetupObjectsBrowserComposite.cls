"Filed out from Dolphin Smalltalk 7"!

UMLModelParametricObjectBrowserComposite subclass: #UMLModelSetupObjectsBrowserComposite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModelSetupObjectsBrowserComposite guid: (GUID fromString: '{fb246246-a078-4929-82e1-365ea6025d5f}')!
UMLModelSetupObjectsBrowserComposite comment: ''!
!UMLModelSetupObjectsBrowserComposite categoriesForClass!Unclassified! !
!UMLModelSetupObjectsBrowserComposite methodsFor!

addGlobalClass
	| selectecClass |

	selectecClass := DetalleDeOpciones 
		listaCon: (self defaultVirtualMachine getUMLClasses reject: [:each | parametricNamePresenter model includes: each name]) 
		para: 'UMLClasses view' titulo: 'The selected class will create a global storage for it''s instances'.
	selectecClass ifNil: [^self].
	model createSetupKey: selectecClass last name.

	parametricNamePresenter resetSelection.
	self onGlobalNameChanged.
	!

addNewInstance
	| newInstance |
	parametricNamePresenter hasSelection ifFalse: [^self].
	newInstance := (self defaultVirtualMachine getAnyClassNamed: parametricNamePresenter selection
				ifAbsent: [^MessageBox notify: 'Class not found !!' caption: self applicationName]) newInstance.
	newInstance
		runBehaviorInitialize;
		storeAsSetupObject.
	self onGlobalNameChanged!

modelRoot

	^model setupObjects!

parametricsObjects

	^model setupObjects keys asSortedCollection!

removeSelectedClassAsGlobal
	parametricNamePresenter hasSelection ifFalse: [^self].
	(MessageBox 
		confirm: 'Are sure to remove the selected class ? All unreferenced instance will removed'
		caption: self applicationName) ifFalse: [^self].
	(self defaultVirtualMachine 
		umlModelOf: (self defaultVirtualMachine getAnyClassNamed: parametricNamePresenter selection)) 
			destroySetupKey: parametricNamePresenter selection.
	parametricNamePresenter resetSelection.
	self onGlobalNameChanged! !
!UMLModelSetupObjectsBrowserComposite categoriesFor: #addGlobalClass!public! !
!UMLModelSetupObjectsBrowserComposite categoriesFor: #addNewInstance!public! !
!UMLModelSetupObjectsBrowserComposite categoriesFor: #modelRoot!public! !
!UMLModelSetupObjectsBrowserComposite categoriesFor: #parametricsObjects!public! !
!UMLModelSetupObjectsBrowserComposite categoriesFor: #removeSelectedClassAsGlobal!public! !

