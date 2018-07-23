"Filed out from Dolphin Smalltalk 7"!

Object subclass: #HeaderField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'httpFieldNameToClassDictionary'!
HeaderField guid: (GUID fromString: '{bf3665f4-aa28-4ffb-afd4-87dbef50cf4d}')!
HeaderField comment: ''!
!HeaderField categoriesForClass!Unclassified! !
!HeaderField methodsFor!

combineWith: aHeaderField 
	SwazooHeaderFieldParseError raiseSignal: 'Not supported'!

fieldName
	^self subclassResponsibility!

isConditional
	^false!

isContentDisposition
	^false!

isContentType
	^false!

name
	^self subclassResponsibility!

printOn: aStream 
	aStream
		nextPutAll: self name;
		nextPutAll: ': '.
	self valuesAsStringOn: aStream.
	^self!

values
	^self subclassResponsibility!

valuesAsString
	| targetStream |
	targetStream := WriteStream on: String new.
	self valuesAsStringOn: targetStream.
	^targetStream contents!

valuesAsStringOn: aStream
	^self subclassResponsibility! !
!HeaderField categoriesFor: #combineWith:!public!services! !
!HeaderField categoriesFor: #fieldName!accessing!public! !
!HeaderField categoriesFor: #isConditional!public!testing! !
!HeaderField categoriesFor: #isContentDisposition!public!testing! !
!HeaderField categoriesFor: #isContentType!public!testing! !
!HeaderField categoriesFor: #name!accessing!public! !
!HeaderField categoriesFor: #printOn:!printing!public! !
!HeaderField categoriesFor: #values!accessing!public! !
!HeaderField categoriesFor: #valuesAsString!printing!public! !
!HeaderField categoriesFor: #valuesAsStringOn:!printing!public! !

!HeaderField class methodsFor!

classForFieldName: aString 
	"^a Class
If I can find a specific header field with a name matching aString I return that.  Otherwise I return the GenericHeaderField class."

	^self httpFieldNameToClassDictionary at: aString
		ifAbsent: [GenericHeaderField]!

fromLine: aString 
	| sourceStream fieldName fieldValue fieldClass |
	sourceStream := ReadStream on: aString.
	fieldName := (HTTPString trimBlanksFrom: (sourceStream upTo: $:)) 
				asUppercase.
	fieldClass := self classForFieldName: fieldName.
	fieldValue := HTTPString trimBlanksFrom: sourceStream upToEnd.
	^fieldClass newForFieldName: fieldName withValueFrom: fieldValue!

httpFieldNameToClassDictionary
	"^a Class
I return the dictionarry of my subclasses keyed on the name of the field they represent.
Note that we only need *Request* headers listed in here because they are the only thing we will be parsing for."

	"After a change here, remeber to do 'HeaderField resetHttpFieldNameToClassDictionary' "

	httpFieldNameToClassDictionary isNil 
		ifTrue: 
			[| headerClasses |
			headerClasses := OrderedCollection new.
			headerClasses
				add: ContentDispositionField;
				add: HTTPContentLengthField;
				add: ContentTypeField;
				add: HTTPAcceptField;
				add: HTTPAuthorizationField;
				add: HTTPConnectionField;
				add: HTTPHostField;
				add: HTTPIfMatchField;
				add: HTTPIfModifiedSinceField;
				add: HTTPIfNoneMatchField;
				add: HTTPIfRangeField;
				add: HTTPIfUnmodifiedSinceField;
				add: HTTPRefererField;
				add: HTTPUserAgentField.
			httpFieldNameToClassDictionary := Dictionary new.
			headerClasses do: 
					[:aClass | 
					httpFieldNameToClassDictionary at: aClass fieldName asUppercase put: aClass]].
	^httpFieldNameToClassDictionary!

newForFieldName: fieldNameString withValueFrom: fieldValueString 
	^self subclassResponsibility!

resetHttpFieldNameToClassDictionary
	
	httpFieldNameToClassDictionary := nil .
	^self! !
!HeaderField class categoriesFor: #classForFieldName:!private! !
!HeaderField class categoriesFor: #fromLine:!instance creation!public! !
!HeaderField class categoriesFor: #httpFieldNameToClassDictionary!private! !
!HeaderField class categoriesFor: #newForFieldName:withValueFrom:!private! !
!HeaderField class categoriesFor: #resetHttpFieldNameToClassDictionary!private! !

