"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #AIDAExpandableMenu
	instanceVariableNames: 'menuName options'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAExpandableMenu guid: (GUID fromString: '{e9e8e868-0e9e-4721-9b5b-37afa8e3176f}')!
AIDAExpandableMenu comment: ''!
!AIDAExpandableMenu categoriesForClass!Unclassified! !
!AIDAExpandableMenu methodsFor!

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
!AIDAExpandableMenu categoriesFor: #createIn:title:!public! !
!AIDAExpandableMenu categoriesFor: #defaultLateralMenuWebText:!frame navigation!private! !
!AIDAExpandableMenu categoriesFor: #initialize!public! !
!AIDAExpandableMenu categoriesFor: #menuName!accessing!private! !
!AIDAExpandableMenu categoriesFor: #menuName:!accessing!private! !
!AIDAExpandableMenu categoriesFor: #navHeader:bullet:linkTo:!frame navigation!private! !
!AIDAExpandableMenu categoriesFor: #options!accessing!private! !
!AIDAExpandableMenu categoriesFor: #options:!accessing!private! !

!AIDAExpandableMenu class methodsFor!

name: aString with: aCollection

	^super new initialize
		menuName: aString;
		options: aCollection;
		yourself.! !
!AIDAExpandableMenu class categoriesFor: #name:with:!public! !

