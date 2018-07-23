"Filed out from Dolphin Smalltalk 7"!

SSWAccessor subclass: #SSWInstVarAccessor
	instanceVariableNames: 'ownerClass slot name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWInstVarAccessor guid: (GUID fromString: '{266e4dc6-398e-11d5-b1df-444553540000}')!
SSWInstVarAccessor comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWInstVarAccessor categoriesForClass!Unclassified! !
!SSWInstVarAccessor methodsFor!

= anSSWAccessor

	"14/8/2000"
	
	^(self ownerClass = anSSWAccessor ownerClass) and: [self slot = anSSWAccessor slot]!

access: aSymbol in: aClass

	"6/8/2000
	
	Configure the receiver to access the inst var of aClass which is named aSymbol"
	
	| instVarSlot |

	"Veirfy a valid inst var slot"
	instVarSlot := aClass allInstVarNames indexOf: aSymbol asString.
	instVarSlot < 1 ifTrue: [self error: ('Undefined instance variable ', aSymbol)].

	self 
		ownerClass: aClass;
		slot: instVarSlot;
		name: aSymbol!

accesses: aSymbol

	"14/8/2000"
	
	^self name = aSymbol!

hash

	"14/8/2000"
	
	^self ownerClass hash + self slot hash!

name

	"20/8/2000

	name stores the name of the instance variable accessed by the receiver,
	as a Symbol"
	
	^name!

name: aSymbol

	"20/8/2000

	name stores the name of the instance variable accessed by the receiver,
	as a Symbol"
	
	name := aSymbol!

ownerClass

	"6/8/2000
	
	ownerClass stores the class whose instance variable is accessed by the receiver"
	
	^ownerClass!

ownerClass: aClass

	"6/8/2000
	
	ownerClass stores the class whose instance variable is accessed by the receiver"
	
	ownerClass := aClass!

slot

	"6/8/2000
	
	slot stores the index of the instance variable accessed by the receiver"
	
	^slot!

slot: anInteger

	"6/8/2000
	
	slot stores the index of the instance variable accessed by the receiver"
	
	slot := anInteger!

value: valueObject in: targetObject

	"6/8/2000
	
	Set the instance variable of targetObject represented by the receiver to valueObject"
	
	targetObject _instVarAt: self slot put: valueObject!

valueIn: anObject

	"6/8/2000"
	
	^anObject _instVarAt: self slot! !
!SSWInstVarAccessor categoriesFor: #=!public!testing! !
!SSWInstVarAccessor categoriesFor: #access:in:!initializing!public! !
!SSWInstVarAccessor categoriesFor: #accesses:!public!testing! !
!SSWInstVarAccessor categoriesFor: #hash!public!testing! !
!SSWInstVarAccessor categoriesFor: #name!accessing!public! !
!SSWInstVarAccessor categoriesFor: #name:!accessing!public! !
!SSWInstVarAccessor categoriesFor: #ownerClass!accessing!public! !
!SSWInstVarAccessor categoriesFor: #ownerClass:!accessing!public! !
!SSWInstVarAccessor categoriesFor: #slot!accessing!public! !
!SSWInstVarAccessor categoriesFor: #slot:!accessing!public! !
!SSWInstVarAccessor categoriesFor: #value:in:!public!updating! !
!SSWInstVarAccessor categoriesFor: #valueIn:!evaluating!public! !

!SSWInstVarAccessor class methodsFor!

toAccess: anInstVarName in: aClass

	"6/8/2000"
	
	^self new
		access: anInstVarName in: aClass;
		yourself! !
!SSWInstVarAccessor class categoriesFor: #toAccess:in:!instance creation!public! !

