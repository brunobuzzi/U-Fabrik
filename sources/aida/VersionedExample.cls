"Filed out from Dolphin Smalltalk 7"!

VersionedObject subclass: #VersionedExample
	instanceVariableNames: 'title body'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
VersionedExample guid: (GUID fromString: '{7a136e58-5234-43d3-a320-464143377792}')!
VersionedExample comment: ''!
!VersionedExample categoriesForClass!Unclassified! !
!VersionedExample methodsFor!

body
	^body!

body: anObject
	body := anObject!

copyContentsTo: anObject
	anObject title: self title copy.
	anObject body: self body copy.!

printString
	^'aVersionedExample ', 
		(self title notNil ifTrue: [self title] ifFalse: ['']), ' ', 
		(self body notNil ifTrue: [self body] ifFalse: [''])!

title
	^title!

title: anObject
	title := anObject! !
!VersionedExample categoriesFor: #body!accessing!public! !
!VersionedExample categoriesFor: #body:!accessing!public! !
!VersionedExample categoriesFor: #copyContentsTo:!copying!public! !
!VersionedExample categoriesFor: #printString!printing!public! !
!VersionedExample categoriesFor: #title!accessing!public! !
!VersionedExample categoriesFor: #title:!accessing!public! !

