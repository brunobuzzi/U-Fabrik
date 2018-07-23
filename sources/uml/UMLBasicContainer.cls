"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLBasicContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLBasicContainer guid: (GUID fromString: '{5f5ecac2-79ac-4676-969b-5b92b3ee0bf5}')!
UMLBasicContainer comment: ''!
!UMLBasicContainer categoriesForClass!Unclassified! !
!UMLBasicContainer methodsFor!

generateComponents


	self subclassResponsibility!

name
	^view name!

name: aString
	^view name: aString!

showError: errorString for: aspectName

	TextPresenter create: 'Multiline text' in: self on: ('Error executing <', aspectName, '>', String lineDelimiter, errorString)! !
!UMLBasicContainer categoriesFor: #generateComponents!public! !
!UMLBasicContainer categoriesFor: #name!public! !
!UMLBasicContainer categoriesFor: #name:!public! !
!UMLBasicContainer categoriesFor: #showError:for:!public! !

!UMLBasicContainer class methodsFor!

defaultModel

	^UMLCardViewDescriptor new! !
!UMLBasicContainer class categoriesFor: #defaultModel!public! !

