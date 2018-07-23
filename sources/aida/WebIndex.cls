"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebIndex
	instanceVariableNames: 'index indexedObjects popularWords workQueue indexer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebIndex guid: (GUID fromString: '{c872dac0-e2fb-4a45-a019-aefef7b711f3}')!
WebIndex comment: ''!
!WebIndex categoriesForClass!Unclassified! !
!WebIndex methodsFor!

addFreshnessRelevance: aDictionary
	"objects with newer modified date are more relevant"
	| weight |
	aDictionary keysDo: [:object |
		(object class selectors includes: #modified) ifTrue:
			[weight := 1000 - (Date today subtractDate: object modified) max: 0.
			aDictionary at: object put:  (aDictionary at: object) + weight] ]!

addVisitsRelevance: aDictionary
	"objects with more visits are more relevant"
	| weight |
	aDictionary keysDo: [:object |
		(object class selectors includes: #modified) ifTrue:
			[weight := 1000 - (Date today subtractDate: object modified) max: 0.
			aDictionary at: object put:  (aDictionary at: object) + weight] ]!

allPopularWordsAndCounts
	"return a collection of words and their total counts, most popular first"
	| collection |
	collection := OrderedCollection new.
	self popularWords keysAndValuesDo: [:word :counter |  
		collection add: (Array with: word with: counter total)].
	^SortedCollection
		withAll: collection
		sortBlock: [:a :b | (a at: 2) > (b at: 2)].!

allWordsAndWeights
	"return sorted collection of all words and sum of weights, biggeest weight first"
	| collection weight |
	collection := OrderedCollection new.
	self index keysDo: [:halfWord |
		(self index at: halfWord) keysDo: [:restWord |
			weight := ((self index at: halfWord) at: restWord) inject: 0 into: 
				[:sum :thirdDictWeight | sum + (thirdDictWeight)].
			collection add: (Array with: halfWord, restWord with: weight) ] ].
	^SortedCollection 
		withAll: collection
		sortBlock: [:a :b | (a at: 2) > (b at: 2)].

" WebIndex default allWordsAndWeights "!

countPopularWords: anArray
	anArray do: [:word |
		(self popularWords includesKey: word) ifFalse: [self openPopularWord: word].
		(self popularWords at: word) incCounter].!

halfWordFrom: aString
	"prepare first three letters, lowercase (also slovene chars)"
	^AIDASite sloveneLowercase: (aString copyFrom: 1 to: 3).!

index
	"index is a dictionary with first three lowercase letters of each indexed world as key and
	another dictionary for remaining letters as value. The second dictionary has remaining letters for key
      and dictionary with objects, where this word occured, as key and number of occurences as value"
	index isNil ifTrue: [self initIndex].
	^index!

indexedObjects
	"return a dictionary with objects which worlds are in index as keys and a set of pointers to third 
       level dictionary in index as values"
	indexedObjects isNil ifTrue: [self initIndexedObjects].
	^indexedObjects!

indexer
	"indexing process"
	^indexer!

indexerProcess
	"this background process wait for objects to be indexed in workQueue and
	index them without disturbing others."
	| object |
	[true] whileTrue: 
		[object := self workQueue next.
		self privIndexObject: object.
		self reportIndexingOf: object].!

indexObject: anObject
	"if anObject responds to a message indexText, then index all its world in index.
	 However, first 	remove indexing for that object if already exist (so, for reindexing  
	objects, use this method also). For performance reasons indexing is done in background"
	self workQueue nextPut: anObject.

"WebIndex default indexObject: WebIndex default"!

indexObjects: aCollection
	aCollection do: [:each | self indexObject: each].!

indexText
	^'Search engine iskanje rezultati iskanja iskalnik'!

indexTitle
	^'Iskalnik'!

indexWord: aString inObject: anObject
	"put a word in that object in index if word is valid one for indexing"
	self indexWord: aString occurences: 1 inObject: anObject!

indexWord: aString occurences: aNumber inObject: anObject
	"put a aNumber occurences of a word in that object in index if word is valid one for indexing"
	| halfWord restWord secDic thirdDic num |
	(self isValidWord: aString) ifFalse: [^self].
	"put an object in indexed object, if not already exist"
	(self indexedObjects includesKey: anObject) ifFalse:
		[self indexedObjects at: anObject put: IdentitySet new].
	"prepare two parts of a words, first three letters and rest"
	halfWord := self halfWordFrom: aString.
	restWord := self restWordFrom: aString.
	"find or create a second level dictionary from first level one"
	secDic := self index at: halfWord 
		ifAbsent: [self index at: halfWord put: Dictionary new].
	"find or create last level dictionary from second level one"
	thirdDic := secDic at: restWord 
		ifAbsent: [secDic at: restWord put: Dictionary new].
	"put an object to third level dictionary and increment nr of worlds if not already exist"
	num := thirdDic at: anObject ifAbsent: [thirdDic at: anObject put: 0].
	thirdDic at: anObject put: num + aNumber.
	"make reference to the third level dictionary for a indexed word"
	(self indexedObjects at: anObject) add: thirdDic.!

indexWords: aWordDictionary inObject: anObject
	self removeObject: anObject.  "if exist"
	aWordDictionary keysAndValuesDo: [:key :value | 
		self indexWord: key occurences: value inObject: anObject].!

initialize
	self initIndex.
	self initIndexedObjects.
	self initPopularWords.
	workQueue := nil.
	self start.

"WebIndex default initialize"!

initIndex
	index := Dictionary new.!

initIndexedObjects
	indexedObjects := IdentityDictionary new.!

initPopularWords
	popularWords := Dictionary new.!

isValidWord: aString
	"a valid word for indexing has more than three letters, without numbers, "
	(aString size > 3) ifFalse: [^false].
	aString do:[:chr | chr isDigit ifTrue: [^false] ].
	^true!

objectsForWord: aString
	"find all objects, which include this word. Return more important objects 
	first (more occurences of worlds etc.)"
	^self privObjectsForWord: aString.

"(WebIndex default objectsForWord: 'knjiga') keys "!

objectsForWords: aString
	"find all objects, which include one or more specified words. return a sorted collection 
	of associations with found objects as keys an relevance of them as values. Most relevant 
	objects are first. Relevance means: 
		nr. of words found * 1000 + occurences of each word"
	| words hits newHits foundWords |
	Transcript show: ' search.'.
	words := (self wordsInText: aString) keys.
	words := words select: [:word | self isValidWord: word].
	hits := IdentityDictionary new.
	foundWords := OrderedCollection new. 
	words do: [:word | 
		newHits := self objectsForWord: word.
		newHits notEmpty ifTrue: [foundWords add: word].
		newHits keysAndValuesDo: [:key :value |
			(hits includesKey: key)
				ifTrue: [hits at: key put: (hits at: key)+1000]
				ifFalse: [hits at: key put: 1000+value] ] ].
	self countPopularWords: foundWords.  "count as popular only words, which exist in objects"
	self addFreshnessRelevance: hits.
	Transcript show: '.ok '.
	^SortedCollection withAll: hits associations sortBlock: [:first : second | first value > second value].

"
WebIndex instance objectsForWords: 'ljub'
"!

openPopularWord: aString
	self popularWords at: aString put: WebCounter new.!

popularWords
	"return a dictionary of words as keys and aWebCounters as values"
	popularWords isNil ifTrue: [self initPopularWords].
	^popularWords!

prepareWord: aString
	"cut last char if vowel. Used for simple declension of slovene words"
	aString last isVowel 
		ifTrue: [aString size > 3
			ifTrue: [^aString copyFrom: 1 to: (aString size - 1)] ].
	^aString.

"
WebIndex new prepareWord: 'knjiga'
"!

privIndexObject: anObject
	"if anObject responds to a message indexText, then index all its world in index. However, 
	first remove indexing for that object if already exist (so, for reindexing  objects, 
	use this method also)"
	| words |
"	WebTransactionMonitor critical:  " "this will in case of error block all!! "
		(anObject class canUnderstand: #indexText) ifTrue:
			[words := self wordsInText: anObject indexText.
"			(anObject class canUnderstand: #indexTitle) ifTrue:
				[words addAll: (self wordsInText: anObject indexTitle)].
"			self indexWords: words inObject: anObject]!

privObjectsForWord: aString
	"find all objects, which include this word. Return more important objects first (more 
	occurences of worlds etc.)"
	| hits secDic searchWord keys word |
	(self isValidWord: aString) ifTrue:
		[hits := IdentityDictionary new.
		word := self prepareWord: aString.
		searchWord := (self restWordFrom: word), '*'.
		secDic := self index at: (self halfWordFrom: word) ifAbsent: [^hits].
		keys := secDic keys select: [:fkey | searchWord match: fkey].
		keys do: [:skey | 
       		(secDic at: skey) keysAndValuesDo: [:tkey :tvalue | 
				(hits includesKey: tkey) ifFalse: [hits at: tkey put: 0].
				hits at: tkey put: (hits at: tkey)+tvalue] ].
		^hits.
		] ifFalse: [^nil].

"(WebIndex default objectsForWord: 'knjiga') keys "!

removeObject: anObject
	"remove object from all word pointers in index"
	(self indexedObjects at: anObject ifAbsent: [^nil]) do:
		[:each | each removeKey: anObject ifAbsent: [] ].
	self indexedObjects removeKey: anObject.!

restWordFrom: aString
	"preparerest of the word, lowercase (also slovene chars)"
	^AIDASite sloveneLowercase: (aString copyFrom: 4 to: aString size)!

start
	self stop.
	indexer := [self indexerProcess] forkAt: Processor userBackgroundPriority.!

stop
	self indexer notNil ifTrue: [self indexer terminate. indexer := nil].!

wordsInText: aString
	"return a dictionary with all words as keys and number of occurences as values"
	| lastInx currInx word words |
	lastInx := 1. currInx := 1. words := Dictionary new. 
	aString do: [:chr | 
		(chr isAlphaNumeric or: [AIDASite isSloveneCharacter: chr]) ifFalse: 
			[word := aString copyFrom: lastInx to: currInx-1.
			lastInx := currInx+1.
			word := AIDASite sloveneLowercase: word.
			(word = '') ifFalse: 
				[(words includesKey: word) ifFalse: [words at: word put: 0].
				words at: word put: (words at: word) + 1] ].
		currInx := currInx + 1].
		word := aString copyFrom: lastInx to: currInx-1.
		word := AIDASite sloveneLowercase: word.
		(word = '') ifFalse: 
			[(words includesKey: word) ifFalse: [words at: word put: 0].
			words at: word put: (words at: word) + 1].
	^words

"
WebIndex instance wordsInText: 'erot ljub'
"!

workQueue
	"all object to be indexed goes in this queue. An indexer process (which is started first time
	someone requests indexing) then index an object in background"
	workQueue isNil ifTrue: 
		[workQueue := SharedQueue new.
		self indexer isNil ifTrue: [self start] ].
	^workQueue.! !
!WebIndex categoriesFor: #addFreshnessRelevance:!public!searching! !
!WebIndex categoriesFor: #addVisitsRelevance:!public!searching! !
!WebIndex categoriesFor: #allPopularWordsAndCounts!popular words!public! !
!WebIndex categoriesFor: #allWordsAndWeights!accessing!public! !
!WebIndex categoriesFor: #countPopularWords:!popular words!public! !
!WebIndex categoriesFor: #halfWordFrom:!private! !
!WebIndex categoriesFor: #index!accessing!public! !
!WebIndex categoriesFor: #indexedObjects!accessing!public! !
!WebIndex categoriesFor: #indexer!private! !
!WebIndex categoriesFor: #indexerProcess!private! !
!WebIndex categoriesFor: #indexObject:!indexing!public! !
!WebIndex categoriesFor: #indexObjects:!indexing!public! !
!WebIndex categoriesFor: #indexText!accessing!public! !
!WebIndex categoriesFor: #indexTitle!accessing!public! !
!WebIndex categoriesFor: #indexWord:inObject:!indexing!public! !
!WebIndex categoriesFor: #indexWord:occurences:inObject:!private! !
!WebIndex categoriesFor: #indexWords:inObject:!private! !
!WebIndex categoriesFor: #initialize!initialize-release!public! !
!WebIndex categoriesFor: #initIndex!initialize-release!public! !
!WebIndex categoriesFor: #initIndexedObjects!initialize-release!public! !
!WebIndex categoriesFor: #initPopularWords!initialize-release!public! !
!WebIndex categoriesFor: #isValidWord:!public!testing! !
!WebIndex categoriesFor: #objectsForWord:!public!searching! !
!WebIndex categoriesFor: #objectsForWords:!public!searching! !
!WebIndex categoriesFor: #openPopularWord:!popular words!public! !
!WebIndex categoriesFor: #popularWords!accessing!public! !
!WebIndex categoriesFor: #prepareWord:!private! !
!WebIndex categoriesFor: #privIndexObject:!private! !
!WebIndex categoriesFor: #privObjectsForWord:!private! !
!WebIndex categoriesFor: #removeObject:!indexing!public! !
!WebIndex categoriesFor: #restWordFrom:!private! !
!WebIndex categoriesFor: #start!initialize-release!public! !
!WebIndex categoriesFor: #stop!initialize-release!public! !
!WebIndex categoriesFor: #wordsInText:!indexing!public! !
!WebIndex categoriesFor: #workQueue!private! !

!WebIndex class methodsFor!

default
	^AIDASite default index!

instVarMap
	"Gemstone"

	^super instVarMap,
		#( 	(workQueue nil) )!

new
	^super new initialize.

"WebIndex new"!

replicationSpec

	^super replicationSpec, 
		#(  	(index forwarder)
			(indexedObjects forwarder) 
			(popularWords forwarder)  	)! !
!WebIndex class categoriesFor: #default!accessing!public! !
!WebIndex class categoriesFor: #instVarMap!odb specific!public! !
!WebIndex class categoriesFor: #new!instance creation!public! !
!WebIndex class categoriesFor: #replicationSpec!odb specific!public! !

