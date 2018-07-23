"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPMatchField
	instanceVariableNames: 'entityTags'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPMatchField guid: (GUID fromString: '{2b8311c1-97a4-40f2-8aa1-30188cadb30b}')!
HTTPMatchField comment: ''!
!HTTPMatchField categoriesForClass!Unclassified! !
!HTTPMatchField methodsFor!

addEntityTag: aString 
	self entityTags add: aString.
	^self!

combineWith: aHeaderField 
	"^self
I add the entity tags of aHeaderField to my own collection of entity tags."

	self entityTags addAll: aHeaderField entityTags.
	^self!

entityTags
	^self matchesAnyCurrentEntity 
		ifTrue: [nil]
		ifFalse: 
			[entityTags isNil ifTrue: [entityTags := OrderedCollection new].
			entityTags]!

isConditional
	^true!

matchesAnyCurrentEntity
	^entityTags = '*'!

parseValueFrom: aString 
	aString = '*' 
		ifTrue: [entityTags := aString]
		ifFalse: 
			[| sourceStream |
			entityTags := OrderedCollection new.
			sourceStream := ReadStream on: aString.
			[sourceStream atEnd] whileFalse: 
					[| entityTag |
					sourceStream upTo: $".
					entityTag := sourceStream upTo: $".
					entityTags add: entityTag.
					sourceStream upTo: $,]].
	^self!

valuesAsStringOn: targetStream 
	self write: self entityTags first asQuotedStringTo: targetStream.
	2 to: self entityTags size
		do: 
			[:tagIndex | 
			targetStream nextPut: $,.
			self write: (self entityTags at: tagIndex) asQuotedStringTo: targetStream].
	^self!

write: aString asQuotedStringTo: targetStream 
	"^self
See RFC 2616 2.2"

	targetStream nextPut: $".
	aString do: 
			[:character | 
			character == $" 
				ifTrue: [targetStream nextPutAll: '\"']
				ifFalse: [targetStream nextPut: character]].
	targetStream nextPut: $".
	^self! !
!HTTPMatchField categoriesFor: #addEntityTag:!public!services! !
!HTTPMatchField categoriesFor: #combineWith:!public!services! !
!HTTPMatchField categoriesFor: #entityTags!accessing!public! !
!HTTPMatchField categoriesFor: #isConditional!public!testing! !
!HTTPMatchField categoriesFor: #matchesAnyCurrentEntity!public!testing! !
!HTTPMatchField categoriesFor: #parseValueFrom:!private! !
!HTTPMatchField categoriesFor: #valuesAsStringOn:!printing!public! !
!HTTPMatchField categoriesFor: #write:asQuotedStringTo:!printing!public! !

