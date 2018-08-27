"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLExecutionResult
	instanceVariableNames: 'receiver arguments snapshot implementation nodeResults'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLExecutionResult guid: (GUID fromString: '{a3f2aa02-dc24-40b3-84e0-713754c9452a}')!
UMLExecutionResult comment: ''!
!UMLExecutionResult categoriesForClass!Unclassified! !
!UMLExecutionResult methodsFor!

addResult: anUMLObject

	^nodeResults add: anUMLObject!

answerResult

	self isEmpty ifTrue: [^receiver].

	"see issue #51" "#isCurtailed indicate a (^) return node --> answer the last result" "primitive call answer the result of the primitive call --> answer the last result"
	^(snapshot isCurtailed or: [implementation isPrimitiveCall or:[snapshot hasInfiniteLoop]])  
		ifTrue: [self last] 
		ifFalse: [receiver] "no return (^) node present and not a primitive call --> answer the receiver"!

answerResultForBlock

	self isEmpty ifTrue: [^self defaultVirtualMachine nilObject].

	^self last!

arguments
	^arguments!

arguments: anObject
	arguments := anObject!

implementation
	^implementation!

implementation: anObject
	implementation := anObject!

initialize

	super initialize.

	nodeResults := OrderedCollection new.!

isEmpty

	^nodeResults isEmpty!

last

	^nodeResults last!

nodeResults
	^nodeResults!

nodeResults: anObject
	nodeResults := anObject!

receiver
	^receiver!

receiver: anObject
	receiver := anObject!

smalltalkObject

	self isEmpty ifTrue: [^self defaultVirtualMachine nilObject].

	^self last smalltalkObject!

snapshot
	^snapshot!

snapshot: anObject
	snapshot := anObject!

stack

	^snapshot parentStack!

umlClass

	self isEmpty ifTrue: [^self defaultVirtualMachine nilObject].

	^self last umlClass! !
!UMLExecutionResult categoriesFor: #addResult:!public! !
!UMLExecutionResult categoriesFor: #answerResult!answers!public! !
!UMLExecutionResult categoriesFor: #answerResultForBlock!answers!public! !
!UMLExecutionResult categoriesFor: #arguments!accessing!private! !
!UMLExecutionResult categoriesFor: #arguments:!accessing!private! !
!UMLExecutionResult categoriesFor: #implementation!accessing!private! !
!UMLExecutionResult categoriesFor: #implementation:!accessing!private! !
!UMLExecutionResult categoriesFor: #initialize!public! !
!UMLExecutionResult categoriesFor: #isEmpty!convenience!public! !
!UMLExecutionResult categoriesFor: #last!answers!convenience!public! !
!UMLExecutionResult categoriesFor: #nodeResults!accessing!private! !
!UMLExecutionResult categoriesFor: #nodeResults:!accessing!private! !
!UMLExecutionResult categoriesFor: #receiver!accessing!private! !
!UMLExecutionResult categoriesFor: #receiver:!accessing!private! !
!UMLExecutionResult categoriesFor: #smalltalkObject!convenience!public! !
!UMLExecutionResult categoriesFor: #snapshot!accessing!private! !
!UMLExecutionResult categoriesFor: #snapshot:!accessing!private! !
!UMLExecutionResult categoriesFor: #stack!internals!public! !
!UMLExecutionResult categoriesFor: #umlClass!convenience!public! !

!UMLExecutionResult class methodsFor!

newFor: anUMLObject arguments: arguments implementation: anUMLImplementation snapshot: anUMLExecutionSnapshot

	^super new initialize
		receiver: anUMLObject;
		arguments: arguments;
		implementation: anUMLImplementation;
		snapshot: anUMLExecutionSnapshot;
		yourself! !
!UMLExecutionResult class categoriesFor: #newFor:arguments:implementation:snapshot:!public! !

