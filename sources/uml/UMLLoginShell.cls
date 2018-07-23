"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLLoginShell
	instanceVariableNames: 'userPresenter passwordPresenter umlModelsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLLoginShell guid: (GUID fromString: '{196ebbb1-4297-4a88-9444-800ec38bd839}')!
UMLLoginShell comment: ''!
!UMLLoginShell categoriesForClass!Unclassified! !
!UMLLoginShell methodsFor!

createComponents

	super createComponents.

	userPresenter := self add: TextPresenter new name: 'userPresenter'.
	passwordPresenter := self add: TextPresenter new name: 'passwordPresenter'.
	umlModelsPresenter := self add: ListPresenter new name: 'umlModelsPresenter'.!

hasSelectedClass
	^false!

mainComposite

	^self!

ok
	| loginManagerClass initialObejcts mainShell |
	umlModelsPresenter hasSelection 
		ifFalse: 
			[^MessageBox notify: 'You have to select an UML Model to login !!' caption: self applicationName].
	loginManagerClass := umlModelsPresenter selection loginManager.
	loginManagerClass 
		ifNil: 
			[^MessageBox notify: 'You have to set the Login Manage Class for the UML Model in order to login'
				caption: self applicationName].
	initialObejcts := loginManagerClass vmPerform: #getLoginMainObjectFor:password:
				withArguments: (Array with: (userPresenter value asUMLObject: self defaultVirtualMachine)
						with: (passwordPresenter value asUMLObject: self defaultVirtualMachine)).
	(initialObejcts belongToVirtualMachine and: [initialObejcts smalltalkObject isEmpty]) 
		ifTrue: [^MessageBox notify: 'Login failed !!' caption: self applicationName].
	(initialObejcts belongToVirtualMachine and: [initialObejcts smalltalkClass == String]) 
		ifTrue: [^MessageBox notify: initialObejcts smalltalkObject caption: self applicationName].
	mainShell := initialObejcts belongToVirtualMachine 
				ifTrue: [UMLMainShell for: initialObejcts]
				ifFalse: 
					[(UMLMainShell show)
						umlApplicationUser: initialObejcts;
						inspectUMLInstance: initialObejcts;
						yourself].
	mainShell view caption: mainShell view caption , ' - <' , userPresenter value , '>'.
	self exit!

onViewOpened

	super onViewOpened.

	umlModelsPresenter model: (ListModel on: (self defaultVirtualMachine umlModels asSortedCollection: [:a :b | a name <= b name]))! !
!UMLLoginShell categoriesFor: #createComponents!public! !
!UMLLoginShell categoriesFor: #hasSelectedClass!public! !
!UMLLoginShell categoriesFor: #mainComposite!public! !
!UMLLoginShell categoriesFor: #ok!public! !
!UMLLoginShell categoriesFor: #onViewOpened!public! !

!UMLLoginShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 328198 ##(Smalltalk.Point)  701 441 551 0 0 0 416 0 234 256 98 6 410 8 ##(Smalltalk.ComboBox)  98 17 0 416 98 2 8 1412498947 1025 576 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 7 0 0 0 576 0 8 4294902921 459270 ##(Smalltalk.Message)  8 #name 704 704 401 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 514 225 221 514 421 47 576 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 112 0 0 0 110 0 0 0 66 1 0 0 133 0 0 0] 98 0 514 193 193 0 27 8 'umlModelsPresenter' 410 8 ##(Smalltalk.TextEdit)  98 16 0 416 98 2 8 1140916384 1025 1120 0 754 8 4278190080 0 7 0 0 0 1120 0 8 4294902915 852486 ##(Smalltalk.NullConverter)  0 0 1 866 202 208 98 3 930 960 98 2 514 225 131 514 421 41 1120 930 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 1120 930 8 #isTextModified: 98 1 32 1120 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 112 0 0 0 65 0 0 0 66 1 0 0 85 0 0 0] 98 0 1088 0 27 8 'passwordPresenter' 410 1136 98 16 0 416 98 2 8 1140916352 1025 1584 0 754 8 4278190080 0 7 0 0 0 1584 0 8 4294902915 1250 0 0 1 866 202 208 98 3 930 960 98 2 514 225 45 514 421 41 1584 930 1408 98 1 1442 3 1 3 1584 930 1488 98 1 32 1584 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 112 0 0 0 22 0 0 0 66 1 0 0 42 0 0 0] 98 0 1088 0 27 8 'userPresenter' 0 0 0 0 0 1 0 0 0 0 1 0 0 866 202 208 98 3 930 960 98 2 514 2879 21 514 701 441 416 930 8 #text: 98 1 8 'UML Login' 416 930 8 #updateMenuBar 704 416 1026 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 253 6 0 0 230 0 0 0] 98 7 1584 1120 576 410 8 ##(Smalltalk.PushButton)  98 20 0 416 98 2 8 1140924416 1 2224 0 0 0 7 0 0 0 2224 0 8 4294902889 1180998 4 ##(Smalltalk.CommandDescription)  8 #ok 8 'OK' 1 1 0 0 32 0 0 0 866 202 208 98 3 930 960 98 2 514 511 301 514 141 51 2224 930 8 #isEnabled: 98 1 32 2224 930 2096 98 1 8 'OK' 2224 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 150 0 0 0 69 1 0 0 175 0 0 0] 98 0 1088 0 29 410 8 ##(Smalltalk.StaticText)  98 16 0 416 98 2 8 1140850944 1 2640 0 0 0 7 0 0 0 2640 0 8 4294902909 1250 0 0 0 866 202 208 98 2 930 960 98 2 514 31 51 514 171 31 2640 930 2096 98 1 8 'User name' 2640 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 25 0 0 0 100 0 0 0 40 0 0 0] 98 0 1088 0 27 410 2656 98 16 0 416 98 2 8 1140850944 1 2960 0 0 0 7 0 0 0 2960 0 8 4294902909 1250 0 0 0 866 202 208 98 2 930 960 98 2 514 31 131 514 181 31 2960 930 2096 98 1 8 'Password' 2960 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 65 0 0 0 105 0 0 0 80 0 0 0] 98 0 1088 0 27 410 2656 98 16 0 416 98 2 8 1140850944 1 3264 0 0 0 7 0 0 0 3264 0 8 4294902909 1250 0 0 0 866 202 208 98 2 930 960 98 2 514 31 231 514 151 31 3264 930 2096 98 1 8 'UML Model' 3264 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 115 0 0 0 90 0 0 0 130 0 0 0] 98 0 1088 0 27 1088 0 27 )! !
!UMLLoginShell class categoriesFor: #resource_Default_view!public!resources-views! !

