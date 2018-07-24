"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLDebuggerShell
	instanceVariableNames: 'debugerComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDebuggerShell guid: (GUID fromString: '{abd40fc1-d2a1-4051-b5c3-0a3fa1075abb}')!
UMLDebuggerShell comment: ''!
!UMLDebuggerShell categoriesForClass!Unclassified! !
!UMLDebuggerShell methodsFor!

addAllSnapshots: aCollection

	aCollection do: [:debugerSnapshot | debugerComposite addSnapshot: debugerSnapshot]!

addSnapshot: aUMLImplementationDebugerSnapshot

	debugerComposite addSnapshot: aUMLImplementationDebugerSnapshot!

createComponents

	super createComponents.

	debugerComposite := self add: UMLDebugerComposite new name: 'debugerComposite'.!

executionStack
	^debugerComposite executionStack!

hasSelectedClass
	^false!

isCategoryBrowser
	^false!

isClassSideSelected
	^debugerComposite isClassSideSelected!

model: anUMLDebuggerSnapshot

	super model: anUMLDebuggerSnapshot.

	debugerComposite model: anUMLDebuggerSnapshot.!

onUMLModelClassChanged!

onViewOpened

	super onViewOpened.

	model ifNotNil: [self model hasFirstSentenceDNU ifTrue: [debugerComposite restartDebug]].!

selectedClass
	^debugerComposite selectedClass!

selectedObject
	^debugerComposite selectedObject!

selectImplementation: anUMLParsedImplementation 
!

selectLastStackItem

	debugerComposite selectLastStackItem!

setLastAnnotatedResult

	debugerComposite setLastAnnotatedResult!

setScriptSnapshot: anUMLScriptExecutionSnapshot

	debugerComposite setScriptSnapshot: anUMLScriptExecutionSnapshot! !
!UMLDebuggerShell categoriesFor: #addAllSnapshots:!public! !
!UMLDebuggerShell categoriesFor: #addSnapshot:!public! !
!UMLDebuggerShell categoriesFor: #createComponents!public! !
!UMLDebuggerShell categoriesFor: #executionStack!public! !
!UMLDebuggerShell categoriesFor: #hasSelectedClass!public! !
!UMLDebuggerShell categoriesFor: #isCategoryBrowser!public! !
!UMLDebuggerShell categoriesFor: #isClassSideSelected!public! !
!UMLDebuggerShell categoriesFor: #model:!public! !
!UMLDebuggerShell categoriesFor: #onUMLModelClassChanged!public! !
!UMLDebuggerShell categoriesFor: #onViewOpened!public! !
!UMLDebuggerShell categoriesFor: #selectedClass!public! !
!UMLDebuggerShell categoriesFor: #selectedObject!public! !
!UMLDebuggerShell categoriesFor: #selectImplementation:!public! !
!UMLDebuggerShell categoriesFor: #selectLastStackItem!public! !
!UMLDebuggerShell categoriesFor: #setLastAnnotatedResult!public! !
!UMLDebuggerShell categoriesFor: #setScriptSnapshot:!public! !

!UMLDebuggerShell class methodsFor!

icon

	^Icon fromId: 'Debugger.ico'!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  1505 1337 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 656 0 482 8 4278190080 0 7 0 0 0 656 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLDebugerComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 1 1 530 1473 1221 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 224 2 0 0 98 2 0 0] 608 530 193 193 0 27 8 'debugerComposite' 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 2 265030 4 ##(Smalltalk.Menu)  0 16 98 2 983366 1 ##(Smalltalk.DividerMenuItem)  4097 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 9019 0 0 1122 0 16 98 6 1202 1 1234 8 #stepInto 8 'Step Into' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator)  8 'StepInto.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 0 0 1202 1 1234 8 #stepOver 8 'Step Over' 1 1 1410 0 16 1456 8 'StepOver.ico' 1504 0 0 1202 1 1234 8 #stepOut 8 'Step Out' 1 1 1410 0 16 1456 8 'StepOut.ico' 1504 0 0 1202 1 1234 8 #resumeProcess 8 'Resume Process' 1 1 1410 0 16 1456 8 'Run.ico' 1504 0 0 1170 4097 1202 1 1234 8 #restartDebug 8 'Restart debug' 1 1 0 0 0 8 'Debug' 0 134217729 0 0 9031 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 834 202 208 98 3 898 928 98 2 530 3199 21 530 1505 1337 416 898 8 #text: 98 1 8 'UML Step by Step Real Time Simulator Assistant' 416 898 8 #updateMenuBar 608 416 994 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 47 9 0 0 166 2 0 0] 98 1 656 1040 0 27 )! !
!UMLDebuggerShell class categoriesFor: #icon!public! !
!UMLDebuggerShell class categoriesFor: #resource_Default_view!public!resources-views! !

