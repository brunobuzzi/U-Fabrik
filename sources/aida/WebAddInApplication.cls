"Filed out from Dolphin Smalltalk 7"!

WebApplication subclass: #WebAddInApplication
	instanceVariableNames: 'objectViewer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebAddInApplication guid: (GUID fromString: '{20f470d4-b735-406a-8011-59f1b89ed2fc}')!
WebAddInApplication comment: ''!
!WebAddInApplication categoriesForClass!Unclassified! !
!WebAddInApplication methodsFor!

addActionButtonsTo: aWebElement 
	
	aWebElement addImageCancelButtonText: 'Cancelar' action: #cancel.
	aWebElement addText: '   '.
	aWebElement addImageButtonText: 'Aceptar' action: #accept.!

addAllJavaScript

	self addJavascript: self jsHideShowElement, String lineDelimiter ,self jsHideShowMenus.!

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

jsHideShowMenus
	^'
function hideShowMenu (menuId, elementCount) {
var index;
var element;

for (i=1; i<=elementCount; i++) {
	index = parseInt(i);
	element = document.getElementById(menuId + index);
	if (element.style.display == ''none'') {element.style.display = ''''} else {element.style.display = ''none''}
}
}
'!

objectViewer
	^objectViewer!

objectViewer: anObject
	objectViewer := anObject!

viewMain
	| mainPage objectTable |

	"self addAllJavaScript."
	mainPage := WebElement new.
	"self showDetailsIn: mainPage."
	objectTable := (AIDAWebPageBuilder newFor: self) generateTable.
	mainPage add: objectTable.
	self pageFrameWith: mainPage title: 'Caption'! !
!WebAddInApplication categoriesFor: #addActionButtonsTo:!public! !
!WebAddInApplication categoriesFor: #addAllJavaScript!public! !
!WebAddInApplication categoriesFor: #jsHideShowElement!javascript!public! !
!WebAddInApplication categoriesFor: #jsHideShowMenus!javascript!public! !
!WebAddInApplication categoriesFor: #objectViewer!accessing!private! !
!WebAddInApplication categoriesFor: #objectViewer:!accessing!private! !
!WebAddInApplication categoriesFor: #viewMain!public! !

