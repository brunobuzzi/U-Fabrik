"Filed out from Dolphin Smalltalk 7"!

WebGridColumn subclass: #UMLWebGridColumn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebGridColumn guid: (GUID fromString: '{1ca05ba2-875c-45cf-a24d-7ab52187ef14}')!
UMLWebGridColumn comment: ''!
!UMLWebGridColumn categoriesForClass!Unclassified! !
!UMLWebGridColumn methodsFor!

defaultViewBlock
	^[:object | 
		self aspect 
			ifNil: ['No Aspect'] 
			ifNotNil: [:objectAspect | 
				((object canUnderstand: objectAspect asSymbol) or: [object hasVariableNamed: objectAspect])
				ifTrue: [ | value |
					value := object vmPerform: objectAspect.
					value belongToVirtualMachine ifTrue: [value smalltalkObject] ifFalse: [value printString]]
				ifFalse: ['DNU: [', objectAspect , ']']]]! !
!UMLWebGridColumn categoriesFor: #defaultViewBlock!public! !

