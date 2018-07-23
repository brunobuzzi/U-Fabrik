"Filed out from Dolphin Smalltalk 7"!

WebList subclass: #WebTabs
	instanceVariableNames: 'selected'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebTabs guid: (GUID fromString: '{612ea4bd-a5be-4022-b139-613d78ae02d9}')!
WebTabs comment: 'WebTabs are visual selection tool. selected tab is in front, others are back and have url links.
By default an instance have CSS class ''webtabs'' and selected tab ''webtabselected"

Usage:
	self addTextBold: ''Selected without link''. 
	self addLinkTo: someObject text: ''not-selected with link'' view: #view.
	self selected: 1.


Instance Variables:
	selected	<Integer>	which tab is selected. By default is first.'!
!WebTabs categoriesForClass!Unclassified! !
!WebTabs methodsFor!

defaultClass
	"default CSS class for tabs, see WebStyle cssTabs1 for more info"
	^#tabs1!

initialize
	super initialize.
	self kind: #unordered.
	self class: self defaultClass.
	self selected: 1!

printHTMLPageOn: aStream for: aRequest on: aSession
	(self selected notNil and: [self selected <= self elements size]) ifTrue:
		[(self elements at: self selected) class: self selectedClass].
	super printHTMLPageOn: aStream for: aRequest on: aSession.!

selected
	^selected!

selected: aNumber
	"whivh tab is selected, that is in front"
	selected := aNumber!

selectedClass
	"CSS class for selected tab, auto coposed!! "
	^(self attributesAt: #class), 'selected'! !
!WebTabs categoriesFor: #defaultClass!accessing!public! !
!WebTabs categoriesFor: #initialize!initialize-release!public! !
!WebTabs categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebTabs categoriesFor: #selected!accessing!public! !
!WebTabs categoriesFor: #selected:!accessing!public! !
!WebTabs categoriesFor: #selectedClass!accessing!public! !

!WebTabs class methodsFor!

new
	^super new initialize! !
!WebTabs class categoriesFor: #new!instance creation!public! !

