"Filed out from Dolphin Smalltalk 7"!

WebInputField subclass: #WebDateInputField
	instanceVariableNames: 'button'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebDateInputField guid: (GUID fromString: '{66b4a972-8e05-449f-af17-ac458ae556ac}')!
WebDateInputField comment: 'WebDateInputField is used for entry of dates with help od JavaScript calendar (http://www.dynarch.com/projects/calendar/), fro Romanian author Mihai Bazon. 
See also WebStyle calendar* methods, specially calendarCSS and calendarLang*

Usage is similar as usual input field. Example: 
	element addDateInputFieldAspect: #methodName for: self observee
 
Instance Variables:
	button	<WebImage>'!
!WebDateInputField categoriesForClass!Unclassified! !
!WebDateInputField methodsFor!

addCalendarSetupScriptOn: aStream

	aStream nextPutAll: '<script type="text/javascript">Calendar.setup({ inputField : "', self inputFieldId, 		'", ifFormat : "', self inputFieldFormat, 
		'", button : "', self buttonId, '"});</script>', self eol!

button
	^button!

button: aWebButton
	button := aWebButton!

buttonId
	^self button id!

buttonImage
	"from WebStyle calendarButtonGif !! "
	| methodImage |
	methodImage := WebMethodImage
		fromMethod: #calendarButtonGif
		on: self style 
		contentType: 'image/gif' 
		site: self style site.
	^(WebImage image: methodImage)
		title: 'Choose date';
		imageAlign: #middle;
		onMouseOver: 'this.style.cursor=''pointer'' ';
		onMouseOut: 'this.style.cursor=''default'' '!

initialize
	super initialize.
	self size: 11. 
	self app style ensureJavascriptAndCssForCalendarInHeader.
	self app style ensureJsResourceForCalendarSetup.!

inputFieldFormat
	"the date format"
	^'%e.%m.%Y'  "17.01.1965"!

inputFieldId
	^self id!

isDateInputField
	^true!

printHTMLPageOn: aStream for: aRequest on: aSession

	self registerId.
	self button: self buttonImage. self button registerId.
	super printHTMLPageOn: aStream for: aRequest on: aSession.
	self button printHTMLPageOn: aStream for: aRequest on: aSession.
	self addCalendarSetupScriptOn: aStream.! !
!WebDateInputField categoriesFor: #addCalendarSetupScriptOn:!printing!public! !
!WebDateInputField categoriesFor: #button!private! !
!WebDateInputField categoriesFor: #button:!private! !
!WebDateInputField categoriesFor: #buttonId!printing!public! !
!WebDateInputField categoriesFor: #buttonImage!printing!public! !
!WebDateInputField categoriesFor: #initialize!initialize-release!public! !
!WebDateInputField categoriesFor: #inputFieldFormat!printing!public! !
!WebDateInputField categoriesFor: #inputFieldId!printing!public! !
!WebDateInputField categoriesFor: #isDateInputField!public!testing! !
!WebDateInputField categoriesFor: #printHTMLPageOn:for:on:!printing!public! !

