"Filed out from Dolphin Smalltalk 7"!

UMLCollectionTest subclass: #UMLDictionaryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDictionaryTest guid: (GUID fromString: '{bdc25fc0-eafd-4472-b0d0-d2a3459a8c58}')!
UMLDictionaryTest comment: ''!
!UMLDictionaryTest categoriesForClass!Unclassified! !
!UMLDictionaryTest methodsFor!

testAtPut
	| parsedCode result code |

	code := ' | dict |
dict := Dictionary new.
dict at: 1 put: 1.
dict at: ''1'' put: ''string''.
dict at: true put: true.
dict'.

	parsedCode := self umlCompiler parseExpression: code. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: ((result smalltalkObject at: 1) smalltalkObject = 1).
	self assert: ((result smalltalkObject at: '1') smalltalkObject = 'string').
	self assert: ((result smalltalkObject at: true) smalltalkObject = true).!

testIncludesKey
	| parsedCode result code |

	code := ' | dict |
dict := Dictionary new.
dict at: 1 put: 1.
dict at: ''1'' put: ''string''.
dict at: true put: true.
dict'.

	parsedCode := self umlCompiler parseExpression: code. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject includesKey: 1).
	self assert: (result smalltalkObject includesKey: '1').
	self assert: (result smalltalkObject includesKey: true).! !
!UMLDictionaryTest categoriesFor: #testAtPut!public! !
!UMLDictionaryTest categoriesFor: #testIncludesKey!public! !

