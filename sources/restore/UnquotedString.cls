"Filed out from Dolphin Smalltalk 7"!

String variableByteSubclass: #UnquotedString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UnquotedString guid: (GUID fromString: '{b1154743-a841-11d5-b1e0-444553540000}')!
UnquotedString isNullTerminated: true!
UnquotedString comment: ''!
!UnquotedString categoriesForClass!Unclassified! !
!UnquotedString methodsFor!

printOn: aStream

	"12/9/2001

	The sole purpose of the receiver is to print itself without quote marks"

	"to:do: faster than do:"
	1 to: self size do: [ :index | aStream nextPut: (self at: index)]! !
!UnquotedString categoriesFor: #printOn:!printing!public! !

