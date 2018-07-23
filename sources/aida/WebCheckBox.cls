"Filed out from Dolphin Smalltalk 7"!

WebFormElement subclass: #WebCheckBox
	instanceVariableNames: 'checked selected'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebCheckBox guid: (GUID fromString: '{89b56c38-fbe9-40a5-b141-11ecc7f6ff5c}')!
WebCheckBox comment: ''!
!WebCheckBox categoriesForClass!Unclassified! !
!WebCheckBox methodsFor!

acceptFormInputFrom: aPostDataDictionary
	(aPostDataDictionary at: self name) = 'on' 
		ifTrue: [self checkValue]
		ifFalse: [self uncheckValue]!

addObjectToSelected
	(self selected includes: self object) ifFalse: [self selected add: self object]!

checked
	^checked!

checked: aBoolean
	checked := aBoolean!

checkValue
	self aspect notNil ifTrue: [self setAspectTrue].
	self selected notNil ifTrue: [self addObjectToSelected]!

initialize
	super initialize.
	self type: 'checkbox'.
	self checked: false.!

isCheckBox
	^true!

isChecked
	| value |
	self aspect notNil ifTrue:
		[value := self object perform: self aspect.
		^value == true].  "so that false will be returned even if value is not so"
	self selected notNil ifTrue: [^self selected includes: self object]. 
	^self checked!

joinToForm: aWebForm
	aWebForm fields keysAndValuesDo: [:fname :element | 
		element == self ifTrue: [self name: fname]. ^self]!

object: anObject from: aCollection
	"if checked, this object will be put in collection. If object is initially in collection, 
	checkbox will be checked"
	"Usefull for easy selection among many objects"
	self object: anObject.
	self selected: aCollection.!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession.
	aStream nextPutAll: self ident, '<input'.
	self printAttributesOn: aStream for: aSession.
	self isChecked ifTrue: [aStream nextPutAll: ' checked'].
	aStream nextPutAll: self tagClosing.!

removeObjectFromSelected
	(self selected includes: self object) ifTrue: [self selected remove: self object]!

selected
	^selected!

selected: aCollection
	"checked objects"
	selected := aCollection!

setAspectFalse
	self object perform: (self aspect asString, ':') asSymbol with: false!

setAspectTrue
	self object perform: (self aspect asString, ':') asSymbol with: true!

setChecked
	self checked: true!

setUnchecked
	self checked: false!

shouldIdent
	^false!

uncheckValue
	self aspect notNil ifTrue: [self setAspectFalse].
	self selected notNil ifTrue: [self removeObjectFromSelected]!

value
	^self attributesAt: 'value'!

value: aString
	"set the value name  of the  check box"
	^self attributesAt: 'value' put: aString! !
!WebCheckBox categoriesFor: #acceptFormInputFrom:!private! !
!WebCheckBox categoriesFor: #addObjectToSelected!private! !
!WebCheckBox categoriesFor: #checked!private! !
!WebCheckBox categoriesFor: #checked:!private! !
!WebCheckBox categoriesFor: #checkValue!private! !
!WebCheckBox categoriesFor: #initialize!initialize-release!public! !
!WebCheckBox categoriesFor: #isCheckBox!public!testing! !
!WebCheckBox categoriesFor: #isChecked!public!testing! !
!WebCheckBox categoriesFor: #joinToForm:!private! !
!WebCheckBox categoriesFor: #object:from:!private! !
!WebCheckBox categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebCheckBox categoriesFor: #removeObjectFromSelected!private! !
!WebCheckBox categoriesFor: #selected!accessing!public! !
!WebCheckBox categoriesFor: #selected:!private! !
!WebCheckBox categoriesFor: #setAspectFalse!private! !
!WebCheckBox categoriesFor: #setAspectTrue!private! !
!WebCheckBox categoriesFor: #setChecked!accessing!public! !
!WebCheckBox categoriesFor: #setUnchecked!accessing!public! !
!WebCheckBox categoriesFor: #shouldIdent!public!testing! !
!WebCheckBox categoriesFor: #uncheckValue!private! !
!WebCheckBox categoriesFor: #value!private! !
!WebCheckBox categoriesFor: #value:!private! !

!WebCheckBox class methodsFor!

aspect: aSymbol for: anObject
	"this method will be called and true/false will be set/clear on an object"
	^self new aspect: aSymbol for: anObject!

newForObject: anObject from: aCollection
	"if checked, this object will be put in collection. If object is initially in collection, 
	checkbox will be checked"
	"Usefull for easy selection among many objects"
	^self new object: anObject from: aCollection! !
!WebCheckBox class categoriesFor: #aspect:for:!instance creation!public! !
!WebCheckBox class categoriesFor: #newForObject:from:!instance creation!public! !

