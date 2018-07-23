"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLWebValueCache
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebValueCache guid: (GUID fromString: '{ce7a0653-1ae7-43a3-ade1-d0d4b65ba091}')!
UMLWebValueCache comment: ''!
!UMLWebValueCache categoriesForClass!Unclassified! !
!UMLWebValueCache methodsFor!

hasVariableNamed: aSymbol 
	^aSymbol == #value!

value
	^value!

value: anObject
	value := anObject!

vmPerform: aSymbol 
	^self perform: aSymbol! !
!UMLWebValueCache categoriesFor: #hasVariableNamed:!public! !
!UMLWebValueCache categoriesFor: #value!accessing!private! !
!UMLWebValueCache categoriesFor: #value:!accessing!private! !
!UMLWebValueCache categoriesFor: #vmPerform:!public! !

!UMLWebValueCache class methodsFor!

value: anObject

	^super new value: anObject;
		yourself.! !
!UMLWebValueCache class categoriesFor: #value:!public! !

