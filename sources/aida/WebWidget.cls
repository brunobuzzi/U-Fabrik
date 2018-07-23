"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebWidget
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebWidget guid: (GUID fromString: '{4d215d42-a67e-46ac-a06b-bd827576cc21}')!
WebWidget comment: 'WebWidget is an abstract class for statefull Aida components - standalone parts of web page, many times also long living, that is, they live longer than just one page view.'!
!WebWidget categoriesForClass!Unclassified! !
!WebWidget methodsFor!

build
	"Build the component, override this method"!

isWebWidget
	^true!

printHTMLPageOn: aStream for: aRequest on: aSession 
	self build.

	super 
		printHTMLPageOn: aStream for: aRequest on: aSession! !
!WebWidget categoriesFor: #build!printing!public! !
!WebWidget categoriesFor: #isWebWidget!public!testing! !
!WebWidget categoriesFor: #printHTMLPageOn:for:on:!printing!public! !

