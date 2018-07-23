"Filed out from Dolphin Smalltalk 7"!

UMLModelParametricObjectBrowserComposite subclass: #UMLModelGlobalsBrowserComposite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModelGlobalsBrowserComposite guid: (GUID fromString: '{453c3754-0d9e-4dbe-be4c-d630b15bd05c}')!
UMLModelGlobalsBrowserComposite comment: ''!
!UMLModelGlobalsBrowserComposite categoriesForClass!Unclassified! !
!UMLModelGlobalsBrowserComposite methodsFor!

createInstanceForAll
	| classesWithoutGlobals |

	classesWithoutGlobals := parametricNamePresenter model select: [:eachName | (model systemRoot at: eachName) isEmpty].
	classesWithoutGlobals do: [:eachName | | newInstance |
			newInstance := (model getClassNamed: eachName) newInstance.
			newInstance vmPerform: #initialize.
			newInstance storeAsGlobalObject ].!

modelRoot

	^model systemRoot!

parametricsObjects

	^model systemRoot keys asSortedCollection! !
!UMLModelGlobalsBrowserComposite categoriesFor: #createInstanceForAll!public! !
!UMLModelGlobalsBrowserComposite categoriesFor: #modelRoot!public! !
!UMLModelGlobalsBrowserComposite categoriesFor: #parametricsObjects!public! !

!UMLModelGlobalsBrowserComposite class methodsFor!

defaultModel

	^UMLModel new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 0 32 234 256 656 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  377 1 818 1075 861 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 188 0 0 0 0 0 0 0 213 2 0 0 174 1 0 0] 98 0 818 193 193 0 27 7 32 234 256 98 2 560 8 'parametricContainer' 0 690 202 208 98 1 754 784 98 2 818 2731 21 818 1451 861 416 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 85 5 0 0 10 0 0 0 42 8 0 0 184 1 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 1152 0 0 0 5 0 0 0 1152 498 234 240 656 32 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 1152 98 2 8 1140920397 1025 1280 590662 2 ##(Smalltalk.ListModel)  202 208 656 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 12 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #addGlobalClass 8 'Add Class' 1 1 0 0 0 1538 1 1570 8 #removeSelectedClassAsGlobal 8 'Remove Class' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 1538 1 1570 8 #addNewInstance 8 'Add New Instance' 1 1 0 0 0 1698 4097 1538 1 1570 8 #createInstanceForAll 8 'Create an Instance for All' 1 1 0 0 0 1698 4097 1538 1 1570 8 #createAccessorMethods 8 'Create Accessor Methods' 1 1 0 0 0 1538 1 1570 8 #createCreationMethods 8 'Create Creation Methods' 1 1 0 0 0 1698 4097 1538 1 1570 8 #createDBCreationMethods 8 'Create Database Creation Methods' 1 1 0 0 0 1538 1 1570 8 #createDBAccessorMethods 8 'Create Database Accesor Methods' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 1280 0 8 4294903307 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Class Name' 301 8 #left 2194 2224 2240 8 ##(Smalltalk.SortedCollection)  0 0 1280 0 1 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  5 1 8 ##(Smalltalk.UndefinedObject)  8 'doIt' 8 '[:ctx | 
ctx forecolor: (UMLClass colorForClassName: ctx item) ].' 8 #[33 105 17 29 226 1 178 179 106] 8 ##(Smalltalk.UMLClass)  8 #item 8 #colorForClassName: 8 #forecolor: 2448 7 257 0 8 #report 656 0 131169 0 0 690 202 208 98 3 754 784 98 2 818 1 1 818 359 861 1280 754 8 #contextMenu: 98 1 1504 1280 754 8 #text: 98 1 8 'Class Name' 1280 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 179 0 0 0 174 1 0 0] 98 0 928 0 27 8 'parametricNames' 0 690 202 208 98 1 754 784 98 2 818 1 1 818 359 861 1152 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 179 0 0 0 174 1 0 0] 98 1 1280 928 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 416 98 2 8 1140850688 1 3088 0 1442 8 4278190080 0 517 0 0 0 3088 690 202 208 98 1 754 784 98 2 818 359 1 818 19 861 3088 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 179 0 0 0 0 0 0 0 188 0 0 0 174 1 0 0] 98 0 928 0 27 560 928 0 27 )! !
!UMLModelGlobalsBrowserComposite class categoriesFor: #defaultModel!public! !
!UMLModelGlobalsBrowserComposite class categoriesFor: #resource_Default_view!public!resources-views! !

