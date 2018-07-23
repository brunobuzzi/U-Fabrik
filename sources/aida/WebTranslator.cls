"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebTranslator
	instanceVariableNames: 'parent cache other'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebTranslator guid: (GUID fromString: '{c60c5894-c8df-4503-a9eb-0bb2ee2aba89}')!
WebTranslator comment: 'WebTranslator offers a translation support to web apps. Apps on class side hold translations of the text. WebTranslator is then called by executing app to find a proper translation for each text, if it is used as in this example:

	e addText: #fr->''Bonjour''

Instance Variables:
	parent	<AIDASite>
	cache   <Dictionary>	 cached translations,  a multilevel dictionary 							class->(method->(langCode->(key->translation)))))
	other	<Dictionary>	 dynamic variable for all other values'!
!WebTranslator categoriesForClass!Unclassified! !
!WebTranslator methodsFor!

cache
	"cached translations. A multilevel dictionary"
	"class->(method->(langCode->(key->translation))))) "
	cache isNil ifTrue: [self initCache].
	^cache!

cachedTranslate: aString toLanguage: aLanguageCode class: aClassWithTransl method: aMethodSymbol
	"cache hierarchy: class->(method->(langCode->(key->translation))))) "
	"last dictionary is WebTranslDict!! "
	^(((self cache at: aClassWithTransl ifAbsent: [self refreshClass: aClassWithTransl])
		at: aMethodSymbol ifAbsentPut: [Dictionary new])
			at: aLanguageCode ifAbsentPut: [WebTranslDict new])
				at: aString ifAbsentPut: [nil]!

dictToTranslate: aMultilangAssociation to: aLanguageCode for: anElement on: aSession
	"returns WebTranslDict, for setting an aspect to edit by translation tools"
	| appClass method |
	appClass := aSession lastApp class. "app class where translations reside"
	method := anElement creationMethod. "method which created an element with multilang text"
	^((self cache at: appClass ifAbsent: [self refreshClass: appClass])
		at: method ifAbsent: [^nil])
			at: aLanguageCode ifAbsent: [nil]!

initCache
	"cached translations"
	cache := Dictionary new.!

initOther
	other := Dictionary new!

langFromTranslMethod: aMethodSymbol
	"extract language code from transl.method:  #fr from #frViewCalendar"
	^(aMethodSymbol asString copyFrom: 1 to: 2) asSymbol!

langsForMethod: aMethodSymbol on: aClassWithTransl
	"get all languages for which we have a translation for that creation method"
	^((self translMethodsOn: aClassWithTransl)
		 select: [:each | (self methodFromTranslMethod: each) = aMethodSymbol]) 
			collect: [:each | self langFromTranslMethod: each]!

methodFromTranslMethod: aMethodSymbol
	"extract creation method name from transl.method:  #viewCalendar from #frViewCalendar"
	| method |
	method := String with: (aMethodSymbol asString at: 3) asLowercase.
	^(method, (aMethodSymbol asString copyFrom: 4 to: aMethodSymbol size)) asSymbol.!

methodsOn: aClassWithTransl
	"get all creation methods for elements holding multilang text"
	^((self translMethodsOn: aClassWithTransl) collect: [:each | self methodFromTranslMethod: each]) 
		asSet "to find a unique set of those methods"!

other
	^other!

otherAt: aSymbol
	"other values"
	^self otherAt: aSymbol ifAbsent: [nil]!

otherAt: aSymbol ifAbsent: aBlock
	"other values"
	self other isNil ifTrue: [^aBlock value].
	^self other at: aSymbol ifAbsent: aBlock!

otherAt: aSymbol ifAbsentPut: aBlock
	self other isNil ifTrue: [self initOther].
	^self other at: aSymbol ifAbsent: [self other at: aSymbol put: aBlock value]!

otherAt: aSymbol put: anObject
	self other isNil ifTrue: [self initOther].
	^self other at: aSymbol put: anObject!

pairsForLang: aLanguageCode method: aMethodSymbol on: aClassWithTransl
	| translMethod |
	translMethod := self translMethodForLang: aLanguageCode method: aMethodSymbol.
	^(aClassWithTransl perform: translMethod) 
		collect: [:triple | Association key: triple first value: triple last] "triple midlle is just ->"!

