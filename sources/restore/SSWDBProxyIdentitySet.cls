"Filed out from Dolphin Smalltalk 7"!

IdentitySet variableSubclass: #SSWDBProxyIdentitySet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBProxyIdentitySet guid: (GUID fromString: '{4f9dc601-6349-11d5-b1df-0010a70883e2}')!
SSWDBProxyIdentitySet comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBProxyIdentitySet categoriesForClass!Unclassified! !
!SSWDBProxyIdentitySet methodsFor!

findElementOrNil: anObject

	"22/5/2001

	Override to use proxy identity methods.
	The purpose of this class could be satisfied by a PluggableSet, 
	but performance is better with a dedicate class"

	| capacity index element |
	index := (capacity := self basicSize) < 8192
			ifTrue: [anObject _identityHash \\ capacity + 1]
			ifFalse: [(anObject _identityHash * (capacity bitShift: -12)) \\ capacity + 1].
	[(element := self basicAt: index) isNil or: [anObject _identicalTo: element]]
		whileFalse: [index := index \\ capacity + 1].
	^index! !
!SSWDBProxyIdentitySet categoriesFor: #findElementOrNil:!private!searching! !

