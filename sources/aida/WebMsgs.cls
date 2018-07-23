"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebMsgs
	instanceVariableNames: 'messagesByLanguage language'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebMsgs guid: (GUID fromString: '{b3a4f8e0-5510-4bf9-87e5-0f9cd187f54a}')!
WebMsgs comment: ''!
!WebMsgs categoriesForClass!Unclassified! !
!WebMsgs methodsFor!

at: aSymbol
	"return a message text at specificied symbol in a language, which is previosly set 
	by language: method. If not set, then default language is used"
	^(self messagesByLanguage at: self language) 
		at: aSymbol asSymbol 
			ifAbsent: 
				[self at: aSymbol put: aSymbol asString. 
				^self at: aSymbol]!

at: aSymbol put: aString
	"store  a message text at specificied symbol in a language, which is previosly set by language: 	method. If not set, then default language is used. Also opens new associations in all other
	languages, if not yet exist"
	(self messagesByLanguage at: self language) at: aSymbol put: aString.
	((self messagesByLanguage at: self language) associationAt: aSymbol).
	self messagesByLanguage keysAndValuesDo: [:key :value |
		(value includesKey: aSymbol asSymbol) 
			ifFalse: [value at: aSymbol asSymbol put: ''] ].!

initialize

	self initNewLanguage: #en.


"
WebMsgs  at: #test put: 'This is my first test'.
WebMsgs language: #hr
WebMsgs at: #test
WebMsgs instance
"!

initNewLanguage: aSymbol
	"in a messagesByLanguage dictionary open a new key and make an empty message dictionary 
	as value, but all symbol keys, which already exist in other languages"
	(self messagesByLanguage includesKey: aSymbol) ifFalse:
		[self messagesByLanguage at: aSymbol put: Dictionary new].
	(self messagesByLanguage at: #en) keysDo: [:key | 
		(self messagesByLanguage at: aSymbol) at: key put: ''].!

language

	"return a current language, for which messages are retrieved"
	
	language isNil ifTrue: [self language: #en].
	^language!

language: aSymbol
	"set a current language, for which messages are retrieved"
	language := aSymbol asSymbol.
	(self messagesByLanguage includesKey: aSymbol asSymbol) 
		ifFalse: [self initNewLanguage: aSymbol asSymbol].!

messagesByLanguage
	"return a dictionary which language symbol as key and value asanother dictionary 
	with message symbol as key and message text as value"
	messagesByLanguage isNil ifTrue:
		[messagesByLanguage := Dictionary new. 
		self initNewLanguage: #en].
	^messagesByLanguage.!

messagesForCurrentLanguage

	"return a dictionary of all messages for a current language"

	^(self messagesByLanguage at: self language)! !
!WebMsgs categoriesFor: #at:!accessing!public! !
!WebMsgs categoriesFor: #at:put:!accessing!public! !
!WebMsgs categoriesFor: #initialize!initialize-release!public! !
!WebMsgs categoriesFor: #initNewLanguage:!initialize-release!public! !
!WebMsgs categoriesFor: #language!accessing!public! !
!WebMsgs categoriesFor: #language:!accessing!public! !
!WebMsgs categoriesFor: #messagesByLanguage!accessing!public! !
!WebMsgs categoriesFor: #messagesForCurrentLanguage!accessing!public! !

!WebMsgs class methodsFor!

at: aSymbol

	"return a message text at specificied symbol in a language, which is previosly set by language: method. If not set, then default language is used"

	^self default at: aSymbol!

at: aSymbol put: aString

	"store  a message text at specificied symbol in a language, which is previosly set by language: method. If not set, then default language is used"

	self default at: aSymbol put: aString!

default

	"find or create an instance of WebMsgs."

	^AIDASite default webMsgs!

language

	"return a current language, for which messages are retrieved"
	
	^self default language.!

language: aSymbol

	"set a current language, for which messages are retrieved"

	self default language: aSymbol!

new

	^super new initialize! !
!WebMsgs class categoriesFor: #at:!accessing!public! !
!WebMsgs class categoriesFor: #at:put:!accessing!public! !
!WebMsgs class categoriesFor: #default!accessing!public! !
!WebMsgs class categoriesFor: #language!accessing!public! !
!WebMsgs class categoriesFor: #language:!accessing!public! !
!WebMsgs class categoriesFor: #new!instance creation!public! !

