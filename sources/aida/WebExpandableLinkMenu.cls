"Filed out from Dolphin Smalltalk 7"!

WebExpandableMenu subclass: #WebExpandableLinkMenu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebExpandableLinkMenu guid: (GUID fromString: '{9dd6e879-2121-4a59-b78c-07a46867cbaf}')!
WebExpandableLinkMenu comment: ''!
!WebExpandableLinkMenu categoriesForClass!Unclassified! !
!WebExpandableLinkMenu methodsFor!

createIn: e title: aString 	
	| aWebElement |

	e add: (self navHeader: aString bullet: #bulletManTranspWhiteGif linkTo: 'javascript:hideShowMenu(''', menuName, ''',', options size printString,')').
	aWebElement := WebElement new newTable; yourself.
	options do: [:collection | 
		aWebElement row style: 'display: ;'. 
		aWebElement row id: (menuName, ((options collect: [:each | each first]) indexOf: collection first) printString).
		aWebElement cell addLinkTo: collection second text: ("self defaultLateralMenuWebText:" collection first).
		aWebElement cell addBreak.
		aWebElement newRow].
	e add: aWebElement!

defaultLateralMenuWebText: aString

	^(WebText text: aString) 
		font: 'Tahoma';	
		size: -10; 
		yourself.! !
!WebExpandableLinkMenu categoriesFor: #createIn:title:!public! !
!WebExpandableLinkMenu categoriesFor: #defaultLateralMenuWebText:!frame navigation!private! !

