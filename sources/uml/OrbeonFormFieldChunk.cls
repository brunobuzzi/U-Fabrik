"Filed out from Dolphin Smalltalk 7"!

OrbeonFormXmlChunk subclass: #OrbeonFormFieldChunk
	instanceVariableNames: 'mainInstance binding resources view umlField'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OrbeonFormFieldChunk guid: (GUID fromString: '{9f21ab27-f214-4091-b6bc-d75e04e67fd5}')!
OrbeonFormFieldChunk comment: ''!
!OrbeonFormFieldChunk categoriesForClass!Unclassified! !
!OrbeonFormFieldChunk methodsFor!

binding
	^binding!

binding: anObject
	binding := anObject!

mainInstance
	^mainInstance!

mainInstance: anObject
	mainInstance := anObject!

resources
	^resources!

resources: anObject
	resources := anObject!

umlField
	^umlField!

umlField: anObject
	umlField := anObject!

view
	^view!

view: anObject
	view := anObject!

writeBindingOn: aWriteStream
	| id |

	id := umlField name, '-bind'.

	aWriteStream nextPutAll: '<xf:bind id="', id, '" name="', umlField name, '" ref="', umlField name, '" xxf:whitespace="trim"/>'!

writeMainInstanceOn: aWriteStream

	aWriteStream nextPutAll: '<', umlField name, '/>'! !
!OrbeonFormFieldChunk categoriesFor: #binding!accessing!private! !
!OrbeonFormFieldChunk categoriesFor: #binding:!accessing!private! !
!OrbeonFormFieldChunk categoriesFor: #mainInstance!accessing!private! !
!OrbeonFormFieldChunk categoriesFor: #mainInstance:!accessing!private! !
!OrbeonFormFieldChunk categoriesFor: #resources!accessing!private! !
!OrbeonFormFieldChunk categoriesFor: #resources:!accessing!private! !
!OrbeonFormFieldChunk categoriesFor: #umlField!accessing!private! !
!OrbeonFormFieldChunk categoriesFor: #umlField:!accessing!private! !
!OrbeonFormFieldChunk categoriesFor: #view!accessing!private! !
!OrbeonFormFieldChunk categoriesFor: #view:!accessing!private! !
!OrbeonFormFieldChunk categoriesFor: #writeBindingOn:!public! !
!OrbeonFormFieldChunk categoriesFor: #writeMainInstanceOn:!public! !

!OrbeonFormFieldChunk class methodsFor!

newForUMLField: anUMLClassAttribute

	^super new initialize
		umlField: anUMLClassAttribute;
		yourself! !
!OrbeonFormFieldChunk class categoriesFor: #newForUMLField:!public! !

