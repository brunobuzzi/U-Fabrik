"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebText
	instanceVariableNames: 'text size textAttributes header paragraph font'
	classVariableNames: 'AttributeMarkup'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebText guid: (GUID fromString: '{b22e50c0-6b67-4d51-a46f-77b4a81de3e1}')!
WebText comment: ''!
!WebText categoriesForClass!Unclassified! !
!WebText methodsFor!

addText: aString
	"make a new element with aString. Attributes are same as previous text." 

	self add: (WebText text: aString attributes: self attributes)!

addText: aString attributes: anArray
	"make a new element with aString. Attributes are same as previous text." 

	self add: (WebText text: aString attributes: anArray)!

color: aString
	self style: '{color: ', aString asString, '}'.!

font
	^font!

font: aString
	font := aString!

header
	^header!

header: aNumber
	
	"Assigns this WebText as a header text. Parameter can be 1 .. 5. If this parameter is nil then WebText is not a header"

	aNumber < 1 
		ifTrue: [header:= 1.   ]
		ifFalse:
			[aNumber > 5 ifTrue: [header := 5.] ifFalse: [header := aNumber.]].
	^self!

initialize
	text := ''.   
	paragraph := false.!

insideSpanTag
	"to enclose or not in span tag. Only if element have any attribute!!"
	^self attributes notNil and: [self isLink not]!

isLink
	^false!

isMultilingual
	^self text aidaIsAssociation!

onChangePost
	"just if addAspect:for:editing: false returns text instead of input field!!"!

onChangePostAndUpdate: e
	"just if addAspect:for:editing: false returns text instead of input field!!"!

paragraph
	^paragraph!

paragraph: aBoolean
	
	"call this method if you want this text in a new paragraph"

	paragraph := aBoolean.!

prepareForTranslation
	"if multilingual text, replace it with in-place input field"
	| translDict replacement session |
	self isMultilingual ifFalse: [^nil].
	session := self app session.
	translDict := session site translator 
		dictToTranslate: self text to: session language for: self  on: session.
	replacement := WebInPlaceEditableText 
		aspect: self text value for: translDict size: self text value size.
	replacement onChangePost.
	self parent replace: self with: replacement.!

printHTMLPageOn: aStream for: aRequest on: aSession
	"make a header"

	self prepareToHTMLPrintOn: aSession. 
	aStream nextPutAll: self ident.
	self insideSpanTag ifTrue: 
		[aStream nextPutAll: '<span'. self printAttributesOn: aStream for: aSession. aStream nextPutAll: '>'].
	self header notNil ifTrue: [aStream nextPutAll: '<h', self header printString, '>'].
	"font size, color, face"
	(self size notNil | self font notNil ) ifTrue:
		[aStream nextPutAll: '<font '.
		self size notNil ifTrue:
			[aStream nextPutAll: 'size=', (self size > 0 ifTrue: ['+'] ifFalse: ['']), self size printString, ' '].
		self font notNil ifTrue:	[aStream nextPutAll: 'face=', self font, ' '].
		aStream nextPutAll: '> ' ].
	"set text attributes, if any"
	self textAttributes notNil ifTrue: 
		[self textAttributes do: [:attribute |  aStream nextPutAll: 
			'<', (self class attributeMarkup at: attribute), '>']].
	"print a text"
	self text notNil ifTrue: [aStream nextPutAll:
		(AIDASite convertToWeb: 
			(self isMultilingual ifTrue: [self textFromMultilang: self text on: aSession] ifFalse: [self text]) 
			on: aSession)].
	"print composite elements"
	super printHTMLPageOn: aStream for: aRequest on: aSession.
	"reset text attributes"
	self textAttributes notNil ifTrue: 
		[self textAttributes do: [:attribute |  aStream nextPutAll: 
			'</', (self class attributeMarkup at: attribute), '>']].
	"end of font adjustment"
	(self size notNil | self font notNil ) ifTrue: [aStream nextPutAll: '</font>'].
	self header notNil ifTrue: [aStream nextPutAll: '</h', self header printString, '>', self eol].
	self insideSpanTag ifTrue: [aStream nextPutAll: '</span>', self eol].!

printString

	^'''', [self text isNil ifTrue: [''] ifFalse: [self text] ] value,''''!

shouldIdent
	^false!

size
	^size!

size: aNumber
	
	"larger or smaller text for aNumber factor. Range -7..+7"

	aNumber < -7 
		ifTrue: [size := -7.  ]
		ifFalse:
			[aNumber > 7 ifTrue: [size := 7.  ] ifFalse: [size := aNumber.]].
	^self!

text
	^text!

text: aString
	text := WebFormElement autoConvertToString: aString.  "in case the argument  is not string but date, number  etc."
	"slovenian csz are converted if char ^ is after such a char"
	(text aidaIsAssociation not and: [text includes: $^ ]) 
		ifTrue: [text := text convertToSloveneChars].!

