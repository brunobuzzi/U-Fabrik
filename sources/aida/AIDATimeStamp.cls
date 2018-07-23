"Filed out from Dolphin Smalltalk 7"!

AIDASimpleAspectComponent subclass: #AIDATimeStamp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDATimeStamp guid: (GUID fromString: '{1647ca37-6189-4681-b484-69314d57c8b4}')!
AIDATimeStamp comment: ''!
!AIDATimeStamp categoriesForClass!Unclassified! !
!AIDATimeStamp methodsFor!

setAspects

	self setStyle.
	self setSize.!

setStyle

	aidaComponent setStyle: ('background: ', backgroundColor, '; color: black; border-style:inset;border-width:1px;')!

webClass

	^WebDateTimeInputField! !
!AIDATimeStamp categoriesFor: #setAspects!public! !
!AIDATimeStamp categoriesFor: #setStyle!public! !
!AIDATimeStamp categoriesFor: #webClass!public! !

