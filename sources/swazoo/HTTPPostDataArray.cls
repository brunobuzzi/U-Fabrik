"Filed out from Dolphin Smalltalk 7"!

Object subclass: #HTTPPostDataArray
	instanceVariableNames: 'underlyingCollection stream parsed'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPPostDataArray guid: (GUID fromString: '{22ed603d-51a6-45c2-97e4-343b9ee82a19}')!
HTTPPostDataArray comment: '
Introduced the HTTPPostDataArray to hold post data in an HTTPRequest in place of a Dictionary.  This is because it is legal for there to be more than one entry with the same name (key) and using a Dictionary  looses data (!!!!).

Instance Variables:
	underlyingCollection	<>	

'!
!HTTPPostDataArray categoriesForClass!Unclassified! !
!HTTPPostDataArray methodsFor!

allAt: aKey 
	| candidates |
	candidates := self underlyingCollection 
				select: [:anAssociation | anAssociation key = aKey].
	^candidates collect: [:anAssociation| anAssociation value]!

allNamesForValue: aString 
	| candidates |
	candidates := self underlyingCollection 
				select: [:anAssociation | anAssociation value value = aString].
	^candidates collect: [:anAssociation| anAssociation key]!

associations
	^self underlyingCollection!

at: aKey 
	^(self allAt: aKey) last!

at: aKey ifAbsent: aBlock 
	| candidates |
	candidates := self underlyingCollection 
				select: [:anAssociation | anAssociation key = aKey].
	^candidates isEmpty ifTrue: [aBlock value] ifFalse: [candidates last value]!

at: key put: anObject 

	self underlyingCollection add: (Association key: key value: anObject).
	^anObject!

clearParsed
	parsed := false!

includesKey: aKey 
	| candidates |
	candidates := self underlyingCollection 
				select: [:anAssociation | anAssociation key = aKey].
	^candidates notEmpty!

includesValue: aString 
	| candidates |
	candidates := self underlyingCollection 
				select: [:anAssociation | anAssociation value value = aString].
	^candidates notEmpty!

initialize
	self clearParsed!

isEmpty
	^self underlyingCollection isEmpty!

isParsed
	"postdata is already read and parsed from a request"
	^parsed!

keys
"^a Set
I mimick the behavior of a Dictionay which I replace.  I return a set of the keys in my underlying collection of associations."

	^(self underlyingCollection collect: [:anAssociation| anAssociation key]) asSet!

keysAndValuesDo: aTwoArgumentBlock 
	self underlyingCollection do: 
		[:anAssociation | aTwoArgumentBlock value: anAssociation key value: anAssociation value]!

nameForValue: aString
	^(self allNamesForValue: aString) last!

printOn: aStream
	aStream nextPutAll: 'HTTPPostDataArray 
	'.
	self underlyingCollection do: [:each | aStream nextPutAll: each key printString , '->', 
		each value value printString, '
	'].!

select: aBlock 
"^an Object
I run the select on the values of the associations in my underlying collection.  This mimicks the behavior when a Dictionary was used in my place."
	^self underlyingCollection select:  [:anAssociation| aBlock value: anAssociation value]!

setParsed
	parsed := true!

stream
	^stream!

stream: aSwazooStream
	"needed for defered postData parsing"
	stream := aSwazooStream!

underlyingCollection
	underlyingCollection isNil 
		ifTrue: [underlyingCollection := OrderedCollection new].
	^underlyingCollection! !
!HTTPPostDataArray categoriesFor: #allAt:!accessing!public! !
!HTTPPostDataArray categoriesFor: #allNamesForValue:!accessing!public! !
!HTTPPostDataArray categoriesFor: #associations!accessing!public! !
!HTTPPostDataArray categoriesFor: #at:!accessing!public! !
!HTTPPostDataArray categoriesFor: #at:ifAbsent:!accessing!public! !
!HTTPPostDataArray categoriesFor: #at:put:!accessing!public! !
!HTTPPostDataArray categoriesFor: #clearParsed!accessing!public! !
!HTTPPostDataArray categoriesFor: #includesKey:!accessing!public! !
!HTTPPostDataArray categoriesFor: #includesValue:!accessing!public! !
!HTTPPostDataArray categoriesFor: #initialize!initialize-release!public! !
!HTTPPostDataArray categoriesFor: #isEmpty!public!testing! !
!HTTPPostDataArray categoriesFor: #isParsed!public!testing! !
!HTTPPostDataArray categoriesFor: #keys!accessing!public! !
!HTTPPostDataArray categoriesFor: #keysAndValuesDo:!enumerating!public! !
!HTTPPostDataArray categoriesFor: #nameForValue:!accessing!public! !
!HTTPPostDataArray categoriesFor: #printOn:!private! !
!HTTPPostDataArray categoriesFor: #select:!enumerating!public! !
!HTTPPostDataArray categoriesFor: #setParsed!accessing!public! !
!HTTPPostDataArray categoriesFor: #stream!private! !
!HTTPPostDataArray categoriesFor: #stream:!private! !
!HTTPPostDataArray categoriesFor: #underlyingCollection!private! !

!HTTPPostDataArray class methodsFor!

newOn: aSwazooStream

	^super new 
		initialize;
		stream: aSwazooStream! !
!HTTPPostDataArray class categoriesFor: #newOn:!instance creation!public! !

