"Filed out from Dolphin Smalltalk 7"!

SSWDBInheritedTable subclass: #SSWDBAbstractSubTable
	instanceVariableNames: 'rootClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBAbstractSubTable guid: (GUID fromString: '{b48d9a97-81aa-11d5-b1df-0010a70883e2}')!
SSWDBAbstractSubTable comment: 'Copyright 2001 Solutions Software Limited'!
!SSWDBAbstractSubTable categoriesForClass!Unclassified! !
!SSWDBAbstractSubTable methodsFor!

defaultName

	"Created 10/4/2001
	Modified 12/9/2001		Use dialect name transformation (issue#0007)
	
	Overriden to use the rootClass name"
	
	^self sqlDialect transformClassName: self rootClass name!

forCreation

	"The receiver should not CREATE TABLE (its persistent superclass will take care of this).
	Return nil"
		
	^nil!

isRootTable

	^false!

registerClass

	"10/4/2001

	Objects created from this table are registered under the rootClass"

	^self rootClass!

rootClass

	"10/4/2001
	
	rootClass stores the Class which is the root of the persistent class hierarchy
	in which the receiver's instanceClass resides"
	
	^rootClass!

rootClass: aClass

	"10/4/2001
	
	rootClass stores the Class which is the root of the persistent class hierarchy
	in which the receiver's instanceClass resides"
	
	rootClass := aClass!

rootTable

	"For a sub-table, the root table is the table of the rootClass"

	^self reStore tableForClass: self rootClass! !
!SSWDBAbstractSubTable categoriesFor: #defaultName!evaluating!public! !
!SSWDBAbstractSubTable categoriesFor: #forCreation!evaluating!public! !
!SSWDBAbstractSubTable categoriesFor: #isRootTable!public!testing! !
!SSWDBAbstractSubTable categoriesFor: #registerClass!evaluating!public! !
!SSWDBAbstractSubTable categoriesFor: #rootClass!accessing!public! !
!SSWDBAbstractSubTable categoriesFor: #rootClass:!accessing!public! !
!SSWDBAbstractSubTable categoriesFor: #rootTable!evaluating!public! !

!SSWDBAbstractSubTable class methodsFor!

forClass: aClass

	"18/4/2001
	
	Overriden to set the rootClass"
	
	^self new
		instanceClass: aClass;
		rootClass: aClass persistencyRootClass;
		yourself! !
!SSWDBAbstractSubTable class categoriesFor: #forClass:!instance creation!public! !

