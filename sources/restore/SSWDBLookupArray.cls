"Filed out from Dolphin Smalltalk 7"!

Array variableSubclass: #SSWDBLookupArray
	instanceVariableNames: 'indexTable'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBLookupArray guid: (GUID fromString: '{81ae3fc3-5ab1-11d6-87e7-0010a70883e2}')!
SSWDBLookupArray comment: ''!
!SSWDBLookupArray categoriesForClass!Unclassified! !
!SSWDBLookupArray methodsFor!

copyLikeOfSize: anInteger

	^(super copyLikeOfSize: anInteger)
		indexTable: self indexTable;
		yourself!

indexTable

	"27/4/2002

	indexTable stores a LookupTable mapping an attribute of each element to that element's index,
	which the receiver uses for fast lookup on the chosen attribute"

	^indexTable!

indexTable: aLookupTable

	"27/4/2002

	indexTable stores a LookupTable mapping an attribute of each element to that element's index,
	which the receiver uses for fast lookup on the chosen attribute"

	indexTable := aLookupTable!

indexWhere: anObject ifAbsent: aBlock

	"27/4/2002

	Return the index of the receiver where the element which yields anObject (via the lookupBlock) is located"

	^indexTable at: anObject ifAbsent: [aBlock value]!

lookupWith: aMonadicValuable

	"27/4/2002

	Initialize the receiver's lookupTable such that it gives a quick lookup on 
	the result of evaluating each element with a MonadicValuable"

	| table |

	table := LookupTable new.

	self keysAndValuesDo: [ :index :each | (aMonadicValuable value: each) ifNotNil: [ :key | table at: key put: index]].

	self indexTable: table!

where: anObject ifAbsent: aBlock

	"27/4/2002

	Return the element of the receiver which yields anObject (via the lookupBlock)"

	^self at: (self indexTable at: anObject ifAbsent: [^aBlock value])! !
!SSWDBLookupArray categoriesFor: #copyLikeOfSize:!copying!public! !
!SSWDBLookupArray categoriesFor: #indexTable!accessing!public! !
!SSWDBLookupArray categoriesFor: #indexTable:!accessing!public! !
!SSWDBLookupArray categoriesFor: #indexWhere:ifAbsent:!public!searching! !
!SSWDBLookupArray categoriesFor: #lookupWith:!initializing!public! !
!SSWDBLookupArray categoriesFor: #where:ifAbsent:!public!searching! !

!SSWDBLookupArray class methodsFor!

lookup: anArray with: aMonadicValuable

	^(self withAll: anArray)
		lookupWith: aMonadicValuable;
		yourself! !
!SSWDBLookupArray class categoriesFor: #lookup:with:!public! !

