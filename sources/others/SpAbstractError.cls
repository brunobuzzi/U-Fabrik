"Filed out from Dolphin Smalltalk 7"!

Error subclass: #SpAbstractError
	instanceVariableNames: 'parameter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpAbstractError guid: (GUID fromString: '{f99302f8-e5da-434c-8b80-c3c4ea7c047d}')!
SpAbstractError comment: ''!
!SpAbstractError categoriesForClass!Unclassified! !
!SpAbstractError methodsFor!

errorString
	^self messageText!

isResumable
	"Determine whether an exception is resumable."

	^self class mayResume!

parameter
	^parameter !

parameter: anObject 
	parameter := anObject!

raiseSignal
	"Raise an an exception."
	^ self signal!

raiseSignal: aString 
	"Raise an an exception."
	^ self signal: aString! !
!SpAbstractError categoriesFor: #errorString!accessing!public! !
!SpAbstractError categoriesFor: #isResumable!priv handling!public! !
!SpAbstractError categoriesFor: #parameter!accessing!public! !
!SpAbstractError categoriesFor: #parameter:!accessing!public! !
!SpAbstractError categoriesFor: #raiseSignal!public!signalling! !
!SpAbstractError categoriesFor: #raiseSignal:!public!signalling! !

!SpAbstractError class methodsFor!

mayResume

	^false!

raiseSignal
	"Raise an an exception."
	^ self signal!

raiseSignal: aString 
	"Raise an an exception."
	^ self signal: aString! !
!SpAbstractError class categoriesFor: #mayResume!public!testing! !
!SpAbstractError class categoriesFor: #raiseSignal!public!signalling! !
!SpAbstractError class categoriesFor: #raiseSignal:!public!signalling! !

