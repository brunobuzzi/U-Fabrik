"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebElement
	instanceVariableNames: 'parent elements attributes other'
	classVariableNames: 'Colors'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebElement guid: (GUID fromString: '{28299493-4072-4b70-a48a-068a41162ce5}')!
WebElement comment: ''!
!WebElement categoriesForClass!Unclassified! !
!WebElement methodsFor!

acceptDropsTo: aCollectionOfElements
	| script |
	"Scriptaculous specific"
	self registerId.
	self app style ensureJsResourceForScriptaculous.
	self app style ensureJavascriptForScriptaculousInHeader.
	script := '// <!![CDATA[ 
		Sortable.create("', self id asString,'"'.
	(self isKindOf: WebList) ifFalse: [
		self setDiv.
		script := script,  'tag: "div", '].
	script := script, ',{dropOnEmpty: true,constraint: false, containment: ['.
	aCollectionOfElements do: [:each |
		each registerId.
		script := script, each id, ','].
	script := script,']});
	// ]]>'.
	self parent scriptAfter: script!

adaptFormElements
	"in case of AJAX request, otherwise WebForm should do that!! "
	self isFormElement ifTrue: [self adapt].
	self elements do: [:each | each adaptFormElements]!

add: aWebElement
	"Include new element as one of the receiver's elements.  Answer aWebElement.
	If you nest a web page into another web page, then add only elements of it"
	self checkAndInitElements.  "if not composite element, then error"
	"if nested web pages then add elements without header"
	(aWebElement isKindOf: WebApplication) ifTrue: [^nil].
	((aWebElement isKindOf: WebPage) and: [self isKindOf: WebPage])
		ifTrue: [^elements add: aWebElement elements].
	aWebElement parent: self.
	^elements add: aWebElement.!

addAnchorName: aString
	^self add: (WebAnchor name: aString)!

addAspect: aSymbol for: anObject input: aBoolean size: aSizeNumberOrPoint
	"adds an auto converted text of aspect for that object. If imput argument is true, then add 
	an input field or text area, depending in size (eg. size: 5 or size: 5@5)"
	aBoolean
		ifFalse: 
			[^self addText: (WebFormElement autoConvertToString: (anObject perform: aSymbol))]
		ifTrue:
			[(aSizeNumberOrPoint isKindOf: Number) 	ifTrue: 
				[^self add: (WebInputField new
							size: aSizeNumberOrPoint;
							aspect: aSymbol for: anObject)].
			(aSizeNumberOrPoint isKindOf: Point) ifTrue: 
				[^self add: (WebTextArea new
							size: aSizeNumberOrPoint;
							aspect: aSymbol for: anObject)] 
			].!

addBreak
	^self add: (WebSeparator break).!

addButtonGif: anImageSymbol
	"add a button as an image"
	^self add: (WebButton image: (WebImage gif: anImageSymbol))!

addButtonGif: anImageSymbol action: aSymbol
	"add a button as an image"
	^self add: (WebButton image: (WebImage gif: anImageSymbol) action: aSymbol)!

addButtonJpeg: anImageSymbol
	"add a button as an image"
	^self add: (WebButton image: (WebImage jpeg: anImageSymbol))!

addButtonJpeg: anImageSymbol action: aSymbol
	"add a button as an image"
	^self add: (WebButton image: (WebImage jpeg: anImageSymbol) action: aSymbol)!

addButtonPng: anImageSymbol
	"add a button as an image"
	^self add: (WebButton image: (WebImage jpeg: anImageSymbol))!

addButtonPng: anImageSymbol action: aSymbol
	"add a button as an image"
	^self add: (WebButton image: (WebImage png: anImageSymbol) action: aSymbol)!

addButtonText: aString
	^self add: (WebButton text: aString)!

addButtonText: aString action: aSymbol
	"for more than one buttons. Action method is a composed name from 'action', aView, Symbol.
	example: for view #main, action #addFolder is action method #actionMainAddFolder"
	^self add: (WebButton text: aString action: aSymbol)!

addCheckboxAspect: aSymbol for: anObject
	"aspect method will be called and true/false will be set/clear on an object"
	^self add: (WebCheckBox aspect:  aSymbol for: anObject)!

addCheckboxObject: anObject from: aCollection
	"if checked, this object will be put in collection. If object is initially in collection, 
	checkbox will be checked. Usefull for easy selection among many objects"
	^self add: (WebCheckBox newForObject: anObject from: aCollection)!

addCloseWindowText: aString
	"a link to that popup window properly (it also closes by Ajax its execution context!!)"
	(self addNilLinkText: aString)
		onClick: 'closeLightboxLevel(', self context level printString,')'; "from WebStyle>>lightboxJs"
		onClickUpdate: nil with: nil additional: 'aidaCloseWindow' contentFrom: nil!

addComment: aString
	^self add: (WebComment text: aString).!

addDateInputFieldAspect: aSymbol for: anObject
	"with popup calendar"
	^self add: (WebDateInputField new aspect:  aSymbol for: anObject)!

addDelayedFieldAspect: aSymbol for: anObject
	"for Ajax instant posting, posting is done with a delay. Usefull for live-search fields"
	^self add: (WebDelayedField new aspect:  aSymbol for: anObject)!

addDelayedFieldAspect: aSymbol for: anObject size: aNumber
	"for Ajax instant posting, posting is done with a delay. Usefull for live-search fields"
	^self add: ((WebDelayedField new aspect:  aSymbol for: anObject) size: aNumber)!

addErrorReport
	^self add: self app errorReport!

addGif: aSymbol
	"this method will be called in your webStyle and this method 
	should return a gif in byte array format"
	^self add: (WebImage gif: aSymbol)!

addGif: aSymbol size: aPoint
	"this method will be called in your webStyle and this method 
	should return a gif in byte array format"
	^self add: (WebImage gif: aSymbol size: aPoint)!

addHelpLink
	"link to help page for current view and App. If not exist, then nothing, exept for 
	admin - link to creation of new help page"
	^self add: self helpLink!

addImage: anImageOrURL
	^self add: (WebImage image: anImageOrURL)!

addImage: anImageOrURL imageMap: aWebImageMap
	^self add: 
		((WebImage image: anImageOrURL)
			imageMap: aWebImageMap)!

addImage: anImageOrURL size: aPoint
	^self add: (WebImage image: anImageOrURL size: aPoint)!

addImage: anImageOrURL size: aPoint align: aSymbol
	^self add: ((WebImage image: anImageOrURL size: aPoint) align: aSymbol)!

addImage: anImageOrURL size: aPoint valign: aSymbol
	^self add: ((WebImage image: anImageOrURL size: aPoint) valign: aSymbol)!

addInPlaceEditableTextAspect: aSymbol for: anObject
	^self add: (WebInPlaceEditableText aspect:  aSymbol for: anObject)!

addInPlaceEditableTextAspect: aSymbol for: anObject size: aNumberOrPoint
	^self add: (WebInPlaceEditableText aspect:  aSymbol for: anObject size: aNumberOrPoint)!

addInPlaceEditableTextAspect: aSymbol for: anObject size: aNumberOrPoint allow: aBoolean
	^self add: 
		(WebInPlaceEditableText aspect:  aSymbol for: anObject size: aNumberOrPoint allow: aBoolean)!

addInputFieldAspect: aSymbol for: anObject
	^self add: (WebInputField new aspect:  aSymbol for: anObject)!

addInputFieldAspect: aSymbol for: anObject size: aNumber
	^self add: ((WebInputField new aspect:  aSymbol for: anObject) size: aNumber)!

addJpeg: aSymbol
	"this method will be called in your webStyle and this method 
	should return a gif in byte array format"
	^self add: (WebImage jpeg: aSymbol)!

addJpeg: aSymbol size: aPoint
	"this method will be called in your webStyle and this method 
	should return a gif in byte array format"
	^self add: (WebImage jpeg: aSymbol size: aPoint)!

addLinkTo: anObject gif: aGifSymbol title: aString
	^self add: ((WebLink linkTo: anObject) title: aString; addGif: aGifSymbol; yourself)!

addLinkTo: anObject gif: aGifSymbol title: aString size: aPoint
	^self add: ((WebLink linkTo: anObject) title: aString; addGif: aGifSymbol size: aPoint; yourself)!

addLinkTo: anObject gif: aGifSymbol title: aString view: aViewSymbol
	^self add: (((WebLink linkTo: anObject) title: aString; view: aViewSymbol) 
		addGif: aGifSymbol; yourself)!

addLinkTo: anObject gif: aGifSymbol title: aString view: aViewSymbol
	 parameter: aParmString value: aValueString

	^self add: (((WebLink linkTo: anObject) 
		title: aString; view: aViewSymbol;
		parameter: aParmString value: aValueString) 
			addGif: aGifSymbol; yourself)!

addLinkTo: anObject image: anImageOrURL
	^self add: ((WebLink linkTo: anObject) addImage: anImageOrURL; yourself)!

addLinkTo: anObject image: anImageOrURL parameter: aParmString value: aValueString
	^self add: (((WebLink linkTo: anObject)
		parameter: aParmString value: aValueString) addImage: anImageOrURL; yourself)!

addLinkTo: anObject image: anImageOrURL size: aPoint
	^self add: ((WebLink linkTo: anObject) addImage: anImageOrURL size: aPoint; yourself)!

addLinkTo: anObject image: anImageOrURL view: aViewSymbol
	^self add: (((WebLink linkTo: anObject) view: aViewSymbol) 
		addImage: anImageOrURL; yourself)!

addLinkTo: anObject jpeg: aSymbol title: aString
	^self add: ((WebLink linkTo: anObject) title: aString; addJpeg: aSymbol; yourself)!

addLinkTo: anObject jpeg: aSymbol title: aString view: aViewSymbol
	^self add: (((WebLink linkTo: anObject) title: aString; view: aViewSymbol) 
		addJpeg: aSymbol; yourself)!

addLinkTo: anObject message: aSymbol
	^self add: (WebLink message: aSymbol  linkTo: anObject)!

addLinkTo: anObject png: aPngSymbol title: aString
	^self add: ((WebLink linkTo: anObject) title: aString; addPng: aPngSymbol; yourself)!

addLinkTo: anObject png: aPngSymbol title: aString view: aViewSymbol
	^self add: (((WebLink linkTo: anObject) title: aString; view: aViewSymbol) 
		addPng: aPngSymbol; yourself)!

addLinkTo: anObject png: aPngSymbol title: aString view: aViewSymbol
	 parameter: aParmString value: aValueString

	^self add: (((WebLink linkTo: anObject) 
		title: aString; view: aViewSymbol;
		parameter: aParmString value: aValueString) 
			addPng: aPngSymbol; yourself)!

addLinkTo: anObject text: aString
	^self add: (WebLink text: aString  linkTo: anObject)!

addLinkTo: anObject text: aString attributes: anArray
	^self add: (WebLink text: aString  attributes: anArray linkTo: anObject)!

addLinkTo: anObject text: aString header: aNumber
	^self add: (WebLink text: aString  header: aNumber linkTo: anObject)!

addLinkTo: anObject text: aString parameter: aParmString value: aValueString
	^self add: (WebLink text: aString  linkTo: anObject 
		parameter: aParmString value: aValueString)!

addLinkTo: anObject text: aString 
	parameter: a1ParmString value: a1ValueString
	parameter: a2ParmString value: a2ValueString

	^self add: (WebLink text: aString  linkTo: anObject 
		parameter: a1ParmString value: a1ValueString
		parameter: a2ParmString value: a2ValueString)!

addLinkTo: anObject text: aString view: aViewString
	^self add: ((WebLink text: aString  linkTo: anObject)
		view: aViewString; yourself)!

addLinkTo: anObject text: aString view: aViewString  parameter: aParmString value: aValueString
	^self add: ((WebLink text: aString  linkTo: anObject)
		view: aViewString;
		parameter: aParmString value: aValueString; yourself)!

addLinkTo: anObject text: aString view: aViewString  
		parameter: aParm1String value: aValue1String 
		parameter: aParm2String value: aValue2String

	^self add: ((WebLink text: aString  linkTo: anObject)
		view: aViewString;
		parameter: aParm1String value: aValue1String;
		parameter: aParm2String value: aValue2String; yourself)!

addLiveImage: aWebLiveImage
	^self add: 
		((WebImage image: aWebLiveImage)
			size: (aWebLiveImage width)@(aWebLiveImage height))!

addLiveImage: aWebLiveImage imageMap: aWebImageMap
	^self add: 
		((WebImage image: aWebLiveImage)
			size: (aWebLiveImage width)@(aWebLiveImage height);
			imageMap: aWebImageMap)!

addMenuAspect: aSymbol collection: aCollection selected: aSelectedCollection
	"Multiple selection menu.. Aspect of every element in aColection will be shown in menu. 
	Selection will be put in aSelectedCollection. Here also an initial selection can be set"
	^self add: (WebMenu aspect: aSymbol collection: aCollection selected: aSelectedCollection)!

addMenuAspect: aSymbol collection: aCollection selectedToAspect: aSymbol2 of: anObject
	"Single selection menu.. Aspect of every element in aColection will be shown in menu. 
	Single selection will be put in an seelcted aspect of object. Here also initial selection can be set"
	^self add: 
		(WebMenu aspect: aSymbol collection: aCollection selectedToAspect: aSymbol2 of: anObject)!

addMenuCollection: aCollection selected: aSelectedCollection
	"Multiple selection menu..Every element (text!!) in aColection will be shown in menu. 
	Selection will be put 	in aSelectedCollection. Here also an initial selection can be set"
	^self add: (WebMenu collection: aCollection selected: aSelectedCollection)!

addMenuCollection: aCollection selectedToAspect: aSymbol2 of: anObject
	"Single selection menu. Every element (text!!) in aColection will be shown in menu. 
	Single selection will be put in an seelcted aspect of object. Here also initial selection can be set"
	^self add: (WebMenu collection: aCollection selectedToAspect: aSymbol2 of: anObject)!

addMethodImage: aWebMethodImage
	^self add: 
		(WebImage image: aWebMethodImage)!

addMethodImage: aWebMethodImage size: aPoint
	^self add: 
		((WebImage image: aWebMethodImage) size: aPoint)!

addNbSp
	^self addText: '&nbsp;'.!

addNbSp: aNumber
	aNumber timesRepeat: [self addNbSp].!

addNilLinkText: aString
	^self addLinkTo: 'javascript:nic()' text: aString!

addPageBreak
	"for printing to printer, to break into a new page!!"
	^self addBreak
		class: #printOnly;
		style: 'page-break-after: always';
		yourself.!

addParagraph
	^self add: (WebSeparator paragraph).!

addPasswordFieldAspect: aSymbol for: anObject
	^self add: (WebInputField new type: #password; aspect:  aSymbol for: anObject)!

addPasswordFieldAspect: aSymbol for: anObject size: aNumber
	^self add: ((WebInputField new type: #password; aspect:  aSymbol for: anObject) size: aNumber)!

addPDFLinkTo: anObject
	^self add: ((WebLink linkTo: anObject) addGif: #pdfBigGif)!

addPng: aSymbol
	"this method will be called in your webStyle and this method 
	should return a png in byte array format"
	^self add: (WebImage png: aSymbol)!

addPng: aSymbol size: aPoint
	"this method will be called in your webStyle and this method 
	should return a png in byte array format"
	^self add: (WebImage png: aSymbol size: aPoint)!

addRedStar
	"red * for mandatory fields in a form"
	^self addText: '<sup>*</sup>'!

addRichEditorAspect: aSymbol for: anObject
	"JavaScript HTML WYSIWYG editor instead of textarea"
	^self add: (WebRichEditor new aspect:  aSymbol for: anObject)!

addRichEditorAspect: aSymbol for: anObject size: aPoint
	"JavaScript HTML WYSIWYG editor instead of textarea"
	^self add: ((WebRichEditor new aspect:  aSymbol for: anObject) size: aPoint)!

addRulerSize: aNumber
	^self add: (WebSeparator rulerSize: aNumber).!

addSecureLinkTo: anObject text: aString
	^self add: ((WebLink text: aString  linkTo: anObject) security: #grayed)!

addSecureLinkTo: anObject 
	text: aString parameter: aParmString value: aValueString

	^self add: ((WebLink text: aString  linkTo: anObject 
		parameter: aParmString value: aValueString) security: #grayed)!

addSecureLinkTo: anObject text: aString view: aViewString
	^self add: ((WebLink text: aString  linkTo: anObject 
		view: aViewString) security: #grayed)!

addSpace
	"just a simple space, nothing more"
	^self addText: ' '!

addStubFor: anElementMethodSymbol
	"add an empty stub element to be Ajax replaced with result element of method #anElementMethodSymbol"
	self add: (WebStubElement newFor: anElementMethodSymbol)!

addText: aString
	^self add: (WebText text: aString)!

addText: aString attributes:  aSymbolArray
	^self add: ((WebText text: aString) textAttributes: aSymbolArray)!

addText: aString attributes:  aSymbolArray color: aColorSymbol
	^self add: ((WebText text: aString) attributes: aSymbolArray; color: aColorSymbol)!

addText: aString attributes:  aSymbolArray font: aFontString
	^self add: ((WebText text: aString) attributes: aSymbolArray; font: aFontString)!

addText: aString attributes:  aSymbolArray font: aFontString color: aColorSymbol
	^self add: ((WebText text: aString) 
		textAttributes: aSymbolArray; font: aFontString; color: aColorSymbol)!

addText: aString  color: aColorSymbol
	^self add: ((WebText text: aString)  color: aColorSymbol)!

addText: aString font: aFontString
	^self add: ((WebText text: aString) font: aFontString)!

addText: aString  font: aFontString color: aColorSymbol
	^self add: ((WebText text: aString)  font: aFontString; color: aColorSymbol)!

addText: aString header: aNumber
	^self add: ((WebText text: aString) header: aNumber)!

addText: aString header: aNumber color:  aColorSymbol
	^self add: ((WebText text: aString) header: aNumber; color:  aColorSymbol)!

addText: aString header: aNumber font: aFontString
	^self add: ((WebText text: aString) header: aNumber; font: aFontString)!

addText: aString header: aNumber font: aFontString color: aColorSymbol
	^self add: ((WebText text: aString) 
		header: aNumber; font: aFontString; color: aColorSymbol)!

addText: aString style: aStyleString
	^self add: ((WebText text: aString) style: aStyleString)!

addTextAreaAspect: aSymbol for: anObject
	^self add: (WebTextArea new aspect:  aSymbol for: anObject)!

addTextAreaAspect: aSymbol for: anObject size: aPoint
	^self add: ((WebTextArea new aspect:  aSymbol for: anObject) size: aPoint)!

addTextAspect: aSymbol for: anObject
	"depening on portlet mode (#view or #edit) return only text or make an input field"
	^self app inEditMode
		ifTrue: [self addInputFieldAspect: aSymbol for: anObject]
		ifFalse: [self addText: (anObject perform: aSymbol)]!

addTextAspect: aSymbol for: anObject attributes: aSymbolOrArray
	"depening on portlet mode (#view or #edit) return only text or make an input field"
	^self app inEditMode
		ifTrue: [self addInputFieldAspect: aSymbol for: anObject]
		ifFalse: [self addText: (anObject perform: aSymbol) attributes: aSymbolOrArray]!

addTextBig: aString
	^self addText: '<big>', aString, '</big>'!

addTextBold: aString
	^self addText: aString attributes: #bold!

addTextBoldAspect: aSymbol for: anObject
	"depening on portlet mode (#view or #edit) return only text or make an input field"
	^self addTextAspect: aSymbol for: anObject attributes: #bold!

addTextCode: aString
	^self addText: '<code>', aString, '</code>'.!

addTextH1: aString
	^self addText: aString header: 1!

addTextH2: aString
	^self addText: aString header: 2!

addTextH3: aString
	^self addText: aString header: 3!

addTextH4: aString
	^self addText: aString header: 4!

addTextH5: aString
	^self addText: aString header: 5!

addTextItalic: aString
	^self addText: aString attributes: #italic!

addTextPreformated: aString
	^self addText: '<pre>', aString, '</pre>'.!

addTextSmall: aString
	aString isNil ifTrue: [^self].
	^self addText: '<small>', aString, '</small>'!

ajaxCallUrl
	"relative url of an app observee object. This url is used for AJAX calls back to the server"
	| app object |

	app := self app.
	object := app observee isVersionedObject 
		ifTrue: [app observee currentVersion] ifFalse: [app observee].
	^AIDASite 
		convert: ( app site urlResolver halfUrlFor: object) 
		toCodepage: #utf8!

ajaxCallUrlExtended
	"relative url of an app observee object. This url is used for AJAX calls back to the server"
	"also includes 'ajaxRequest' in query part, to distinguish ajax request from others"
	"Prototype specific"
	| viewParm versionParm |
	viewParm := 'view=', self form view asString.
	versionParm := ''.
	self app observee isVersionedObject ifTrue:
		[self app observee isCurrentVersion ifFalse: 
			[versionParm := 'version=' self app observee versionNumber, '&'] ].
	^self ajaxCallUrl, '?', viewParm, '&', versionParm, 'ajaxRequest'!

ajaxCallUrlParametersFor: anElementOrId
	"ajax url must have 'ajaxRequest' parm in query part!! Deal also with versioned objects"
	"Prototype specific"
	| idSymbol ajaxForm viewParm versionParm contextParm |
	idSymbol := anElementOrId isSymbol 
		ifTrue: [ajaxForm := self form. anElementOrId] 
		ifFalse: [anElementOrId isNil
			ifTrue: [ajaxForm := self context form. #nil] 
			ifFalse: [ajaxForm := anElementOrId form. 
				anElementOrId registerId. anElementOrId id] ].
	viewParm := 'view=', ajaxForm view asString.
	versionParm := ''.
	self app observee isVersionedObject ifTrue:
		[self app observee isCurrentVersion 
			ifFalse: [versionParm := 'version=', self app observee versionNumber] ].
	contextParm := WebContext contextIdName "aidaCtx", '=', ajaxForm app context id printString.
	^viewParm, '&', 
		versionParm, 
		'&ajaxRequest&ajaxGetElementId=', idSymbol asString,
		'&', contextParm!

align: aSymbol
	"element alignment #left #center #right"
	self attributesAt: #align put: aSymbol asString!

allElements
	"get a collection of all subelements of elements down in a hierarcy of this element"
	| collection |
	collection := OrderedCollection new.
	self elements notNil ifTrue:
		[collection addAll: self elements.
		self elements do: [:each | collection addAll: each allElements] ].
	^collection

"
| el |
el := WebElement new.
el add: (WebLink image: nil  linkTo: nil).
el add: (WebText text: 'aaa').
el allElements.
"!

app
	"return anApplication on which we are composing a web page"
	| object |
	self parent isNil ifTrue: 
		[object := self firstAppFromStack.
		^object isNil ifTrue: [nil] ifFalse: [object ] ].
	^parent app!

attributes
	^attributes!

attributesAt: aSymbol
	self attributes isNil ifTrue: [^nil].
	^self attributes at: aSymbol ifAbsent: [nil]!

attributesAt: aSymbol add: aString
	"some attributes can have more than one value (like javascript for events)"
	| coll |
	self attributes isNil ifTrue: [self initAttributes].
	coll := self attributes at: aSymbol ifAbsentPut: [OrderedCollection new].
	(coll isKindOf: OrderedCollection) ifFalse:
		[coll := (self attributes at: aSymbol put: 
			(OrderedCollection new add: (self attributes at: aSymbol); yourself)) ].
	coll add: aString!

attributesAt: aSymbol put: aString
	self attributes isNil ifTrue: [self initAttributes].
	self attributes at: aSymbol put: aString!

beDraggable
	self beDraggableAndRevert: false!

beDraggableAndRevert: aBoolean
	"Scriptaculous specific"
	self registerId.
	self app style ensureJsResourceForScriptaculous.
	self app style ensureJavascriptForScriptaculousInHeader.
	self scriptAfter: '// <!![CDATA[ 
	new Draggable("', self id asString,'",{revert:', aBoolean asString, '});
	// ]]> 
	'!

beSortable
	"Scriptaculous specific"
	| script |
	self registerId.
	self app style ensureJsResourceForScriptaculous.
	self app style ensureJavascriptForScriptaculousInHeader.
	script := '// <!![CDATA[ 
		Sortable.create("', self id asString,'",{'.
	(self isKindOf: WebList) ifFalse: [
		self setDiv.
		script := script,  'tag: "div", '].
	script := script, 'dropOnEmpty: true, constraint: false});
		// ]]>'.
	self scriptAfter: script!

cell
	"return a current table cell"
	self initTableIfNessesary.
	^self otherAt: #currentCell!

cell: aWebTableCell
	self initTableIfNessesary.
	self otherAt: #currentCell put: aWebTableCell.!

changeContextFrom: oldCtx to: newCtx
	"scan for all references to contexts and change them. Also in subelements"
	self changeContextInAttributesFrom: oldCtx to: newCtx.
	self elements do: [:each | each changeContextFrom: oldCtx to: newCtx]!

changeContextInAttribute: aString from: oldCtx to: newCtx
	| in out aidaCtx |
	aidaCtx := WebContext contextIdName.
	(('*', aidaCtx, '*') match: aString) ifFalse: [^nil].
	in := aString readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse: 
		[out nextPutAll: (in upToAll: aidaCtx). 
		in atEnd not ifTrue: 
			[in next "=". in upTo: $&.               "& not always? "
			out nextPutAll: aidaCtx, '=', newCtx id printString, '&' ] ].   
	^out contents!

changeContextInAttributesFrom: oldCtx to: newCtx
	"scan for all references to contexts and change them"
	| attrToChange |
	self attributes isNil ifTrue: [^nil].
	attrToChange := #( #onClick #onDblClick #onKeyDown #onKeyPress #onKeyUp 
		#onMouseDown #onMouseMove #onMouseOut #onMouseOver #onMouseUp 
		#onSelect #onFocus #onChange #onSubmit #onReset).
	(self attributes associations select: [:each | attrToChange includes: each key]) do: [:assoc |
		assoc value class = OrderedCollection
			ifTrue: [self attributesAt: assoc key put: 
					(assoc value collect: [:each | self changeContextInAttribute: each from: oldCtx to: newCtx]) ]
			ifFalse: [self attributesAt: assoc key put: (self changeContextInAttribute: assoc value from: oldCtx to: newCtx)] ].!

checkAndInitElements
	"lazy initialization od elements, when needed. Only for composite elements, else error"
	self isComposite 
		ifTrue:[(elements = nil) ifTrue: [elements := OrderedCollection new.       ]]
		ifFalse: [Smalltalk error: 'This is not a composite WebElement'].!

class: aSymbol
	"style class of that element. Used for Cascaded Style Sheets"
	self attributesAt: #class put: aSymbol!

clear
	"remove all subelements including tables"
	self initElements.
	self clearTableInfo.
	self initScripts.!

clearTableInfo
	"clear all table information"
	self initTable!

colorValue: aColorSymbol
	"Hex number format is: #rrbbgg if not in that format, then it can be a color name as defined in 
	class variable Colors (class method initColorDictionary). If unknown color, then attribute is set to nil"
	| attribute |
	attribute := aColorSymbol asString asLowercase asSymbol.
	attribute := WebElement colorDictionary at: attribute ifAbsent:
		[attribute asString do: [:chr | 
			(chr isDigit or: [chr asInteger between: $a asInteger and: $f asInteger]) ifFalse: [^self] ] ].
	^'#', (attribute asString copyWithout: $# )

"WebElement new colorValue: #red"!

context
	"return a web execution context on which we are composing a web page"
	^self parent notNil 
		ifTrue: [self parent context] "web window/page knows the best"
		ifFalse: [self firstContextFromStack] "slow!! "!

creationMethod
	"in which method this element was created. see also method"
	^self method notNil
		ifTrue: [self method]
		ifFalse: [self parent method]!

div
	^self otherAt: #divElement ifAbsent: [false]!

div: aBoolean
	"if an element is DIV tag"
	self otherAt: #divElement put: aBoolean!

elements
	elements isNil ifTrue: [self initElements].
	^elements!

eol
	self setNewline.
	^String with: Character cr with: Character lf.!

first
	"Answer the first element.  If the receiver is empty, provide an error 
	notification."

	self checkAndInitElements.  "if not composite element, then error"
	^elements first!

form
	"aWebForm on which that element was created. Used for form element model adapting. 
	Usually a context window form for view, on which this element was created.
	Use it in conjunction with #method for Ajax"
	^self otherAt: #form ifAbsent: 
		[self parent notNil 
			ifTrue: [self parent form]
			ifFalse: [nil]  ] "maybe app form?"!

form: aSymbol
	"form on which that element was created. Used for form element model adapting"
	"Usually a context window form for view, on which this element was created."
	self otherAt: #form put: aSymbol!

helpLink
	^self app helpLink!

hide
	"hide me from web page"
	self registerId.
	self addText: '<script>Element.hide(''', self id, ''')</script>'!

id
	^self attributesAt: #id!

id: aSymbol
	"set a unique id of that element on a page. Used in javascript, urls, style sheets"
	| ctx |
	ctx := self context.
	self id notNil ifTrue: "unregister old id"
		[(ctx isRegistered: self) ifTrue: [ctx removeId: self id]].
	self attributesAt: #id put: aSymbol asSymbol.
	ctx registerIdFor: self.!

ident
	"ident this tag to its level"
	| depth eol|
	eol := ''.
	self shouldIdent & self isNewline not ifTrue: [eol := self eol]. 
	depth := (self identationLevel - self identDepth) max: 0.
	self identDepth: self identationLevel.
	^eol, (String new: depth withAll: Character tab )!

identationLevel	
	"How much we need to ident. Top element (web page) has level 0"
	| page |
	self isWebPage ifTrue: [^0].
	^self parent notNil
		ifTrue: 
			[page := self webPage. page isNil ifTrue: [^0].
			self shouldIdent 
				ifTrue: [page identationLevel + 1] 
				ifFalse: [page identationLevel]]
		ifFalse: [0]!

identDepth
	"how idented we are"
	| page |
	page := self webPage.
	^page notNil ifTrue: [page identDepth] ifFalse: [0].!

identDepth: aNumber
	"how idented we are"
	| page |
	page := self webPage.
	^page isNil ifTrue: [0] ifFalse: [page identDepth: aNumber]!

initAttributes
	attributes := Dictionary new.!

initElements
	elements := OrderedCollection new.!

initOther
	other := Dictionary new.!

initScripts
	self other isNil ifTrue: [^nil].
	self other removeKey: #scriptBefore ifAbsent: [].
	self other removeKey: #scriptAfter ifAbsent: [].!

initTable
	"just remove from other, later will be initalized lazily"
	self other isNil ifTrue: [^nil].
	self other 
		removeKey: #currentTable ifAbsent: [];
		removeKey: #currentRow ifAbsent: [];
		removeKey: #currentCell ifAbsent: [].!

initTableIfNessesary
	"if not already exist"
	self otherAt: #currentTable ifAbsent: [self newTable]!

insideDivTag
	"to enclose or not in div tag. Only if element have any attribute!!"
	^self div | (self class == WebElement and: [self attributes notNil]).!

isComposite
	"true, if this element is allowed to be composed by subelements.
	This method should be overriden by subclasess if a new element is not a 	composite."
	^true!

isFormElement
	^false!

isNewline
	"are we at start of new line?"
	| page |
	page := self webPage.
	^page notNil ifTrue: [page isNewline] ifFalse: [false]!

isRespondingStreamed
	^false!

isStubElement
	^false!

isWebApplication
	^false!

isWebElement
	^true!

isWebPage
	^false!

isWebWidget
	^false!

last
	"Answer the last element.  If the receiver is empty, create an error notification."

	self checkAndInitElements.  "if not composite element, then error"
	^elements last!

level	
	"How deep we are in element hierarchy. Top element has level 0"
	^self parent notNil
		ifTrue: [self parent level + 1]
		ifFalse: [0]!

method
	"a method which created this element, always from some App. 
	Valid only for aWebElement, never for its subclasses!!"
	^self otherAt: #method ifAbsent: [nil]!

method: aSymbol
	"a method which created this element, always from some App. 
	Valid only for aWebElement, never for its subclasses!!"
	| ctx |
	self otherAt: #method put: aSymbol.
	ctx := self context.
	ctx notNil ifTrue: [self form: self context form]!

newCell
	"add a new cell to current table row. Return a new WebTableCell so that you can send messages
	to it immediatelly - color, width, addText etc."
	self cell: WebTableCell new.
	self row add: self cell.
	^self cell!

newRow
	"add a new row to current table. Return a new WebTableRow so that you can send messages
	to it immediatelly - color, width etc. Also reset current row and current cell to a new ones. "
	self row: WebTableRow new.
	self table add: self row.
	self newCell.
	^self row!

newTable
	"add a new table to this element. Return a new WebTable so that you can send messages
	to it immediatelly - color, width etc. Also reset current row and current cell to a new ones. "
	self table: WebTable new.
	self add: self table.
	self newRow.
	^self table!

nilAttributes
	attributes := nil.!

onClick: aJavascriptCode
	self attributesAt: #onClick add: aJavascriptCode!

onClickDoEffect: aSymbol
	self onClickDoEffect: aSymbol for: self!

onClickDoEffect: aSymbol duration: aNumber
	self onClickDoEffect: aSymbol for: self duration: aNumber!

onClickDoEffect: aSymbol for: anElementOrId
	^self onClickDoEffect: aSymbol for: anElementOrId duration: 1.0!

onClickDoEffect: aSymbol for: anElementOrId duration: aNumber
	"Scriptaculous specific"
	| idSymbol |
	self app style ensureJsResourceForScriptaculous.
	self app style ensureJavascriptForScriptaculousInHeader.
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId registerId. anElementOrId id].
	self onClick: 'new Effect.', aSymbol asString, '(''', idSymbol asString, ''', {duration:', aNumber asString,'})'.!

onClickDoToggleEffect: aSymbol for: anElementOrId
	^self onClickDoToggleEffect: aSymbol for: anElementOrId duration: 1.0!

onClickDoToggleEffect: aSymbol for: anElementOrId duration: aNumber
	"Scriptaculous specific"
	| idSymbol |
	self app style ensureJsResourceForScriptaculous.
	self app style ensureJavascriptForScriptaculousInHeader.
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId registerId. anElementOrId id].
	self onClick: 'new Effect.toggle(''', idSymbol asString, ''', ''', aSymbol asString, ''', {duration:', aNumber asString,'})'.!

onClickHide: anElementOrId
	"hide specified element on mouse click on me"
	"Prototype specific"
	| idSymbol |
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId registerId. anElementOrId id].
	self onClick: 'Element.hide(''', idSymbol asString, ''')'.!

onClickPopup: anElement
	"popup a specified element (can be also a WebWidget) with fresh content from server (AJAX) in a 
       new window on the same page"
	| ctx popup |
	ctx := self context.
	popup := ctx window popupStub.
	self onClickUpdate: popup with: nil additional: 'aidaPopupWindow' contentFrom: anElement
		"popup stub will be filled with contents of anElement calling its creation method"
		"for more see WebApplication>>respondToAjaxReqest: and ajaxUpdate:with:"!

onClickReload
	"reload current page on click off that element"
	self onClick: 'window.location.reload()'.!

onClickShow: anElementOrId
	"show specified element on mouse click on me"
	"Prototype specific"
	| idSymbol |
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId registerId. anElementOrId id].
	self onClick: 'Element.show(''', idSymbol asString, ''')'.!

onClickToggle: anElementOrId
	"toggle visibility of specified element on mouse click on me"
	"Prototype specific"
	| idSymbol |
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId registerId. anElementOrId id].
	self onClick: 'Element.toggle(''', idSymbol asString, ''')'.!

onClickUpdate: anElement
	"update (and show if not yet) a specified element from server (AJAX)"
	self onClickUpdate: anElement with: nil additional: nil contentFrom: nil!

onClickUpdate: anElement with: anArgString
	"update a specified element from server (AJAX) with calling the element's method with an argument"
	" a method must be able to receive a parameter. For instance: #propertiesElementShow: aBooleanString "
	"Note that an argument will be sent at the time of building the element and not at the  click!!" 
	self onClickUpdate: anElement with: anArgString additional: nil contentFrom: nil!

onClickUpdate: anElement with: anArgString additional: anArg2String contentFrom: anotherElement
	"first argument will be send as an argument of the method while second is additional"
	"If anotherElement is not nil then contents of that element will be put in original element, not original itself!! "
	"Not that parameters will be sent at the time of building the element and not at the  click!!" 
	"See WebApplication>>respondToAjaxRequest: and specially #ajaxUpdateOfOld:from: for more"
	self onClick: 
		(self scriptForUpdate: anElement 
			with: anArgString 
			additional: anArg2String 
			contentFrom: anotherElement)!

onDblClick: aJavascriptCode
	self attributesAt: #onDblClick add: aJavascriptCode!

onKeyDown: aJavascriptCode
	self attributesAt: #onKeyDown add: aJavascriptCode!

onKeyPress: aJavascriptCode
	self attributesAt: #onKeyPress add: aJavascriptCode!

onKeyUp: aJavascriptCode
	self attributesAt: #onKeyUp add: aJavascriptCode!

onMouseDown: aJavascriptCode
	self attributesAt: #onMouseDown add: aJavascriptCode!

onMouseMove: aJavascriptCode
	self attributesAt: #onMouseMove add: aJavascriptCode!

onMouseOut: aJavascriptCode
	self attributesAt: #onMouseOut add: aJavascriptCode!

onMouseOutDoEffect: aSymbol
	self onMouseOutDoEffect: aSymbol for: self!

onMouseOutDoEffect: aSymbol duration: aNumber
	self onMouseOutDoEffect: aSymbol for: self duration: aNumber!

onMouseOutDoEffect: aSymbol for: anElementOrId
	^self onMouseOutDoEffect: aSymbol for: anElementOrId duration: 1.0!

onMouseOutDoEffect: aSymbol for: anElementOrId duration: aNumber
	"Scriptaculous specific"
	| idSymbol |
	self app style ensureJsResourceForScriptaculous.
	self app style ensureJavascriptForScriptaculousInHeader.
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId registerId. anElementOrId id].
	self onMouseOut: 'new Effect.', aSymbol asString, '(''', idSymbol asString, ''', {duration: ', aNumber asString, '});'.!

onMouseOutHide: anElementOrId
	"hide specified element when mouse get out of me"
	"Prototype specific"
	| idSymbol |
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId registerId. anElementOrId id].
	self onMouseOut: 'Element.hide(''', idSymbol asString, ''')'.!

onMouseOutShow: anElementOrId
	"show specified element when mouse get out of me"
	"Prototype specific"
	| idSymbol |
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId registerId. anElementOrId id].
	self onMouseOut: 'Element.show(''', idSymbol asString, ''')'.!

onMouseOutUpdate: anElement
	"update (and show if not yet) a specified element from server (AJAX)"
	self onMouseOutUpdate: anElement with: nil!

onMouseOutUpdate: anElement with: anArgString
	"update a specified element from server (AJAX) wtih calling an element method with an argument"
	self onMouseOut: 
		(self scriptForUpdate: anElement 
			with: anArgString 
			additional: nil 
			contentFrom: nil)!

onMouseOver: aJavascriptCode
	self attributesAt: #onMouseOver add: aJavascriptCode!

onMouseOverDoEffect: aSymbol
	self onMouseOverDoEffect: aSymbol for: self!

onMouseOverDoEffect: aSymbol duration: aNumber
	self onMouseOverDoEffect: aSymbol for: self duration: aNumber!

onMouseOverDoEffect: aSymbol for: anElementOrId
	^self onMouseOverDoEffect: aSymbol for: anElementOrId duration: 1.0!

onMouseOverDoEffect: aSymbol for: anElementOrId duration: aNumber
	"Scriptaculous specific"
	| idSymbol |
	self app style ensureJsResourceForScriptaculous.
	self app style ensureJavascriptForScriptaculousInHeader.
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId registerId. anElementOrId id].
	self onMouseOver: 'new Effect.', aSymbol asString, '(''', idSymbol asString, ''', {duration: ', aNumber asString,'});'.!

onMouseOverHide: anElementOrId
	"hide specified element when mouse come over me"
	"Prototype specific"
	| idSymbol |
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId registerId. anElementOrId id].
	self onMouseOver: 'Element.hide(''', idSymbol asString, ''')'.!

onMouseOverShow: anElementOrId
	"show specified element when mouse come over me"
	"Prototype specific"
	| idSymbol |
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId registerId. anElementOrId id].
	self onMouseOver: 'Element.show(''', idSymbol asString, ''')'.!

onMouseOverSyncUpdate: anElement
	"update (and show if not yet) a specified element from server (AJAX)"
	"wait until AJAX response returns (synchronous update)"
	self onMouseOverSyncUpdate: anElement with: nil!

onMouseOverSyncUpdate: anElement with: anArgString
	"update a specified element from server (AJAX) wtih calling an element method with an argument"
	"wait until AJAX response returns (synchronous update)"
	"Prototype specific"
	| id url parms  |
	anElement registerId. id := anElement id.
	url := self ajaxCallUrl. 
	parms:= self ajaxCallUrlParametersFor: anElement.
	anArgString notNil ifTrue: [parms := parms, '&parm=', anArgString].
	self onMouseOver: 'new Ajax.Updater(''', id asString, ''', ''', url, 
		''', {method: ''post'', postBody: ''', parms, ''', evalScripts: true, asynchronous: false})'!

onMouseOverUpdate: anElement
	"update (and show if not yet) a specified element from server (AJAX)"
	self onMouseOverUpdate: anElement with: nil!

onMouseOverUpdate: anElement with: anArgString
	"update a specified element from server (AJAX) wtih calling an element method with an argument"
	self onMouseOver: 
		(self scriptForUpdate: anElement 
			with: anArgString 
			additional: nil 
			contentFrom: nil)!

onMouseUp: aJavascriptCode
	self attributesAt: #onMouseUp add: aJavascriptCode!

other
	^other!

otherAt: aSymbol
	^self otherAt: aSymbol ifAbsent: [nil]!

otherAt: aSymbol ifAbsent: aBlock
	self other isNil ifTrue: [^aBlock value].
	^self other at: aSymbol ifAbsent: aBlock!

otherAt: aSymbol ifAbsentPut: aBlock
	self other isNil ifTrue: [self initOther].
	^self other at: aSymbol ifAbsent: [self other at: aSymbol put: aBlock value]!

otherAt: aSymbol put: anObject
	self other isNil ifTrue: [self initOther].
	^self other at: aSymbol put: anObject!

parent
	^parent!

parent: aWebElement
	parent := aWebElement!

prepareAttributesToPrintOn: aSession
	"override if you like to change or otherwise prepare attribute values"!

prepareForTranslation
	"if element has multilingual text, make it in-line editable for translation"
	"Sublcasses should implement editing accordingly"
	self elements do: [:each | each prepareForTranslation]!

prepareToHTMLPrintOn: aSession
	"all preparations just before html rendering"
	self prepareAttributesToPrintOn: aSession.  "some pre-html preparation of values"!

printAttributesOn: aStream for: aSession
	"start and end of tag is not my responsibility!!"
	self attributes isNil ifTrue: [^self].
	self attributes keysAndValuesDo: [:name :value |
		self printAttribute: name value: value on: aStream for: aSession]!

printHTMLPageOn: aStream for: aRequest on: aSession
	"WebElement with some attributes is enclosed inside <div> tag, for tricks with CSS"
	self prepareToHTMLPrintOn: aSession.
	self scriptBefore notNil ifTrue: 
		[self scriptBefore printHTMLPageOn: aStream for: aRequest on: aSession].
	self insideDivTag ifTrue: 
		[aStream nextPutAll: self ident, '<div'. self printAttributesOn: aStream for: aSession. 
		aStream nextPutAll: '>', self eol].
	elements notNil ifTrue: [elements do: [:element | 
		element notNil ifTrue: [element printHTMLPageOn: aStream for: aRequest on: aSession] ] ].
	self insideDivTag ifTrue: [aStream nextPutAll: self ident, '</div>', self eol].
	self scriptAfter notNil ifTrue: 
		[self scriptAfter printHTMLPageOn: aStream for: aRequest on: aSession].!

registerId
	"put into current context ids dictionary for faster search from AJAX requests"
	| ctx |
	self id notNil ifTrue: [^nil]. "is probably already registered!! "
	ctx := self context.
	ctx notNil ifTrue: 	[ctx registerIdFor: self]!

replace: aSubelement with: anElement
	| index |
	index := self elements indexOf: aSubelement.
	self elements at: index put: anElement.
	anElement parent: self.
	aSubelement parent: nil.!

row
	"return a current table row"
	self initTableIfNessesary.
	^self otherAt: #currentRow!

row: aWebTableRow
	self initTableIfNessesary.
	self otherAt: #currentRow put: aWebTableRow.!

script: aString
	"add this JavaScript  to scripts executed after this element"
	self scriptAfter: aString!

scriptAfter
	^self otherAt: #scriptAfter ifAbsent: [nil]!

scriptAfter: aString
	"add this JavaScript  to scripts executed after this element"
	(self otherAt: #scriptAfter ifAbsentPut: [WebScript new]) script: aString!

scriptAfterExternal: anUrlOrObject
	"add this externalJavaScript  to scripts executed after this element"
	| url |
	url := anUrlOrObject isString
		ifTrue: [anUrlOrObject]
		ifFalse: [self site urlResolver halfUrlFor: anUrlOrObject].
	(self otherAt: #scriptAfter ifAbsentPut: [WebScript new]) source: url!

scriptBefore
	^self otherAt: #scriptBefore ifAbsent: [nil]!

scriptBefore: aString
	"add this JavaScript  to scripts executed before this element"
	(self otherAt: #scriptBefore ifAbsentPut: [WebScript new]) script: aString!

scriptBeforeExternal: anUrlOrObject
	"add this external JavaScript  to scripts executed before this element"
	| url |
	url := anUrlOrObject isString
		ifTrue: [anUrlOrObject]
		ifFalse: [self site urlResolver halfUrlFor: anUrlOrObject].
	(self otherAt: #scriptBefore ifAbsentPut: [WebScript new]) source: url!

scriptForUpdate: anElement with: anArgString additional: anArg2String contentFrom: anotherElement
	"first argument will be send as an argument of the method while second is additional"
	"If anotherElement is not nil then contents of that element will be put in original element, not original itself!! "
	"Not that parameters will be sent at the time of building the element and not at the event!!" 
	"See WebApplication>>respondToAjaxRequest: and specially #ajaxUpdate:from: for more"
	"Prototype specific"
	| id url parms  |
	id := anElement notNil 
		ifTrue: [anElement registerId "if not yet". anElement id]
		ifFalse: [#nothingToUpdate].  "just send arguments, if any"
	url := self ajaxCallUrl. 
	parms:= self ajaxCallUrlParametersFor: anElement.
	anArgString notNil ifTrue: [parms := parms, '&parm=', anArgString].
	anArg2String notNil ifTrue: [parms := parms, '&parm2=', anArg2String].
	anotherElement notNil ifTrue: 
		[parms := parms, '&ajaxContentElementId=', [anotherElement registerId. anotherElement id asString] value ].
	^'new Ajax.Updater(''', id asString, ''', ''', url, 
		''', {method: ''post'', postBody: ''', parms, ''', evalScripts: true})'!

session
	"return a Session for which we are composing a web page"
	^self app session!

setDiv
	self div: true!

setNewline
	"we are no longer at start of line"
	| page |
	page := self webPage.
	page notNil ifTrue: [page setNewline].!

shouldIdent
	"true, if this element should be idented in html page"
	^self insideDivTag!

show
	"show me (if not already) on web page"
	"Prototype specific"
	self registerId.
	self addText: '<script>Element.show(''', self id, ''')</script>'!

site
	"return a Site on which we are composing a web page"
	^self app site!

style
	"return a WebStyle on which we are composing a web page"
	^self site style!

style: aString
	"redefine a style of that element with CSS syntax, example:
	style: '{color: blue; font-style: italic}'   "
	self attributesAt: #style put: aString!

table
	"return a current web table. If not yet exist, create it"
	self initTableIfNessesary.
	^self otherAt: #currentTable!

table: aWebTable
	self otherAt: #currentTable put: aWebTable.!

tagClosing
	" /> for XHTML, > otherwise"
	| page |
	page := self webPage.
	page isNil ifTrue: [page := self app context page]. "as a last resort"
	^(page notNil and: [page isXHTML])
		ifTrue: ['/>']
		ifFalse: ['>']!

title: aString
	"title of an element. it will be shown when mouse pause over it"
	self attributesAt: #title put: 
		"slovene csz are converted if char ^ is after such a char"
		((aString includes: $^ ) ifTrue: [aString convertToSloveneChars] ifFalse: [aString])!

toogle
	"toogle element visibility on  web page"
	"Prototype specific"
	self registerId.
	self addText: '<script>Element.toggle(''', self id, ''')</script>'!

updateEverySeconds: aNumber
	"periodically update itself from server (AJAX) with calling an element method with a parameter"
	self updateEverySeconds: aNumber with: nil!

updateEverySeconds: aNumber with: anArgString
	"periodically update itself from server (AJAX) with calling an element method with an argument"
	"Prototype specific"
	| url parms  |
	self registerId. self id.
	url := self ajaxCallUrl. 
	parms:= self ajaxCallUrlParametersFor: self id.
	anArgString notNil ifTrue: [parms := parms, '&parm=', anArgString].
	self scriptAfter: '
		function createRequest() {
			new Ajax.Request(''', url, ''', { method: ''post'', postBody: ''', parms, ''',
				onSuccess: function(transport) {
					document.getElementById(''', self id, ''').innerHTML=transport.responseText;
				}
			});
		}
		var intervalID= window.setInterval(createRequest, ', (aNumber*1000) printString, ');'.

"	this original Prototype one caues memory leak!! "
"	self scriptAfter: 'new Ajax.PeriodicalUpdater(''', self id asString, ''', ''', url, 
		''', {method: ''post'', postBody: ''', parms, 
		''', evalScripts: true, frequency: ', aNumber printString, '})'
"!

webPage
	"find a WebPage up in the hierarchy on which this element belongs"
	^(self parent notNil and: [self parent isWebElement])
		ifTrue: [self parent webPage]
		ifFalse: [nil]! !
!WebElement categoriesFor: #acceptDropsTo:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #adaptFormElements!private! !
!WebElement categoriesFor: #add:!public!subelements! !
!WebElement categoriesFor: #addAnchorName:!adding links!public! !
!WebElement categoriesFor: #addAspect:for:input:size:!adding form elements!public! !
!WebElement categoriesFor: #addBreak!adding other elements!public! !
!WebElement categoriesFor: #addButtonGif:!adding form buttons!public! !
!WebElement categoriesFor: #addButtonGif:action:!adding form buttons!public! !
!WebElement categoriesFor: #addButtonJpeg:!adding form buttons!public! !
!WebElement categoriesFor: #addButtonJpeg:action:!adding form buttons!public! !
!WebElement categoriesFor: #addButtonPng:!adding form buttons!public! !
!WebElement categoriesFor: #addButtonPng:action:!adding form buttons!public! !
!WebElement categoriesFor: #addButtonText:!adding form buttons!public! !
!WebElement categoriesFor: #addButtonText:action:!adding form buttons!public! !
!WebElement categoriesFor: #addCheckboxAspect:for:!adding form elements!public! !
!WebElement categoriesFor: #addCheckboxObject:from:!adding form elements!public! !
!WebElement categoriesFor: #addCloseWindowText:!adding links!public! !
!WebElement categoriesFor: #addComment:!adding other elements!public! !
!WebElement categoriesFor: #addDateInputFieldAspect:for:!adding ajax components!public! !
!WebElement categoriesFor: #addDelayedFieldAspect:for:!adding ajax components!public! !
!WebElement categoriesFor: #addDelayedFieldAspect:for:size:!adding ajax components!public! !
!WebElement categoriesFor: #addErrorReport!adding other elements!public! !
!WebElement categoriesFor: #addGif:!adding images!public! !
!WebElement categoriesFor: #addGif:size:!adding images!public! !
!WebElement categoriesFor: #addHelpLink!adding other elements!public! !
!WebElement categoriesFor: #addImage:!adding images!public! !
!WebElement categoriesFor: #addImage:imageMap:!adding images!public! !
!WebElement categoriesFor: #addImage:size:!adding images!public! !
!WebElement categoriesFor: #addImage:size:align:!adding images!public! !
!WebElement categoriesFor: #addImage:size:valign:!adding images!public! !
!WebElement categoriesFor: #addInPlaceEditableTextAspect:for:!adding ajax components!public! !
!WebElement categoriesFor: #addInPlaceEditableTextAspect:for:size:!adding ajax components!public! !
!WebElement categoriesFor: #addInPlaceEditableTextAspect:for:size:allow:!adding ajax components!public! !
!WebElement categoriesFor: #addInputFieldAspect:for:!adding form elements!public! !
!WebElement categoriesFor: #addInputFieldAspect:for:size:!adding form elements!public! !
!WebElement categoriesFor: #addJpeg:!adding images!public! !
!WebElement categoriesFor: #addJpeg:size:!adding images!public! !
!WebElement categoriesFor: #addLinkTo:gif:title:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:gif:title:size:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:gif:title:view:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:gif:title:view:parameter:value:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:image:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:image:parameter:value:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:image:size:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:image:view:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:jpeg:title:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:jpeg:title:view:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:message:!adding links!public! !
!WebElement categoriesFor: #addLinkTo:png:title:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:png:title:view:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:png:title:view:parameter:value:!adding links (image)!public! !
!WebElement categoriesFor: #addLinkTo:text:!adding links!public! !
!WebElement categoriesFor: #addLinkTo:text:attributes:!adding links!public! !
!WebElement categoriesFor: #addLinkTo:text:header:!adding links!public! !
!WebElement categoriesFor: #addLinkTo:text:parameter:value:!adding links!public! !
!WebElement categoriesFor: #addLinkTo:text:parameter:value:parameter:value:!adding links!public! !
!WebElement categoriesFor: #addLinkTo:text:view:!adding links!public! !
!WebElement categoriesFor: #addLinkTo:text:view:parameter:value:!adding links!public! !
!WebElement categoriesFor: #addLinkTo:text:view:parameter:value:parameter:value:!adding links!public! !
!WebElement categoriesFor: #addLiveImage:!adding images!public! !
!WebElement categoriesFor: #addLiveImage:imageMap:!adding images!public! !
!WebElement categoriesFor: #addMenuAspect:collection:selected:!adding form elements!public! !
!WebElement categoriesFor: #addMenuAspect:collection:selectedToAspect:of:!adding form elements!public! !
!WebElement categoriesFor: #addMenuCollection:selected:!adding form elements!public! !
!WebElement categoriesFor: #addMenuCollection:selectedToAspect:of:!adding form elements!public! !
!WebElement categoriesFor: #addMethodImage:!adding images!public! !
!WebElement categoriesFor: #addMethodImage:size:!adding images!public! !
!WebElement categoriesFor: #addNbSp!adding other elements!public! !
!WebElement categoriesFor: #addNbSp:!adding other elements!public! !
!WebElement categoriesFor: #addNilLinkText:!adding links!public! !
!WebElement categoriesFor: #addPageBreak!adding other elements!public! !
!WebElement categoriesFor: #addParagraph!adding other elements!public! !
!WebElement categoriesFor: #addPasswordFieldAspect:for:!adding form elements!public! !
!WebElement categoriesFor: #addPasswordFieldAspect:for:size:!adding form elements!public! !
!WebElement categoriesFor: #addPDFLinkTo:!adding links!public! !
!WebElement categoriesFor: #addPng:!adding images!public! !
!WebElement categoriesFor: #addPng:size:!adding images!public! !
!WebElement categoriesFor: #addRedStar!adding text!public! !
!WebElement categoriesFor: #addRichEditorAspect:for:!adding ajax components!public! !
!WebElement categoriesFor: #addRichEditorAspect:for:size:!adding ajax components!public! !
!WebElement categoriesFor: #addRulerSize:!adding other elements!public! !
!WebElement categoriesFor: #addSecureLinkTo:text:!adding links!public! !
!WebElement categoriesFor: #addSecureLinkTo:text:parameter:value:!adding links!public! !
!WebElement categoriesFor: #addSecureLinkTo:text:view:!adding links!public! !
!WebElement categoriesFor: #addSpace!adding text!public! !
!WebElement categoriesFor: #addStubFor:!adding other elements!public! !
!WebElement categoriesFor: #addText:!adding text!public! !
!WebElement categoriesFor: #addText:attributes:!adding text!public! !
!WebElement categoriesFor: #addText:attributes:color:!adding text!public! !
!WebElement categoriesFor: #addText:attributes:font:!adding text!public! !
!WebElement categoriesFor: #addText:attributes:font:color:!adding text!public! !
!WebElement categoriesFor: #addText:color:!adding text!public! !
!WebElement categoriesFor: #addText:font:!adding text!public! !
!WebElement categoriesFor: #addText:font:color:!adding text!public! !
!WebElement categoriesFor: #addText:header:!adding text!public! !
!WebElement categoriesFor: #addText:header:color:!adding text!public! !
!WebElement categoriesFor: #addText:header:font:!adding text!public! !
!WebElement categoriesFor: #addText:header:font:color:!adding text!public! !
!WebElement categoriesFor: #addText:style:!adding text!public! !
!WebElement categoriesFor: #addTextAreaAspect:for:!adding form elements!public! !
!WebElement categoriesFor: #addTextAreaAspect:for:size:!adding form elements!public! !
!WebElement categoriesFor: #addTextAspect:for:!adding text!public! !
!WebElement categoriesFor: #addTextAspect:for:attributes:!adding text!public! !
!WebElement categoriesFor: #addTextBig:!adding text!public! !
!WebElement categoriesFor: #addTextBold:!adding text!public! !
!WebElement categoriesFor: #addTextBoldAspect:for:!adding text!public! !
!WebElement categoriesFor: #addTextCode:!adding text!public! !
!WebElement categoriesFor: #addTextH1:!adding text!public! !
!WebElement categoriesFor: #addTextH2:!adding text!public! !
!WebElement categoriesFor: #addTextH3:!adding text!public! !
!WebElement categoriesFor: #addTextH4:!adding text!public! !
!WebElement categoriesFor: #addTextH5:!adding text!public! !
!WebElement categoriesFor: #addTextItalic:!adding text!public! !
!WebElement categoriesFor: #addTextPreformated:!adding text!public! !
!WebElement categoriesFor: #addTextSmall:!adding text!public! !
!WebElement categoriesFor: #ajaxCallUrl!private-ajax!public! !
!WebElement categoriesFor: #ajaxCallUrlExtended!private-ajax!public! !
!WebElement categoriesFor: #ajaxCallUrlParametersFor:!private-ajax!public! !
!WebElement categoriesFor: #align:!attributes!public! !
!WebElement categoriesFor: #allElements!public!subelements! !
!WebElement categoriesFor: #app!accessing!public! !
!WebElement categoriesFor: #attributes!private-attributes!public! !
!WebElement categoriesFor: #attributesAt:!private-attributes!public! !
!WebElement categoriesFor: #attributesAt:add:!private-attributes!public! !
!WebElement categoriesFor: #attributesAt:put:!private-attributes!public! !
!WebElement categoriesFor: #beDraggable!events-effects&dragdrop!public! !
!WebElement categoriesFor: #beDraggableAndRevert:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #beSortable!events-effects&dragdrop!public! !
!WebElement categoriesFor: #cell!public!tables! !
!WebElement categoriesFor: #cell:!private! !
!WebElement categoriesFor: #changeContextFrom:to:!private-ajax!public! !
!WebElement categoriesFor: #changeContextInAttribute:from:to:!private-ajax!public! !
!WebElement categoriesFor: #changeContextInAttributesFrom:to:!private-ajax!public! !
!WebElement categoriesFor: #checkAndInitElements!public!testing! !
!WebElement categoriesFor: #class:!attributes!public! !
!WebElement categoriesFor: #clear!initialize-release!public! !
!WebElement categoriesFor: #clearTableInfo!public!tables! !
!WebElement categoriesFor: #colorValue:!private! !
!WebElement categoriesFor: #context!accessing!public! !
!WebElement categoriesFor: #creationMethod!private! !
!WebElement categoriesFor: #div!private! !
!WebElement categoriesFor: #div:!private! !
!WebElement categoriesFor: #elements!private! !
!WebElement categoriesFor: #eol!private-identation!public! !
!WebElement categoriesFor: #first!public!subelements! !
!WebElement categoriesFor: #form!private! !
!WebElement categoriesFor: #form:!private! !
!WebElement categoriesFor: #helpLink!accessing!public! !
!WebElement categoriesFor: #hide!events!public! !
!WebElement categoriesFor: #id!attributes!public! !
!WebElement categoriesFor: #id:!attributes!public! !
!WebElement categoriesFor: #ident!private-identation!public! !
!WebElement categoriesFor: #identationLevel!private-identation!public! !
!WebElement categoriesFor: #identDepth!private-identation!public! !
!WebElement categoriesFor: #identDepth:!private-identation!public! !
!WebElement categoriesFor: #initAttributes!initialize-release!public! !
!WebElement categoriesFor: #initElements!initialize-release!public! !
!WebElement categoriesFor: #initOther!initialize-release!public! !
!WebElement categoriesFor: #initScripts!initialize-release!public! !
!WebElement categoriesFor: #initTable!initialize-release!public! !
!WebElement categoriesFor: #initTableIfNessesary!initialize-release!public! !
!WebElement categoriesFor: #insideDivTag!private! !
!WebElement categoriesFor: #isComposite!public!testing! !
!WebElement categoriesFor: #isFormElement!public!testing! !
!WebElement categoriesFor: #isNewline!private-identation!public! !
!WebElement categoriesFor: #isRespondingStreamed!public!testing! !
!WebElement categoriesFor: #isStubElement!public!testing! !
!WebElement categoriesFor: #isWebApplication!public!testing! !
!WebElement categoriesFor: #isWebElement!public!testing! !
!WebElement categoriesFor: #isWebPage!public!testing! !
!WebElement categoriesFor: #isWebWidget!public!testing! !
!WebElement categoriesFor: #last!public!subelements! !
!WebElement categoriesFor: #level!private-identation!public! !
!WebElement categoriesFor: #method!private! !
!WebElement categoriesFor: #method:!private! !
!WebElement categoriesFor: #newCell!public!tables! !
!WebElement categoriesFor: #newRow!public!tables! !
!WebElement categoriesFor: #newTable!public!tables! !
!WebElement categoriesFor: #nilAttributes!initialize-release!public! !
!WebElement categoriesFor: #onClick:!events!public! !
!WebElement categoriesFor: #onClickDoEffect:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onClickDoEffect:duration:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onClickDoEffect:for:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onClickDoEffect:for:duration:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onClickDoToggleEffect:for:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onClickDoToggleEffect:for:duration:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onClickHide:!events!public! !
!WebElement categoriesFor: #onClickPopup:!events-ajax!public! !
!WebElement categoriesFor: #onClickReload!events!public! !
!WebElement categoriesFor: #onClickShow:!events!public! !
!WebElement categoriesFor: #onClickToggle:!events!public! !
!WebElement categoriesFor: #onClickUpdate:!events-ajax!public! !
!WebElement categoriesFor: #onClickUpdate:with:!events-ajax!public! !
!WebElement categoriesFor: #onClickUpdate:with:additional:contentFrom:!events-ajax!public! !
!WebElement categoriesFor: #onDblClick:!events!public! !
!WebElement categoriesFor: #onKeyDown:!events!public! !
!WebElement categoriesFor: #onKeyPress:!events!public! !
!WebElement categoriesFor: #onKeyUp:!events!public! !
!WebElement categoriesFor: #onMouseDown:!events!public! !
!WebElement categoriesFor: #onMouseMove:!events!public! !
!WebElement categoriesFor: #onMouseOut:!events!public! !
!WebElement categoriesFor: #onMouseOutDoEffect:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onMouseOutDoEffect:duration:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onMouseOutDoEffect:for:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onMouseOutDoEffect:for:duration:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onMouseOutHide:!events!public! !
!WebElement categoriesFor: #onMouseOutShow:!events!public! !
!WebElement categoriesFor: #onMouseOutUpdate:!events-ajax!public! !
!WebElement categoriesFor: #onMouseOutUpdate:with:!events-ajax!public! !
!WebElement categoriesFor: #onMouseOver:!events!public! !
!WebElement categoriesFor: #onMouseOverDoEffect:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onMouseOverDoEffect:duration:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onMouseOverDoEffect:for:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onMouseOverDoEffect:for:duration:!events-effects&dragdrop!public! !
!WebElement categoriesFor: #onMouseOverHide:!events!public! !
!WebElement categoriesFor: #onMouseOverShow:!events!public! !
!WebElement categoriesFor: #onMouseOverSyncUpdate:!events-ajax!public! !
!WebElement categoriesFor: #onMouseOverSyncUpdate:with:!events-ajax!public! !
!WebElement categoriesFor: #onMouseOverUpdate:!events-ajax!public! !
!WebElement categoriesFor: #onMouseOverUpdate:with:!events-ajax!public! !
!WebElement categoriesFor: #onMouseUp:!events!public! !
!WebElement categoriesFor: #other!private-other!public! !
!WebElement categoriesFor: #otherAt:!private-other!public! !
!WebElement categoriesFor: #otherAt:ifAbsent:!private-other!public! !
!WebElement categoriesFor: #otherAt:ifAbsentPut:!private-other!public! !
!WebElement categoriesFor: #otherAt:put:!private-other!public! !
!WebElement categoriesFor: #parent!accessing!public! !
!WebElement categoriesFor: #parent:!private! !
!WebElement categoriesFor: #prepareAttributesToPrintOn:!printing!public! !
!WebElement categoriesFor: #prepareForTranslation!private! !
!WebElement categoriesFor: #prepareToHTMLPrintOn:!printing!public! !
!WebElement categoriesFor: #printAttributesOn:for:!printing!public! !
!WebElement categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebElement categoriesFor: #registerId!attributes!public! !
!WebElement categoriesFor: #replace:with:!public!subelements! !
!WebElement categoriesFor: #row!public!tables! !
!WebElement categoriesFor: #row:!private! !
!WebElement categoriesFor: #script:!public!scripts! !
!WebElement categoriesFor: #scriptAfter!private! !
!WebElement categoriesFor: #scriptAfter:!public!scripts! !
!WebElement categoriesFor: #scriptAfterExternal:!public!scripts! !
!WebElement categoriesFor: #scriptBefore!private! !
!WebElement categoriesFor: #scriptBefore:!public!scripts! !
!WebElement categoriesFor: #scriptBeforeExternal:!public!scripts! !
!WebElement categoriesFor: #scriptForUpdate:with:additional:contentFrom:!private-ajax!public! !
!WebElement categoriesFor: #session!accessing!public! !
!WebElement categoriesFor: #setDiv!attributes!public! !
!WebElement categoriesFor: #setNewline!private-identation!public! !
!WebElement categoriesFor: #shouldIdent!private-identation!public! !
!WebElement categoriesFor: #show!events!public! !
!WebElement categoriesFor: #site!accessing!public! !
!WebElement categoriesFor: #style!accessing!public! !
!WebElement categoriesFor: #style:!attributes!public! !
!WebElement categoriesFor: #table!public!tables! !
!WebElement categoriesFor: #table:!private! !
!WebElement categoriesFor: #tagClosing!printing!public! !
!WebElement categoriesFor: #title:!attributes!public! !
!WebElement categoriesFor: #toogle!events!public! !
!WebElement categoriesFor: #updateEverySeconds:!events-ajax!public! !
!WebElement categoriesFor: #updateEverySeconds:with:!events-ajax!public! !
!WebElement categoriesFor: #webPage!accessing!public! !

!WebElement class methodsFor!

newClass: aSymbol
	"new with CSS class as specified"
	^self new class: aSymbol!

newDiv
	"element enclosed in div tag"
	^self new setDiv!

newId: aSymbol
	"new with id as specified"

	^self new id: aSymbol!

printWebPageFor: aRequest on: aSession 

	"do a page of all colors in a color dicionary"

	| colors page table col |
	colors := self colorDictionary keys.
	page := WebPage new.
	page title: 'Web Color Table'.
	table := WebTable new.
	col := 0. 
	table add: WebTableRow new.
	colors do: [:color |
		(col \\ 5 = 0) ifTrue: [table add: WebTableRow new]. col := col + 1.
		table add: (WebTableCell new bgColor: (self valueForColor: color); 
			addBreak; 
			addText: '<font face=helvetica size=-1>';
			addText: (color printString); addBreak;
			addText: ((self valueForColor: color) printString); addBreak;
			addText: (color printString) color: #white; addBreak;
			addText: ((self valueForColor: color) printString) color: #white; addBreak;
			addText: '</font>').
		].
	page add: table.
	^page

"WebElement printWebPageFor: (WebSession new)"!

valueForColor: aColorSymbolOrString
	"return a hex value for specified color. Case of color string is not important. 
	return red if color is unknown"
	| color |
	color := aColorSymbolOrString asString asLowercase asSymbol.
	^self colorDictionary at: color ifAbsent: [^self colorDictionary at: #red].

"
WebElement valueForColor: 'blue' 
"! !
!WebElement class categoriesFor: #newClass:!instance creation!public! !
!WebElement class categoriesFor: #newDiv!instance creation!public! !
!WebElement class categoriesFor: #newId:!instance creation!public! !
!WebElement class categoriesFor: #printWebPageFor:on:!printing!public! !
!WebElement class categoriesFor: #valueForColor:!color values!public! !

