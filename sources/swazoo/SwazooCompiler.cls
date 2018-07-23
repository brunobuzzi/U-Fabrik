"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SwazooCompiler
	instanceVariableNames: 'accessor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooCompiler guid: (GUID fromString: '{b00db831-6f06-479f-ac25-ea317bb47303}')!
SwazooCompiler comment: ''!
!SwazooCompiler categoriesForClass!Unclassified! !
!SwazooCompiler class methodsFor!

evaluate: aString 
        ^SpEnvironment
            evaluate: aString
            receiver: SwazooCompiler
            in: self class environment!

evaluate: aString receiver: anObject 
	^SpEnvironment 
		evaluate: aString
		receiver: anObject
		in: self class environment! !
!SwazooCompiler class categoriesFor: #evaluate:!evaluation!public! !
!SwazooCompiler class categoriesFor: #evaluate:receiver:!evaluation!public! !

