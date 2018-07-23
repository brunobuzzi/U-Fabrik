"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebFieldSet
	instanceVariableNames: 'legend'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebFieldSet guid: (GUID fromString: '{f24a61d9-d3f9-4be9-b430-14b7827b8bb8}')!
WebFieldSet comment: 'FieldSet element groups one or more input fields together. It usually (depends on style) also enclose them with border. Legend is for writing a name of the filedset on the corner'!
!WebFieldSet categoriesForClass!Unclassified! !
!WebFieldSet methodsFor!

initialize
	"Initialize a newly created instance. This method must answer the receiver."

	" *** Replace this comment with the appropriate initialization code *** "
	^self!

legend
	^legend!

legend: aString
	"a label to be shown on left top corner of fieldset"
	legend := aString!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession.
	aStream nextPutAll: self ident, '<fieldset'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '>', self eol.
	self legend notNil ifTrue: 
		[aStream nextPutAll: self identMore, '<legend>', 
			(AIDASite convertToWeb: self legend on: aSession), 
			'</legend>', self eol].
	super printHTMLPageOn: aStream for: aRequest on: aSession.
	aStream nextPutAll: self ident, '</fieldset>', self eol.! !
!WebFieldSet categoriesFor: #initialize!initialize-release!public! !
!WebFieldSet categoriesFor: #legend!accessing!public! !
!WebFieldSet categoriesFor: #legend:!accessing!public! !
!WebFieldSet categoriesFor: #printHTMLPageOn:for:on:!printing!public! !

!WebFieldSet class methodsFor!

new
	"Answer a newly created and initialized instance."
	^super new initialize!

newLegend: aString
	^self new legend: aString! !
!WebFieldSet class categoriesFor: #new!instance creation!public! !
!WebFieldSet class categoriesFor: #newLegend:!instance creation!public! !

