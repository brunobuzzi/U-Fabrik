"Filed out from Dolphin Smalltalk 7"!

WebApplication subclass: #WebMsgsApp
	instanceVariableNames: 'webMsgs assocs texts'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebMsgsApp guid: (GUID fromString: '{37daa80c-38bb-4226-8568-8e24c35c6f07}')!
WebMsgsApp comment: ''!
!WebMsgsApp categoriesForClass!Unclassified! !
!WebMsgsApp methodsFor!

actionMessages
	| i |
	i := 1.
	self assocs do: [:each |
		(self observee messagesForCurrentLanguage at: (each key)
			put: (self texts at: i) ).
		i := i +1].!

assocs


	^assocs.!

assocs: aCollection

	"used in ordering of classifcation dictionary"
	assocs := aCollection.!

texts
	^texts!

texts: anOrderedCollection

	texts := anOrderedCollection.!

viewMessages
	"show/update all web messages"
	| table row cell i |
	self title: (WebMsgs at: #msgTitle).
	self  title: self title
.	self 	addText: self title header: 2; addRulerSize: 2.
	self assocs: (SortedCollection 
		withAll: (self observee messagesForCurrentLanguage associations)
		sortBlock: [:elem1 :elem2 | (elem1) < (elem2)]).
	self texts: (self assocs collect: [:each | each value]).
	table := WebTable new width: self style pageWidth; border: 1.
	row := WebTableRow new.
	cell := WebTableCell new.
	cell addMessage: #msgTbSymbol. row add: cell.
	cell := WebTableCell new.
	cell addText: #msgTbText. row add: cell. 
	i := 1.
	self assocs do: 
		[:each |
			row := WebTableRow new.
			cell := WebTableCell new.
			cell addText: each key asString attributes: #bold. row add:cell.
			cell := WebTableCell new.
			cell add: 
				(WebInputField new size: 60; aspect: i for: self texts). 
			row add:cell. table add: row. 
			i := i + 1.].
		self add: table; addRulerSize: 2.
		self add: (WebButton new text: 'Zapisi').!

webMsgs

	^webMsgs!

webMsgs: aWebMsgs

	webMsgs := aWebMsgs.! !
!WebMsgsApp categoriesFor: #actionMessages!actions!public! !
!WebMsgsApp categoriesFor: #assocs!accessing!public! !
!WebMsgsApp categoriesFor: #assocs:!accessing!public! !
!WebMsgsApp categoriesFor: #texts!accessing!public! !
!WebMsgsApp categoriesFor: #texts:!accessing!public! !
!WebMsgsApp categoriesFor: #viewMessages!printing!public! !
!WebMsgsApp categoriesFor: #webMsgs!accessing!public! !
!WebMsgsApp categoriesFor: #webMsgs:!accessing!public! !

