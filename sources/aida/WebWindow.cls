"Filed out from Dolphin Smalltalk 7"!

WebWidget subclass: #WebWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebWindow guid: (GUID fromString: '{da172387-074a-4f44-bc8a-085ecba1a698}')!
WebWindow comment: 'WebWindow is a window (a web page or window inside a page) with its own form.'!
!WebWindow categoriesForClass!Unclassified! !
!WebWindow methodsFor!

add: anElement
	"all adding delegated to the form"
	^self form add: anElement!

app
	^self context app!

clear

	^self form clear!

close
	"close that window and also its execution context. Call this method from Ajax closing link 
	on the window"
	"only the subwindow can be closed that way, not a main page"
	self context close.!

context
	^self parent!

form
	"WebForm is first and only subelement of the WebWindow"
	self elements isEmpty ifTrue: [self initForm].
	^self elements first!

initForm
	self elements add: (WebForm new parent: self).
	self form registerId!

popupStub
	"empty stub element for eventual popup window"
	^self otherAt: #PopupStub ifAbsentPut: [WebStubElement newFor: #unknownYet]!

popupStyle
	"for popup windows. Because they are stackable, we need to consider a level in the stack too"
	| level lvl |

	level :=self context level. lvl := level printString.
	^ '
html { overflow: hidden; }
body { overflow: hidden; }
form {width: 100%}
div#overlay', lvl ,' {
	z-index: ', (9000+(level*2)) printString, ';
	background-color: black;
	filter: alpha(opacity=10);
	-moz-opacity: 0.1;
	opacity: 0.1;
}
div#overlay', lvl, '[id] { position: fixed; }
div#lightbox', lvl, ' { 
	background: lavender; 
	z-index: ', (9001+(level*2)) printString, ';
/*	padding: 10px; */
	border: 5px ridge lightgray;
}'!

printHTMLPageOn: aStream for: aRequest on: aSession

	self prepareToHTMLPrintOn: aSession.

	self popupStub  "empty stub element for eventual popup window" printHTMLPageOn: aStream for: aRequest on: aSession.

	super printHTMLPageOn: aStream for: aRequest on: aSession. "a form"!

shouldIdent
	^true! !
!WebWindow categoriesFor: #add:!public!subelements! !
!WebWindow categoriesFor: #app!accessing!public! !
!WebWindow categoriesFor: #clear!initialize-release!public! !
!WebWindow categoriesFor: #close!accessing!public! !
!WebWindow categoriesFor: #context!accessing!public! !
!WebWindow categoriesFor: #form!accessing!public! !
!WebWindow categoriesFor: #initForm!initialize-release!public! !
!WebWindow categoriesFor: #popupStub!accessing!public! !
!WebWindow categoriesFor: #popupStyle!printing!public! !
!WebWindow categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebWindow categoriesFor: #shouldIdent!private! !

