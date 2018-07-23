"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebObjectViewer
	instanceVariableNames: 'object rowDescription'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebObjectViewer guid: (GUID fromString: '{c6b4f40f-73ef-4e87-a9b5-c02e9ffee7c5}')!
WebObjectViewer comment: ''!
!WebObjectViewer categoriesForClass!Unclassified! !
!WebObjectViewer methodsFor!

createIn: e
	| aWebElement |

	aWebElement := WebElement new.
	"self createTitleGridWith: #webGridTitle webElement: aWebElement title: aString."

	rowDescription object: object .
	rowDescription applyOn: aWebElement.
	aWebElement table class: #objectViewer.
	aWebElement addImage: '../images/editar.gif'.
	aWebElement addImage: '../images/cancelar.gif'.
	e add: aWebElement.
!

object
	^object!

object: anObject
	object := anObject!

rowDescription
	^rowDescription!

rowDescription: anObject
	rowDescription := anObject! !
!WebObjectViewer categoriesFor: #createIn:!public! !
!WebObjectViewer categoriesFor: #object!accessing!private! !
!WebObjectViewer categoriesFor: #object:!accessing!private! !
!WebObjectViewer categoriesFor: #rowDescription!accessing!private! !
!WebObjectViewer categoriesFor: #rowDescription:!accessing!private! !

!WebObjectViewer class methodsFor!

on: anObject

	^super new initialize
		object: anObject;
		yourself.! !
!WebObjectViewer class categoriesFor: #on:!public! !

