"Filed out from Dolphin Smalltalk 7"!

HeaderField subclass: #GenericHeaderField
	instanceVariableNames: 'name value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GenericHeaderField guid: (GUID fromString: '{8d8744ce-c2c8-4088-991d-5b5056664e73}')!
GenericHeaderField comment: ''!
!GenericHeaderField categoriesForClass!Unclassified! !
!GenericHeaderField methodsFor!

combineWith: aHeaderField 
	"^self
I simply take my values and concatenate the values of aHeaderField."

	value := self value , ', ' , aHeaderField value.
	^self!

fieldName
1 halt: 'use >>name instead'.
	^self name!

forFieldName: fieldNameString andValue: fieldValueString 
	name := fieldNameString.
	value := fieldValueString.
	^self!

name
	^name!

value
	^value!

values
	^(HTTPString subCollectionsFrom: self value delimitedBy: $,) 
		collect: [:each | HTTPString trimBlanksFrom: each]!

valuesAsStringOn: aStream 
	aStream nextPutAll: value.
	^self! !
!GenericHeaderField categoriesFor: #combineWith:!public!services! !
!GenericHeaderField categoriesFor: #fieldName!accessing!public! !
!GenericHeaderField categoriesFor: #forFieldName:andValue:!initialize-release!public! !
!GenericHeaderField categoriesFor: #name!accessing!public! !
!GenericHeaderField categoriesFor: #value!accessing!public! !
!GenericHeaderField categoriesFor: #values!accessing!public! !
!GenericHeaderField categoriesFor: #valuesAsStringOn:!printing!public! !

!GenericHeaderField class methodsFor!

newForFieldName: fieldNameString withValueFrom: fieldValueString 
	^self new forFieldName: fieldNameString andValue: fieldValueString! !
!GenericHeaderField class categoriesFor: #newForFieldName:withValueFrom:!instance creation!public! !

