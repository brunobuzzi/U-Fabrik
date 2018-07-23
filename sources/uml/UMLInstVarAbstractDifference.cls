"Filed out from Dolphin Smalltalk 7"!

UMLElementDifference subclass: #UMLInstVarAbstractDifference
	instanceVariableNames: 'firstClass secondClass varName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLInstVarAbstractDifference guid: (GUID fromString: '{b207cb5c-00ee-4ddb-9889-df85e349f27c}')!
UMLInstVarAbstractDifference comment: ''!
!UMLInstVarAbstractDifference categoriesForClass!Unclassified! !
!UMLInstVarAbstractDifference methodsFor!

firstClass
	^firstClass!

firstClass: anObject
	firstClass := anObject!

initialize

	super initialize.

	varName := ''.!

printOn: aStream

	super printOn: aStream.

	aStream
		nextPut: $<;
		nextPutAll: varName;
		nextPut: $>.!

secondClass
	^secondClass!

secondClass: anObject
	secondClass := anObject!

varName
	^varName!

varName: anObject
	varName := anObject! !
!UMLInstVarAbstractDifference categoriesFor: #firstClass!accessing!private! !
!UMLInstVarAbstractDifference categoriesFor: #firstClass:!accessing!private! !
!UMLInstVarAbstractDifference categoriesFor: #initialize!public! !
!UMLInstVarAbstractDifference categoriesFor: #printOn:!public! !
!UMLInstVarAbstractDifference categoriesFor: #secondClass!accessing!private! !
!UMLInstVarAbstractDifference categoriesFor: #secondClass:!accessing!private! !
!UMLInstVarAbstractDifference categoriesFor: #varName!accessing!private! !
!UMLInstVarAbstractDifference categoriesFor: #varName:!accessing!private! !

!UMLInstVarAbstractDifference class methodsFor!

firstClass: firstUMLClass secondClass: secondUMLClass varName: varName

	^super new initialize
		firstClass: firstUMLClass;
		secondClass: secondUMLClass;
		varName: varName;
		yourself.!

icon

	^Warning icon! !
!UMLInstVarAbstractDifference class categoriesFor: #firstClass:secondClass:varName:!public! !
!UMLInstVarAbstractDifference class categoriesFor: #icon!public! !

