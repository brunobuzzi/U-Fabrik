"Filed out from Dolphin Smalltalk 7"!

LectorOffice subclass: #LectorMSWord
	instanceVariableNames: 'archivo'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LectorMSWord guid: (GUID fromString: '{fd911a36-0634-4879-9f63-c3c7e3eef22f}')!
LectorMSWord comment: ''!
!LectorMSWord categoriesForClass!Unclassified! !
!LectorMSWord methodsFor!

archivo
	^archivo!

archivo: anObject
	archivo := anObject!

free

	^archivo free!

getSelection
	^archivo getSelection!

mainIDispatch
	^archivo document!

searchText: aString 
	^archivo findText: aString !

tables

	^archivo tables! !
!LectorMSWord categoriesFor: #archivo!accessing!private! !
!LectorMSWord categoriesFor: #archivo:!accessing!private! !
!LectorMSWord categoriesFor: #free!public! !
!LectorMSWord categoriesFor: #getSelection!public! !
!LectorMSWord categoriesFor: #mainIDispatch!public! !
!LectorMSWord categoriesFor: #searchText:!public! !
!LectorMSWord categoriesFor: #tables!public! !

!LectorMSWord class methodsFor!

fileClass

	^File!

open: pathFile
	| lector |

	lector := super new.
	lector archivo: (MSWord open: pathFile).
	^lector! !
!LectorMSWord class categoriesFor: #fileClass!public! !
!LectorMSWord class categoriesFor: #open:!public! !

