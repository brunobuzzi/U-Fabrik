"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebList
	instanceVariableNames: 'name kind type'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebList guid: (GUID fromString: '{303465da-02fa-4f08-98a6-5fd9a0d89426}')!
WebList comment: ''!
!WebList categoriesForClass!Unclassified! !
!WebList methodsFor!

add: anElement
	"ensure always WebListItem as subelement of list"
	| element |
	element := (anElement class == WebListItem)
		ifTrue: [anElement] 
		ifFalse: [WebListItem newListItem add: anElement; yourself].
	^super add: element!

addDefinition: anElement
	"ensure always WebListItem as subelement of list"
	| element |
	element := (anElement class == WebListItem)
		ifTrue: [anElement setDefinition] 
		ifFalse: [WebListItem newDefinition add: anElement; yourself].
	^super add: element!

addDefinitionTerm: anElement
	"ensure always WebListItem as subelement of list"
	| element |
	element := (anElement class == WebListItem)
		ifTrue: [anElement setDefinitionTerm] 
		ifFalse: [WebListItem newDefinitionTerm add: anElement; yourself].
	^super add: element!

addLinkTo: anObject text: aString 
	"add new line to the list with text and link to some object" 
	| line |
	line := WebListItem new.
	line	addLinkTo: anObject text: aString.
	self add: line!

addLinkTo: anObject text: aString class: aSymbol
	"add new line to the list with text and link to some object. Set class for CSS too" 
	| line |
	line := WebListItem new class: aSymbol.
	line	addLinkTo: anObject text: aString.
	self add: line!

addLinkTo: anObject text: aString id: aSymbol
	"add new line to the list with text and link to some object. set id too" 
	| line |
	line := WebListItem new id: aSymbol.
	line	addLinkTo: anObject text: aString.
	self add: line!

addLinkTo: anObject text: aString withBullet: anImageOrURL
	"add new line to the list with bullet image and text and link to some object" 
	| line |
	line := WebListItem new.
	line add: (WebImage image: anImageOrURL); add: (WebLink text: aString linkTo: anObject).
	self  add: line!

addText: aString
	"make a new element with aString. Attributes are same as previous text." 
	| line |
	line := WebListItem new.
	line addText: aString.
	self  add: line!

addText: aString class: aSymbol
	"add list item with specified text. set class for CSS to that item too" 
	| line |
	line := WebListItem new class: aSymbol.
	line addText: aString.
	self  add: line!

addText: aString id: aSymbol
	"add list item with specified text. set id to that item too" 
	| line |
	line := WebListItem new id: aSymbol.
	line addText: aString.
	self  add: line!

addText: aString withBullet: anImageOrURL
	"add new line to the list with bullet image and text" 
	| line |
	line := WebListItem new.
	line add: (WebImage image: anImageOrURL); addText: aString.
	self  add: line!

initialize
	kind := #definition.!

kind
	^kind!

kind: aSymbol
	"should be #ordered, #unordered, #definition. By default is #definition"

	kind := aSymbol.!

name
	^name!

name:  aString
	"set the name of this list. Used for accessing the selections from WebForm or WebApplication"

	name := aString.!

printHTMLPageOn: aStream for: aRequest on: aSession
	| tag |
	self prepareToHTMLPrintOn: aSession. 
	self kind == #ordered ifTrue: [tag := 'ol'].
	self kind == #unordered ifTrue: [tag := 'ul'].
	self kind == #definition ifTrue: [tag := 'dl'].
	aStream nextPutAll: self ident, '<', tag.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '>', self eol.
	super printHTMLPageOn: aStream for: aRequest on: aSession.
	aStream nextPutAll: self ident, '</', tag, '>', self eol.!

shouldIdent
	^true! !
!WebList categoriesFor: #add:!adding/removing!public! !
!WebList categoriesFor: #addDefinition:!adding/removing!public! !
!WebList categoriesFor: #addDefinitionTerm:!adding/removing!public! !
!WebList categoriesFor: #addLinkTo:text:!adding/removing!public! !
!WebList categoriesFor: #addLinkTo:text:class:!adding/removing!public! !
!WebList categoriesFor: #addLinkTo:text:id:!adding/removing!public! !
!WebList categoriesFor: #addLinkTo:text:withBullet:!adding/removing!public! !
!WebList categoriesFor: #addText:!adding/removing!public! !
!WebList categoriesFor: #addText:class:!adding/removing!public! !
!WebList categoriesFor: #addText:id:!adding/removing!public! !
!WebList categoriesFor: #addText:withBullet:!adding/removing!public! !
!WebList categoriesFor: #initialize!initialize-release!public! !
!WebList categoriesFor: #kind!accessing!public! !
!WebList categoriesFor: #kind:!accessing!public! !
!WebList categoriesFor: #name!accessing!public! !
!WebList categoriesFor: #name:!accessing!public! !
!WebList categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebList categoriesFor: #shouldIdent!public!testing! !

!WebList class methodsFor!

kind: aSymbol
	"should be #ordered, #unordered, #definition"

	^self new initialize kind: aSymbol!

new
	^super new initialize!

newDefinition
	^self kind: #definition!

newOrdered
	^self kind: #ordered!

newUnordered
	^self kind: #unordered! !
!WebList class categoriesFor: #kind:!instance creation!public! !
!WebList class categoriesFor: #new!instance creation!public! !
!WebList class categoriesFor: #newDefinition!instance creation!public! !
!WebList class categoriesFor: #newOrdered!instance creation!public! !
!WebList class categoriesFor: #newUnordered!instance creation!public! !

