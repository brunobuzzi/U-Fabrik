"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWAccessor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWAccessor guid: (GUID fromString: '{266e4dc1-398e-11d5-b1df-444553540000}')!
SSWAccessor comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWAccessor categoriesForClass!Unclassified! !
!SSWAccessor methodsFor!

access: aSymbol in: aClass

	"6/8/2000
	
	Configure the receiver to access the inst var of aClass which is named aSymbol"
	
	self subclassResponsibility!

accesses: aSymbol

	"14/8/2000
	
	Return a Boolean indicating whether the receiver access the instance variable
	named aSymbol"
	
	^self subclassResponsibility!

name

	"6/8/2000
	
	Return the name of the inst var accessed by the receiver.
	Default - nil (unknown/undefined).
	Subclasses which can interpret this concept meaningfully should override"
	
	^nil!

value: valueObject in: targetObject

	"6/8/2000
	
	Set the attribute of targetObject which the receiver accesses to valueObject"
	
	self subclassResponsibility!

valueIn: anObject

	"6/8/2000
	
	Extract and return the value of anObject which the receiver accesses"
	
	^self subclassResponsibility! !
!SSWAccessor categoriesFor: #access:in:!initializing!public! !
!SSWAccessor categoriesFor: #accesses:!public!testing! !
!SSWAccessor categoriesFor: #name!evaluating!public! !
!SSWAccessor categoriesFor: #value:in:!public!updating! !
!SSWAccessor categoriesFor: #valueIn:!evaluating!public! !

