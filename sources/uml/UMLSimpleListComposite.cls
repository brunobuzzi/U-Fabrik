"Filed out from Dolphin Smalltalk 7"!

UMLListComposite subclass: #UMLSimpleListComposite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLSimpleListComposite guid: (GUID fromString: '{352f0e5c-16be-4cce-9604-ea392907e1c8}')!
UMLSimpleListComposite comment: ''!
!UMLSimpleListComposite categoriesForClass!Unclassified! !
!UMLSimpleListComposite methodsFor!

inspectGlobalObject

	objectListPresenter hasSelection ifFalse: [^self].

	objectListPresenter selection inspectUMLInstance!

onObjectListDoubleClicked: aMouseEvent

	objectListPresenter hasSelection ifFalse: [^self].

	^self topShell inspectUMLInstance: objectListPresenter selection
! !
!UMLSimpleListComposite categoriesFor: #inspectGlobalObject!public! !
!UMLSimpleListComposite categoriesFor: #onObjectListDoubleClicked:!public! !

