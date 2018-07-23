"Filed out from Dolphin Smalltalk 7"!

WebApplication subclass: #WebDemoApp
	instanceVariableNames: 'liveImage selectedClasses filename fileContentType fileStream startStamp'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebDemoApp guid: (GUID fromString: '{4abdbeaf-c48b-434d-9a21-ace27047df5e}')!
WebDemoApp comment: ''!
!WebDemoApp categoriesForClass!Unclassified! !
!WebDemoApp methodsFor!

actionAjaxSomething
	"from #ajaxSubmitExample, just to test Ajax action calling"!

actionControlFlow
	"just for access rights setup"!

actionControlFlowDelete
	"tree-like control flow in action!! "

	(self ask: (WebDialog newConfirm text: 'Delete?') )
		ifTrue: [self observee delete]!

actionControlFlowReset
	self observee resetDelete!

actionEditMembers
	"just for security to work!!"!

actionEditMembersSave
	self redirectToView: #gridSelected!

actionFileUpload
	self fileStream notNil ifTrue:
		[self fileStream close]. "while content were already streamed to the file before"!

actionGridSelected
	"just for security to work!!"!

actionGridSelectedEditMembers
	self redirectToView: #editMembers!

actionrichEditor
	"just to enable setup of access rights"!

actionWebdav
	| stream file |
	file := self webdavExampleFilename asFilename. file exists ifTrue: [file delete].
	[stream :=  file appendStream. stream binary. 
	stream nextPutAll: self observee file asByteArray] 
		ensure: [self observee file: nil. stream close].!

addWebDAVVBScript
	"to open directly from web and not copy a document in local cache"
	self script: '
 <SCRIPT LANGUAGE=VBScript>
   Function OpenDoc(strLocation)
   Dim objWord
      Set objWord = CreateObject("Word.Application")
      objWord.Visible = true
      objWord.Documents.Open strLocation
   End Function
 </SCRIPT>
'!

ajaxAutocompleteExample
	| e field1 field2 result |
	e := WebElement new. e table width: 1. "100%"
	e cell colspan: 2; addTextH4: 'Example: Autocomplete field with data from server'. e newRow.
	e cell width: 0.5; valign: #top; addTextSmall: 'Type first chars of month names to select: '; addBreak.
	field1 := WebAutocompleteField 
		aspect: #field1 for: self observee choicesAspect: #monthsStarting: for: self.
	e cell add: field1.
	e newCell addTextSmall: 'Again, the choice will be posted instantly: '. e cell addBreak.
	result := self ajaxAutocompleteResult.
	field2 := WebAutocompleteField 
		aspect: #field2 for: self observee choicesAspect: #monthsStarting: for: self.
	field2 afterPostAndUpdate: result.
	e cell add: field2. e cell addBreak.
	e cell add: result.
	^e!

ajaxAutocompleteResult
	| e |
	e := WebElement new.
	e addTextBold: self observee field2.
	^e!

ajaxDelayedFieldElement
	| e |
	e := WebElement new.
	e addTextBold: self observee delayedInput.
	^e!

ajaxInPlaceEditorExample
	| e |
	e := WebElement new.
	e addTextH4: 'Example: In-place editor example'.
	e addText: 'Click text below to edit it'. e addBreak.
