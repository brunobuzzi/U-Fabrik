"Filed out from Dolphin Smalltalk 7"!

WebFormElement subclass: #WebMenu
	instanceVariableNames: 'multiple collection selected aspectToStore objectToStore sort'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebMenu guid: (GUID fromString: '{6fba3692-f8db-4fb6-89ce-e65af5946db9}')!
WebMenu comment: 'WebMenu is a dropdown menu, which can select single or multiple options. Options are read from a collection, selected options are put in selected. You can set aspect of each option if options are not plain text. 

Example:

	WebMenu aspect: #name collection: self persons selected: self selectedPersons

will show dropdown menu of all persons, shown by name. Selected person will be stored in selectedPersons collection. Above menu is  single selection, it can be multiple selection too if you do:

	aWebMenu setMultiple.'!
!WebMenu categoriesForClass!Unclassified! !
!WebMenu methodsFor!

acceptFormInputFrom: aPostDataArray
	| option result values |
	self selected isNil ifTrue: [self selected: OrderedCollection new]. "we need a collection!! "
	self selected copy do: [:each | self selected remove: each].
	values := aPostDataArray class == Dictionary
		ifTrue:  [Set new add: (aPostDataArray at: self name); yourself]
		ifFalse: [(aPostDataArray allAt: self name) asSet].
	values := values collect: [:each | AIDASite convert: each fromCodepage: #'UTF-8'].
	self selected addAll: 
		(self collection select:  [:each |
			option := self aspect isNil ifTrue: [each] ifFalse: [each perform: self aspect].
			option := option trimBlanks. "it should also eliminate more than one spaces together!!"
			values contains: [:value | value match: option] ] ).
	self aspectToStore notNil ifTrue: 
		[result := self selected notEmpty 
			ifTrue: [self selected asOrderedCollection first] ifFalse: [nil].
		self objectToStore perform: (self aspectToStore asString, ':') asSymbol with: result]!

aspect: aSymbol collection: aCollection selected: aSelectedCollection
	self aspect: aSymbol.
	self collection: aCollection.
	self selected: aSelectedCollection.
	self setMultiple.
	self size: 4.!

aspect: aSymbol collection: aCollection selectedToAspect: aSymbol2 of: anObject
	self multiple: false.
	self aspect: aSymbol.
	self collection: aCollection.
	self aspectToStore: aSymbol2.
	self objectToStore: anObject!

aspectToStore
	^aspectToStore!

aspectToStore: aSymbol
	"a name of a method to call on objectToStore, to write down a result from selection"
	aspectToStore := aSymbol!

collection
	^collection!

collection: aCollection
	collection := aCollection!

collection: aCollection selected: aSelectedCollection
	self collection: aCollection.
	self selected: aSelectedCollection.
	self setMultiple.
	self size: 4.!

collection: aCollection selectedToAspect: aSymbol of: anObject
	self multiple: false.
	self collection: aCollection.
	self aspectToStore: aSymbol.
	self objectToStore: anObject!

initialize
	super initialize.
	self resetMultiple.!

isEmpty
	"input field is empty or nil"
	| vlue |
	self objectToStore notNil ifTrue: [vlue := self objectToStore perform: self aspectToStore].
	^vlue isNil 
		or: [((vlue isKindOf: String) and: [vlue isEmpty])
			or: [(vlue isKindOf: Number) and: [vlue = 0] ]]!

isMenu
	^true!

isMultiple
	"multiple selection?"
	^self multiple!

joinToForm: aWebForm
	aWebForm fields keysAndValuesDo: [:fname :element | 
		element == self ifTrue: [self name: fname]. ^self]!

multiple
	^multiple!

multiple: aBoolean
	multiple := aBoolean!

objectToStore
	^objectToStore!

objectToStore: anObject
	"an object in which to write down a result from selection"
	objectToStore := anObject!

prepareSelected
	"add aspect of objectToStore selected result. There a preselection can reside"
	self aspectToStore isNil ifTrue: [^nil]. "multiple selections used, selected already set"
	self selected: (Set with: (self objectToStore perform: self aspectToStore))!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession.
	self scriptBefore notNil ifTrue: 
		[self scriptBefore printHTMLPageOn: aStream for: aRequest on: aSession].
	aStream nextPutAll: self ident, '<select'.
	self printAttributesOn: aStream for: aSession.
	self isMultiple ifTrue: [aStream nextPutAll: ' multiple'].
	aStream nextPutAll: '>'.
	self printOptionsOn: aStream.
	aStream nextPutAll: '</select>'.
	self scriptAfter notNil ifTrue: 
		[self scriptAfter printHTMLPageOn: aStream for: aRequest on: aSession].!

printOptionsOn: aStream
	| option preselected session |
	self collection isEmpty ifTrue: [^nil].
	self prepareSelected.
	preselected := self selected notNil ifTrue: [self selected asSet] ifFalse: [#()].
	aStream nextPutAll: '<option></option>'. "empty choice"
	session := self firstSessionFromStack.
	self collection do: [:each |
		option := self aspect isNil ifTrue: [each] ifFalse: [each perform: self aspect]. 
		option := AIDASite convertToWeb: option on: session.
		aStream nextPutAll: '<option'.
		aStream nextPutAll: ((preselected includes: each) ifTrue: [' selected>'] ifFalse: ['>']).
 		aStream nextPutAll: option; nextPutAll: '</option> ' ]!

resetMultiple
	self multiple: false!

selected
	"selected options wiil be stored here"
	^selected!

selected: aCollection
	selected := aCollection!

setMultiple
	self multiple: true!

shouldIdent
	^false!

size: aRowNumber
	"number of rows visible in multiple selection menu"
	self attributesAt: #size put: aRowNumber printString! !
!WebMenu categoriesFor: #acceptFormInputFrom:!private! !
!WebMenu categoriesFor: #aspect:collection:selected:!accessing!public! !
!WebMenu categoriesFor: #aspect:collection:selectedToAspect:of:!accessing!public! !
!WebMenu categoriesFor: #aspectToStore!private! !
!WebMenu categoriesFor: #aspectToStore:!private! !
!WebMenu categoriesFor: #collection!private! !
!WebMenu categoriesFor: #collection:!private! !
!WebMenu categoriesFor: #collection:selected:!accessing!public! !
!WebMenu categoriesFor: #collection:selectedToAspect:of:!accessing!public! !
!WebMenu categoriesFor: #initialize!initialize-release!public! !
!WebMenu categoriesFor: #isEmpty!public!testing! !
!WebMenu categoriesFor: #isMenu!public!testing! !
!WebMenu categoriesFor: #isMultiple!public!testing! !
!WebMenu categoriesFor: #joinToForm:!private! !
!WebMenu categoriesFor: #multiple!private! !
!WebMenu categoriesFor: #multiple:!private! !
!WebMenu categoriesFor: #objectToStore!private! !
!WebMenu categoriesFor: #objectToStore:!private! !
!WebMenu categoriesFor: #prepareSelected!printing!public! !
!WebMenu categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebMenu categoriesFor: #printOptionsOn:!printing!public! !
!WebMenu categoriesFor: #resetMultiple!accessing!public! !
!WebMenu categoriesFor: #selected!private! !
!WebMenu categoriesFor: #selected:!private! !
!WebMenu categoriesFor: #setMultiple!accessing!public! !
!WebMenu categoriesFor: #shouldIdent!private! !
!WebMenu categoriesFor: #size:!accessing!public! !

!WebMenu class methodsFor!

aspect: aSymbol collection: aCollection selected: aSelectedCollection
	"Multiple selection menu. Aspect of every element in aColection will be shown in menu. 
	Multiple selections will be put in aSelectedCollection. Here also initial selections can be set"
	^self new aspect: aSymbol collection: aCollection selected: aSelectedCollection!

aspect: aSymbol collection: aCollection selectedToAspect: aSymbol2 of: anObject
	"Single selection menu.. Aspect of every element in aColection will be shown in menu. 
	Single selection will be put in an seelcted aspect of object. Here also initial selection can be set"
	^self new aspect: aSymbol collection: aCollection  selectedToAspect: aSymbol2 of: anObject!

collection: aCollection selected: aSelectedCollection
	"Multiple selection menu.Every element (text!!) in aColection will be shown in menu. 
	Multiple selection will be put in aSelectedCollection. Here also initial selections can be set"
	^self new collection: aCollection selected: aSelectedCollection!

collection: aCollection selectedToAspect: aSymbol2 of: anObject
	"Single selection menu.. Every element (text!!) in aColection will be shown in menu. 
	Single selection will be put in an seelcted aspect of object. Here also initial selection can be set"
	^self new collection: aCollection selectedToAspect: aSymbol2 of: anObject! !
!WebMenu class categoriesFor: #aspect:collection:selected:!instance creation!public! !
!WebMenu class categoriesFor: #aspect:collection:selectedToAspect:of:!instance creation!public! !
!WebMenu class categoriesFor: #collection:selected:!instance creation!public! !
!WebMenu class categoriesFor: #collection:selectedToAspect:of:!instance creation!public! !

