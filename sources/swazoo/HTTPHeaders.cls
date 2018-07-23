"Filed out from Dolphin Smalltalk 7"!

Object subclass: #HTTPHeaders
	instanceVariableNames: 'fields'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPHeaders guid: (GUID fromString: '{71ea1b8d-34c2-4b30-9c91-6556cf4bd600}')!
HTTPHeaders comment: ''!
!HTTPHeaders categoriesForClass!Unclassified! !
!HTTPHeaders methodsFor!

addField: aField 
	"HTTPSpec1.1 Sec4.2
Multiple message-header fields with the same field-name MAY be present in a message if and only if the entire field-value for that header field is defined as a comma-separated list [i.e., #(values)]. It MUST be possible to combine the multiple header fields into one 'field-name: field-value' pair, without changing the semantics of the message, by appending each subsequent field-value to the first, each separated by a comma. The order in which header fields with the same field-name are received is therefore significant to the interpretation of the combined field value, and thus a proxy MUST NOT change the order of these field values when a message is forwarded.
Note that we have to use the field name here as we may be adding a field for which there is no class, i.e. it's a GenericHeaderField."

	(self includesFieldNamed: aField name) 
		ifTrue: [(self fieldNamed: aField name) combineWith: aField]
		ifFalse: [self fields at: aField name asUppercase put: aField].
	^self!

crlfOn: aStream 
	aStream
		nextPut: Character cr;
		nextPut: Character lf!

fieldNamed: aString 
	"^aString
If I contain a field named aString, I return it.  Otherwise an exception is thrown.
This is a bad way of getting a field.  Use >> fieldOfClass: instead."

	| targetString |
	targetString := aString asUppercase.
	^self fields detect: [:aField | aField name asUppercase = targetString]!

fieldNamed: aString ifNone: aBlock 
	"^aString
If I contain a field named aString, I return it.  Otherwise I evaluate aBlock."

	^self fields at: aString asUppercase ifAbsent: aBlock!

fieldNamed: aFieldName ifPresent: presentBlock ifAbsent: absentBlock 
	"^an Object
I look for a field named aFieldName among my fields.  If I find it, I return the result of evaluating presentBlock with the found field as an argument, otherwise I return the result of evaluate the absentBlock"

	| foundField |
	foundField := self fieldNamed: aFieldName ifNone: [nil].
	^foundField isNil 
		ifTrue: [absentBlock value]
		ifFalse: [presentBlock value: foundField]!

fieldOfClass: aClass 
	"^aString
If I contain a field of class aClass, I return it.   Otherwise an exception is thrown."

	^self fields detect: [:aField | aField class == aClass] ifNone: [^nil]!

fieldOfClass: aClass ifNone: aBlock 
	"^aString
If I contain a field of class aClass, I return it.   Otherwise I evaluate aBlock."

	^self fields detect: [:aField | aField class == aClass] ifNone: aBlock!

fieldOfClass: fieldClass ifPresent: presentBlock ifAbsent: absentBlock 
	"^an Object
I look for a field of class fieldClass among my fields.  If I find it, I return the result of evaluating presentBlock with the found field as an argument, otherwise I return the result of evaluate the absentBlock"

	| foundField |
	foundField := self fieldOfClass: fieldClass ifNone: [nil].
	^foundField isNil 
		ifTrue: [absentBlock value]
		ifFalse: [presentBlock value: foundField]!

fields
	fields isNil ifTrue: [fields := Dictionary new].
	^fields!

getOrMakeFieldOfClass: aClass 
	"^a HeaderField
If I contain a field of class aClass, I return it.   Otherwise I create a new instance if the field class and add it to my collection of headers."

	^self fieldOfClass: aClass
		ifNone: 
			[| newField |
			newField := aClass new.
			self addField: newField.
			newField]!

includesFieldNamed: aString 
	"^a Boolean
I return true if one of my fields has the name aString."

	| targetField |
	targetField := self fieldNamed: aString ifNone: [nil].
	^targetField notNil!

includesFieldOfClass: aClass 
	"^a Boolean
I return true if one of my fields is of class aClass."

	^self 
		fieldOfClass: aClass
		ifPresent: [:aField | true]
		ifAbsent: [false]!

printOn: aStream
	aStream nextPutAll: 'a HTTPHeaders'; cr.
	self fields values do: [:each | aStream nextPutAll: '   ', each printString; cr]!

readFieldFromString: aString 
	"^self
First I get the field parsed from aString, then I add the new field to my collection of fields.  Adding the new field may involve merging field values if I already have a field of that class."

	self addField: (HeaderField fromLine: aString).
	^self!

readFrom: aSwazooStream 
	"^an HTTPHeaders
I return a new instance of myself which contains fields parsed from aStream.  Everything upto the next blank line is a header field."
	
	| nextLine |
	[nextLine := aSwazooStream nextUnfoldedLine.
	nextLine isEmpty]
		whileFalse: [self readFieldFromString: nextLine].
	^self!

writeOn: aStream 
	"^self
I write all my fields to aStream."

	self fields do: 
			[:aField | 
			aField printOn: aStream.
			self crlfOn: aStream]! !
!HTTPHeaders categoriesFor: #addField:!public!services! !
!HTTPHeaders categoriesFor: #crlfOn:!emitting!public! !
!HTTPHeaders categoriesFor: #fieldNamed:!public!services! !
!HTTPHeaders categoriesFor: #fieldNamed:ifNone:!public!services! !
!HTTPHeaders categoriesFor: #fieldNamed:ifPresent:ifAbsent:!public!services! !
!HTTPHeaders categoriesFor: #fieldOfClass:!public!services! !
!HTTPHeaders categoriesFor: #fieldOfClass:ifNone:!public!services! !
!HTTPHeaders categoriesFor: #fieldOfClass:ifPresent:ifAbsent:!public!services! !
!HTTPHeaders categoriesFor: #fields!private! !
!HTTPHeaders categoriesFor: #getOrMakeFieldOfClass:!public!services! !
!HTTPHeaders categoriesFor: #includesFieldNamed:!public!testing! !
!HTTPHeaders categoriesFor: #includesFieldOfClass:!public!testing! !
!HTTPHeaders categoriesFor: #printOn:!private! !
!HTTPHeaders categoriesFor: #readFieldFromString:!initialize-release!public! !
!HTTPHeaders categoriesFor: #readFrom:!initialize-release!public! !
!HTTPHeaders categoriesFor: #writeOn:!emitting!public! !

!HTTPHeaders class methodsFor!

readFrom: aSwazooStream 
	"^an HTTPHeaders
I return a new instance of myself which contains fields parsed from aStream."

	^self new readFrom: aSwazooStream! !
!HTTPHeaders class categoriesFor: #readFrom:!instance creation!public! !

