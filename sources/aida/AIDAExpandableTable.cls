"Filed out from Dolphin Smalltalk 7"!

AIDAGrid subclass: #AIDAExpandableTable
	instanceVariableNames: 'expandableSelector expandTitles expandAspectSelectors collapseGif expandGif subEvenColor subOddColor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAExpandableTable guid: (GUID fromString: '{02e6a276-22b3-42f0-b597-cb46ae19b125}')!
AIDAExpandableTable comment: ''!
!AIDAExpandableTable categoriesForClass!Unclassified! !
!AIDAExpandableTable methodsFor!

addExpandCollapseLinksIn: aWebElement index: rowIndex numberOfRows: anInteger
	| collapseLink expandLink |

	collapseLink := WebLink image: collapseGif linkTo: 'javascript:hideShowElement(''', tableName, rowIndex, ''',' , anInteger printString,')'.
	collapseLink id: ('hide_', tableName, rowIndex) asSymbol.
	collapseLink style: 'display: none'.
	aWebElement cell add: collapseLink.
	expandLink := WebLink image: expandGif linkTo: 'javascript:hideShowElement(''', tableName,rowIndex, ''',' , anInteger printString,')'.
	expandLink id: ('show_', tableName ,rowIndex) asSymbol.
	aWebElement cell add: expandLink.
!

addSubCollectionTo: anObject in: saElement index: index
	| subCollection |

	objects isEmpty ifTrue: [^self].
	subCollection := self subObjectsFor: anObject.
	self createSameTitleIn: saElement tabs: 1 hide: true id: (tableName , index, '0').
	subCollection do: [:each | 
			saElement row style: 'display: none;'.
			saElement row id: (tableName, index, (subCollection indexOf: each) printString).
			saElement cell style: 'background: rgb(255,255,255)'. "first cell of the subcollection (subGrid) in white background"

			saElement newCell addLinkTo: each text: (each perform: expandAspectSelectors first).
			expandAspectSelectors allButFirst do: [:aspectSymbol  | 
				saElement newCell addText: (each perform: aspectSymbol).].

			(subCollection indexOf: each) even 
				ifTrue: [saElement row attributesAt: #style put: 'display: none;background: ', subEvenColor] 
				ifFalse:[saElement row attributesAt: #style put: 'display: none;background: ', subOddColor].
				saElement newRow.
		].
	saElement newRow.
	saElement row height: 5.
	1 to: (mainTitles size - 1) do: [:each | saElement newCell].
	saElement newRow.!

collapseGif
	^collapseGif!

collapseGif: anObject
	collapseGif := anObject!

createIn: e title: aString 
	| aWebElement |

	aidaComponent := e.
	aWebElement := WebElement new.
	self createTitleGridWith: self defaultStyleClassName webElement: aWebElement title: aString.
	objects do: [:each |  | index |
		index := (objects indexOf: each) printString.
		self addExpandCollapseLinksIn: aWebElement index: index 	numberOfRows: (each perform: expandableSelector) size printString.
		aWebElement cell addLinkTo: each text: ' ' , (each perform: mainAspectsSelectors first).
"		aWebElement cell addText: ' ' , (each perform: mainAspectsSelectors first)."
		mainAspectsSelectors allButFirst do: [:mainAspect | 
			index asNumber even ifTrue: [aWebElement row attributesAt: #style put: 'background: ', mainEvenColor] ifFalse:[aWebElement row attributesAt: #style put: 'background: ', mainOddColor].
			aWebElement newCell addText: (each perform: mainAspect).].
		aWebElement newRow.
		self addSubCollectionTo: each in: aWebElement index: index].
	aWebElement table class: #webGrid.
	e add: aWebElement!

createSameTitleIn: e tabs: anInteger hide: aBoolean id: stringId

	aBoolean ifTrue: [e row style: 'display: none;'.].
	e row id: stringId.
	1 to: anInteger do: [:index | e newCell].
	expandTitles do: 
		[:each | 
			e cell addText: each.
			e cell class: self defaultStyleClassName.
			e cell style: 'background: rgb(216,216,216); color: rgb(0,128,192);font-weight: bold;'.
			(each = expandTitles last) ifFalse: [e newCell].].
	e newRow.!

expandableSelector
	^expandableSelector!

expandableSelector: anObject
	expandableSelector := anObject!

expandAspectSelectors
	^expandAspectSelectors!

expandAspectSelectors: anObject
	expandAspectSelectors := anObject!

expandGif
	^expandGif!

expandGif: anObject
	expandGif := anObject!

expandTitles
	^expandTitles!

expandTitles: anObject
	expandTitles := anObject!

initialize

	super initialize.

	subEvenColor := 'rgb(235,235,235)'.
	subOddColor := 'rgb(245,245,245)'.!

jsHideShowElement
	^'
function hideShowElement (menuId, elementCount) {
var index;
var element;

if (document.getElementById("show_" + menuId).style.display == ''none'')
	{document.getElementById("hide_" + menuId).style.display = ''none'';
	document.getElementById("show_" + menuId).style.display = '''';}
else 
	{document.getElementById("hide_" + menuId).style.display = '''';
	document.getElementById("show_" + menuId).style.display = ''none'';}

for (i=0; i<=elementCount; i++) {
	index = parseInt(i);
	element = document.getElementById(menuId + index);
	if (element.style.display == ''none'') {element.style.display = '''';}
	else {element.style.display = ''none'';}
}
}
'
!

subEvenColor
	^subEvenColor!

subEvenColor: anObject
	subEvenColor := anObject!

subObjectsFor: anObject

	^anObject perform: expandableSelector!

subOddColor
	^subOddColor!

subOddColor: anObject
	subOddColor := anObject! !
!AIDAExpandableTable categoriesFor: #addExpandCollapseLinksIn:index:numberOfRows:!public! !
!AIDAExpandableTable categoriesFor: #addSubCollectionTo:in:index:!public! !
!AIDAExpandableTable categoriesFor: #collapseGif!accessing!private! !
!AIDAExpandableTable categoriesFor: #collapseGif:!accessing!private! !
!AIDAExpandableTable categoriesFor: #createIn:title:!public! !
!AIDAExpandableTable categoriesFor: #createSameTitleIn:tabs:hide:id:!public! !
!AIDAExpandableTable categoriesFor: #expandableSelector!accessing!private! !
!AIDAExpandableTable categoriesFor: #expandableSelector:!accessing!private! !
!AIDAExpandableTable categoriesFor: #expandAspectSelectors!accessing!private! !
!AIDAExpandableTable categoriesFor: #expandAspectSelectors:!accessing!private! !
!AIDAExpandableTable categoriesFor: #expandGif!accessing!private! !
!AIDAExpandableTable categoriesFor: #expandGif:!accessing!private! !
!AIDAExpandableTable categoriesFor: #expandTitles!accessing!private! !
!AIDAExpandableTable categoriesFor: #expandTitles:!accessing!private! !
!AIDAExpandableTable categoriesFor: #initialize!public! !
!AIDAExpandableTable categoriesFor: #jsHideShowElement!javascript!public! !
!AIDAExpandableTable categoriesFor: #subEvenColor!accessing!private! !
!AIDAExpandableTable categoriesFor: #subEvenColor:!accessing!private! !
!AIDAExpandableTable categoriesFor: #subObjectsFor:!public! !
!AIDAExpandableTable categoriesFor: #subOddColor!accessing!private! !
!AIDAExpandableTable categoriesFor: #subOddColor:!accessing!private! !

