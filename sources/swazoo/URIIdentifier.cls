"Filed out from Dolphin Smalltalk 7"!

Object subclass: #URIIdentifier
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
URIIdentifier guid: (GUID fromString: '{50169b7f-e49d-4de9-ac8f-82353b1bd81d}')!
URIIdentifier comment: ''!
!URIIdentifier categoriesForClass!Unclassified! !
!URIIdentifier methodsFor!

= anIdentifier 
	^self match: anIdentifier!

hash
	^1!

match: anotherIdentifier 
	^(self typeMatch: anotherIdentifier) 
		and: [self valueMatch: anotherIdentifier]!

typeMatch: anotherIdentifier 
	^self class == anotherIdentifier class!

valueMatch: anotherIdentifier 
	^self subclassResponsibility! !
!URIIdentifier categoriesFor: #=!comparing!public! !
!URIIdentifier categoriesFor: #hash!comparing!public! !
!URIIdentifier categoriesFor: #match:!public!testing! !
!URIIdentifier categoriesFor: #typeMatch:!private! !
!URIIdentifier categoriesFor: #valueMatch:!private! !