"	e addInPlaceEditableTextAspect: #editField for: self observee." "that's shorter way"
	e add: ((WebInPlaceEditableText aspect: #editField for: self observee)
		triggerElement: ((WebImage gif: #buttonEditGif) title: 'Edit this text') ). "image to enter edit"
	^e!

ajaxLiveAndDelayedFieldExample
	| e element1 input1 element2 input2 |
	e := WebElement new. e table width: 1. "100%"
	e cell colspan: 2; addTextH4: 'Example: Live and Delayed input send to server'. e newRow.
	element1 := self ajaxLiveFieldElement.
	input1 := WebInputField aspect: #input for: self observee.
	input1 onKeyUpPostAndUpdate: element1.
	e cell width: 0.5; add: input1; addBreak; add: element1.
	element2 := self ajaxDelayedFieldElement.
	input2 := WebDelayedField aspect: #delayedInput for: self observee.
	input2 afterPostUpdate: element2.
	e newCell add: input2; addBreak; add: element2.
	^e!

ajaxLiveFieldElement
	| e |
	e := WebElement new.
	e addTextBold: self observee input.
	^e!

ajaxPeriodicUpdaterExample
	| e element |
	e := WebElement new.
	e addTextH4: 'Example: Periodicaly update element from server'.
	element := self ajaxTimeElement.
	element updateEverySeconds: 1.
	e add: element.
	^e!

ajaxPopupDialogExample
	| e |
	e := WebElement new.
	e addTextH4: 'Example: Popup info dialog'.
	(e addNilLinkText: 'Click me for popup')
		onClickPopup: (WebDialog newInfo text: 'Just hello!!').
	^e!

ajaxPopupWindowExample
	| e |
	e := WebElement new.
	e addTextH4: 'Example: Popup window with Ajax content from server'.
	(e addNilLinkText: 'Click me for popup')
		onClickPopup: self ajaxPopupWindowLive.
	^e!

ajaxPopupWindowLive
	| e |
	e := WebElement new.
	self context request isAjaxRequest ifFalse: [^e]. "because this method is also called while building 
												 main page in #ajaxPopupWindowExample"
	e addTextH1: 'Popup window with live content from server'. e addBreak.
	e addText: 'Timestamp now: ',  SpTimestamp now printString; addBreak; addBreak.
	(e addNilLinkText: 'popup one more')
		onClickPopup: self ajaxPopupWindowLive2. 
	e addText: ' | '.
	e addCloseWindowText: 'close'.   "closing link, via Ajax closes also the window and context on the server"
	^e!

ajaxPopupWindowLive2
	| e |
	e := WebElement new.
	e addText: SpTimestamp now printString; addBreak.
	e addCloseWindowText: 'close'.   "closing link"
"	e scriptAfter: 'window.location=''/'''. " "Ajax redirection, just test!! "
	^e!

ajaxSubmitExample
	| e |
	e := WebElement new.
	e addTextH4: 'Example: Ajax form submit to the server'.
	e addInputFieldAspect: #submitValue for: self observee. e addSpace.
	(e addButtonText: 'Ajax submit' action: #something) "will call also call #actionAjaxSomething"
		ajaxSubmit;
		onSubmitUpdate: e.
	e addBreak; addTextBold: self observee submitValue.
	^e!

ajaxTimeElement
	"VW specific"
	| e |
	e := WebElement new.
	e style: '{background-color: #eee }'.
	e addTextBold: Date today shortPrintSloString, ' ', Time now printString. "VW specific"
	^e!

ajaxUpdateTimeExample
	| e element |
	e := WebElement new.
	e addTextH4: 'Example: Update element from server'.
	element := self ajaxTimeElement.
	e add: element; addBreak.
	(e addNilLinkText: 'Click me to update')
		onClickUpdate: element.
	^e!

classesEditElement
	| e |
	e := WebElement new.
	e addButtonText: 'Save' action: #save.
	e add: (WebGrid new
		columnNames: #('' 'Class name');
		columnAspects: #(nil #name);
		sortOn: 2;
		collection: WebApplication allWebAppClasses;
		checkboxesColumn: 1 collection: self selectedClasses;
		yourself).
	^e!

classesSelectedElement
	| e |
	e := WebElement new.
	e addButtonText: 'Edit' action: #editMembers.
	e add: (WebGrid new
		columnNames: #('nr.' 'Class name');
		columnAspects: #(nil #name);
		setNumbering; sortOn: 2;
		collection: self selectedClasses;
		yourself).
	^e!

classesTableElement
	| e |
	e := WebElement new.
	e add: (WebGrid new
		columnNames: #('nr.' 'Class name');
		columnFilters: #(nil true);
		columnAspects: #(nil #name);
		setNumbering; sortOn: 2;
		collection: WebApplication allWebAppClasses;
		yourself).
	^e!

fileContentType
	^fileContentType!

fileContentType: aString
	fileContentType := aString!

filename
	filename isNil ifTrue: [^''].
	^filename!

filename: aString
	filename := aString!

fileStream
	"for file upload"
	^fileStream!

fileStream: aFileStream
	"for file upload"
	fileStream := aFileStream!

flowConfirmDeleteExample
	"see #actionControlFlowDelete for actual control flow example"
	| e |
	e := WebElement new.
	e addTextH4: 'Example: Delete with confirmation dialog'.
	self observee deleted not
		ifTrue: 
			[(e addButtonText: 'Delete' action: #delete) "then see #actionControlFlowDelete !! "
				ajaxSubmit.
			"	onSubmitUpdate: e"]  "later!!"
		ifFalse: 
			[e addTextBold: 'Deleted!!'; addSpace; addButtonText: 'Reset delete' action: #reset].
	^e!

gridTabsElement
 	^ViewTabs new
		addView: #grid description: 'All App classes';
		addView: #gridSelected description: 'Selected App classes';
		yourself.!

introductionElement
	| e |
	e := WebElement new.
	e addText: self observee introduction. "see WebDemo>>defaultIntroductionText for initial content"
	^e!

jsShowAlertExample
	| e |
	e := WebElement new.
	e addTextH4: 'Example 1: onClick event on some text'. e addBreak.
	e add: 
		((WebText text: 'click on me to show alert!!') onClick: 'alert(''This is an alert!!'')'). 
	^e.!

jsShowHideToggleExample
	| e element |
	e := WebElement new.
	e addTextH4: 'Example 2: show/hide an element with a click'.
	element := WebElement new addText: 'This element is now shown'; style: '{background-color: #ccc }'.
	element hide.  "hide from the start"
	e 
		add: ((WebText text: 'show') onClickShow: element); addSpace;
		add: ((WebText text: 'hide') onClickHide: element); addSpace;
		add: ((WebText text: 'toggle') onClickToggle: element); addSpace;
	 	add: element.
	^e!

jsShowWithMouseOverExample
	| e element |
	e := WebElement new.
	e addTextH4: 'Example 3: show/hide an element with mouse over'.
	element := WebElement new addText: 'This element is now shown'; style: '{background-color: #ccc }'.
	element hide.  "hide from the start"
	e 
		add: ((WebText text: 'mouse over to show') 
			onMouseOverShow: element; onMouseOutHide: element); addSpace;
	 	add: element.
	^e!

liveImage
	^liveImage!

liveImage: aWebLiveImage
	liveImage := aWebLiveImage!

monthsStarting: aString
	"as choicesAspect for autocompletion demo"
	"WebDemoApp new monthsStarting: 'j' "
	| months |

	months := 
		#('januar' 'prosinec' 'sijec^anj' 'January' 
		   'februar', 'svec^an' 'veljac^a' 'February'
		   'marec', 'sus^ec' 'oz^ujak' 'Mart'
		   'april', 'mail traven' 'travanj' 'April'
		   'maj', 'veliki traven' 'svibanj' 'May'
		   'junij', 'roz^nik' 'lipanj' 'June'
		   'julij', 'mali srpen' 'srpanj' 'July'
		   'avgust', 'veliki srpen' 'kolovoz' 'August'
		   'september', 'kimavec' 'rujan' 'September'
		   'oktober', 'vinotok' 'listopad' 'October'
		   'november', 'listopad' 'studeni' 'November'
		   'december', 'gruden' 'prosinac' 'December').
	^months select: [:each | aString, '*' match: each]!

selectedClasses
	selectedClasses isNil ifTrue: [self selectedClasses: OrderedCollection new].
	^selectedClasses!

selectedClasses: anObject
	selectedClasses := anObject!

setStartStamp
	"start timestamp of some action"
	^startStamp := SpTimestamp now!

startStamp
	"start timestamp of some action"
	^startStamp!

uploadReportAndResetElement
	"report if anything then delete file and reset variables"
	| e elapsed fileSize |
	e := WebElement new.
	self filename isEmpty ifTrue: [^e].
	elapsed := SpTimestamp now asSeconds - self startStamp asSeconds.
	fileSize := (SpFilename named: self filename) fileSize.
	e addText: 'uploaded file: ', self filename, ' size: ', fileSize printDotString, ' bytes in ', 
		elapsed printDotString, ' seconds (', ((fileSize/(elapsed max: 1)) rounded) printDotString, 'bytes/s)'.
	(SpFilename named: self filename) delete.
	self filename: ''. self fileStream: nil.
	^e!

viewAjax
	| e |

	e := WebElement new. e table width: 1. "100%"
	e cell addTextH1: 'Simple AJAX examples'. e newRow. e newRow.
	e cell add: self ajaxUpdateTimeExample. e newRow.
	"e cell add: self ajaxPeriodicUpdaterExample. e newRow. "
	e cell add: self ajaxLiveAndDelayedFieldExample. e newRow.
	e cell add: self ajaxAutocompleteExample. e newRow.
	e cell add: self ajaxInPlaceEditorExample. e newRow.
	e cell add: self ajaxPopupWindowExample. e newRow.
	e cell add: self ajaxPopupDialogExample. e newRow.
	e cell add: self ajaxSubmitExample. e newRow.
	self style pageFrameWith: e title: 'AJAX examples'!

viewCalendar
	| e |

	e := WebElement new.
	e addTextH1: #en->'Date input with Javascript Calendar example'.	 e addBreak.
	e addDateInputFieldAspect: #date for: self observee. e addBreak.
	self style pageFrameWith: e title: 'Calendar example'!

viewControlFlow
	| e |

	e := WebElement new.
	e cell addTextH1: 'Tree-like control flow examples'. e newRow. e newRow.
	e add: self flowConfirmDeleteExample.
	self style pageFrameWith: e title: 'Control flow examples'!

viewEditMembers
	| e |
	e := WebElement new.
	e cell addTextH1: 'WebGrid, tabs, live filtering, Ajax sorting, checkboxes...'. e newRow.
	e cell add: self classesEditElement.
	self style pageFrameWith: e title: 'Grid example'!

viewFileUpload
	| e field fname |
	e := WebElement new.
	e cell addTextH1: 'File upload example'. e newRow. e newRow.
	field := WebFileInputField 
		beforeStreamingDo: [:datum |  "datum is actually MIME part"
			fname := datum filename trimBlanks. 
			fname notEmpty ifTrue:
				[self fileStream: (SpFilename named: fname) writeStream. "will be closed in action method"
				self fileStream binary.
				datum writeStream: self fileStream.
				self setStartStamp ] ]    "for measuring upload time"
		filenameAspect: #filename 
		contentTypeAspect: #fileContentType 
		forObject: self.
	e cell add: field; addButtonText: 'Upload'. e newRow.
	e cell add: self uploadReportAndResetElement. "also deletes uploaded file!!"
	self style pageFrameWith: e title: 'File upload example'!

viewGrid
	| e |
	e := WebElement new.
	e cell addTextH1: 'WebGrid, tabs, live filtering, Ajax sorting, checkboxes...'. e newRow.
	e cell add: self gridTabsElement. e newRow.
	e cell add: self classesTableElement.
	self style pageFrameWith: e title: 'Grid example'!

viewGridSelected
	| e |
	e := WebElement new.
	e cell addTextH1: 'WebGrid, tabs, live filtering, Ajax sorting, checkboxes...'. e newRow.
	e cell add: self gridTabsElement. e newRow.
	e cell add: self classesSelectedElement.
	self style pageFrameWith: e title: 'Grid example'!

viewImageGallery
	| e |
	e := WebElement new.
	e addText: 'This is a collection of so called <b>method images</b>, that is: images embeded in methods in class <b>WebStyle</b> or its subclasses.'.

	"filetype icons"
	e cell cell addGif: #pdfSmallGif. e cell newCell addText: 'pdfSmallGif'. e cell newRow.
	e cell cell addGif: #pdfMediumGif. e cell newCell addText: 'pdfMediumGif'. e cell newRow.
	e cell cell addGif: #pdfBigGif. e cell newCell addText: 'pdfBigGif'. e cell newRow.
	e cell cell addGif: #wordBigGif. e cell newCell addText: 'wordBigGif'. e cell newRow.
	e cell cell addGif: #excelBigGif. e cell newCell addText: 'excelBigGif'. e cell newRow.
	e cell cell addGif: #xmlBigGif. e cell newCell addText: 'xmlBigGif'. e cell newRow.
	e newCell.

	"filetype icons"
	e cell cell addGif: #arrowBigBlueGif. e cell newCell addText: 'arrowBigBlueGif'. e cell newRow.
	e cell cell addGif: #arrowBigRedGif. e cell newCell addText: 'arrowBigRedGif'. e cell newRow.
	e cell cell addGif: #arrowBigYellowGif. e cell newCell addText: 'arrowBigYellowGif'. e cell newRow.
	e cell cell addGif: #arrowDownBigRedGif. e cell newCell addText: 'arrowDownBigRedGif'. e cell newRow.
	e cell cell addGif: #arrowSmallBlackGif. e cell newCell addText: 'arrowSmallBlackGif'. e cell newRow.
	e cell cell addGif: #arrowTriangleRedGif. e cell newCell addText: 'arrowTriangleRedGif'. e cell newRow.
	e cell cell addGif: #arrowTriangleYellowGif. e cell newCell addText: 'arrowTriangleYellowGif'. e cell newRow.
	e cell cell addGif: #arrowCircledRedGif. e cell newCell addText: 'arrowCircledRedGif'. e cell newRow.
	e cell cell addGif: #arrowCircledGreyGif. e cell newCell addText: 'arrowCircledGreyGif'. e cell newRow.
	e newRow.

	e cell cell addPDFLinkTo: 'http://wiki.eranova.si/e-logis/DOWNLOAD/EAN-standards-roadmap.pdf'.
	e cell newCell addText: 'addPDFLinkTo: '.
	self style pageFrameWith: e title: 'Gallery of embedded images'!

viewJavascript
	| e |
	e := WebElement new.
	e cell addTextH1: 'Simple Javascript examples'. e newRow. e newRow.
	e cell add: self jsShowAlertExample. e newRow.
	e cell add: self jsShowHideToggleExample. e newRow.
	e cell add: self jsShowWithMouseOverExample. e newRow. 
	self style pageFrameWith: e title: 'Javascript examples'!

viewLightbox
	| e l |
	e := WebElement new.
	e cell addTextH1: 'Lightbox  example'. e newRow. e newRow.
	20 timesRepeat: [e cell addNbSp. e newRow].  "why exactly?"

	l := WebLightbox newFor: (WebText text: 'Hello World').
	e add: l. 
	self style pageFrameWith: e title: 'Lightbox example'!

viewLiveImage
	| e |
	self liveImage isNil ifTrue: [self liveImage: WebGraph new].  "subclass WebLiveImage"
	e := WebElement new.
	e addTextH1: 'Live image example'. e addBreak.
	e addImage: self liveImage.
	self style pageFrameWith: e title: 'Live image example'!

viewMain
	| e |

	e := WebElement new.
	e addTextH1: 'Introduction'. e addBreak.
	e add: self introductionElement.
	self style pageFrameWith: e title: 'Aida/Web - Introduction'!

viewRichEditor
	| e |
	e := WebElement new.
	e addTextH1: 'JavaScript HTML WYSIWYG Editor example'.	 e addBreak.
	e addRichEditorAspect: #content for: self observee size: 50@10. e addBreak.
	e addButtonText: 'Save'. e addBreak.
	e addTextH2: 'Result: '. e addBreak.
	e addText: self observee content.
	self style pageFrameWith: e title: 'Rich Editor example'!

viewTabs
	| e |
	e := WebElement new.
	e add: (WebTabs new
		addLinkTo: self observee text: 'first'; 
		addText: 'second' attributes: #bold; selected: 2;
		addLinkTo: self observee text: 'third'; 
		addLinkTo: self observee text: 'forth').
	e addParagraph; addNbSp.
	e add: ((WebTabs newClass: #tabs2)
		addLinkTo: self observee text: 'first'; 
		addText: 'second' attributes: #bold; selected: 2;
		addLinkTo: self observee text: 'third'; 
		addLinkTo: self observee text: 'forth').
"
	e addParagraph; addNbSp.
	e add: ((WebTabs newClass: #tabs3)
		addLinkTo: self observee text: 'first'; 
		addText: 'second' attributes: #bold; selected: 2;
		addLinkTo: self observee text: 'third'; 
		addLinkTo: self observee text: 'forth').
	e addParagraph; addNbSp.
	e add: ((WebTabs newClass: #tabs4)
		addLinkTo: self observee text: 'first'; 
		addText: 'second' attributes: #bold; selected: 2;
		addLinkTo: self observee text: 'third'; 
		addLinkTo: self observee text: 'forth').
	e addParagraph; addNbSp.
"
	e add: ((WebTabs newClass: #tabs5)
		addLinkTo: self observee text: 'first'; 
		addText: 'second' attributes: #bold; selected: 2;
		addLinkTo: self observee text: 'third'; 
		addLinkTo: self observee text: 'forth').
	self style pageFrameWith: e title: 'Tabs example'!

viewWebdav
	| e link |
	"link := '/', self webdavExampleFilename."
	link := self site uriPattern first currentUrl, '/', self webdavExampleFilename.
	self addWebDAVVBScript. "IE only!!"
	link := 'javascript:OpenDoc(''', link, ''')'. "for IE browser only!!"
	e := WebElement new. self title: 'WebDAV publishing example'.
	e cell addTextH2: self title. e newRow. e cell addNbSp. e newRow.
	e cell addText: '1. Upload  MS Word document: '.
	e cell add: (WebFileInputField aspect: #file filenameAspect: #filename 
		contentTypeAspect: #fileContentType forObject: self observee). 
	e cell addSpace; addButtonText: 'Upload'. e newRow.
	e cell addText: '2. Now open document from: '. e cell addLinkTo: link text: 'here'. e newRow.
	e cell addText: '3. Save document'. e newRow.
	e cell addText: '4. Repeat from 2 to see if changes got saved'. e newRow.
	self style pageFrameWith: e title: self title.!

webdavExampleFilename
	^'aida-webdav-example.doc'.! !
!WebDemoApp categoriesFor: #actionAjaxSomething!actions!public! !
!WebDemoApp categoriesFor: #actionControlFlow!actions-control flow!public! !
!WebDemoApp categoriesFor: #actionControlFlowDelete!actions-control flow!public! !
!WebDemoApp categoriesFor: #actionControlFlowReset!actions-control flow!public! !
!WebDemoApp categoriesFor: #actionEditMembers!actions!public! !
!WebDemoApp categoriesFor: #actionEditMembersSave!actions!public! !
!WebDemoApp categoriesFor: #actionFileUpload!actions!public! !
!WebDemoApp categoriesFor: #actionGridSelected!actions!public! !
!WebDemoApp categoriesFor: #actionGridSelectedEditMembers!actions!public! !
!WebDemoApp categoriesFor: #actionrichEditor!actions!public! !
!WebDemoApp categoriesFor: #actionWebdav!actions!public! !
!WebDemoApp categoriesFor: #addWebDAVVBScript!public!views! !
!WebDemoApp categoriesFor: #ajaxAutocompleteExample!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxAutocompleteResult!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxDelayedFieldElement!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxInPlaceEditorExample!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxLiveAndDelayedFieldExample!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxLiveFieldElement!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxPeriodicUpdaterExample!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxPopupDialogExample!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxPopupWindowExample!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxPopupWindowLive!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxPopupWindowLive2!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxSubmitExample!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxTimeElement!public!views-ajax! !
!WebDemoApp categoriesFor: #ajaxUpdateTimeExample!public!views-ajax! !
!WebDemoApp categoriesFor: #classesEditElement!public!views-grid! !
!WebDemoApp categoriesFor: #classesSelectedElement!public!views-grid! !
!WebDemoApp categoriesFor: #classesTableElement!public!views-grid! !
!WebDemoApp categoriesFor: #fileContentType!accessing!public! !
!WebDemoApp categoriesFor: #fileContentType:!accessing!public! !
!WebDemoApp categoriesFor: #filename!accessing!public! !
!WebDemoApp categoriesFor: #filename:!accessing!public! !
!WebDemoApp categoriesFor: #fileStream!accessing!public! !
!WebDemoApp categoriesFor: #fileStream:!accessing!public! !
!WebDemoApp categoriesFor: #flowConfirmDeleteExample!public!views-control flow! !
!WebDemoApp categoriesFor: #gridTabsElement!public!views-grid! !
!WebDemoApp categoriesFor: #introductionElement!public!views! !
!WebDemoApp categoriesFor: #jsShowAlertExample!public!views-javascript! !
!WebDemoApp categoriesFor: #jsShowHideToggleExample!public!views-javascript! !
!WebDemoApp categoriesFor: #jsShowWithMouseOverExample!public!views-javascript! !
!WebDemoApp categoriesFor: #liveImage!accessing!public! !
!WebDemoApp categoriesFor: #liveImage:!accessing!public! !
!WebDemoApp categoriesFor: #monthsStarting:!public!views-ajax! !
!WebDemoApp categoriesFor: #selectedClasses!accessing!public! !
!WebDemoApp categoriesFor: #selectedClasses:!accessing!public! !
!WebDemoApp categoriesFor: #setStartStamp!accessing!public! !
!WebDemoApp categoriesFor: #startStamp!accessing!public! !
!WebDemoApp categoriesFor: #uploadReportAndResetElement!public!views-upload! !
!WebDemoApp categoriesFor: #viewAjax!public!views! !
!WebDemoApp categoriesFor: #viewCalendar!public!views! !
!WebDemoApp categoriesFor: #viewControlFlow!public!views! !
!WebDemoApp categoriesFor: #viewEditMembers!public!views-grid! !
!WebDemoApp categoriesFor: #viewFileUpload!public!views-upload! !
!WebDemoApp categoriesFor: #viewGrid!public!views-grid! !
!WebDemoApp categoriesFor: #viewGridSelected!public!views-grid! !
!WebDemoApp categoriesFor: #viewImageGallery!public!views! !
!WebDemoApp categoriesFor: #viewJavascript!public!views-javascript! !
!WebDemoApp categoriesFor: #viewLightbox!public!views-components! !
!WebDemoApp categoriesFor: #viewLiveImage!public!views! !
!WebDemoApp categoriesFor: #viewMain!public!views! !
!WebDemoApp categoriesFor: #viewRichEditor!public!views! !
!WebDemoApp categoriesFor: #viewTabs!public!views! !
!WebDemoApp categoriesFor: #viewWebdav!public!views! !
!WebDemoApp categoriesFor: #webdavExampleFilename!accessing!public! !

!WebDemoApp class methodsFor!

enViewCalendar
	^#(
	('Date input with Javascript Calendar example'->'Date input with Javascript Calendar example')
	)!

esViewCalendar
	^#(
	('Date input with Javascript Calendar example'->'Ejemplo de entrada de fecha con un calendario javascript')
	)!

frViewCalendar
	^#(
	('Date input with Javascript Calendar example'->'Exemple d''entrée de date avec un calendrier javascript')
	)!

slViewCalendar
	^#(
	('Date input with Javascript Calendar example'->'Primer vnosa datuma s koledarjem')
	)! !
!WebDemoApp class categoriesFor: #enViewCalendar!public!translations! !
!WebDemoApp class categoriesFor: #esViewCalendar!public!translations! !
!WebDemoApp class categoriesFor: #frViewCalendar!public!translations! !
!WebDemoApp class categoriesFor: #slViewCalendar!public!translations! !

