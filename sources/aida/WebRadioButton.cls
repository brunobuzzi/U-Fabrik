"Filed out from Dolphin Smalltalk 7"!

WebFormElement subclass: #WebRadioButton
	instanceVariableNames: 'checked'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebRadioButton guid: (GUID fromString: '{352d3b0c-04c1-4cbb-8411-e062f5f21a68}')!
WebRadioButton comment: ''!
!WebRadioButton categoriesForClass!Unclassified! !
!WebRadioButton methodsFor!

checked
	^checked!

checked: aBoolean
	checked := aBoolean!

initialize
	super initialize.
	self type: 'radio'.
	self checked: false.!

isChecked
	^self checked!

isRadioButton
	^true!

joinToForm: aWebForm
	"join  this checkbox to the group of them with the same name in aWebForm. 
	This method is called by aWebForm!!"
	| existing |
	existing := aWebForm fieldSet 
		detect: [:each | each isRadioButton and: [each name = self name]]
		ifNone: [self value: Dictionary new. self].
	(existing value = '') ifTrue: [existing value: Dictionary new].
	self adaptor: existing adaptor.
	(self value includesKey: self value) ifFalse:
		[self value at: self value put: false] "????"!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession.
	aStream nextPutAll: self ident, '<input'.
	self printAttributesOn: aStream for: aSession.
	self isChecked ifTrue: [aStream nextPutAll: ' checked'].
	aStream nextPutAll: self tagClosing.!

setChecked
	self checked: true!

setUnchecked
	self checked: false!

shouldIdent
	^false!

value
	^self attributesAt: 'value'!

value: aString
	"set the value name  of the  radio button"
	^self attributesAt: 'value' put: aString! !
!WebRadioButton categoriesFor: #checked!private! !
!WebRadioButton categoriesFor: #checked:!private! !
!WebRadioButton categoriesFor: #initialize!initialize-release!public! !
!WebRadioButton categoriesFor: #isChecked!public!testing! !
!WebRadioButton categoriesFor: #isRadioButton!public!testing! !
!WebRadioButton categoriesFor: #joinToForm:!private! !
!WebRadioButton categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebRadioButton categoriesFor: #setChecked!accessing!public! !
!WebRadioButton categoriesFor: #setUnchecked!accessing!public! !
!WebRadioButton categoriesFor: #shouldIdent!public!testing! !
!WebRadioButton categoriesFor: #value!private! !
!WebRadioButton categoriesFor: #value:!private! !

!WebRadioButton class methodsFor!

name: aNameString value: aValueString 

	^(self new) name: aNameString; value: aValueString! !
!WebRadioButton class categoriesFor: #name:value:!instance creation!public! !

