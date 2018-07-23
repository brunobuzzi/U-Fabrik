"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLAutocompletation
	instanceVariableNames: 'originalName caretPosition umlObject parent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAutocompletation guid: (GUID fromString: '{fcdcbc2b-e008-4e57-8ae1-29f24a10c3f7}')!
UMLAutocompletation comment: ''!
!UMLAutocompletation categoriesForClass!Unclassified! !
!UMLAutocompletation methodsFor!

caretPosition
	^caretPosition!

caretPosition: anObject
	caretPosition := anObject!

initialize

	super initialize.

	caretPosition := 1.
	originalName := ''.
	umlObject := UMLClass new.!

isClassName

	^umlObject notNil!

isFirst

	^parent isNil!

objectNames

	umlObject ifNil: [^OrderedCollection new].

	^umlObject getAllNames!

originalName
	^originalName!

originalName: anObject
	originalName := anObject!

parent
	^parent!

parent: anObject
	parent := anObject!

printOn: target

	target
		nextPutAll: 'Autocompletation';
		nextPut: $<;
		nextPutAll: '[', originalName, '-', caretPosition printString, '-',umlObject printString, ']';
		nextPut: $>.


!

umlObject
	^umlObject!

umlObject: anObject
	umlObject := anObject! !
!UMLAutocompletation categoriesFor: #caretPosition!accessing!private! !
!UMLAutocompletation categoriesFor: #caretPosition:!accessing!private! !
!UMLAutocompletation categoriesFor: #initialize!public! !
!UMLAutocompletation categoriesFor: #isClassName!public! !
!UMLAutocompletation categoriesFor: #isFirst!public! !
!UMLAutocompletation categoriesFor: #objectNames!public! !
!UMLAutocompletation categoriesFor: #originalName!accessing!private! !
!UMLAutocompletation categoriesFor: #originalName:!accessing!private! !
!UMLAutocompletation categoriesFor: #parent!accessing!private! !
!UMLAutocompletation categoriesFor: #parent:!accessing!private! !
!UMLAutocompletation categoriesFor: #printOn:!public! !
!UMLAutocompletation categoriesFor: #umlObject!accessing!private! !
!UMLAutocompletation categoriesFor: #umlObject:!accessing!private! !

!UMLAutocompletation class methodsFor!

label: aString position: caretPosition linkedTo: anObject

	^self label: aString position: caretPosition linkedTo: anObject parent: nil!

label: aString position: caretPosition linkedTo: anObject parent: anUMLAutocompletation

	^super new 
		originalName: aString; 
		caretPosition: caretPosition;
		umlObject: anObject;
		parent: anUMLAutocompletation;
		yourself.! !
!UMLAutocompletation class categoriesFor: #label:position:linkedTo:!public! !
!UMLAutocompletation class categoriesFor: #label:position:linkedTo:parent:!public! !

