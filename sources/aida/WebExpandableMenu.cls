"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebExpandableMenu
	instanceVariableNames: 'menuName options'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebExpandableMenu guid: (GUID fromString: '{17c2e8b1-b743-47e5-8842-6607474bf85a}')!
WebExpandableMenu comment: ''!
!WebExpandableMenu categoriesForClass!Unclassified! !
!WebExpandableMenu methodsFor!

createIn: e title: aString 	
	| aWebElement |

	e add: (self navHeader: aString bullet: #bulletManTranspWhiteGif linkTo: 'javascript:hideShowMenu(''', menuName, ''',', options size printString,')').
	aWebElement := WebElement new newTable; yourself.
	options do: [:eachString  | 
		aWebElement row style: 'display: none;'. 
		aWebElement row id: (menuName, (options indexOf: eachString) printString).
		aWebElement cell add: (self defaultLateralMenuWebText: eachString).
		(eachString = options last) ifFalse: [aWebElement newRow]].
	e add: aWebElement!

defaultLateralMenuWebText: aString

	^(WebText text: aString) 
		font: 'Arial';	
		size: -1.5; 
		yourself.!

initialize

	super initialize.

	menuName := ''.
	options := OrderedCollection new.!

menuName
	^menuName!

menuName: anObject
	menuName := anObject!

navHeader: aString bullet: aSymbol linkTo: anObject
	^(WebText header: 3)
		addGif: aSymbol size: 13@13; addLinkTo: anObject text: aString; yourself.!

options
	^options!

options: anObject
	options := anObject! !
!WebExpandableMenu categoriesFor: #createIn:title:!public! !
!WebExpandableMenu categoriesFor: #defaultLateralMenuWebText:!frame navigation!private! !
!WebExpandableMenu categoriesFor: #initialize!public! !
!WebExpandableMenu categoriesFor: #menuName!accessing!private! !
!WebExpandableMenu categoriesFor: #menuName:!accessing!private! !
!WebExpandableMenu categoriesFor: #navHeader:bullet:linkTo:!frame navigation!private! !
!WebExpandableMenu categoriesFor: #options!accessing!private! !
!WebExpandableMenu categoriesFor: #options:!accessing!private! !

!WebExpandableMenu class methodsFor!

name: aString with: aCollection

	^super new initialize
		menuName: aString;
		options: aCollection;
		yourself.! !
!WebExpandableMenu class categoriesFor: #name:with:!public! !

