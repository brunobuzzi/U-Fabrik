"Filed out from Dolphin Smalltalk 7"!

Object subclass: #RequiredUndefinedObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'soleInstance'!
RequiredUndefinedObject guid: (GUID fromString: '{2abef0f0-30cf-4b9b-b857-72f45a62297d}')!
RequiredUndefinedObject comment: ''!
!RequiredUndefinedObject categoriesForClass!Kernel-Objects! !
!RequiredUndefinedObject methodsFor!

= anObject

	^anObject isNil!

hash

	^nil hash!

isRequiredForSimilarity

	"Private - This is the purpose of the receiver"
	^true!

orNilIfEmpty

	^self!

printOn: aStream

	aStream nextPutAll: 'nil (required)'!

writeSQLOn: aStream

	nil writeSQLOn: aStream! !
!RequiredUndefinedObject categoriesFor: #=!accessing!public!testing! !
!RequiredUndefinedObject categoriesFor: #hash!accessing!public!testing! !
!RequiredUndefinedObject categoriesFor: #isRequiredForSimilarity!accessing!private!testing! !
!RequiredUndefinedObject categoriesFor: #orNilIfEmpty!accessing!public! !
!RequiredUndefinedObject categoriesFor: #printOn:!printing!public! !
!RequiredUndefinedObject categoriesFor: #writeSQLOn:!printing!public! !

!RequiredUndefinedObject class methodsFor!

soleInstance

	soleInstance isNil ifTrue: [soleInstance := self basicNew].

	^soleInstance! !
!RequiredUndefinedObject class categoriesFor: #soleInstance!public! !

