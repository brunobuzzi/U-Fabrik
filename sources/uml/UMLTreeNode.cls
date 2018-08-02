"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLTreeNode
	instanceVariableNames: 'instVarName value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTreeNode guid: (GUID fromString: '{d0e8ba56-005e-42ad-b643-2f2c87e65f0b}')!
UMLTreeNode comment: ''!
!UMLTreeNode categoriesForClass!Unclassified! !
!UMLTreeNode methodsFor!

asUMLObject

	^value!

className
	^value className!

collectionClasses

	^OrderedCollection with: 'Collection' with: 'Array' with: 'Dictionary' with: 'OrderedCollection'!

displayString

	^instVarName, ' = ', value displayString!

icon
	^value icon!

instVarName
	^instVarName!

instVarName: anObject
	instVarName := anObject!

isCollectionNode

	^self collectionClasses includes: value name!

smalltalkObject
	^value smalltalkObject!

umlClass

	^value umlClass!

value
	^value!

value: anObject
	value := anObject!

vmPerform: aSymbol 
	^value vmPerform: aSymbol ! !
!UMLTreeNode categoriesFor: #asUMLObject!public!xmi!xmi-others! !
!UMLTreeNode categoriesFor: #className!public! !
!UMLTreeNode categoriesFor: #collectionClasses!public! !
!UMLTreeNode categoriesFor: #displayString!public! !
!UMLTreeNode categoriesFor: #icon!public! !
!UMLTreeNode categoriesFor: #instVarName!accessing!private! !
!UMLTreeNode categoriesFor: #instVarName:!accessing!private! !
!UMLTreeNode categoriesFor: #isCollectionNode!public! !
!UMLTreeNode categoriesFor: #smalltalkObject!public! !
!UMLTreeNode categoriesFor: #umlClass!public! !
!UMLTreeNode categoriesFor: #value!accessing!private! !
!UMLTreeNode categoriesFor: #value:!accessing!private! !
!UMLTreeNode categoriesFor: #vmPerform:!public! !

!UMLTreeNode class methodsFor!

instVarName: symbol value: anUMLObject

	^super new initialize
		instVarName: symbol;
		value: anUMLObject;
		yourself.! !
!UMLTreeNode class categoriesFor: #instVarName:value:!public! !