parent
	^parent!

parent: anObject
	parent := anObject!

refreshClass: aClassWithTransl
	"refresh a cache from translations stored in class methods of specified class"
	| classDict methodDict langDict |
	classDict := self cache at: aClassWithTransl put: Dictionary new. "just remove old stuff"
	(self methodsOn: aClassWithTransl) do: [:method |
		methodDict := classDict at: method put: Dictionary new.
		(self langsForMethod: method on: aClassWithTransl) do: [:lang |
			langDict := methodDict at: lang put: WebTranslDict new.
			(self pairsForLang: lang method: method on: aClassWithTransl) do: [:assoc |
				langDict initialAt: assoc key put: assoc value ]]]. "initalAt:put: to avoid signaling change!!"
	^classDict!

site	
	^self parent!

translate: aMultilangAssociation to: aLanguageCode for: anElement on: aSession
	| appClass method translation |
	appClass := aSession lastApp class. "app class where translations reside"
	method := anElement creationMethod. "method which created an element with multilang text"
	translation := self 
		cachedTranslate: aMultilangAssociation value
		toLanguage: aLanguageCode
		class: appClass
		method: method.
	^translation notNil 
		ifTrue: [translation] 
		ifFalse: [aMultilangAssociation value] "original text"!

translationsCategory
	"name of category holding translations on class side of App classes"
	^#translations!

translLanguagesOn: aClassWithTransl
	"get all languages (codes) in which we have trnaslations"
	^(self translMethodsOn: aClassWithTransl) 
		inject: Set new 
		into: [:each :set | set add: (self langFromTranslMethod: each); yourself]!

translMethodForLang: aLanguageCode method: aMethodSymbol
	"compose that method name. For #fr and #viewCalendar = #frViewCalendar"
	^(aLanguageCode asString, (String with: aMethodSymbol asString first) asUppercase,
		(aMethodSymbol asString copyFrom: 2 to: aMethodSymbol size))
			asSymbol! !
!WebTranslator categoriesFor: #cache!private-cache!public! !
!WebTranslator categoriesFor: #cachedTranslate:toLanguage:class:method:!private-cache!public! !
!WebTranslator categoriesFor: #dictToTranslate:to:for:on:!public!translating! !
!WebTranslator categoriesFor: #initCache!initialize-release!public! !
!WebTranslator categoriesFor: #initOther!initialize-release!public! !
!WebTranslator categoriesFor: #langFromTranslMethod:!private-classes!public! !
!WebTranslator categoriesFor: #langsForMethod:on:!private-classes!public! !
!WebTranslator categoriesFor: #methodFromTranslMethod:!private-classes!public! !
!WebTranslator categoriesFor: #methodsOn:!private-classes!public! !
!WebTranslator categoriesFor: #other!private! !
!WebTranslator categoriesFor: #otherAt:!private! !
!WebTranslator categoriesFor: #otherAt:ifAbsent:!private! !
!WebTranslator categoriesFor: #otherAt:ifAbsentPut:!private! !
!WebTranslator categoriesFor: #otherAt:put:!private! !
!WebTranslator categoriesFor: #pairsForLang:method:on:!private-classes!public! !
!WebTranslator categoriesFor: #parent!accessing!public! !
!WebTranslator categoriesFor: #parent:!private! !
!WebTranslator categoriesFor: #refreshClass:!private-cache!public! !
!WebTranslator categoriesFor: #site!accessing!public! !
!WebTranslator categoriesFor: #translate:to:for:on:!public!translating! !
!WebTranslator categoriesFor: #translationsCategory!accessing!public! !
!WebTranslator categoriesFor: #translLanguagesOn:!private-classes!public! !
!WebTranslator categoriesFor: #translMethodForLang:method:!private-classes!public! !

!WebTranslator class methodsFor!

newOn: anAIDASite
	^super new
		parent: anAIDASite! !
!WebTranslator class categoriesFor: #newOn:!instance creation!public! !

