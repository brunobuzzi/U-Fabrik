"Filed out from Dolphin Smalltalk 7"!

UMLShell subclass: #UMLParametricObjectsShell
	instanceVariableNames: 'parametricComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLParametricObjectsShell guid: (GUID fromString: '{49456ee0-4994-4892-83e3-365f87e63274}')!
UMLParametricObjectsShell comment: ''!
!UMLParametricObjectsShell categoriesForClass!Unclassified! !
!UMLParametricObjectsShell methodsFor!

createComponents
	super createComponents.
	parametricComposite := self add: self defaultComposite new name: self defaultContainerName!

defaultComposite 

	^self subclassResponsibility!

defaultContainerName

	^self subclassResponsibility!

inspectUMLInstance: anUMLInstance 

	^anUMLInstance inspectUMLInstance!

model: anUMLModel 
	super model: anUMLModel.
	parametricComposite model: anUMLModel!

newObjectForSelectedClass
	^parametricComposite newObjectForSelectedClass!

onGlobalNameChanged
	^parametricComposite onGlobalNameChanged!

refreshList
	^Error notYetImplemented!

refreshObjectList
	^parametricComposite refreshObjectList! !
!UMLParametricObjectsShell categoriesFor: #createComponents!public! !
!UMLParametricObjectsShell categoriesFor: #defaultComposite!public! !
!UMLParametricObjectsShell categoriesFor: #defaultContainerName!public! !
!UMLParametricObjectsShell categoriesFor: #inspectUMLInstance:!public! !
!UMLParametricObjectsShell categoriesFor: #model:!public! !
!UMLParametricObjectsShell categoriesFor: #newObjectForSelectedClass!public! !
!UMLParametricObjectsShell categoriesFor: #onGlobalNameChanged!public! !
!UMLParametricObjectsShell categoriesFor: #refreshList!public! !
!UMLParametricObjectsShell categoriesFor: #refreshObjectList!public! !

!UMLParametricObjectsShell class methodsFor!

defaultModel

	^UMLModel new! !
!UMLParametricObjectsShell class categoriesFor: #defaultModel!public! !

