"Filed out from Dolphin Smalltalk 7"!

BBServer subclass: #BBImageServer
	instanceVariableNames: 'session'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBImageServer guid: (GUID fromString: '{b2fd5974-b4ab-44fd-86ff-99c95264ef67}')!
BBImageServer comment: ''!
!BBImageServer categoriesForClass!Unclassified! !
!BBImageServer methodsFor!

defalutRepositoryClass
	^BBObjectRepository!

defaultRootServerClass
	^BBObjectRepository!

initialize

	super initialize.

	session := self defaultSessionClass newOn: self.!

instancesOf: aClass

	^repository instancesOf: aClass!

instancesOf: aClass satisfying: aMonadicValuable 

	^(self instancesOf: aClass) select: aMonadicValuable!

numberOfObjects

	^repository numberOfObjects!

session
	^session!

session: anObject
	session := anObject! !
!BBImageServer categoriesFor: #defalutRepositoryClass!public! !
!BBImageServer categoriesFor: #defaultRootServerClass!public! !
!BBImageServer categoriesFor: #initialize!public! !
!BBImageServer categoriesFor: #instancesOf:!public! !
!BBImageServer categoriesFor: #instancesOf:satisfying:!public! !
!BBImageServer categoriesFor: #numberOfObjects!public! !
!BBImageServer categoriesFor: #session!accessing!private! !
!BBImageServer categoriesFor: #session:!accessing!private! !

!BBImageServer class methodsFor!

defaultSessionClass
	^BBImageSession! !
!BBImageServer class categoriesFor: #defaultSessionClass!public! !

