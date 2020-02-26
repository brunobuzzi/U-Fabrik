"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLCategoryBrowserShell
	instanceVariableNames: 'categoryBrowser'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLCategoryBrowserShell guid: (GUID fromString: '{751a409c-cc0b-4b35-b12e-35674efaaa51}')!
UMLCategoryBrowserShell comment: ''!
!UMLCategoryBrowserShell categoriesForClass!MVP-Resources-UFabrik! !
!UMLCategoryBrowserShell methodsFor!

checkSelectedMethod
	^categoryBrowser checkSelectedMethod!

createComponents

	super createComponents.

	categoryBrowser := self add: UMLCategoryBrowser new name: 'categoryBrowser'.!

getAllClasses
	^UMLVirtualMachine default getAllClasses!

hasSelectedClass
	^categoryBrowser hasSelectedClass!

hasSelectedImplementation
	^categoryBrowser hasSelectedImplementation!

isClassSideSelected
	^categoryBrowser selectedImplementation methodClass isMetaclass not
!

mainComposite

	^categoryBrowser!

model: anOrderedCollection

	super model: anOrderedCollection.

	categoryBrowser model: anOrderedCollection.!

onUMLModelClassChanged
	^categoryBrowser onCategoriaChanged!

selectedClass

	categoryBrowser hasSelectedImplementation ifFalse: [^nil].

	^categoryBrowser selectedImplementation methodClass
!

selectImplementation: anUMLParsedImplementation 
	^categoryBrowser selectImplementation: anUMLParsedImplementation ! !
!UMLCategoryBrowserShell categoriesFor: #checkSelectedMethod!public! !
!UMLCategoryBrowserShell categoriesFor: #createComponents!public! !
!UMLCategoryBrowserShell categoriesFor: #getAllClasses!public! !
!UMLCategoryBrowserShell categoriesFor: #hasSelectedClass!public! !
!UMLCategoryBrowserShell categoriesFor: #hasSelectedImplementation!public! !
!UMLCategoryBrowserShell categoriesFor: #isClassSideSelected!public! !
!UMLCategoryBrowserShell categoriesFor: #mainComposite!public! !
!UMLCategoryBrowserShell categoriesFor: #model:!public! !
!UMLCategoryBrowserShell categoriesFor: #onUMLModelClassChanged!public! !
!UMLCategoryBrowserShell categoriesFor: #selectedClass!public! !
!UMLCategoryBrowserShell categoriesFor: #selectImplementation:!public! !

!UMLCategoryBrowserShell class methodsFor!

defaultModel
	^UMLVirtualMachine default getAllCategories!

icon

	^UMLImplementationCategory icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 560 0 482 8 4278190080 0 7 0 0 0 560 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_UML_Common 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 866 1389 51 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 182 2 0 0 25 0 0 0] 98 0 866 193 193 0 27 0 0 0 410 576 98 14 0 416 98 2 8 1140850688 131073 992 0 482 656 0 7 0 0 0 992 674 8 ##(Smalltalk.UMLCategoryBrowser)  8 #resource_Default_view 0 738 202 208 98 1 802 832 98 2 866 1 51 866 1389 759 992 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 182 2 0 0 148 1 0 0] 960 976 0 27 234 256 98 2 992 8 'categoryBrowser' 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 1 265030 4 ##(Smalltalk.Menu)  0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 35671 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 738 202 208 98 3 802 832 98 2 866 2879 21 866 1421 921 416 802 8 #text: 98 1 8 'Category Browser' 416 802 8 #updateMenuBar 960 416 914 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 101 8 0 0 214 1 0 0] 98 2 560 992 976 0 27 )! !
!UMLCategoryBrowserShell class categoriesFor: #defaultModel!public! !
!UMLCategoryBrowserShell class categoriesFor: #icon!public! !
!UMLCategoryBrowserShell class categoriesFor: #resource_Default_view!public!resources-views! !

