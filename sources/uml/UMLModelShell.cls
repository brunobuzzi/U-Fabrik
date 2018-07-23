"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLModelShell
	instanceVariableNames: 'modelBrowser'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModelShell guid: (GUID fromString: '{fd5f32e2-1f5d-4ad8-9a00-39cf5d02aa71}')!
UMLModelShell comment: ''!
!UMLModelShell categoriesForClass!Unclassified! !
!UMLModelShell methodsFor!

checkSelectedMethod
	^modelBrowser checkSelectedMethod!

createComponents

	super createComponents.

	modelBrowser := self add: UMLModelBrowser new name: 'modelBrowser'.!

hasSelectedClass
	^modelBrowser hasSelectedClass!

hasSelectedImplementation
	^modelBrowser hasSelectedImplementation!

isClassSideSelected

	^modelBrowser isClassSideSelected!

mainComposite

	^modelBrowser!

model: anOrderedCollection

	super model: anOrderedCollection.

	modelBrowser model: anOrderedCollection.!

onUMLModelClassChanged

	^modelBrowser onUMLModelClassChanged!

onViewOpened

	super onViewOpened.

	view menuBar: modelBrowser menuBar!

openUMLBrowser
	| browser |

	browser := self class show.
	browser selectUMLModel: self selectedModel ifAbsent: [].
	self selectedClass ifNil: [^self].
	browser  selectClass: self selectedClass instanceClass!

selectClass: anUMLClass 
	^modelBrowser selectClass: anUMLClass !

selectClass: anUMLClass ifAbsent: aNiladicValuable

	^modelBrowser selectClass: anUMLClass ifAbsent: aNiladicValuable !

selectedClass
	^modelBrowser selectedClass!

selectedClassDescription

	^modelBrowser selectedClassDescription
!

selectedClassIsMetaclass

	^modelBrowser selectedClassIsMetaclass!

selectedImplementation
	^modelBrowser selectedImplementation!

selectedModel
	^modelBrowser selectedModel!

selectedObject 

	^self selectedClass!

selectImplementation: anUMLParsedImplementation 

	^modelBrowser selectImplementation: anUMLParsedImplementation !

selectUMLClass: anUMLClass ifAbsent: aNiladicValuable 

	^modelBrowser selectUMLClass: anUMLClass ifAbsent: aNiladicValuable 

!

selectUMLModel: anUMLModel ifAbsent: aNiladicValuable

	^modelBrowser selectModel: anUMLModel ifAbsent: aNiladicValuable
	! !
!UMLModelShell categoriesFor: #checkSelectedMethod!public! !
!UMLModelShell categoriesFor: #createComponents!public! !
!UMLModelShell categoriesFor: #hasSelectedClass!public! !
!UMLModelShell categoriesFor: #hasSelectedImplementation!public! !
!UMLModelShell categoriesFor: #isClassSideSelected!public! !
!UMLModelShell categoriesFor: #mainComposite!public! !
!UMLModelShell categoriesFor: #model:!public! !
!UMLModelShell categoriesFor: #onUMLModelClassChanged!public! !
!UMLModelShell categoriesFor: #onViewOpened!public! !
!UMLModelShell categoriesFor: #openUMLBrowser!public! !
!UMLModelShell categoriesFor: #selectClass:!public! !
!UMLModelShell categoriesFor: #selectClass:ifAbsent:!public! !
!UMLModelShell categoriesFor: #selectedClass!public! !
!UMLModelShell categoriesFor: #selectedClassDescription!public! !
!UMLModelShell categoriesFor: #selectedClassIsMetaclass!public! !
!UMLModelShell categoriesFor: #selectedImplementation!public! !
!UMLModelShell categoriesFor: #selectedModel!public! !
!UMLModelShell categoriesFor: #selectedObject!public! !
!UMLModelShell categoriesFor: #selectImplementation:!public! !
!UMLModelShell categoriesFor: #selectUMLClass:ifAbsent:!public! !
!UMLModelShell categoriesFor: #selectUMLModel:ifAbsent:!public! !

!UMLModelShell class methodsFor!

defaultModel

	^UMLVirtualMachine default umlModels asSortedCollection: [:a :b | a name <=  b name]!

icon

	^UMLModel icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 560 0 482 8 4278190080 0 7 0 0 0 560 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_UML_Common 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 866 1449 51 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 212 2 0 0 25 0 0 0] 98 0 866 193 193 0 27 0 0 0 410 576 98 14 0 416 98 2 8 1140850688 131073 992 0 482 656 0 7 0 0 0 992 674 8 ##(Smalltalk.UMLModelBrowser)  8 #resource_Default_view 0 738 202 208 98 1 802 832 98 2 866 1 51 866 1449 815 992 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 212 2 0 0 176 1 0 0] 960 976 0 27 234 256 98 2 992 8 'modelBrowser' 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 2 265030 4 ##(Smalltalk.Menu)  0 16 98 10 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #browseSetupObjects 8 'Browse Setup Objects' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 1410 1 1442 8 #importXMIFile 8 'Import XMI File' 1 1 0 0 0 1506 4097 1410 1 1442 8 #fileOutUMLModel 8 'File Out UML Model' 1 1 0 0 0 1410 1 1442 8 #fileInUMLModel 8 'File In UML Model' 1 1 0 0 0 1506 4097 1410 1 1442 8 #generateReportToClipboard 8 'Export Report to Excel' 1 1 0 0 0 1506 4097 1410 1 1442 8 #exit 8 'Exit' 1 1 0 0 0 8 'UML Model' 0 134217729 0 0 30873 0 0 1362 0 16 98 0 8 'Search' 0 134217729 0 0 30875 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 738 202 208 98 3 802 832 98 2 866 3199 21 866 1481 981 416 802 8 #text: 98 1 8 'UML Model Browser' 416 802 8 #updateMenuBar 960 416 914 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 1 6 0 0 10 0 0 0 229 8 0 0 244 1 0 0] 98 2 560 992 976 0 27 )! !
!UMLModelShell class categoriesFor: #defaultModel!public! !
!UMLModelShell class categoriesFor: #icon!public! !
!UMLModelShell class categoriesFor: #resource_Default_view!public!resources-views! !

