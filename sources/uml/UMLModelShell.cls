"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLModelShell
	instanceVariableNames: 'modelBrowser'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModelShell guid: (GUID fromString: '{fd5f32e2-1f5d-4ad8-9a00-39cf5d02aa71}')!
UMLModelShell comment: ''!
!UMLModelShell categoriesForClass!MVP-Resources-UFabrik! !
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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ShellView) 34 27 nil nil 8 #(13565952 65536) 416 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 551 nil nil nil 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 ##(Smalltalk.ReferenceView) 34 14 nil 416 34 2 8 1140850688 131073 544 nil 466 8 4278190080 nil 7 nil nil nil 544 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.Toolbar) #resource_UML_Common nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 786 1449 51 544 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 212 2 0 0 25 0 0 0] 8 #() 786 193 193 nil 27 nil nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 416 34 2 8 1140850688 131073 912 nil 466 624 nil 7 nil nil nil 912 642 ##(Smalltalk.UMLModelBrowser) #resource_Default_view nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 51 786 1449 813 912 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 212 2 0 0 175 1 0 0] 880 896 nil 27 170 192 34 2 912 8 'modelBrowser' nil 461638 4 ##(Smalltalk.MenuBar) nil true 34 2 265030 4 ##(Smalltalk.Menu) nil true 34 12 984134 2 ##(Smalltalk.CommandMenuItem) 1 1180998 4 ##(Smalltalk.CommandDescription) #browseSetupObjects 8 'Browse Setup Objects' 1 1 nil nil nil 983366 1 ##(Smalltalk.DividerMenuItem) 4097 1298 1 1330 #importXMIFile 8 'Import UML Model from XMI File' 1 1 nil nil nil 1378 4097 1298 1 1330 #importStateMachineFromXMI 8 'Import State Machine from XMI' 1 1 nil nil nil 1378 4097 1298 1 1330 #fileOutUMLModel 8 'File Out UML Model' 1 1 nil nil nil 1298 1 1330 #fileInUMLModel 8 'File In UML Model' 1 1 nil nil nil 1378 4097 1298 1 1330 #generateReportToClipboard 8 'Export Report to Excel' 1 1 nil nil nil 1378 4097 1298 1 1330 #exit 8 'Exit' 1 1 nil nil nil 8 'UML Model' nil 134217729 nil nil 27919 nil nil 1250 nil true 8 #() 8 'Search' nil 134217729 nil nil 27921 nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil nil 1 nil nil nil nil 1 nil nil 674 138 144 34 3 738 #createAt:extent: 34 2 786 2719 21 786 1481 981 416 738 #text: 34 1 8 'UML Model Browser' 416 738 #updateMenuBar 880 416 834 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 51 8 0 0 244 1 0 0] 34 2 544 912 896 nil 27 )! !
!UMLModelShell class categoriesFor: #defaultModel!public! !
!UMLModelShell class categoriesFor: #icon!public! !
!UMLModelShell class categoriesFor: #resource_Default_view!public!resources-views! !

