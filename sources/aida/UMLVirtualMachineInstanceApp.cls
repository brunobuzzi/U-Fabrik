"Filed out from Dolphin Smalltalk 7"!

WebAddInApplication subclass: #UMLVirtualMachineInstanceApp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineInstanceApp guid: (GUID fromString: '{f067b2b2-cff1-4658-a605-69964b653703}')!
UMLVirtualMachineInstanceApp comment: ''!
!UMLVirtualMachineInstanceApp categoriesForClass!Unclassified! !
!UMLVirtualMachineInstanceApp methodsFor!

showCollectionForObserveeIn: aWebPage
	| mainTitles aspects objectInsideCollection variableToShowInTable currentTabList anOrderedCollection |

	(ExternalFile allSubclasses includes: self observee smalltalkClass) ifTrue: [^aWebPage].
	anOrderedCollection := self observee smalltalkObject.
	anOrderedCollection ifNil: [^aWebPage].
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
		^aWebPage].
	objectInsideCollection := anOrderedCollection first.
	mainTitles := OrderedCollection new.
	aspects := OrderedCollection new.

	variableToShowInTable := (objectInsideCollection basicInstancesVariables size > 6) ifTrue: [objectInsideCollection basicInstancesVariables keys asSortedCollection first: 6] ifFalse: [objectInsideCollection basicInstancesVariables keys asSortedCollection]. "we only show up to 6 variables in a object list- because after 6 variables does NOT fit into a WebPage "
	variableToShowInTable do: [:eachKey | 
		mainTitles add: eachKey asString capitalized.
		aspects add: eachKey.].
		currentTabList := (UMLWebGrid new width: self style pageContentWidth)
			columnNames: mainTitles asArray;
			columnAspects: aspects asArray;
			columnLinkViews: #(main);
			checkboxesColumn: (aspects size + 1) collection: OrderedCollection new;
			collection: (anOrderedCollection asSortedCollection: [:u1 :u2 | u1 printString < u2 printString]);
			columnFilters: #() "#(nil true nil)";
			rowsOnPage: 20;
			yourself.

	currentTabList width: 200.
	aWebPage add: currentTabList.
	^aWebPage
!

showErrorObserveeIn: aWebPage

	aWebPage addTextH2: self observee className; addBreak.
	aWebPage addText: self observee smalltalkObject messageText.

	^aWebPage
!

showValueObserveeIn: aWebPage

	aWebPage addText: self observee smalltalkObject printString color: #darkBlue.

	^aWebPage
!

viewMain
	| webPage superUMLClasses |

	"self addAllJavaScript."
	webPage := WebElement new.	
	"webPage add: self viewTabComponent."
	superUMLClasses := (self observee umlClass allSuperclasses collect: [:each | each name]) copyWithoutDuplicates.

	(superUMLClasses includes: 'Collection') ifTrue: [self showCollectionForObserveeIn: webPage].

	(#('String' 'Date' 'Number' 'Time'  'TimeStamp') includes: self observee className) ifTrue: [self showValueObserveeIn: webPage].

	(#('Error' 'Exception' 'Warning') includes: self observee className) ifTrue: [self showErrorObserveeIn: webPage].

	self style pageFrameWith: webPage title: self observee className observee: self observee
! !
!UMLVirtualMachineInstanceApp categoriesFor: #showCollectionForObserveeIn:!collection operations!public! !
!UMLVirtualMachineInstanceApp categoriesFor: #showErrorObserveeIn:!collection operations!public! !
!UMLVirtualMachineInstanceApp categoriesFor: #showValueObserveeIn:!collection operations!public! !
!UMLVirtualMachineInstanceApp categoriesFor: #viewMain!public!views! !

