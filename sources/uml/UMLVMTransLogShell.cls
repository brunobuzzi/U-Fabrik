"Filed out from Dolphin Smalltalk 7"!

UMLShell subclass: #UMLVMTransLogShell
	instanceVariableNames: 'logComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVMTransLogShell guid: (GUID fromString: '{14a962f9-9b91-41a9-9701-7c52285e0fb5}')!
UMLVMTransLogShell comment: ''!
!UMLVMTransLogShell categoriesForClass!Unclassified! !
!UMLVMTransLogShell methodsFor!

createComponents

	super createComponents.

	logComposite := self add: UMLVMTransLogComposite new name: 'logComposite'!

model: anObject

	super model: anObject.

	logComposite model: anObject.! !
!UMLVMTransLogShell categoriesFor: #createComponents!public! !
!UMLVMTransLogShell categoriesFor: #model:!public! !

!UMLVMTransLogShell class methodsFor!

defaultModel

	^UMLVirtualMachine default transLog!

icon

	^PrinterCanvas icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 39 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 624 0 482 8 4278190080 0 7 0 0 0 624 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLVMTransLogComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 930 1809 1295 624 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 136 3 0 0 135 2 0 0] 576 930 193 193 0 27 8 'logComposite' 0 0 0 0 0 1 0 0 0 0 1 0 0 802 202 208 98 3 866 896 98 2 930 3199 21 930 1841 1371 416 866 8 #text: 98 1 8 'Virtual Machine Log Viewer' 416 866 8 #updateMenuBar 576 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 1 6 0 0 10 0 0 0 153 9 0 0 183 2 0 0] 98 1 624 1024 0 27 )! !
!UMLVMTransLogShell class categoriesFor: #defaultModel!public! !
!UMLVMTransLogShell class categoriesFor: #icon!public! !
!UMLVMTransLogShell class categoriesFor: #resource_Default_view!public!resources-views! !