text: aString attributes: anArray
	self text: aString.
	self textAttributes: anArray.!

textAttributes
	"get the attributes of a text" 
	^textAttributes!

textAttributes: anArray
	"check and set the attributes of a text. Atribute can be one or a set of them. Attribute is ignored if not correct. See class variable AttributeMarkup or method WebText initialize for list of allowed attributes" 

	(anArray isKindOf: Symbol)		"if only one attribute, convert to an Array"
		ifTrue: [textAttributes := Array with: anArray.       ]
		ifFalse: [(anArray isKindOf: Array)
			ifTrue: [textAttributes := anArray.      ]
			ifFalse: [anArray isNil
				ifTrue: [textAttributes := nil.     ]
				ifFalse: 
					[self error: 'Text attributes should be Array of Symbols']]].

	"attribute correctness check. Ignore if attribute not correct"
	textAttributes isNil ifFalse:
		[textAttributes := textAttributes select:
			[:attribute | (self class attributeMarkup at: attribute ifAbsent: [false])  ~~ false ].    ]

"WebText text: 'test' attributes: #bold"
"WebText text: 'test' attributes: #( #bold #italic)"
"WebText text: 'test' attributes: nil"!

textFromMultilang: aStringOrAssociation on: aSession
	"translate the multilang text in form #fr->'Bonjour' "
	^aSession site translator 
		translate: aStringOrAssociation
		to: aSession language
		for: self
		on: aSession! !
!WebText categoriesFor: #addText:!accessing!public! !
!WebText categoriesFor: #addText:attributes:!accessing!public! !
!WebText categoriesFor: #color:!accessing!public! !
!WebText categoriesFor: #font!accessing!public! !
!WebText categoriesFor: #font:!accessing!public! !
!WebText categoriesFor: #header!accessing!public! !
!WebText categoriesFor: #header:!accessing!public! !
!WebText categoriesFor: #initialize!initialize-release!public! !
!WebText categoriesFor: #insideSpanTag!private! !
!WebText categoriesFor: #isLink!public!testing! !
!WebText categoriesFor: #isMultilingual!public!testing! !
!WebText categoriesFor: #onChangePost!private! !
!WebText categoriesFor: #onChangePostAndUpdate:!private! !
!WebText categoriesFor: #paragraph!accessing!public! !
!WebText categoriesFor: #paragraph:!accessing!public! !
!WebText categoriesFor: #prepareForTranslation!public!translation! !
!WebText categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebText categoriesFor: #printString!printing!public! !
!WebText categoriesFor: #shouldIdent!private! !
!WebText categoriesFor: #size!accessing!public! !
!WebText categoriesFor: #size:!accessing!public! !
!WebText categoriesFor: #text!accessing!public! !
!WebText categoriesFor: #text:!accessing!public! !
!WebText categoriesFor: #text:attributes:!accessing!public! !
!WebText categoriesFor: #textAttributes!private! !
!WebText categoriesFor: #textAttributes:!private! !
!WebText categoriesFor: #textFromMultilang:on:!public!translation! !

!WebText class methodsFor!

example1
	"examples of use a WebText."

	| text stream |
	text := WebText header: 1 text: 'Hello' .
	text addText: 'String Hello' attributes: #bold.
	text addText: 'String and Italic Hello' attributes: #(#bold #italic).
"	text addText: 'Strong Hello again' prevAttributes."

	stream := WriteStream on: String new.
	text printHTMLPageOn: stream.
	^stream contents.!

header: aNumber

	"create an empty header. You can add elements such as images and text later"

	^(self new) header: aNumber.

"| a | 
a := (WebText header: 1).
a add: (WebImage urlReference: 'http://pu/stefan.gif').
a inspect"!

header: aNumber text: aString

	"create a header text"

	^(self new) header: aNumber; text: aString.

"WebText header: 1 text: 'test'"!

new
	^super new initialize!

newParagraph

	"To open a new paragraph. Use addText: for adding a paragraph text."

	^self new paragraph: true.!

text: aString
	^self new text: aString

"WebText text: 'test'"!

text: aString attributes: anArray

	^self new text: aString attributes: anArray

"WebText text: 'test' attributes: #bold"! !
!WebText class categoriesFor: #example1!examples!public! !
!WebText class categoriesFor: #header:!instance creation!public! !
!WebText class categoriesFor: #header:text:!instance creation!public! !
!WebText class categoriesFor: #new!instance creation!public! !
!WebText class categoriesFor: #newParagraph!instance creation!public! !
!WebText class categoriesFor: #text:!instance creation!public! !
!WebText class categoriesFor: #text:attributes:!instance creation!public! !

