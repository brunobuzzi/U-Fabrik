"Filed out from Dolphin Smalltalk 7"!

UMLLiveEngineError subclass: #UMLImplementationNotFoundError
	instanceVariableNames: 'implementationName errorClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLImplementationNotFoundError guid: (GUID fromString: '{446f3753-1e29-4511-9bbf-74bbcb1b0701}')!
UMLImplementationNotFoundError comment: ''!
!UMLImplementationNotFoundError categoriesForClass!Unclassified! !
!UMLImplementationNotFoundError methodsFor!

errorClass
	^errorClass!

errorClass: anObject
	errorClass := anObject!

getAllClasses

	^(OrderedCollection with: errorClass), errorClass allSuperclasses copyWithoutDuplicates!

implementationName
	^implementationName!

implementationName: anObject
	implementationName := anObject! !
!UMLImplementationNotFoundError categoriesFor: #errorClass!accessing!private! !
!UMLImplementationNotFoundError categoriesFor: #errorClass:!accessing!private! !
!UMLImplementationNotFoundError categoriesFor: #getAllClasses!public! !
!UMLImplementationNotFoundError categoriesFor: #implementationName!accessing!private! !
!UMLImplementationNotFoundError categoriesFor: #implementationName:!accessing!private! !

!UMLImplementationNotFoundError class methodsFor!

selector: aSymbol class: anUMLClass

	^super new 
		implementationName: aSymbol;
		errorClass: anUMLClass;
		signal: ('Implementation named <', aSymbol, '> not found for class <', anUMLClass name, '>')! !
!UMLImplementationNotFoundError class categoriesFor: #selector:class:!public! !

