"Filed out from Dolphin Smalltalk 7"!

WebAddInApplication subclass: #UMLInstanceApp
	instanceVariableNames: 'currentTabList currentPopupList umlApplicationUser'
	classVariableNames: 'WebComponentsDirectMap WebComponentsMap'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLInstanceApp guid: (GUID fromString: '{ea6e0348-6bc9-408b-a27d-ce6e541fcdb8}')!
UMLInstanceApp comment: ''!
!UMLInstanceApp categoriesForClass!Unclassified! !
!UMLInstanceApp methodsFor!

acceptInputsAndActionFrom: aRequest
	"this method read form inputs (if any) and write them to the appropriate aspects of model 
	objects. Then calls an action method if any"

	aRequest context form acceptFormInputFrom: aRequest.

	aRequest isAjaxPostWithSingleInput ifFalse:     "ajax posts of single form elements doesn't trigger actions!!"
		[self callActionMethodForButton: (self buttonNameFrom: aRequest) on: aRequest context].
	(aRequest session shouldRedirect not and: [aRequest isAjaxRequest not]) ifTrue:
		[self redirectToView: (aRequest view ifNil: [#main] ifNotNil: [:value | value]) ]   "always redirect after post to avoid aidaCtx in Urls!! "!

actionMainAccept

	self redirectToView: #main.!

actionMainBrowseCategories

	UMLCategoryBrowserShell show!

actionMainBrowseClass
	| shellBrowser |

	shellBrowser := UMLModelShell show.
	shellBrowser selectUMLClass: self observee umlClass ifAbsent: [].
	!

actionMainBrowseResetWebServer

	(AIDASite named: self applicationName, ' Web Server') releaseApplicationState
!

actionMainBrowseVirtualMachine

	UMLVirtualMachineShell show!

actionMainCustomizedInspectObservee

	self observee inspectUMLWithCustomizedView!

actionMainEdit

	self redirectToView: #edit.!

actionMainInitializeObservee

	self observee vmPerform: #initialize.

	self redirectToView: #main.	!

actionMainInspectObservee

	self observee inspectUMLInstance!

actionMainMain

	self redirectTo: self observee!

actionMainRemoveFromGlobalObject

	self observee vmPerform: #removeFromGlobalObjects.

	self show: (WebDialog newInfo text: 'Object remove from Root Objects (removed from global list) !!').

	self redirectToView: #main.	!

actionMainRemoveFromParametricObject

	self observee vmPerform: #removeFromSetupObjects.

	self show: (WebDialog newInfo text: 'Object remove from Parametric Objects (removed from global list) !!').

	self redirectToView: #main.	!

actionMainResetWebServer

	(AIDASite named: self applicationName, ' Web Server') releaseApplicationState.

	self redirectToView: #main.	
!

actionMainSaveAsGlobalObject

	self observee vmPerform: #storeAsGlobalObject.

	self show: (WebDialog newInfo text: 'Object save as Global (added to global list). Now it can be selected from popup object''s lists !!').

	self redirectToView: #main.	!

actionMainSaveAsParametricObject

	self observee vmPerform: #storeAsSetupObject.

	self show: (WebDialog newInfo text: 'Object save as Parametric (added to global list). Now it can be selected from popup object''s lists !!').

	self redirectToView: #main.	!

actionMainSaveAsRootObject

	self observee vmPerform: #storeAsGlobalObject.

	self show: (WebDialog newInfo text: 'Object save as Root (added to global list). Now it can be selected from popup object''s lists !!').

	self redirectToView: #main.	!

actionMainShowGlobalObjects

	UMLModelGlobalsShell showOn: self observee umlClass umlModel.
	^self!

actionMainShowSetupObjects

	UMLModelSetupObjectsShell showOn: self observee umlClass umlModel.
	^self!

addAcceptCancelButtonsTo: webPage
	| cancelButton acceptButton |

	webPage cell newRow.
	cancelButton := (UMLRedirectWebButton text: 'View Object' action: #main class: self uFabrikWebPreferences objectButtonClassSymbol) 
					destinationView: '?view=main'; yourself.
	acceptButton := UMLActionWebButton text: 'Save Object' action: ('_acc_accept') asSymbol class: self uFabrikWebPreferences objectButtonClassSymbol.

	webPage add: acceptButton;
		addText: ' ';
		add: cancelButton.!

addAmberBrowserTo: webPage
	| button |

	webPage addBreak.

	button := webPage add: (WebButton text: 'Browse').
	
	button onClick: 'smalltalk.Browser._open()'!

addCommandButtonsExternal:  webPage

	self observeeCategoriesCommandsExternal do: [:each | self addRedirectButtonTo: webPage command: each actionString: each].
!

addCommandButtonsTo: webPage

	self observeeCategoriesCommands do: [:each | self addCommandButtonTo: webPage command: each actionString:  '_gcd_'.].!

addCommandButtonsWithArgumentsTo:  webPage


	self observeeCategoriesCommandsWithArgumentsWithoutCard do: [:each | self addCommandButtonTo: webPage command: each actionString:  '_gcp_'.].
!

addCommandButtonsWithCollectionTo:  webPage


	self observeeCategoriesCommandsWithCollectionWithoutCard do: [:each | self addCommandButtonTo: webPage command: each actionString:  '_gcc_'.].!

addCommandButtonsWithCollectionWithUserTo:  webPage

	self observeeCategoriesCommandsWithUserAndCollectionWithoutCard do: [:each | self addCommandButtonTo: webPage command: each actionString:  '_guc_'.].

!

addCommandButtonsWithCurrentUserTo:  webPage

	self observeeCategoriesCommandsWithUserWithoutCard do: [:each | self addCommandButtonTo: webPage command: each actionString:  '_gcu_'.].!

addCommandButtonTo: webPage command: aSymbol actionString:  actionString 
	| implementation showHideResult |

	implementation := self defaultVirtualMachine fetchMethodNamed: aSymbol for: self observee umlClass. "UMLParsedImplementation to execute"
	implementation hasShowHideMessage "has a condition to indicate to display it or not ?"
	ifFalse: [webPage addUMLActionCustomizedObjectButtonText: aSymbol capitalized action: (actionString, aSymbol) asSymbol] 
	ifTrue: [showHideResult := self observee vmPerform: implementation hideShowMessage withArguments: (Array with: umlApplicationUser). "we execute the condition"
		(showHideResult belongToVirtualMachine and: [showHideResult smalltalkObject isBoolean and: [showHideResult smalltalkObject] ])
		ifTrue: [webPage addUMLActionCustomizedObjectButtonText: aSymbol capitalized action: (actionString, aSymbol) asSymbol] ].!

addExisting: viewName
	| relatedClass setUpObjects selectionResult webGrid selectedObjects |

	relatedClass := self observee getRelatedClassForInstVarNamed: viewName.
	setUpObjects := (self defaultVirtualMachine umlModelOf: self observee umlClass) getAnyStoreObjectOf: relatedClass.

	setUpObjects isEmpty ifTrue: [^self showDialogForEmptyCollectionIn: viewName].

	webGrid := self createSelectionGridFor: viewName.

	currentPopupList := UMLWebDialogForList newFor: webGrid.

	selectionResult := self ask: currentPopupList.

	selectedObjects := selectionResult checkboxesCollection.

	selectedObjects do: [:each | self addRelated: each using: viewName].

	self redirectToView: viewName.


!

addGridButtonsIn: aWebPage for: aSymbol
	| permissionMethod |

	"(self observee umlClass hasVariableNamed: aSymbol) ifFalse: [^self]. ""if it is a method that answer a collection then we can not have automatic add/remove buttons"
	permissionMethod := ('canUpdate', aSymbol capitalized, ':') asSymbol.
	(self observee umlClass canUnderstand: permissionMethod) 
	ifTrue: [(self observee vmPerform: permissionMethod withArguments: (Array with: umlApplicationUser)) smalltalkObject
			ifFalse: [^self] ].
	(aWebPage addUMLActionCustomizedObjectButtonText: 'Add New' action: #addNewObject:).
	(aWebPage addUMLActionCustomizedObjectButtonText: 'Add Existing' action: #addExisting:).
	(aWebPage addUMLActionCustomizedObjectButtonText: 'Remove Selected' action: #removeSelected:).
	(aWebPage addUMLActionCustomizedObjectButtonText: 'Remove Duplicates' action: #removeDuplicated:).

	(self observeeCategoriesCommandsWithArgumentsWithCard select: [:each | (self observee vmPerform: each) smalltalkObject third smalltalkObject asSymbol = aSymbol ]) do: [:each | (aWebPage addUMLActionCustomizedObjectButtonText: each capitalized action: ('_gcp_', each) asSymbol)]. 

	aWebPage addBreak.!

addNewObject: viewName
	| umlClassToAdd newObject selectedClass |

	umlClassToAdd := self observee getRelatedClassForInstVarNamed: viewName.

	selectedClass := umlClassToAdd hasSubclasses ifFalse: [umlClassToAdd] ifTrue: [self selectClassFromSuperClass: umlClassToAdd].

	selectedClass ifNil: [^self].

	newObject := selectedClass newInstance.

	newObject runBehaviorInitialize.

	self addRelated: newObject using: viewName.

	self redirectToView: viewName!

addRedirectButtonTo: webPage command: aSymbol actionString:  actionString 
	| implementation showHideResult result |

	implementation := self defaultVirtualMachine fetchMethodNamed: aSymbol for: self observee umlClass. "UMLParsedImplementation to execute"
	result := (self observee vmPerform: actionString) smalltalkObject. 
	implementation hasShowHideMessage "has a condition to indicate to display it or not ?"
	ifFalse: [webPage addUMLRedirectButtonText: aSymbol capitalized action: actionString asSymbol destinationView: result] 
	ifTrue: [showHideResult := self observee vmPerform: implementation hideShowMessage withArguments: (Array with: umlApplicationUser). "we execute the condition"
		(showHideResult belongToVirtualMachine and: [showHideResult smalltalkObject isBoolean and: [showHideResult smalltalkObject] ])
		ifTrue: [webPage addUMLRedirectButtonText: aSymbol capitalized action: actionString asSymbol destinationView: result] ].!

addRelated: object using: viewName
	| relation mainLink relatedLink |

	relation := self observee relationForInstVarNamed: viewName.
	mainLink := relation getSymbolToLinkWith: self observee umlClass.
	self observee vmPerform: mainLink withArguments: (Array with: object).

	(relation relation isNavigable: object umlClass)
	ifTrue: [relatedLink := relation getSymbolToLinkWith: object umlClass.
		object vmPerform: relatedLink withArguments: (Array with: self observee).].!

addTransparentWebElmentToWorkAroundDisplayBug: aWebPage

	"1 to: 20 do: [:index | aWebPage addBreak]"!

ajaxUpdate: anOldElement from: aRequest
	"update (recreate or refresh) that element"
	| contentElement |

	anOldElement isNil ifTrue:  [^WebElement new].
	anOldElement method isNil ifTrue: [^anOldElement]. "in case of form elements it will return new value!!"
	(aRequest isAjaxPostWithInput and: [anOldElement isStubElement]) "WebButton ajaxSubmit" 
		ifTrue: [^anOldElement]. "otherwise you spoil popupStub, see WebButton prepareScriptForAjaxSubmit"
	contentElement := aRequest context elementId: aRequest ajaxContentElementId.   "will provide a new content"
	(contentElement isNil and: [aRequest context isFirst not]) ifTrue:  "did parent context register that element id?"
		[contentElement := aRequest context parent elementId: aRequest ajaxContentElementId]. 
	contentElement isNil ifTrue: [contentElement := anOldElement]. "most usual situation"

	^contentElement isWebWidget 
		ifTrue: [self ajaxUpdateWidget: anOldElement from: contentElement on: aRequest]    "for App elements"
		ifFalse: [self ajaxUpdateAppElement: anOldElement from: contentElement on: aRequest]!

ajaxUpdateAppElement: anOldElement from: aContentElement on: aRequest
	"update (recreate or refresh) that element created by a method in current App"
	| argument different new |

	argument := aRequest postDataStringAt: 'parm'.   "element creation method with an argument (parm) "
	different := (anOldElement == aContentElement) not.     "content will be from element different that old one"
	different not ifTrue: [aRequest context announceReplacementWith: anOldElement].  "only when content will be from the old element"
		"For new element.. It will be used and reset at first call of WebElement class>>new, 
		which is just in the next line below"
	new := (self class canUnderstand: aContentElement method) 
		ifTrue: [(aContentElement method asString last ~= $: ) 
			ifTrue: [self perform: aContentElement method] "this really recreate an element"
			ifFalse: [self perform: aContentElement method with: argument ] ] "object method: parm"
		ifFalse: [WebElement new method: nil].
	aRequest context cancelReplacement. "if any"
	^new!

amberScriptStartup

	^'loadAmber({
            files: [''HelloApp.js'',''Bruno-Tests.js''],
            prefix: ''file://C:/Program Files (x86)/Amber/amber-0.10/projects/hello/js'', // path for js files i think
            ready: function() {
                $(function() {
                    smalltalk.Browser._open();
                });
            }});'!

amberSourceCode

	^'http://localhost:4000/js/amber.js'!

callActionMethodForButton: aString on: aContext
	"name of button pressed is in argument"
	| method |

	(self class specialMethodsName includes: aString) ifTrue: [^self perform: aString asSymbol with: aContext view].
	((aString indexOfSubCollection: 'redirect') ~= 0) ifTrue: [^self redirectToExternalLink: (aString allButFirst: 8) asSymbol]. ""
	((aString size > 5) and: [(aString first: 5) = '_acc_']) ifTrue: [^self redirectTo: self observee view: #main]."_acc_ - Accept Button (used to accept simple entries)"
	((aString size > 5) and: [(aString first: 5) = '_cmd_']) ifTrue: [^self chooseObject: (aString allButFirst: 5) ]. "_cmd_ - For Choose objects from a collection (used in 1x1 relations)"
	((aString size > 5) and: [(aString first: 5) = '_red_']) ifTrue: [^self redirectTo: (aString allButFirst: 5) asSymbol]. ""
	((aString size > 5) and: [(aString first: 5) = '_gcd_']) ifTrue: [^self executeButtonCommand: (aString allButFirst: 5) asSymbol]. "_gcd_ - UMLActionWebButton (used for GUI - Command)"
	((aString size > 5) and: [(aString first: 5) = '_gcp_']) ifTrue: [^self executeButtonCommandWithArguments: (aString allButFirst: 5) asSymbol]. "_gcp_ - UMLActionWebButton (used for GUI - Command) with parameters"
	((aString size > 5) and: [(aString first: 5) = '_gcc_']) ifTrue: [^self executeButtonCommandWithCollection: (aString allButFirst: 5) asSymbol]. "_gcp_ - 
UMLActionWebButton (used for GUI - Command) with fixed collection"

	((aString size > 5) and: [(aString first: 5) = '_gcu_']) ifTrue: [^self executeButtonCommandWithUser: (aString allButFirst: 5) asSymbol]. "_gcu_ - 
UMLActionWebButton (used for GUI - Command User) the only argument is the Current User"

	((aString size > 5) and: [(aString first: 5) = '_guc_']) ifTrue: [^self executeButtonCommandWithUserCollection: (aString allButFirst: 5) asSymbol]. "_guc_ - 
UMLActionWebButton (used for GUI - Command User and Collection) has two arguments, the Current User and a collection obtained with a method call"

	method := self class actionMethodForView: aContext view buttonName: aString. 
	method isNil ifTrue: [^nil].
	(method asString last = $: )  
		ifTrue: [self perform: method asSymbol with: self session]
		ifFalse: [self perform: method asSymbol].!

checkUninitializedLinkObjects
	"The receiver check for uninitialized instances variables of the <observee> to initialize it and link it to the <observee>"

	(self observee objectReferencesVariables reject: [:each | each isInitialized])
		do: [:eachUninitializedObject | 
			eachUninitializedObject linkWith: self observee]!

chooseObject: className
	"Choose a possible object for the <observee> in a 1x relation for class named <className>"
	| setUpObjects selectionResult webGrid selectedObjects relation relatedLink object |

	setUpObjects := (self defaultVirtualMachine umlModelOf: self observee umlClass) getAnyStoreObjectOfClassNamed: className. "possible instances"

	setUpObjects isEmpty ifTrue: [setUpObjects add: ((self defaultVirtualMachine getAnyClassNamed: className) newInstance). setUpObjects last runBehaviorInitialize].
	webGrid := self createSelectionGridForAll: setUpObjects. "create the grid"
	currentPopupList := UMLWebDialogListSelect newFor: webGrid. "the main web dialog"
	selectionResult := self ask: currentPopupList. "a popup window to select one instance of the list"
	selectedObjects := selectionResult checkboxesCollection.

	selectedObjects isEmpty ifTrue: [^self redirectTo: self observee view: #main]. "no selected object"
	object := selectedObjects last. "selected object"

	relation := self observee umlClass getLinkVariableForClass: object umlClass. "we get the relation for <observee> and <className>"

	(relation notNil and: [relation relation isNavigable: object umlClass])
	ifTrue: [relatedLink := relation getSymbolToLinkWith: object umlClass. "the <linkSymbol> to perform the connection between both objects "
		object vmPerform: relatedLink withArguments: (Array with: self observee). "1x or Nx for <className>"
		"here we remove the observee from the collection of the current <relation attributeName> object.
		The <link object> <relation attributeName> is about to changed. The current <link object> still has the link to the <observee>, here we break that link"	
		(self observee getVariableNamed: relation attributeName) 
			vmPerform: (relation getSymbolToBreakLinkWith: object umlClass) withArguments: (Array with: self observee).].

	self observee vmPerform: #setDirectRelationWith: withArguments: (Array with: object). "1x of the <observee>"

	^self redirectToView: #main!

createConfirmationDialogIn: aWebElement

	aWebElement addTextH1: self observee umlClass name.
	aWebElement newRow.
	aWebElement cell addTextH2: 'Confirm delete ?'.
	aWebElement newRow.
	aWebElement addButtonText: 'Ok' action: #deleteOk.
	aWebElement addButtonText: 'Cancel' action: #deleteCancel.
	aWebElement newRow.
	^aWebElement!

createLinkTo: aWebElement link: linkSymbol columnIndex: columnIndex
	| smalltalkError errorString objectToLink editableLinks |

	smalltalkError := false.
	aWebElement cell addText: linkSymbol capitalized.
	aWebElement cell addBreak.
	[objectToLink := self observee vmPerform: linkSymbol] on: Error do: [:ex | smalltalkError := true. errorString := ex messageText].
	smalltalkError
	ifFalse: [(objectToLink vmPerform: #isDomainObject) smalltalkObject
		ifFalse: [aWebElement cell newCell addText: ('Error on method #', linkSymbol , ' is not a domain object !!')] 
		ifTrue: [ | accessMethod |
			accessMethod := ('canAccess', linkSymbol capitalized, ':') asSymbol.
			(self observee canUnderstand: accessMethod)
			ifTrue: [(self observee vmPerform: accessMethod withArguments: (Array with: self umlApplicationUser)) smalltalkObject
				ifFalse: [aWebElement cell addText: (objectToLink vmPerform: #printObjectName) smalltalkObject.] 
				ifTrue: [aWebElement cell addLinkTo: objectToLink text: (objectToLink vmPerform: #printObjectName) smalltalkObject.]] 
			ifFalse: [aWebElement cell addLinkTo: objectToLink text: (objectToLink vmPerform: #printObjectName) smalltalkObject.].
			aWebElement cell addBreak.
			editableLinks := self observeeEditableLinkAttributes collect: [:each | each asSymbol] .
			(((self observee umlClass allAttributesNames includes: linkSymbol asSymbol) or: [objectToLink umlClass allAttributesNames includes: linkSymbol asString]) and:[editableLinks includes: linkSymbol asSymbol])"The SET button is only for Attributes NOT Aspects"
			ifTrue: [(aWebElement cell addUMLActionButtonText: 'Set' action: ('_cmd_', objectToLink className) asSymbol)]] ]
	ifTrue: [aWebElement cell newCell addText: ('Error executing aspect [' , linkSymbol, ']', String lineDelimiter, (errorString ifNotNil: [:value | value copyWithoutAll: '<>'] ifNil: ['']))].
	aWebElement cell style: 'border-style: inset;border-width:2px;background: ', self uFabrikWebPreferences referencesHtmlLabelBackground, '; color: ', self uFabrikWebPreferences referencesLabelFontColor.
	aWebElement newCell.

!

createObjectHeaderIn: aWebElement
	| headers |

	aWebElement addTextH1: self observee umlClass name.
	aWebElement table style: 'width: 100%;'.
	aWebElement newRow.
	self uFabrikWebPreferences showHeader ifTrue: [aWebElement cell addTextH2: self uFabrikWebPreferences webHeaderLabel].
	aWebElement newRow.

	headers := self observeeObjectHeader.
	(headers isEmpty and: [self uFabrikWebPreferences showHeader]) ifTrue: [aWebElement cell addText: 'Header not defined'. aWebElement addBreak].
	headers := headers select: [:eachKey | | implementation showHideResult |
		implementation := self defaultVirtualMachine fetchMethodNamed: eachKey for: self observee umlClass. 
		((implementation == self defaultVirtualMachine nilObjectClass) not and: [implementation hasShowHideMessage])
		ifTrue: [showHideResult := self observee vmPerform: implementation hideShowMessage withArguments: (Array with: umlApplicationUser). "we execute the condition"		(showHideResult belongToVirtualMachine and: [showHideResult smalltalkObject isBoolean and: [showHideResult smalltalkObject] ])] 
		ifFalse: [true]].
	headers do: [:eachKey | | umlObject |
		aWebElement cell addText: eachKey capitalized.
		aWebElement cell addBreak.
		[umlObject := self observee vmPerform: eachKey] on: Error 
			do: [:ex | umlObject := ('Error executing aspect [', eachKey , ']', String lineDelimiter , (ex messageText copyWithoutAll: '<>'))].
		aWebElement cell newCell addText:  umlObject smalltalkObject printString.
		"aWebElement cell style: 'border-style:ridge;border-width:4px;background: ', self uFabrikWebPreferences headersHtmlLabelBackground, ';color: ', self uFabrikWebPreferences headerLabelFontColor."
		aWebElement cell style: 'border-radius: 10px;padding: 10px;border-width:4px;background: ', self uFabrikWebPreferences headersHtmlLabelBackground, ';color: ', self uFabrikWebPreferences headerLabelFontColor.
		aWebElement cell cell style: 'border-radius: 10px;padding: 6px;border-width:4px;background: ', self uFabrikWebPreferences headersHtmlValueBackground, '; color: ', self uFabrikWebPreferences headerValueFontColor.
		"aWebElement cell cell style: 'border-style:ridge;border-width:4px;background: ', self uFabrikWebPreferences headersHtmlValueBackground, '; color: ', self uFabrikWebPreferences headerValueFontColor."
		aWebElement newCell.].

	aWebElement newRow.

!

createSelectionGridFor: viewName
	| relatedClass setUpObjects |

	relatedClass := self observee getRelatedClassForInstVarNamed: viewName.
	setUpObjects := (self defaultVirtualMachine umlModelOf: self observee umlClass) getAnyStoreObjectOf: relatedClass.

	^self createSelectionGridForAll: setUpObjects!

createSelectionGridForAll: anOrderedCollection
	| objectInsideCollection mainTitles aspects variableToShowInTable categoryMethods |

	objectInsideCollection := anOrderedCollection first.
	mainTitles := OrderedCollection with: nil.
	aspects := OrderedCollection with: nil.
	categoryMethods := objectInsideCollection umlClass unorderedMethodsFor: UMLGUICollectionAspectsCategory current.

	variableToShowInTable := categoryMethods notEmpty
		ifTrue: [(categoryMethods asOrderedCollection collect: [:each | each methodName])]
		ifFalse: [(objectInsideCollection basicInstancesVariables size > 6) "we only show up to 6 variables in a object list- because after 6 variables does NOT fit into a WebPage "       ifTrue: [objectInsideCollection basicInstancesVariables keys asSortedCollection first: 6] 
			ifFalse: [objectInsideCollection basicInstancesVariables keys asSortedCollection]]. 
	variableToShowInTable do: [:eachKey | 
		mainTitles add: eachKey asString capitalized.
		aspects add: eachKey.].

	^(UMLWebGrid new width: self style pageContentWidth)
		columnNames: mainTitles asArray;
		columnAspects: aspects asArray;
		columnLinkViews: #();
		checkboxesColumn: 1 collection: OrderedCollection new;
		collection: (anOrderedCollection asSortedCollection: [:u1 :u2 | u1 printString < u2 printString]);
		"checkboxes: 1;"
		columnFilters: #() "#(nil true nil)";
		rowsOnPage: 20;
		yourself!

createSelectionGridForClass: anUMLClass
	| objectInsideCollection mainTitles aspects |

	objectInsideCollection := anUMLClass allSubclasses.
	mainTitles := OrderedCollection with: nil with: 'UML Class'.
	aspects := OrderedCollection with: nil with: #name.

	^(WebGrid new width: self style pageContentWidth)
		columnNames: mainTitles asArray;
		columnAspects: aspects asArray;
		columnLinkViews: #();
		checkboxesColumn: 1 collection: OrderedCollection new;
		collection: (objectInsideCollection asSortedCollection: [:u1 :u2 | u1 printString <= u2 printString]);
		"checkboxes: 1;"
		columnFilters: #() "#(nil true nil)";
		rowsOnPage: 20;
		yourself!

createSimpleComponentTo: aWebElement aspect: aspectSymbol columnIndex: columnIndex width: widthNumber
	| smalltalkError errorString umlObject width |

	width := 'width: ', widthNumber printString, '%'.
	smalltalkError := false.
	aWebElement cell style: 'background: ', self uFabrikWebPreferences basicValuesLabelFontColor.
	aWebElement cell addText: aspectSymbol capitalized.
	aWebElement cell addBreak.
	[umlObject := self observee vmPerform: aspectSymbol] on: Error do: [:ex | smalltalkError := true. errorString := ex messageText].
	aWebElement cell table style: 'width: 100%'.
	smalltalkError
	ifFalse: [aWebElement cell newCell addText:  ((umlObject vmPerform: #isBasic) smalltalkObject
			ifTrue: [umlObject smalltalkObject printUMLFormat] 
			ifFalse: ['Error on method #', aspectSymbol , ' is not a simple object !!']).]
	ifTrue: [aWebElement cell newCell addText: ('Error executing aspect [' , aspectSymbol , ']', String lineDelimiter, ((errorString ifNil: [''] ifNotNil: [:value | value]) copyWithoutAll: '<>') ) ].
	aWebElement cell style: width, ' ; border-style: inset; border-width:2px; background: ', self uFabrikWebPreferences basicValuesHtmlLabelBackground, '; color: ', self uFabrikWebPreferences basicValuesLabelFontColor.
	aWebElement cell cell style: 'margin-right: -10px; width: 100%; border-style: inset;border-width:1px;background: ', self uFabrikWebPreferences basicValuesHtmlValueBackground, '; color: ', self uFabrikWebPreferences basicValuesValueFontColor.

	aWebElement newCell.!

createSimpleComponentTo2: aWebElement aspect: aspectSymbol columnIndex: columnIndex width: widthNumber
	| smalltalkError errorString umlObject width |

	width := 'width: ', widthNumber printString, '%'.
	smalltalkError := false.
	aWebElement cell style: 'width: 50%; padding: 5px;border-radius: 10px; border-width:2px; background: ', self uFabrikWebPreferences basicValuesHtmlLabelBackground, '; color: ', self uFabrikWebPreferences basicValuesLabelFontColor.
	aWebElement cell addText: aspectSymbol capitalized.
	[umlObject := self observee vmPerform: aspectSymbol] on: Error do: [:ex | smalltalkError := true. errorString := ex messageText].
	aWebElement cell table style: 'width: 100%'.
	smalltalkError
	ifFalse: [aWebElement newCell addText:  ((umlObject vmPerform: #isBasic) smalltalkObject
			ifTrue: [umlObject smalltalkObject printUMLFormat] 
			ifFalse: ['Error on method #', aspectSymbol , ' is not a simple object !!']).]
	ifTrue: [aWebElement cell newCell addText: ('Error executing aspect [' , aspectSymbol , ']', String lineDelimiter, ((errorString ifNil: [''] ifNotNil: [:value | value]) copyWithoutAll: '<>') ) ].
	aWebElement cell style: width, ' ; padding: 5px;border-radius: 10px; border-width:2px; background: ', self uFabrikWebPreferences basicValuesHtmlValueBackground, '; color: ', self uFabrikWebPreferences basicValuesValueFontColor .


	aWebElement newCell.!

createSimpleWebComponentsForEditIn: webPage
                | simpleAspects aspectsNames widthNumber |

	self uFabrikWebPreferences showBasicValues ifTrue: [webPage addTextH2: self uFabrikWebPreferences webBasicLabel].
	simpleAspects := self observeeSimpleObjects copyWithoutDuplicates.
	widthNumber := (simpleAspects size = 0) ifFalse: [(100 / ((simpleAspects size > 4) ifTrue: [4] ifFalse: [simpleAspects size]) ) integerPart.] ifTrue: [100].    
	(self observee umlClass canUnderstand: #editableAttributesFor:)
	ifTrue: [aspectsNames := (self observee vmPerform: #editableAttributesFor: withArguments: (Array with: umlApplicationUser)).
			(aspectsNames belongToVirtualMachine and: [(aspectsNames smalltalkClass == Array) and: [aspectsNames smalltalkObject allSatisfy: [:each | each smalltalkClass == String] ] ])
			ifTrue: [aspectsNames := aspectsNames smalltalkObject collect: [:each | each smalltalkObject asSymbol].
					simpleAspects := simpleAspects select: [:each | aspectsNames includes: each]]].
	simpleAspects do: [:eachKey |
			self createValueComponentTo2: webPage aspect: eachKey width: widthNumber.
			webPage newRow].
	"newRow <tr> tag"!

createSimpleWebControlsIn: aWebElement
	| webLinksDiv webAttributesDiv |

	webLinksDiv := WebElement newDiv.
	aWebElement add: webLinksDiv.
	self uFabrikWebPreferences showReferences ifTrue: [webLinksDiv addTextH2: self uFabrikWebPreferences webReferencesLabel].
	self checkUninitializedLinkObjects. "is any Link Object (1x relation) is uninitialized --> we initialize it and link to the observee "
	self createWebLinkElementsTo: webLinksDiv. "Link Aspects - we create Web Link for these Aspects "
	webAttributesDiv := WebElement newDiv.
	aWebElement add: webAttributesDiv.
	self uFabrikWebPreferences showBasicValues ifTrue: [webAttributesDiv addTextH2: self uFabrikWebPreferences webBasicLabel].
	self createWebSimpleElementsTo2: webAttributesDiv. "Simple Aspects - we create simple Components for these Aspects "!

createValueComponentTo: webPage aspect: symbolAspect width: widthNumber
	| simpleWebElement umlObject width |

	width :=  'width: ', widthNumber printString, '%;'.
	webPage cell addText: symbolAspect capitalized.
	webPage cell addBreak.
	webPage cell table style: 'width: 100%; padding-right: 10px;'.
	umlObject := self observee vmPerform: symbolAspect.
	umlObject belongToVirtualMachine 
	ifFalse: [webPage cell addText: 'Error on method #', symbolAspect , ' is not a simple object !!'] 
	ifTrue: [ | componentClass |
		componentClass := WebComponentsDirectMap at: umlObject smalltalkClass. "here we map the type of the inst var with the Web Component"
		((componentClass == UMLWebInputField) and: [self observeeAspectIsLargeString: symbolAspect]) ifTrue: [componentClass := UMLWebTextArea].
		simpleWebElement := componentClass new initialize aspect: symbolAspect for: self observee. "<input> tag"
		simpleWebElement style: 'width: 96%; margin-left: 3px;'.
		webPage cell newCell add: simpleWebElement.].
	webPage cell style: 'border-style: inset;border-width:2px;background: lavender; color: black; ', width.
	webPage cell cell style: 'border-style:inset;border-width:1px;background: lightgray; color: black; width: 95%'.
	webPage newCell.

	"newCell --- <td> tag"!

createValueComponentTo2: webPage aspect: symbolAspect width: widthNumber
	| simpleWebElement umlObject |

	webPage cell addText: symbolAspect capitalized.
	webPage cell style: 'width: 50%; padding: 5px;border-radius: 10px;border-width:2px;background: ', self uFabrikWebPreferences basicValuesHtmlLabelBackground,'; color: black;'.
	webPage cell addBreak.
	webPage cell table style: 'width: 100%; padding-right: 10px;'.
	umlObject := self observee vmPerform: symbolAspect.
	umlObject belongToVirtualMachine 
	ifFalse: [webPage cell addText: 'Error on method #', symbolAspect , ' is not a simple object !!'] 
	ifTrue: [ | componentClass |
		componentClass := WebComponentsDirectMap at: umlObject smalltalkClass. "here we map the type of the inst var with the Web Component"
		((componentClass == UMLWebInputField) and: [self observeeAspectIsLargeString: symbolAspect]) ifTrue: [componentClass := UMLWebTextArea].
		simpleWebElement := componentClass new initialize aspect: symbolAspect for: self observee. "<input> tag"
		simpleWebElement style: 'width: 93%; margin-left: 3px;padding: 5px;border-radius: 10px;'.
		webPage newCell add: simpleWebElement.].
	webPage cell style: 'padding: 5px;border-radius: 10px;border-width:2px;background: ', self uFabrikWebPreferences basicValuesHtmlValueBackground, '; color: black; width: 50%; '.
	webPage newCell.

	"newCell --- <td> tag"!

createWebLinkElementsTo: aWebElement

	aWebElement table style: 'width: 100%'.
	(self observeeLinkObjects, self observeeCategoriesLinkObjects) do: [:eachKey | | implementation showHideResult |
		implementation := self defaultVirtualMachine fetchMethodNamed: eachKey for: self observee umlClass. 
		((implementation == self defaultVirtualMachine nilObjectClass) not and: [implementation hasShowHideMessage])
		ifTrue: [showHideResult := self observee vmPerform: implementation hideShowMessage withArguments: (Array with: umlApplicationUser). "we execute the condition"		(showHideResult belongToVirtualMachine and: [showHideResult smalltalkObject isBoolean and: [showHideResult smalltalkObject] ])
			ifTrue: [self createLinkTo: aWebElement link: eachKey columnIndex: 1.	]] 
		ifFalse: [self createLinkTo: aWebElement link: eachKey columnIndex: 1.].].!

createWebSimpleElementsTo: aWebElement
                | simpleObjects columnIndex widthNumber |

	columnIndex := 0.
	simpleObjects := (self observeeSimpleObjects, self observeeCategoriesSimpleObjects) copyWithoutDuplicates.
	widthNumber := (simpleObjects size = 0) ifFalse: [(100 / ((simpleObjects size > 4) ifTrue: [4] ifFalse: [simpleObjects size]) ) integerPart.] ifTrue: [100]. 
	simpleObjects  do: [:eachKey | | implementation showHideResult |
			(columnIndex = 4) ifTrue: [aWebElement newRow. columnIndex := 0].
			implementation := self defaultVirtualMachine fetchMethodNamed: eachKey for: self observee umlClass.
			((implementation == self defaultVirtualMachine nilObjectClass) not and: [implementation hasShowHideMessage])
			ifTrue: [showHideResult := self observee vmPerform: implementation hideShowMessage withArguments: (Array with: umlApplicationUser). "we execute the condition"                   (showHideResult belongToVirtualMachine and: [showHideResult smalltalkObject isBoolean and: [showHideResult smalltalkObject] ])
							ifTrue: [self createSimpleComponentTo: aWebElement aspect: eachKey columnIndex: columnIndex width: widthNumber] ]
			ifFalse: [self createSimpleComponentTo: aWebElement aspect: eachKey columnIndex: columnIndex width: widthNumber].
			columnIndex := columnIndex + 1.].!

createWebSimpleElementsTo2: aWebElement
                | simpleObjects |

	simpleObjects := (self observeeSimpleObjects, self observeeCategoriesSimpleObjects) copyWithoutDuplicates.
	simpleObjects  do: [:eachKey | | implementation showHideResult |
		implementation := self defaultVirtualMachine fetchMethodNamed: eachKey for: self observee umlClass.
		((implementation == self defaultVirtualMachine nilObjectClass) not and: [implementation hasShowHideMessage])
		ifTrue: [showHideResult := self observee vmPerform: implementation hideShowMessage withArguments: (Array with: umlApplicationUser). "we execute the condition"                   
			(showHideResult belongToVirtualMachine and: [showHideResult smalltalkObject isBoolean and: [showHideResult smalltalkObject] ])
				ifTrue: [self createSimpleComponentTo2: aWebElement aspect: eachKey columnIndex: 1 width: 100] ]
		ifFalse: [self createSimpleComponentTo2: aWebElement aspect: eachKey columnIndex: 1 width: 100].
		aWebElement newRow].!

displayCollectionMismatchErrorFor: aSymbol in: aWebPage

	aWebPage addTextBold: ('The method #', aSymbol asString,' of the class [', self observee umlClass name, '] does not answer aCollection !!')!

displayTabAspectError: errorString for: aSymbol in: aWebPage
	| desc |

	desc := errorString ifNil: [''] ifNotNil: [:value | value].
	self createObjectHeaderIn: aWebPage.
	aWebPage cell addTextH2: ('Collection of ', aSymbol capitalized, '(s)').
	aWebPage newRow.
	aWebPage addText: ('Error executing aspect [', aSymbol, ']').
	aWebPage addBreak; 
		addText: ((desc copyWithoutAll: '>') copyWithoutAll: '<') color: #red.!

executeButtonCommand: aSymbol
	| result |

	((aSymbol occurrencesOf: $:) ~= 0)  
	ifTrue: [ | error |
		error := self defaultVirtualMachine errorClass newInstance.
		error smalltalkObject messageText: 'Simple Command can NOT have arguments !!'.
		^self redirectTo: error].

	result := self observee vmPerform: aSymbol.

	(result umlClassName = 'EditableObject') ifTrue: [^self redirectTo: result editableObject view: #edit].
	
	"(result belongToVirtualMachine and: [result smalltalkClass == String]) ifTrue: [self show: (UMLWebDialog newInfo text: result smalltalkObject).]."

	^self redirectTo: result "self observee"!

executeButtonCommandWithArguments: aSymbol
	 | commandStructure arguments result |

	commandStructure := Array new: 3.
	[commandStructure at: 1 put: (self observee vmPerform: aSymbol) smalltalkObject first smalltalkObject] 	
		on: Error 
		do: [:ex | ^('Error: ', ex messageText) asUMLObject: self defaultVirtualMachine ].
	[commandStructure at: 2 put: (self observee vmPerform: aSymbol) smalltalkObject second smalltalkObject.]
		on: Error 
		do: [:ex | ^('Error: ', ex messageText) asUMLObject: self defaultVirtualMachine ].
	arguments := OrderedCollection new.
	commandStructure second do: [:eachArgumentType | "eachArgumentType = OrderedCollection(2): 1- UML Class 2- true/false to indicate if is a instance or class list [true for instance list]"
		arguments add: (self getArgumentsForCommand: eachArgumentType for: aSymbol).].

	(arguments anySatisfy: [:each | each isNil]) ifTrue: [^self redirectTo: self observee view: #main].

	result := [self observee vmPerform: commandStructure first asSymbol withArguments: (arguments asArray collect: [:each | each asUMLObject: self defaultVirtualMachine])]	
		on: Error 
		do: [:ex | ('Error: ', ex description) asUMLObject: self defaultVirtualMachine ].

	(result umlClassName = 'EditableObject') ifTrue: [^self redirectTo: result editableObject view: #edit].

	self redirectTo: result view: #main!

executeButtonCommandWithCollection: aSymbol
	 | commandStructure result webDialog webDialogResult selectedArgs |

	commandStructure := Array new: 3.
	[commandStructure at: 1 put: (self observee vmPerform: aSymbol) smalltalkObject first smalltalkObject] 	
		on: Error 
		do: [:ex | ^('Error: ', ex messageText) asUMLObject: self defaultVirtualMachine ].
	[commandStructure at: 2 put: (self observee vmPerform: aSymbol) smalltalkObject second smalltalkObject.]
		on: Error 
		do: [:ex | ^('Error: ', ex messageText) asUMLObject: self defaultVirtualMachine ].

	webDialog := UMLWebDialogListSelect newFor: (self createSelectionGridForAll: commandStructure second first smalltalkObject).
	webDialogResult := self ask: webDialog.
	selectedArgs := webDialogResult checkboxesCollection.

	selectedArgs isEmpty ifTrue: [^self redirectTo: self observee view: #main].

	result := [self observee vmPerform: commandStructure first asSymbol withArguments: selectedArgs asArray]
	on: Error 
	do: [:ex | ('Error: ', ex description) asUMLObject: self defaultVirtualMachine ].

	(result umlClassName = 'EditableObject') ifTrue: [^self redirectTo: result editableObject view: #edit].

	self redirectTo: result view: #main!

executeButtonCommandWithUser: aSymbol
	 | currentUser result |
	
	currentUser := self getUserFromUMLApplication.
	result := self observee vmPerform: aSymbol withArguments: (Array with: currentUser).
	(result umlClassName = 'EditableObject') ifTrue: [^self redirectTo: result editableObject view: #edit].
	^self redirectTo: result view: #main!

executeButtonCommandWithUserCollection: aSymbol
	 | commandStructure result webDialog webDialogResult selectedArgs currentUserResult |

	commandStructure := Array new: 3.
	[commandStructure at: 1 put: (self observee vmPerform: aSymbol) smalltalkObject first smalltalkObject] 	
		on: Error 
		do: [:ex | ^('Error: ', ex messageText) asUMLObject: self defaultVirtualMachine ].
	[commandStructure at: 2 put: (self observee vmPerform: aSymbol) smalltalkObject second smalltalkObject.]
		on: Error 
		do: [:ex | ^('Error: ', ex messageText) asUMLObject: self defaultVirtualMachine ].

	currentUserResult := self getUserFromUMLApplication vmPerform: commandStructure second first smalltalkObject asSymbol.
	webDialog := UMLWebDialogListSelect newFor: (self createSelectionGridForAll: currentUserResult smalltalkObject).
	webDialogResult := self ask: webDialog.
	selectedArgs := webDialogResult checkboxesCollection.

	selectedArgs isEmpty ifTrue: [^self redirectTo: self observee view: #main].

	result := [self observee vmPerform: commandStructure first asSymbol withArguments: (selectedArgs, (OrderedCollection with: self getUserFromUMLApplication)) asArray]
	on: Error 
	do: [:ex | ('Error: ', ex description) asUMLObject: self defaultVirtualMachine ].

	(result umlClassName = 'EditableObject') ifTrue: [^self redirectTo: result editableObject view: #edit].

	self redirectTo: result view: #main!

getArgumentsForCommand: anUMLCollection for: aSymbol
	| smalltalkCollection |

	smalltalkCollection := anUMLCollection smalltalkObject.
	^smalltalkCollection first belongToVirtualMachine
	ifTrue: [self getBasicArgumentFrom: smalltalkCollection for: aSymbol] 
	ifFalse: [self getDomainObjectArgumentsFrom: smalltalkCollection for: aSymbol].!

getBasicArgumentFrom: anOrderedCollection for: aSymbol
	"Popup a window to enter the basic value "

	(self isCollection: anOrderedCollection first) ifTrue: [^self showErrorByCollectionFor.]. "Simple argument"

	^self getNewBasicValueOf: anOrderedCollection first for: aSymbol!

getDomainObjectArgumentsFrom: anOrderedCollection for: aSymbol
	"Popup a window to select a new argument for the method <aSymbol>, can be a collection of instances or a collection of classes (class hierarchy) "
	| umlClass | 

	umlClass := anOrderedCollection first.
	^(anOrderedCollection second smalltalkObject) "is list of UMLInstances (or UMLClasses)"
	ifTrue: [self getUMLInstancesOf: umlClass]
	ifFalse: [self getUMLClassesOf: umlClass].!

getSimpleAspectsFor: anUMLInstance
	| categoryMethods |

	categoryMethods := anUMLInstance umlClass unorderedMethodsFor: UMLGUICollectionAspectsCategory current.
	^categoryMethods isEmpty
	ifTrue: [ (anUMLInstance basicInstancesVariables size > 6) 
		ifTrue: [anUMLInstance basicInstancesVariables keys asSortedCollection first: 6] 
		ifFalse: [anUMLInstance basicInstancesVariables keys asSortedCollection].]
	ifFalse:[(categoryMethods asOrderedCollection collect: [:each | each methodName])]!

getUMLClassesOf: anUMLClass 
	"Get all subclasses of <anUMLClass> and popup a list to select one of the classes of the list"
	| selectedArg webDialog webDialogResult | 

	^anUMLClass subclasses isEmpty
	ifTrue: [anUMLClass] 
	ifFalse: [webDialog := UMLWebDialogListSelect newFor: (self createSelectionGridForClass: anUMLClass).
		webDialogResult := self ask: webDialog.
		selectedArg := webDialogResult checkboxesCollection.
		selectedArg isEmpty ifTrue: [^nil].
		selectedArg last].!

getUMLInstancesOf: anUMLClass 
	"Get all stored instance (both caches) of class <anUMLClass> and popup a list to select one of the instance of the list"
	| umlModel availableArguments selectedArg webDialog webDialogResult | 

	umlModel := self defaultVirtualMachine umlModelOf: anUMLClass.
	availableArguments := umlModel getAnyStoreObjectOf: anUMLClass. "check for both caches "
	availableArguments := availableArguments isEmpty 
		ifTrue: [  | newObject |  "if the cache is empty then we answer a new object "
			newObject := anUMLClass newInstance runBehaviorInitialize; yourself. 
			OrderedCollection with: newObject]  
		ifFalse: [availableArguments].
	webDialog := UMLWebDialogListSelect newFor: (self createSelectionGridForAll: availableArguments).
	webDialogResult := self ask: webDialog.
	selectedArg := webDialogResult checkboxesCollection.
	selectedArg isEmpty ifTrue: [^nil].
	^selectedArg last!

getUserFromUMLApplication
	| arguments |

	arguments := Array with: ((self session user username) asUMLObject: self defaultVirtualMachine) "passing the AIDA Web User as arguments to the UML Application"
					with: ((self session user password) asUMLObject: self defaultVirtualMachine).

	umlApplicationUser := self umlApplicationLoginManager vmPerform: #getLoginMainObjectFor:password: withArguments: arguments.

	^umlApplicationUser!

isCollection: anUMLVirtualMachineClass 

	(anUMLVirtualMachineClass  smalltalkClass == String) ifTrue: [^false].
	^Collection allSubclasses includes: anUMLVirtualMachineClass smalltalkClass
!

isUMLApplication

	^true!

observeeAspectIsLargeString: eachKey

"	^(self observee umlClass getVariableNamed: eachKey ifNone: [^false]) isLargeString"

	^(self observee umlClass getAnyVariableNamed: eachKey ifNone: [^false]) isLargeString
!

observeeCategoriesCollections

	^self observee umlClass categoriesCollections!

observeeCategoriesCommands
	| collectionMethods |

	collectionMethods := OrderedCollection new.
	(self observee umlClass getAllCategories select: [:each | each isGUICategory and: [each isCommandCategory and: [each hasArguments not and: [each isCommandCollection not and: [each isExternalCategory not] ] ] ] ]) do: [:eachCategory |
		collectionMethods addAll: (eachCategory methodsFor: self observee umlClass).].

	^(collectionMethods collect: [:each | each methodName]) asSortedCollection!

observeeCategoriesCommandsExternal
	| collectionMethods |

	collectionMethods := OrderedCollection new.
	(self observee umlClass getAllCategories select: [:each | each isGUICategory and: [each isCommandCategory and: [each isExternalCategory] ] ]) do: [:eachCategory |
		collectionMethods addAll: (eachCategory methodsFor: self observee umlClass).].

	^(collectionMethods collect: [:each | each methodName]) asSortedCollection!

observeeCategoriesCommandsWithArguments
	| collectionMethods |

	collectionMethods := OrderedCollection new.
	(self observee umlClass getAllCategories select: [:each | each isGUICategory and: [each isCommandCategory and: [each hasArguments and: [each isCommandUser not] ] ] ]) do: [:eachCategory |
		collectionMethods addAll: (eachCategory methodsFor: self observee umlClass).].

	^(collectionMethods collect: [:each | each methodName]) asSortedCollection!

observeeCategoriesCommandsWithArgumentsWithCard
	| collectionMethods |

	collectionMethods := OrderedCollection new.
	(self observee umlClass getAllCategories select: [:each | each isGUICategory and: [each isCommandCategory and: [each hasArguments and: [each isCommandUser not] ] ] ]) do: [:eachCategory |
		collectionMethods addAll: (eachCategory methodsFor: self observee umlClass).].

	collectionMethods := collectionMethods select: [:each | (self observee vmPerform: each methodName) smalltalkObject size = 3].

	^(collectionMethods collect: [:each | each methodName]) asSortedCollection!

observeeCategoriesCommandsWithArgumentsWithoutCard
	| collectionMethods |

	collectionMethods := OrderedCollection new.
	(self observee umlClass getAllCategories select: [:each | each isGUICategory and: [each isCommandCategory and: [each hasArguments and: [each isCommandUser not]] ] ]) do: [:eachCategory |
		collectionMethods addAll: (eachCategory methodsFor: self observee umlClass).].

	collectionMethods := collectionMethods select: [:each | (self observee vmPerform: each methodName) smalltalkObject size = 2].

	^(collectionMethods collect: [:each | each methodName]) asSortedCollection!

observeeCategoriesCommandsWithCollectionWithCard
	| collectionMethods |

	collectionMethods := OrderedCollection new.
	(self observee umlClass getAllCategories select: [:each | each isGUICategory and: [each isCommandCategory and: [each isCommandCollection] ] ]) do: [:eachCategory |
		collectionMethods addAll: (eachCategory methodsFor: self observee umlClass).].

	collectionMethods := collectionMethods select: [:each | (self observee vmPerform: each methodName) smalltalkObject size = 3].

	^(collectionMethods collect: [:each | each methodName]) asSortedCollection!

observeeCategoriesCommandsWithCollectionWithoutCard
	| collectionMethods |

	collectionMethods := OrderedCollection new.
	(self observee umlClass getAllCategories select: [:each | each isGUICategory and: [each isCommandCategory and: [each isCommandCollection and:[each isUserAndCollectionCategory not]] ] ]) do: [:eachCategory |
		collectionMethods addAll: (eachCategory methodsFor: self observee umlClass).].

	collectionMethods := collectionMethods select: [:each | (self observee vmPerform: each methodName) smalltalkObject size = 2].

	^(collectionMethods collect: [:each | each methodName]) asSortedCollection!

observeeCategoriesCommandsWithUserAndCollectionWithoutCard
	| collectionMethods |

	collectionMethods := OrderedCollection new.
	(self observee umlClass getAllCategories select: [:each | each isGUICategory and: [each isCommandCategory and: [each isUserAndCollectionCategory] ] ]) do: [:eachCategory |
		collectionMethods addAll: (eachCategory methodsFor: self observee umlClass).].

	^(collectionMethods collect: [:each | each methodName]) asSortedCollection!

observeeCategoriesCommandsWithUserWithoutCard
	| collectionMethods |

	collectionMethods := OrderedCollection new.
	(self observee umlClass getAllCategories select: [:each | each isGUICategory and: [each isCommandCategory and: [each isCommandUser] ] ]) do: [:eachCategory |
		collectionMethods addAll: (eachCategory methodsFor: self observee umlClass).].

	^(collectionMethods collect: [:each | each methodName]) asSortedCollection!

observeeCategoriesLinkObjects
	| linkObjectMethods |

	linkObjectMethods := OrderedCollection new.
	(self observee umlClass getAllCategories select: [:each | each isGUICategory and: [each isModelObjectCategory] ]) do: [:eachCategory | 
		linkObjectMethods addAll: (eachCategory methodsFor: self observee umlClass).].

	^(linkObjectMethods collect: [:each | each methodName]) asSortedCollection!

observeeCategoriesSimpleObjects
	| simpleObjectsMethods |

	simpleObjectsMethods := OrderedCollection new.
	(self observee umlClass getAllCategories select: [:each | each isGUICategory and: [each isValueCategory] ]) do: [:eachCategory | 
		simpleObjectsMethods addAll: (eachCategory methodsFor: self observee umlClass).	].

	^(simpleObjectsMethods collect: [:each | each methodName]) asSortedCollection!

observeeCollectionVariables

	^self observeeEnablesVariablesFor: self observee collectionVariables keys asSortedCollection
!

observeeEditableLinkAttributes
	| aspectsNames smalltalkAspectsNames |

	(self observee umlClass canUnderstand: #editableAttributesFor:) ifFalse: [^self observeeLinkObjects].

	aspectsNames := (self observee vmPerform: #editableAttributesFor: withArguments: (Array with: umlApplicationUser)).
	smalltalkAspectsNames := aspectsNames smalltalkObject collect: [:each | each smalltalkObject asSymbol].

	^self observeeLinkObjects select: [:each | smalltalkAspectsNames includes: each].!

observeeEnablesVariablesFor: anOrderedCollection
	| umlClass |

	umlClass := self observee umlClass.

	^anOrderedCollection select: [:each | | var |
		var := umlClass getAnyVariableNamed: each.
		var smalltalkObject notNil and: [var isEnabled]]

!

observeeLinkObjects

	^self observeeEnablesVariablesFor: self observee objectReferencesVariables keys asSortedCollection!

observeeObjectHeader

	^(UMLGUIObjectHeader current unorderedMethodsFor: self observee umlClass) asOrderedCollection collect: [:each | each methodName]!

observeeSimpleObjects

	^(self observeeEnablesVariablesFor: self observee basicInstancesVariables keys asSortedCollection) copyWithoutDuplicates!

performViewMethod: aSymbol
	| webComponent objectInstVarName |

	((aSymbol indexOfSubCollection: #view) isZero or: [aSymbol = #viewMain]) ifTrue: [^super performViewMethod: aSymbol].

	webComponent := WebElement new.
	self setTabsIn: webComponent.
	"webComponent addBreak;addBreak;addBreak;addBreak;addBreak;addBreak;addBreak;addBreak;addBreak;addBreak;addBreak."

	objectInstVarName := (aSymbol subStrings: #view) last.
	objectInstVarName := (objectInstVarName first asLowercase asString, objectInstVarName allButFirst) asSymbol.

	self showCollectionIn: webComponent forInstVarNamed: objectInstVarName.

	self style pageFrameWith: webComponent title: self observee className observee: self observee!

printWebPageFor: aRequest 
	| ctx |

	ctx := self findCreateOrSerializeContextFor: aRequest. "for posts and ajax just find, never create. Req's context is also set"
	ctx  isNil 
	ifTrue: [aRequest headers fields removeKey: 'X-REQUESTED-WITH' ifAbsent: [].
		ctx := self findCreateOrSerializeContextFor: aRequest.
		ctx ifNil: [^nil] ].
	(aRequest isPost and: [aRequest isAjaxRequest not]) "be sure to call that before any post data is accessed!! "
		ifTrue: [ctx form registerStreamedFieldsInto: aRequest]. 
	aRequest isPost ifTrue: [ctx startProcess].             "if not already. Always for posts and Ajax"
	ctx isExecutingInOwnProcess 
		ifTrue: 
			[ctx executeRequest: aRequest. "in ctx's process, will actually call our #printWebPageStepTwoFor:"
			ctx first mainSemaphore wait. "Dolphin fix" "until context's process signal end of executing"
			ctx first initMainSemaphore.
			aRequest context isFirst ifTrue: [ctx stopProcess].
			^aRequest context result] "resulted page of context execution"
		ifFalse: [^self printWebPageStepTwoFor: aRequest].!

printWebPageStepTwoFor: aRequest 
	| toLogin |

	self observee isMultilingual 
		ifTrue: [self checkObserveeLanguageFor: aRequest ].  "and change observee if needed"
	self isObserveeVersioned 
		ifTrue: [self checkObserveeVersionFor: aRequest ]. "and change observee if needed"
	toLogin := false. "self isEncryptionSatisfied ifTrue: [toLogin := true]."
	(aRequest  isPost and: [aRequest  isAjaxRequest not]) ifTrue: 
		[(self updateAllowed: aRequest context view) 
			ifTrue: [self acceptInputsAndActionFrom: aRequest] ifFalse: [toLogin := true] ].
	toLogin ifTrue:
		[(self observee == self site admin and: [self session newView = 'login']) 
			ifFalse: [self redirectTo: self site admin view: #login].
		^WebPage new].
	self session lastApp: self. "!!!!!!"
 	aRequest isAjaxRequest ifTrue: [^self respondToAjaxRequest: aRequest].
	self session shouldRedirect ifTrue: [^WebPage new].
	self setProcessFromTaskId. "for BPM engine, if present"
	^self printWebView: aRequest context view for: aRequest.!

printWebView: aViewSymbol for: aRequest
 	"build a web page for that view"
	| method page form |

	aRequest context page 
		clear; initPageHeaderLinks.
	method := self class viewMethodForView: aViewSymbol. 
	method isNil ifTrue: [^WebElement new addTextH3: 'ERROR: view named ', aViewSymbol printString, ' does not exist'; yourself].
	^(self viewAllowed: aViewSymbol)
		ifTrue: [page := (self class canUnderstand: method) ifTrue: [self perform: method] ifFalse: [self performViewMethod: method].
			page isWebApplication ifTrue: 
				[form := aRequest context form.
				self session inTranslationMode ifTrue: [form prepareForTranslation]. "in-line edit"
				form registerFormElements]. "after above transl.preparation!!"
			self storeThisUrl.
			"self announceView: aViewSymbol." "Dolphin fix"
			page]
		ifFalse: [self redirectTo: self site admin view: #login.
			WebPage new].!

redirectToExternalLink: aSymbol
	| result |

	((aSymbol occurrencesOf: $:) ~= 0)  
	ifTrue: [ | error |
		error := self defaultVirtualMachine errorClass newInstance.
		error smalltalkObject messageText: 'Simple Command can NOT have arguments !!'.
		^self redirectTo: error].

	result := (self observee vmPerform: aSymbol) smalltalkObject.
	
	^self redirectTo: result!

removeDuplicated: viewName
	| umlCollection |

	umlCollection := self observee getVariableOrImplementationNamed: viewName.
	
	umlCollection smalltalkObject: umlCollection smalltalkObject copyWithoutDuplicates.

	self redirectToView: viewName.
	


!

removeObjectsFromObservee: anOrderedCollection viewName: viewName

	anOrderedCollection do: [:each | | relation mainLink relatedLink mainArgs relatedArgs |
		relation := self observee relationForInstVarNamed: viewName.
		mainLink := relation getSymbolToBreakLinkWith: self observee umlClass.
		mainArgs := (mainLink = #setDirectRelationWith:) ifTrue: [Array with: self defaultVirtualMachine nilObject] ifFalse: [Array with: each].
		self observee vmPerform: mainLink withArguments: mainArgs.

		(relation relation isNavigable: each umlClass)
		ifTrue:[relatedLink := relation getSymbolToBreakLinkWith: each umlClass.
			relatedArgs := (relatedLink = #setDirectRelationWith:) ifTrue: [Array with: (self observee umlClass newInstance)] ifFalse: [Array with: self observee].
			each vmPerform: relatedLink withArguments: relatedArgs.].].
	self redirectToView: viewName.
!

removeSelected: viewName
	| objectsToDelete |

	(self ask: (UMLWebDialog newConfirm text: 'Delete selected Objects ?')) ifFalse: [^self redirectToView: viewName].

	objectsToDelete := currentTabList checkboxesCollection.

	self removeObjectsFromObservee: objectsToDelete viewName: viewName.

!

respondToAjaxRequest: aRequest
	| oldElement e result ctx |

	oldElement := aRequest context elementId: aRequest ajaxElementId.
	aRequest isAjaxInPlaceEditingRequest ifTrue: [^self respondToAjaxInPlaceEditing: aRequest].
	aRequest isAjaxPostWithInput ifTrue: [^self acceptInputsAndActionFrom: aRequest].
	aRequest isAjaxAutocompleteRequest ifTrue: [^self respondToAjaxAutocomplete: aRequest].
	aRequest isAjaxCloseWindowRequest ifTrue: [^self respondToAjaxCloseWindow: aRequest].
	aRequest isAjaxPopupWindowRequest 
		ifTrue: 
			[ctx := aRequest context createNewContext. "is also added to context chain and also to this app"
			ctx request: aRequest.
			aRequest context: ctx. "switch to a new context during th rest of execution"
			e := self ajaxUpdate: oldElement from: aRequest. "recreate the element"
			e := self wrap: e intoPopupWindow: ctx window] "e is now window with wrapped element"
		ifFalse: 
			[e := self ajaxUpdate: oldElement from: aRequest]. "update (recreate or refresh) that element"
	e adaptFormElements.
	aRequest context form registerFormElementsIn: e. 
	e prepareToHTMLPrintOn: self session. "to prepare again"
	result := e copy.
	result nilAttributes. "to be just plain element, no div,  to send inner html of original element only"
	aRequest context result: result.
	^result!

selectClassFromSuperClass: anUMLClass
	| webGrid selectionResult selectedObjects |

	webGrid :=  self createSelectionGridForClass: anUMLClass.

	currentPopupList := UMLWebDialogForList newFor: webGrid.

	selectionResult := self ask: currentPopupList.

	selectedObjects := selectionResult checkboxesCollection.

	selectedObjects isEmpty ifTrue: [^nil].

	^selectedObjects last!

setTabsIn: webPage
	| newDiv |

	webPage add: self viewTabComponent.
	webPage style: self tabSectionStyle.
	newDiv := webPage class newDiv.
	webPage add: newDiv.
	self createObjectHeaderIn: newDiv.!

show: aWebElement
	"show something like info dialog. Stop execution here until the dialog is closed. 
	See WebDemoApp control flow for examples"
	| ourCtx popupCtx |

	ourCtx := self context.
	popupCtx := ourCtx request context createNewContext. "is also added to context chain and also to this app"
	popupCtx request: ourCtx request.
	ourCtx request context: popupCtx. "switch to a new context during the rest of execution"
	popupCtx result:
		(self wrap: aWebElement intoPopupWindow: popupCtx window). "e is now window with wrapped element"
	"popupCtx result changeContextFrom: ourCtx to: popupCtx." "scan for all references to contexts and change them"
	popupCtx form registerFormElementsIn: aWebElement.  "probably already, but just to be sure"
	ourCtx first mainSemaphore signal. "to return that popup"
	ourCtx wait.
	"now the execution of our process is interrupted until the popup window and therefore its context is closed"!

showCollection: anOrderedCollection forSimpleObjects: aSymbol in: aWebPage
	| mainTitles |

	mainTitles := OrderedCollection new.
	mainTitles add: anOrderedCollection first className.
	currentTabList := (UMLWebGrid new width: self style pageContentWidth)
			columnNames: mainTitles asArray;
			columnAspects: #(#yourself);
			collection: (anOrderedCollection asSortedCollection: [:u1 :u2 | u1 printString < u2 printString]);
			columnFilters: #() "#(nil true nil)";
			rowsOnPage: 20;
			yourself.

	currentTabList width: 200.
	aWebPage add: currentTabList.

	self addTransparentWebElmentToWorkAroundDisplayBug: aWebPage.
	^aWebPage
!

showCollection: anOrderedCollection in: aWebPage forInstVarNamed: aSymbol
	| mainTitles aspects objectInsideCollection variableToShowInTable |

	aWebPage cell addTextH2: ('Collection of ', aSymbol capitalized, '(s) - [', anOrderedCollection size printString, ']').
	aWebPage newRow.
	anOrderedCollection isEmpty 
	ifTrue: [currentTabList := (UMLWebGrid new width: self style pageContentWidth)
		columnNames: #();
		columnAspects: #();
		columnLinkViews: #();
		checkboxesColumn: 1 collection: OrderedCollection new;
		collection: (anOrderedCollection asSortedCollection: [:u1 :u2 | u1 printString < u2 printString]);
		columnFilters: #() "#(nil true nil)";
		rowsOnPage: 20;
		yourself.
		aWebPage add: currentTabList.
		(self observee hasVariableNamed: aSymbol) ifTrue: [self addGridButtonsIn: aWebPage for: aSymbol]. "aSymbol is an instance variable ? if not we do not render the maintenance buttons "
		^aWebPage].
	objectInsideCollection := anOrderedCollection first.
	mainTitles := OrderedCollection new.
	aspects := OrderedCollection new.

	variableToShowInTable := self getSimpleAspectsFor: objectInsideCollection. "we only show up to 6 variables in a object list- because after 6 variables does NOT fit into a WebPage "
	variableToShowInTable isEmpty ifTrue: [^self showCollection: anOrderedCollection forSimpleObjects: aSymbol in: aWebPage].
	variableToShowInTable do: [:eachKey | 
		mainTitles add: eachKey asString capitalized.
		aspects add: eachKey.].
		currentTabList := (UMLWebGrid new width: self style pageContentWidth)
			columnNames: ((self observee hasVariableNamed: aSymbol) ifTrue: [(mainTitles add: 'Del'; yourself) asArray] ifFalse: [mainTitles asArray]); "if is NOT an instance variable collection --> is category collection so it can not have remove mark, because category collections are read only"
			columnAspects: aspects asArray;
			columnLinkViews: #(main);
			checkboxesColumn: (aspects size + 1) collection: OrderedCollection new;
			collection: (anOrderedCollection asSortedCollection: [:u1 :u2 | u1 printString < u2 printString]);
			columnFilters: #() "#(nil true nil)";
			rowsOnPage: 20;
			yourself.

	currentTabList width: 200.
	aWebPage add: currentTabList.
	(self observee hasVariableNamed: aSymbol) ifTrue: [self addGridButtonsIn: aWebPage for: aSymbol]. "aSymbol is an instance variable ? if not we do not render the maintenance buttons "
	^aWebPage
!

showCollectionIn: aWebPage forInstVarNamed: aSymbol
	| umlCollection |

	[umlCollection := self observee vmPerform: aSymbol withArguments: Array new] on: Error do: [:ex | ^self displayTabAspectError: ex messageText for: aSymbol in: aWebPage ] .
	(umlCollection vmPerform: #isCollection) smalltalkObject ifFalse: [^self displayCollectionMismatchErrorFor: aSymbol in: aWebPage].
	self showCollection: umlCollection smalltalkObject
		in: aWebPage 
		forInstVarNamed: aSymbol!

showDialogForEmptyCollectionIn: viewName

	self show: (WebDialog newInfo text: '<b>No Global Objects of class [', viewName capitalized ,']. <br>
Store  [', viewName capitalized ,'] objects as global in order to be displayed here.</b>').

	^self redirectToView: viewName.	


!

showDialogForNewObjectIn: viewName

	self show: (WebDialog newInfo text: 'The new object has been added !!').


!

tabSectionStyle

	^('background: ', WebUserPreference default objectBackgroundColor, '; 
				border-style: groove; 
				height: 571px;
				margin-bottom: -30px; 
				border-width: 3px;
				margin-left: -3px;
				margin-top: -2px;'). !

umlApplicationLoginManager

	^self observee umlModel loginManager!

umlApplicationUser
	^umlApplicationUser!

viewConfirmation
	| webPage |

	"self addAllJavaScript."
	webPage := WebElement new.	
	webPage add: self viewTabComponent.

	"webPage style: (webPage getStyle, ';background: Gainsboro')."

	self createConfirmationDialogIn: webPage.

	self style pageFrameWith: webPage title: self observee className.
!

viewEdit
	| webPage webLinksDiv webEditAttrDiv |

	(self observee canUnderstand: #isEditable) ifTrue: [(self observee vmPerform: #isEditable) smalltalkObject ifFalse: [^self viewMain]].
	webPage := WebElement new.
	self setTabsIn: webPage.

	webLinksDiv := WebElement newDiv.
	webPage add: webLinksDiv.
	self uFabrikWebPreferences showReferences ifTrue: [webLinksDiv addTextH2: self uFabrikWebPreferences webReferencesLabel].
	self checkUninitializedLinkObjects. "is any Link Object (1x relation) is uninitialized --> we initialize it and link to the observee "

	self createWebLinkElementsTo: webLinksDiv.
	webEditAttrDiv := WebElement newDiv.
	webPage add: webEditAttrDiv.
	self createSimpleWebComponentsForEditIn: webEditAttrDiv.
 
	self addAcceptCancelButtonsTo: webPage.

	self style pageFrameWith: webPage title: self observee className observee: self observee.
	
	"self addTransparentWebElmentToWorkAroundDisplayBug: webPage."!

viewMain
	| webPage |

	"self addAllJavaScript."
	self getUserFromUMLApplication. "map the web user with the UML User and store in the Web Application"
	webPage := WebElement new.	

	self setTabsIn: webPage.

	self createSimpleWebControlsIn: webPage.

	self addCommandButtonsTo: webPage.
	webPage addBreak.
	self addCommandButtonsWithCurrentUserTo: webPage.
	webPage addBreak.
	self addCommandButtonsWithArgumentsTo: webPage.
	webPage addBreak.
	self addCommandButtonsWithCollectionTo:  webPage.
	webPage addBreak.
	self addCommandButtonsWithCollectionWithUserTo: webPage.
	webPage addBreak.
	self addCommandButtonsExternal: webPage.
"	self addAmberBrowserTo: webPage."
	self style pageFrameWith: webPage title: self observee className observee: self observee
!

viewTabComponent
	"The receiver render the Tabs of the <observee> <amUMLInstance>"
	| webTab |

	webTab := ViewTabs newClass: #tabs1.
	webTab style: ('background: ', WebUserPreference default objectBackgroundColor).
	umlApplicationUser ifNil: [umlApplicationUser := self getUserFromUMLApplication].

	webTab addView: #main description: self observee className asSymbol.

	(self observeeCollectionVariables, self observeeCategoriesCollections)
 		do: [:eachKey | | showHideResult implementation |
			implementation := self defaultVirtualMachine fetchMethodNamed: eachKey for: self observee umlClass. 
			"if a condition method exist <hasShowHideMessage> to render the component then the condition is evaluated"	
			((implementation == self defaultVirtualMachine nilObjectClass) not and: [implementation hasShowHideMessage])
			ifTrue: [showHideResult := [self observee vmPerform: implementation hideShowMessage withArguments: (Array with: umlApplicationUser)] on: Error do: [:ex | self defaultVirtualMachine falseObject] .
				(showHideResult belongToVirtualMachine and: [showHideResult smalltalkObject isBoolean and: [showHideResult smalltalkObject] ])
				ifTrue: [webTab addView: eachKey description: eachKey capitalized]]
			ifFalse: [webTab addView: eachKey description: eachKey capitalized].
].
	^webTab

	! !
!UMLInstanceApp categoriesFor: #acceptInputsAndActionFrom:!ajax!private-form inputs!public! !
!UMLInstanceApp categoriesFor: #actionMainAccept!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainBrowseCategories!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainBrowseClass!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainBrowseResetWebServer!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainBrowseVirtualMachine!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainCustomizedInspectObservee!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainEdit!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainInitializeObservee!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainInspectObservee!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainMain!public! !
!UMLInstanceApp categoriesFor: #actionMainRemoveFromGlobalObject!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainRemoveFromParametricObject!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainResetWebServer!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainSaveAsGlobalObject!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainSaveAsParametricObject!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainSaveAsRootObject!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainShowGlobalObjects!actions!public! !
!UMLInstanceApp categoriesFor: #actionMainShowSetupObjects!actions!public! !
!UMLInstanceApp categoriesFor: #addAcceptCancelButtonsTo:!public!views! !
!UMLInstanceApp categoriesFor: #addAmberBrowserTo:!amber!public! !
!UMLInstanceApp categoriesFor: #addCommandButtonsExternal:!buttons!public!views! !
!UMLInstanceApp categoriesFor: #addCommandButtonsTo:!buttons!public!views! !
!UMLInstanceApp categoriesFor: #addCommandButtonsWithArgumentsTo:!buttons!public!views! !
!UMLInstanceApp categoriesFor: #addCommandButtonsWithCollectionTo:!buttons!public!views! !
!UMLInstanceApp categoriesFor: #addCommandButtonsWithCollectionWithUserTo:!buttons!public!views! !
!UMLInstanceApp categoriesFor: #addCommandButtonsWithCurrentUserTo:!buttons!public!views! !
!UMLInstanceApp categoriesFor: #addCommandButtonTo:command:actionString:!buttons!public!views! !
!UMLInstanceApp categoriesFor: #addExisting:!collection operations!public! !
!UMLInstanceApp categoriesFor: #addGridButtonsIn:for:!collection operations!public! !
!UMLInstanceApp categoriesFor: #addNewObject:!collection operations!public! !
!UMLInstanceApp categoriesFor: #addRedirectButtonTo:command:actionString:!buttons!public!views! !
!UMLInstanceApp categoriesFor: #addRelated:using:!collection operations!public! !
!UMLInstanceApp categoriesFor: #addTransparentWebElmentToWorkAroundDisplayBug:!collection operations!public! !
!UMLInstanceApp categoriesFor: #ajaxUpdate:from:!ajax!collection operations!private-ajax!public! !
!UMLInstanceApp categoriesFor: #ajaxUpdateAppElement:from:on:!aida port error!ajax!collection operations!private-ajax!public! !
!UMLInstanceApp categoriesFor: #amberScriptStartup!amber!public! !
!UMLInstanceApp categoriesFor: #amberSourceCode!amber!public! !
!UMLInstanceApp categoriesFor: #callActionMethodForButton:on:!aida announcement error!aida port error!ajax!buttons!collection operations!private-form inputs!public! !
!UMLInstanceApp categoriesFor: #checkUninitializedLinkObjects!public!views! !
!UMLInstanceApp categoriesFor: #chooseObject:!actions!ajax!public! !
!UMLInstanceApp categoriesFor: #createConfirmationDialogIn:!public!views! !
!UMLInstanceApp categoriesFor: #createLinkTo:link:columnIndex:!css code!gui-link object!public! !
!UMLInstanceApp categoriesFor: #createObjectHeaderIn:!css code!public!views! !
!UMLInstanceApp categoriesFor: #createSelectionGridFor:!collection operations!public! !
!UMLInstanceApp categoriesFor: #createSelectionGridForAll:!collection operations!public! !
!UMLInstanceApp categoriesFor: #createSelectionGridForClass:!collection operations!public! !
!UMLInstanceApp categoriesFor: #createSimpleComponentTo:aspect:columnIndex:width:!css code!public! !
!UMLInstanceApp categoriesFor: #createSimpleComponentTo2:aspect:columnIndex:width:!css code!public! !
!UMLInstanceApp categoriesFor: #createSimpleWebComponentsForEditIn:!css code!public!views! !
!UMLInstanceApp categoriesFor: #createSimpleWebControlsIn:!gui-link object!public!views! !
!UMLInstanceApp categoriesFor: #createValueComponentTo:aspect:width:!css code!gui-values!public! !
!UMLInstanceApp categoriesFor: #createValueComponentTo2:aspect:width:!css code!css style!gui-values!public! !
!UMLInstanceApp categoriesFor: #createWebLinkElementsTo:!gui-link object!public!views! !
!UMLInstanceApp categoriesFor: #createWebSimpleElementsTo:!public!views! !
!UMLInstanceApp categoriesFor: #createWebSimpleElementsTo2:!public!views! !
!UMLInstanceApp categoriesFor: #displayCollectionMismatchErrorFor:in:!collection operations!public! !
!UMLInstanceApp categoriesFor: #displayTabAspectError:for:in:!collection operations!public! !
!UMLInstanceApp categoriesFor: #executeButtonCommand:!buttons!public! !
!UMLInstanceApp categoriesFor: #executeButtonCommandWithArguments:!ajax!buttons!public!virtual category-cmd args! !
!UMLInstanceApp categoriesFor: #executeButtonCommandWithCollection:!ajax!buttons!public! !
!UMLInstanceApp categoriesFor: #executeButtonCommandWithUser:!ajax!buttons!public! !
!UMLInstanceApp categoriesFor: #executeButtonCommandWithUserCollection:!buttons!public!views! !
!UMLInstanceApp categoriesFor: #getArgumentsForCommand:for:!buttons!public!virtual category-cmd args! !
!UMLInstanceApp categoriesFor: #getBasicArgumentFrom:for:!buttons!public!virtual category-cmd args! !
!UMLInstanceApp categoriesFor: #getDomainObjectArgumentsFrom:for:!public!virtual category-cmd args! !
!UMLInstanceApp categoriesFor: #getSimpleAspectsFor:!collection operations!public! !
!UMLInstanceApp categoriesFor: #getUMLClassesOf:!public!virtual category-cmd args! !
!UMLInstanceApp categoriesFor: #getUMLInstancesOf:!public!virtual category-cmd args! !
!UMLInstanceApp categoriesFor: #getUserFromUMLApplication!public!user access! !
!UMLInstanceApp categoriesFor: #isCollection:!public! !
!UMLInstanceApp categoriesFor: #isUMLApplication!public! !
!UMLInstanceApp categoriesFor: #observeeAspectIsLargeString:!public!views! !
!UMLInstanceApp categoriesFor: #observeeCategoriesCollections!gui-categories!gui-collection!public!views! !
!UMLInstanceApp categoriesFor: #observeeCategoriesCommands!gui-categories!gui-collection!public!views! !
!UMLInstanceApp categoriesFor: #observeeCategoriesCommandsExternal!gui-categories!gui-collection!public!views! !
!UMLInstanceApp categoriesFor: #observeeCategoriesCommandsWithArguments!gui-categories!gui-collection!public!views! !
!UMLInstanceApp categoriesFor: #observeeCategoriesCommandsWithArgumentsWithCard!gui-categories!gui-collection!public!views! !
!UMLInstanceApp categoriesFor: #observeeCategoriesCommandsWithArgumentsWithoutCard!gui-categories!gui-collection!public!views! !
!UMLInstanceApp categoriesFor: #observeeCategoriesCommandsWithCollectionWithCard!gui-categories!gui-collection!public!views! !
!UMLInstanceApp categoriesFor: #observeeCategoriesCommandsWithCollectionWithoutCard!gui-categories!gui-collection!public!views! !
!UMLInstanceApp categoriesFor: #observeeCategoriesCommandsWithUserAndCollectionWithoutCard!gui-categories!gui-collection!public!views! !
!UMLInstanceApp categoriesFor: #observeeCategoriesCommandsWithUserWithoutCard!gui-categories!gui-collection!public!views! !
!UMLInstanceApp categoriesFor: #observeeCategoriesLinkObjects!gui-categories!gui-link object!public!views! !
!UMLInstanceApp categoriesFor: #observeeCategoriesSimpleObjects!gui-categories!gui-values!public!views! !
!UMLInstanceApp categoriesFor: #observeeCollectionVariables!gui-collection!gui-inst var!public!views! !
!UMLInstanceApp categoriesFor: #observeeEditableLinkAttributes!gui-link object!public!views! !
!UMLInstanceApp categoriesFor: #observeeEnablesVariablesFor:!gui-collection!gui-inst var!gui-values!public!views! !
!UMLInstanceApp categoriesFor: #observeeLinkObjects!gui-inst var!gui-link object!public!views! !
!UMLInstanceApp categoriesFor: #observeeObjectHeader!gui-categories!gui-collection!public!views! !
!UMLInstanceApp categoriesFor: #observeeSimpleObjects!gui-inst var!gui-values!public!views! !
!UMLInstanceApp categoriesFor: #performViewMethod:!aida!component construction!public! !
!UMLInstanceApp categoriesFor: #printWebPageFor:!ajax!buttons!private-printing!public! !
!UMLInstanceApp categoriesFor: #printWebPageStepTwoFor:!ajax!private-printing!public! !
!UMLInstanceApp categoriesFor: #printWebView:for:!amber!public! !
!UMLInstanceApp categoriesFor: #redirectToExternalLink:!aida announcement error!aida port error!ajax!buttons!collection operations!private-form inputs!public! !
!UMLInstanceApp categoriesFor: #removeDuplicated:!collection operations!public! !
!UMLInstanceApp categoriesFor: #removeObjectsFromObservee:viewName:!collection operations!public! !
!UMLInstanceApp categoriesFor: #removeSelected:!collection operations!public! !
!UMLInstanceApp categoriesFor: #respondToAjaxRequest:!ajax!collection operations!private-ajax!public! !
!UMLInstanceApp categoriesFor: #selectClassFromSuperClass:!collection operations!public! !
!UMLInstanceApp categoriesFor: #setTabsIn:!component construction!public!views! !
!UMLInstanceApp categoriesFor: #show:!control flow!public! !
!UMLInstanceApp categoriesFor: #showCollection:forSimpleObjects:in:!collection operations!public! !
!UMLInstanceApp categoriesFor: #showCollection:in:forInstVarNamed:!collection operations!component construction!public! !
!UMLInstanceApp categoriesFor: #showCollectionIn:forInstVarNamed:!collection operations!public! !
!UMLInstanceApp categoriesFor: #showDialogForEmptyCollectionIn:!collection operations!public! !
!UMLInstanceApp categoriesFor: #showDialogForNewObjectIn:!collection operations!public! !
!UMLInstanceApp categoriesFor: #tabSectionStyle!component construction!css code!public! !
!UMLInstanceApp categoriesFor: #umlApplicationLoginManager!public!user access! !
!UMLInstanceApp categoriesFor: #umlApplicationUser!accessing!private! !
!UMLInstanceApp categoriesFor: #viewConfirmation!public!views! !
!UMLInstanceApp categoriesFor: #viewEdit!component construction!css style!public!views! !
!UMLInstanceApp categoriesFor: #viewMain!amber!component construction!public!views! !
!UMLInstanceApp categoriesFor: #viewTabComponent!css code!gui-collection!public!views! !

!UMLInstanceApp class methodsFor!

initializeWebComponentsDirectMap

	WebComponentsDirectMap := Dictionary new
		at: Date put: UMLWebDateInputField;
		at: Boolean put: UMLWebCheckBox;
		at: True put: UMLWebCheckBox;
		at: False put: UMLWebCheckBox;
		at: Time put: UMLWebTimeInputField;
		at: TimeStamp put: WebDateInputFieldForTimeStamp;
		at: String put: UMLWebInputField;
		at: Utf8String put: UMLWebInputField;
		at: Number put: UMLWebInputField;
		at: Integer put: UMLWebInputField;
		at: Float put: UMLWebInputField;
		at: ScaledDecimal put: UMLWebInputField;
		at: LargeInteger put: UMLWebInputField;
		at: SmallInteger put: UMLWebInputField;
		at: UndefinedObject put: UMLWebInputField;
		yourself.!

initializeWebComponentsMap

	WebComponentsMap := Dictionary new
		at: 'Date' put: AIDADate;
		at: 'Boolean' put: AIDACheckBox;
		at: 'True' put: AIDACheckBox;
		at: 'False' put: AIDACheckBox;
		at: 'Time' put: AIDAText;
		at: 'TimeStamp' put: AIDAText;
		at: 'TimeStamp' put: AIDAText;
		at: 'Utf8String' put: AIDAText;
		at: 'String' put: AIDAText;
		at: 'Number' put: AIDAText;
		at: 'Float' put: AIDAText;
		at: 'Fraction' put: AIDAText;
		at: 'LargeInteger' put: AIDAText;
		at: 'SmallInteger' put: AIDAText;
		at: 'ScaledDecimal' put: AIDAText;
		at: 'UndefinedObject' put: AIDAText;
		yourself.!

specialMethodsName
	^#('addNewObject:' 'addExisting:' 'removeSelected:' 'chooseObject:' 'removeDuplicated:')!

viewMethodForView: aViewSymbol
	"registered views have a precedence over composed method names"
	| viewSymbol |

	viewSymbol := aViewSymbol asString isEmpty 
		ifTrue: [self defaultView] ifFalse: [aViewSymbol asSymbol].
	"method := self viewMethodDict at: viewSymbol ifAbsent: [nil]. "
	^self composedMethodNameForView: viewSymbol!

webComponentsDirectMap

	^WebComponentsDirectMap!

webComponentsMap

	^WebComponentsMap! !
!UMLInstanceApp class categoriesFor: #initializeWebComponentsDirectMap!public! !
!UMLInstanceApp class categoriesFor: #initializeWebComponentsMap!public! !
!UMLInstanceApp class categoriesFor: #specialMethodsName!public! !
!UMLInstanceApp class categoriesFor: #viewMethodForView:!aida!public! !
!UMLInstanceApp class categoriesFor: #webComponentsDirectMap!public! !
!UMLInstanceApp class categoriesFor: #webComponentsMap!public! !

