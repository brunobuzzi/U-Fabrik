"Filed out from Dolphin Smalltalk 7"!

SSWDBAbstractSubTable subclass: #SSWDBIntermediateTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBIntermediateTable guid: (GUID fromString: '{464b1409-81ca-11d5-b1df-0010a70883e2}')!
SSWDBIntermediateTable comment: ''!
!SSWDBIntermediateTable categoriesForClass!Unclassified! !
!SSWDBIntermediateTable methodsFor!

recoverInstanceFromRow: aDBRow into: anSSWDBObjectProxy
	
	"Redirect to the relevant concrete class. Also set the class of the proxy to the actual class of object.
	(since this may be one of the receiver's instanceClass' subclasses)"
	
	| class |
	
	class := self instanceClassFromRow: aDBRow.

	class = self instanceClass
		ifTrue: [super recoverInstanceFromRow: aDBRow into: anSSWDBObjectProxy]
		ifFalse: [(self reStore tableForClass: class) 
				recoverInstanceFromRow: aDBRow into: anSSWDBObjectProxy].
	
	anSSWDBObjectProxy _class: anSSWDBObjectProxy _proxiedObject class! !
!SSWDBIntermediateTable categoriesFor: #recoverInstanceFromRow:into:!instance creation!public! !

