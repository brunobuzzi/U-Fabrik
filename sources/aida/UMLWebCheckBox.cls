"Filed out from Dolphin Smalltalk 7"!

WebCheckBox subclass: #UMLWebCheckBox
	instanceVariableNames: 'applyChange'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebCheckBox guid: (GUID fromString: '{fdb89880-26cb-458a-ac31-f235fa6fc046}')!
UMLWebCheckBox comment: ''!
!UMLWebCheckBox categoriesForClass!Unclassified! !
!UMLWebCheckBox methodsFor!

applyChange
	^applyChange!

applyChange: anObject
	applyChange := anObject!

applyOptionsForReadOnly

	applyChange := false!

initialize

	super initialize.

	applyChange := true!

isChecked
	| tempValue |

	self aspect notNil ifTrue:
		[tempValue := self object vmPerform: self aspect.
		^tempValue smalltalkObject == true].  "so that false will be returned even if value is not so"
	self selected notNil ifTrue: [^self selected includes: self object]. 
	^self checked!

setAspectFalse

	applyChange ifFalse: [^self].

	self object perform: (self aspect asString, ':') asSymbol with: false!

setAspectTrue

	applyChange ifFalse: [^self].

	self object perform: (self aspect asString, ':') asSymbol with: true! !
!UMLWebCheckBox categoriesFor: #applyChange!accessing!private! !
!UMLWebCheckBox categoriesFor: #applyChange:!accessing!private! !
!UMLWebCheckBox categoriesFor: #applyOptionsForReadOnly!public! !
!UMLWebCheckBox categoriesFor: #initialize!public! !
!UMLWebCheckBox categoriesFor: #isChecked!public!testing! !
!UMLWebCheckBox categoriesFor: #setAspectFalse!private! !
!UMLWebCheckBox categoriesFor: #setAspectTrue!private! !

!UMLWebCheckBox class methodsFor!

aspect: aSymbol for: anObject
	"this method will be called and true/false will be set/clear on an object"
	^self new initialize aspect: aSymbol for: anObject! !
!UMLWebCheckBox class categoriesFor: #aspect:for:!public! !

