"Filed out from Dolphin Smalltalk 7"!

Object subclass: #DocLink
	instanceVariableNames: 'title url object'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DocLink guid: (GUID fromString: '{15e77bec-c862-49c5-accb-17f522e7fa4d}')!
DocLink comment: ''!
!DocLink categoriesForClass!Unclassified! !
!DocLink methodsFor!

asWebLink
	^WebLink text: self title linkTo: self url!

initialize
	^self!

migrateToUnicode
	"DocLink allInstances do: [:each | each migrateToUnicode]"
	title notNil ifTrue: [title := title ensureUnicodeSloveneChars]!

object
	^object!

object: anObject
	object := anObject!

printString
	^'a Doclink
		title:  ', (self title notNil ifTrue: [self title] ifFalse: ['']), '
		url: ', (self url notNil ifTrue: [self url] ifFalse: ['']), '
		object: ', self object printString!

title
	^title!

title: aString
	title := aString!

url
	^url!

url: aString
	url := aString!

uuid
	^self hash printString! !
!DocLink categoriesFor: #asWebLink!converting!public! !
!DocLink categoriesFor: #initialize!initialize-release!public! !
!DocLink categoriesFor: #migrateToUnicode!private! !
!DocLink categoriesFor: #object!accessing!public! !
!DocLink categoriesFor: #object:!accessing!public! !
!DocLink categoriesFor: #printString!private! !
!DocLink categoriesFor: #title!accessing!public! !
!DocLink categoriesFor: #title:!accessing!public! !
!DocLink categoriesFor: #url!accessing!public! !
!DocLink categoriesFor: #url:!accessing!public! !
!DocLink categoriesFor: #uuid!accessing!public! !

!DocLink class methodsFor!

new
	"Answer a newly created and initialized instance."

	^super new initialize! !
!DocLink class categoriesFor: #new!instance creation!public! !

