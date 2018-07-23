"Filed out from Dolphin Smalltalk 7"!

WebApplication subclass: #WebIndexApp
	instanceVariableNames: 'searchString results page'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebIndexApp guid: (GUID fromString: '{2b10cfee-9021-4e4b-93ff-de994e9d6f8c}')!
WebIndexApp comment: ''!
!WebIndexApp categoriesForClass!Unclassified! !
!WebIndexApp methodsFor!

abstractTextSize

	^400!

actionMain
	"search default web index for objects containing words from searchString, store results
   	in attribute results and st the next view as 'results' in order to print result web page"
	self results: (self observee objectsForWords: self searchString).
	self page: 1.
	self newView: #results!

actionResults
	self actionMain!

chopText: aString toSize: aNumber 
	| inStream outStream |
	inStream := aString readStream.
	outStream := WriteStream on: String new.
	1 to: aString size
		do: 
			[:count | 
			inStream atEnd ifTrue: [^outStream contents].
			(count >= aNumber and: [inStream peek = $ ]) 
				ifTrue: [^outStream contents , ' ...'].
			outStream nextPut: inStream next].
	^outStream contents

	"WebIndexApp new chopText: 'hojladri hojladra' toSize: 5"!

initResults
	results := OrderedCollection new.!

miniSearchFormElement
	| form actionLink |
	form := self defaultForm.
	actionLink := (WebLink text: '' linkTo: self observee)  view: 'results'.
	form 
		actionUrl: (actionLink composeURLOn: self session);
		target: 'Vsebina'.
	form 
		addText: '<center>';
		add: (WebInputField new size: 15;
				aspect: #searchString for: self);
		addBreak;
		add: (WebButton new text: '&nbsp;&nbsp;&nbsp;Najdi&nbsp;&nbsp;&nbsp;');
		addText: '</center>'.
	form registrateWebFormElements.
	^form!

page
	"return current result page number to show. Each page shows 10 hits"
	page isNil ifTrue: [self page: 1].
	^page!

page: aNumber

	page := aNumber.!

pageSelectionElement

	| element pages |
	element := WebElement new.
	pages := self results size = 0
		ifTrue: [0]
		ifFalse: [(self results size // self resultsOnPage) + 1].
	pages = 1 ifTrue: [^element].
	element addText: '<font face="helvetica, arial" size="-1">'.
	1 to: pages do: [:index |
		index = self page
			ifTrue: [element addText: index printString attributes: #bold]
			ifFalse: 
				[element add: 
					((WebLink text: index printString linkTo: self observee )
						view: #results;
						parameter: 'page' value: index printString)].
		element addNbSp ].
	element addText: '</font>'.
	^element!

resultNumberElement
	| e start end |
	e := WebElement new.
	(self results size = 0) ifTrue: [e addTextSmall: '<b>0 hits</b>'. ^e].
	(self results size = 1) ifTrue: [e addTextSmall: '<b>1 hit</b>'. ^e].
	start := (self page-1)*self resultsOnPage+1.
	(start+self resultsOnPage > self results size)
		ifTrue: [end := self results size]
		ifFalse: [end := start+self resultsOnPage-1].
	e cell addTextSmall: ('<b>', start printString, ' - ', end printString, ' from ', self results size printString, ' hits</b>').
	^e!

results
	"here the results of a search are stored."
	results isNil ifTrue: [self initResults].
	^results!

results: aCollection
	results := aCollection!

resultsElement
	"return a web element for search results"
	| e abstract objTitle modifiedText modifiedDate first last assoc |
	first := (self page - 1) * self resultsOnPage + 1.
	last := (first + self resultsOnPage - 1) min: self results size.
	e := WebList  newDefinition id: #searchRslts.
	first to: last do: [:index |
		assoc := self results at: index.
		objTitle := (assoc key class canUnderstand: #indexTitle) 
			ifTrue: [assoc key indexTitle] ifFalse: [self chopText: assoc key indexText toSize: 50].
		abstract := (assoc key class canUnderstand: #indexAbstract) 
			ifTrue: [assoc key indexAbstract]
			ifFalse: [self chopText: assoc key indexText "trimNewlines" toSize: self abstractTextSize].
		modifiedText := ''.
		(assoc key class canUnderstand: #modified) ifTrue: 
			[modifiedDate := assoc key modified. modifiedDate notNil ifTrue: 
				[modifiedText := 'changed: <b> ', modifiedDate shortPrintSloString, '</b>,  '] ].
		e addDefinitionTerm: (WebElement new addText: (index printDotString, '.  ');
			addLinkTo: assoc key text: objTitle;
			addLinkTo: self observee gif: #copyIconGif title: 'Copy to web clipboard' 
				view: #copyToClipboard parameter: 'uuid' value: assoc key hash asString; yourself).
		e addDefinition: (WebElement new addText: abstract).
"
		e newCell color: self tableRowColor; addText: 
			('modifiedText, 'visits: <b>', 
			(self site urlResolver counterFor: assoc key) total printDotString, '</b>')
"
		].
	^e!

resultsOnPage
	^10!

resultWithHash: aString
	"find an object in results with that hash value"
	^(self results detect: [:each | each key hash asString = aString] ifNone: [Association new]) key!

searchFormServlet
	"servlet for using in static pages such as frames for search"
	| indexApp |
	self session cookie ifTrue: 
		[indexApp := self site index webAppFor: self session.
		^indexApp miniSearchFormElement]!

searchLinkServlet
	"servlet for using in static pages such as frames for search"
	| element |
	element := WebElement new.
	element add: ((WebLink text: 'Search' linkTo: self site index)).
	^element!

searchString
	searchString isNil ifTrue: [self searchString: ''].
	^searchString!

searchString: aString

	searchString := aString.!

viewCopyToClipboard
	"put this refrence to web clipboard"
	| result |
	result := self resultWithHash: (self session lastRequest queryAt: 'uuid').
	result notNil ifTrue: [(result webAppFor: self session) copyToClipboard].
	^self redirectToView: #results "to have an url without view=paste"!

viewMain
	| e |
	self title: 'Search our web site'.
	e := WebElement new.
      e table width: 480. 
	e cell addText: ('<font face= "arial, helvetica" size=+2><b>', self title). e newRow.
	e cell color: #thistle;
		addTextSmall: 'Find the following words: ';
		add: (WebInputField new size: 30; aspect: #searchString for: self);
		add: (WebButton new text: 'Search').
	^self style pageFrameWith: e title: self title!

viewResults
	| e |
	self page: (self session lastRequest queryAt: 'page' ifAbsent: [self page]) asInteger.
	self title: 'Search results'.
	e := WebElement new.
      e table width: 1. "100%"
	e cell addTextH1: self title. e newRow.
	e cell color: #thistle;
		addInputFieldAspect: #searchString for: self size: 40; addButtonText: 'Search'.
	e newRow. e cell add: self resultNumberElement.
	e newRow. e add: self resultsElement.
	e newRow.
	e cell align: #center; add: self pageSelectionElement.
	^self style pageFrameWith: e title: self title.! !
!WebIndexApp categoriesFor: #abstractTextSize!printing-elements!public! !
!WebIndexApp categoriesFor: #actionMain!actions!public! !
!WebIndexApp categoriesFor: #actionResults!actions!public! !
!WebIndexApp categoriesFor: #chopText:toSize:!printing-elements!public! !
!WebIndexApp categoriesFor: #initResults!initialize-release!public! !
!WebIndexApp categoriesFor: #miniSearchFormElement!printing-elements!public! !
!WebIndexApp categoriesFor: #page!accessing!public! !
!WebIndexApp categoriesFor: #page:!accessing!public! !
!WebIndexApp categoriesFor: #pageSelectionElement!printing-elements!public! !
!WebIndexApp categoriesFor: #resultNumberElement!printing-elements!public! !
!WebIndexApp categoriesFor: #results!accessing!public! !
!WebIndexApp categoriesFor: #results:!accessing!public! !
!WebIndexApp categoriesFor: #resultsElement!printing-elements!public! !
!WebIndexApp categoriesFor: #resultsOnPage!printing-elements!public! !
!WebIndexApp categoriesFor: #resultWithHash:!accessing!public! !
!WebIndexApp categoriesFor: #searchFormServlet!printing-elements!public! !
!WebIndexApp categoriesFor: #searchLinkServlet!printing-elements!public! !
!WebIndexApp categoriesFor: #searchString!accessing!public! !
!WebIndexApp categoriesFor: #searchString:!accessing!public! !
!WebIndexApp categoriesFor: #viewCopyToClipboard!printing!public! !
!WebIndexApp categoriesFor: #viewMain!printing!public! !
!WebIndexApp categoriesFor: #viewResults!printing!public! !

