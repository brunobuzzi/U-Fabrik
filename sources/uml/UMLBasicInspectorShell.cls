"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UMLBasicInspectorShell
	instanceVariableNames: 'inspectorComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLBasicInspectorShell guid: (GUID fromString: '{0d2e96c4-1cba-4085-9ce3-22abe31332c5}')!
UMLBasicInspectorShell comment: ''!
!UMLBasicInspectorShell categoriesForClass!MVP-Resources-UFabrik! !
!UMLBasicInspectorShell methodsFor!

createComponents

	super createComponents.

	inspectorComposite := self add: UMLBasicInspectorComposite new name: 'inspectorComposite'.!

expandObjectRoot
	^inspectorComposite expandObjectRoot!

getModel
	^self model!

getUMLObject
	^self model!

hasSelectedImplementation
	^false!

inspectUMLInstance: anUMLInstance 
	^anUMLInstance inspectUMLInstance!

mainComposite

	^inspectorComposite!

model: anUMLInstance

	super model: anUMLInstance.

	inspectorComposite model: anUMLInstance.!

onViewOpened

	super onViewOpened.

	view caption: 'Inspecting Instance of: <', model className, '>'!

parentOfSelectedObject
	
	^inspectorComposite parentOfSelectedObject!

selectedClass
	^inspectorComposite selectedClass!

selectedInstVar
	^inspectorComposite selectedInstVar!

selectedObject
	
	^inspectorComposite selectedObject!

updateList
	^inspectorComposite updateList! !
!UMLBasicInspectorShell categoriesFor: #createComponents!public! !
!UMLBasicInspectorShell categoriesFor: #expandObjectRoot!public! !
!UMLBasicInspectorShell categoriesFor: #getModel!public! !
!UMLBasicInspectorShell categoriesFor: #getUMLObject!public! !
!UMLBasicInspectorShell categoriesFor: #hasSelectedImplementation!public! !
!UMLBasicInspectorShell categoriesFor: #inspectUMLInstance:!public! !
!UMLBasicInspectorShell categoriesFor: #mainComposite!public! !
!UMLBasicInspectorShell categoriesFor: #model:!public! !
!UMLBasicInspectorShell categoriesFor: #onViewOpened!public! !
!UMLBasicInspectorShell categoriesFor: #parentOfSelectedObject!public! !
!UMLBasicInspectorShell categoriesFor: #selectedClass!public! !
!UMLBasicInspectorShell categoriesFor: #selectedInstVar!public! !
!UMLBasicInspectorShell categoriesFor: #selectedObject!public! !
!UMLBasicInspectorShell categoriesFor: #updateList!public! !

!UMLBasicInspectorShell class methodsFor!

icon
	^UMLInstance icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  1071 831 167 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 592 0 0 0 7 0 0 0 592 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 8 ##(Smalltalk.Toolbar)  98 25 0 592 98 2 8 1409288972 131137 736 0 482 8 4278190080 0 519 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 530 193 193 0 736 482 832 8 4294902989 234 256 98 0 234 256 98 2 8383 1115910 ##(Smalltalk.ToolbarIconButton)  8383 0 736 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #inspectUMLWithCustomizedView 8 'Customized View' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator)  8 'Shell.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 530 33 33 1 98 1 1056 234 240 98 2 1280 1 0 1 0 530 33 33 530 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 315 1 530 725 51 736 1490 8 #updateSize 992 736 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 157 0 0 0 0 0 0 0 7 2 0 0 25 0 0 0] 98 0 530 193 193 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 315 1730 8 #fixedParentRight 1 1730 8 #fixedParentTop 1 1730 8 #fixedViewTop 51 410 8 ##(Smalltalk.ReferenceView)  98 14 0 592 98 2 8 1140850688 131073 1872 0 482 8 4278190080 0 7 0 0 0 1872 1180166 ##(Smalltalk.ResourceIdentifier)  752 8 #resource_UML_Common 0 1426 202 208 98 1 1490 1520 98 2 530 1 1 530 315 51 1872 1618 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 157 0 0 0 25 0 0 0] 992 1680 0 27 1698 1744 1 1744 315 1808 1 1840 51 234 256 992 0 1426 202 208 98 1 1490 1520 98 2 530 1 1 530 1039 51 592 1618 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 7 2 0 0 25 0 0 0] 98 2 1872 736 1680 0 27 0 0 0 410 608 98 15 0 416 98 2 8 1140850688 131073 2368 0 0 0 7 0 0 0 2368 1180166 ##(Smalltalk.ProportionalLayout)  234 240 992 32 234 256 98 2 410 1888 98 14 0 2368 98 2 8 1140850688 131073 2512 0 482 8 4278190080 0 7 0 0 0 2512 1986 8 ##(Smalltalk.UMLBasicInspectorComposite)  8 #resource_Default_view 0 1426 202 208 98 1 1490 1520 98 2 530 1 1 530 1039 705 2512 1618 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 7 2 0 0 96 1 0 0] 992 1680 0 27 8 'inspectorComposite' 0 1426 202 208 98 1 1490 1520 98 2 530 1 51 530 1039 705 2368 1618 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 7 2 0 0 121 1 0 0] 98 1 2512 1680 0 27 234 256 992 0 0 0 0 0 1 0 0 0 0 1 0 0 1426 202 208 98 3 1490 1520 98 2 530 3199 21 530 1071 831 416 1490 8 #text: 98 1 8 'UML Inspector' 416 1490 8 #updateMenuBar 992 416 1618 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 86 8 0 0 169 1 0 0] 98 2 592 2368 1680 0 27 )! !
!UMLBasicInspectorShell class categoriesFor: #icon!public! !
!UMLBasicInspectorShell class categoriesFor: #resource_Default_view!public!resources-views! !

