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

	id := umlField attributeName, '-bind'.

	aWriteStream nextPutAll: '<xf:bind id="', id, '" name="', umlField attributeName, '" ref="', umlField attributeName, '" xxf:whitespace="trim"/>'!

writeFrComponentOn: aWriteStream index: stringIndex
	| id bind |

	id := umlField attributeName, '-control'.
	bind := umlField  attributeName, '-bind'.

	aWriteStream nextPutAll: '<fr:c y="',stringIndex ,'" x="1" w="12">'.

		aWriteStream nextPutAll: '<xf:input id="', id ,'" bind="', bind,'" class="fr-summary fr-search">'.

			aWriteStream nextPutAll: '<xf:label ref="$form-resources/', umlField  attributeName ,'/label"/>'.
			aWriteStream nextPutAll: '<xf:label ref="$form-resources/', umlField  attributeName ,'/hint"/>'.
			aWriteStream nextPutAll: '<xf:alert ref="$fr-resources/detail/labels/alert"/>'.

		aWriteStream nextPutAll: '</xf:input>'.


	aWriteStream nextPutAll: '</fr:c>'.
!

writeMainInstanceOn: aWriteStream

	aWriteStream nextPutAll: '<', umlField attributeName, '/>'!

writeResourcesOn: aWriteStream

	aWriteStream nextPutAll:  '<', umlField attributeName, '>'.
			aWriteStream nextPutAll: '<label>', umlField attributeName capitalized, '</label>'.
			aWriteStream nextPutAll: '<hint/>'.
	aWriteStream nextPutAll:  '</', umlField attributeName, '>'.! !
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
!OrbeonFormFieldChunk categoriesFor: #writeFrComponentOn:index:!public! !
!OrbeonFormFieldChunk categoriesFor: #writeMainInstanceOn:!public! !
!OrbeonFormFieldChunk categoriesFor: #writeResourcesOn:!public! !

!OrbeonFormFieldChunk class methodsFor!

newForUMLField: anUMLClassAttribute

	^super new initialize
		umlField: anUMLClassAttribute;
		yourself! !
!OrbeonFormFieldChunk class categoriesFor: #newForUMLField:!public! !

