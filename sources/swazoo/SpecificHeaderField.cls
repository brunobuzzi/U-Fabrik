"Filed out from Dolphin Smalltalk 7"!

HeaderField subclass: #SpecificHeaderField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpecificHeaderField guid: (GUID fromString: '{24ef33d8-5c18-4f94-b171-fd3066102ed2}')!
SpecificHeaderField comment: ''!
!SpecificHeaderField categoriesForClass!Unclassified! !
!SpecificHeaderField methodsFor!

name
	^self class fieldName!

parameterAt: aString ifAbsent: aBlock 
1 halt: 'use the transfer encodings of the field, not this'.
	^self parameters at: aString ifAbsent: aBlock!

parseValueFrom: aString
	^self subclassResponsibility!

readParametersFrom: sourceStream 
	"^a Dictionary
c.f. RFC 2616 3.6 Transfer Codings"

	| parameters |
	parameters := Dictionary new.
	[sourceStream atEnd] whileFalse: 
			[| attribute value |
			attribute := HTTPString trimBlanksFrom: (sourceStream upTo: $=).
			value := HTTPString trimBlanksFrom: (sourceStream upTo: $;).
			parameters at: attribute put: value].
	^parameters!

valueFrom: fieldValueString 
	self parseValueFrom: fieldValueString.
	^self!

values
	^Array with: self value! !
!SpecificHeaderField categoriesFor: #name!accessing!public! !
!SpecificHeaderField categoriesFor: #parameterAt:ifAbsent:!accessing!public! !
!SpecificHeaderField categoriesFor: #parseValueFrom:!private! !
!SpecificHeaderField categoriesFor: #readParametersFrom:!private! !
!SpecificHeaderField categoriesFor: #valueFrom:!initialize-release!public! !
!SpecificHeaderField categoriesFor: #values!accessing!public! !

!SpecificHeaderField class methodsFor!

fieldName
	^self subclassResponsibility!

newForFieldName: fieldNameString withValueFrom: fieldValueString 
	^self newWithValueFrom: fieldValueString!

newWithValueFrom: fieldValueString 
	^self new valueFrom: fieldValueString! !
!SpecificHeaderField class categoriesFor: #fieldName!accessing!public! !
!SpecificHeaderField class categoriesFor: #newForFieldName:withValueFrom:!private! !
!SpecificHeaderField class categoriesFor: #newWithValueFrom:!private! !

