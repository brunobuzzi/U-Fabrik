"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebForm
	instanceVariableNames: 'fields action tabOrder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebForm guid: (GUID fromString: '{5b9d6346-d6bf-489f-bf17-378e2e932cca}')!
WebForm comment: ''!
!WebForm categoriesForClass!Unclassified! !
!WebForm methodsFor!

action
	"Url of where to post form inputs, it is optional"
	^action!

action: aString
	"Url of where to post form inputs, it is optional"
	action := aString!

adaptFormElement: aWebFormElement
	"set appropriate aspect adaptor for that element"
	aWebFormElement isFormElement ifFalse: [^nil].
	(aWebFormElement isRadioButton | aWebFormElement isCheckBox)
		ifTrue: [aWebFormElement joinToForm: self]
		ifFalse:	[aWebFormElement adapt]!

addToFields: aWebFormElement
	"and to tab order"
	(self alreadyRegistered: aWebFormElement) ifTrue: [^self error: 'already exist!!'].
	self fields at: aWebFormElement name put: aWebFormElement.
	self tabOrder add: aWebFormElement.
	aWebFormElement isStreamed ifTrue: [self streamedFieldSet add: aWebFormElement].
	^self fieldSet add: aWebFormElement!

alreadyRegistered: aWebFormElement
	^self fieldSet includes: aWebFormElement!

clear
	| id |
	id := self id. "preserve old id"
	super clear.
	self initAttributes.
	id notNil ifTrue: [self id: id]. 
	self registerId.
!

ensureOnSubmitReturnFalseAtEnd
	"for onSubmit script, ensure that 'return false' (if any) will be the last sentence in the script"
	| coll new |
	coll := self attributesAt: #onSubmit. coll isNil ifTrue: [^nil].
	(coll isKindOf: OrderedCollection) ifFalse: [^nil].
	(coll contains: [:each | '*return false*' match: each]) ifFalse: [^nil].
	new := coll reject: [:each | '*return false*' match: each].  "also to avoid duplicates"
	new := new add: 'return false'; yourself.
	self attributesAt: #onSubmit put: new.!

fields
	"return a dictionary of all fields in this form. a field name is used as a key"
	fields isNil ifTrue: [self initFields].
	^fields!

fieldSet
	^self fields at: #set ifAbsent: [self initFieldSet].!

fieldWithTabIndex: aNumber	
	"return a form element with that tab index"
	^self tabOrder detect: [:field | field tabIndex = aNumber] ifNone: [nil].!

form
	^self!

initFields
	fields := Dictionary new.
	self initFieldSet. "with all fields for fast check, if field is already registered"
	self initStreamedFieldSet!

initFieldSet
	"with all fields for fast check, if field is already registered"
	^self fields at: #set put: Set new.!

initStreamedFieldSet
	"all fields which demands request post data streaming directly to output stream"
	^self fields at: #streamedFields put: Set new.!

initTabOrder
	tabOrder := OrderedCollection new.!

nextTabOrderFrom: aFormElement
	"next element to tab into"
	| inx |
	self tabOrder isEmpty ifTrue: [^nil].
	inx := self tabOrder indexOf: aFormElement.
	inx = 0 ifTrue: [^self tabOrder first].
	inx = self tabOrder size ifTrue: [^self tabOrder last].
	^self tabOrder at: inx+1!

onReset: aJavascriptCode
	self attributesAt: #onReset add: aJavascriptCode!

onSubmit: aJavascriptCode
	"many calls will add a JS code to the exisitng one!!"
	self attributesAt: #onSubmit add: aJavascriptCode!

onSubmitUpdate: anElement
	"update (and show if not yet) a specified element from server (AJAX)"
	self onSubmitUpdate: anElement with: nil additional: nil!

onSubmitUpdate: anElement with: anArgString additional: anArg2String
	"first argument will be send as an argument of the method while second is additional"
	"See WebApplication>>respondToAjaxRequest: and specially #ajaxUpdate:from: for more"
	"Prototype specific"
	self onSubmit: 
		(self scriptForUpdate: anElement with: anArgString additional: anArg2String contentFrom: nil).!

prepareActionStringOn: aSession
	"example of action string:  '/object.html?view=edit&aidaCtx=70413#anchor123"
	| actionString upToAnchor anchor ctx |
	actionString :=  (self action notNil 
		ifTrue: [self action "predefined action" ] ifFalse: [aSession fullUrlForCurrentPage]).
	upToAnchor := actionString readStream upTo: $#.
	anchor := actionString readStream upTo: $#; upToEnd.
	ctx := self context.
	actionString := upToAnchor, ((actionString includes: $? ) ifTrue: ['&'] ifFalse: ['?']),
		(ctx notNil ifTrue: [WebContext contextIdName "aidaCtx", '=', self context id printString] ifFalse: ['']).
	anchor notEmpty ifTrue: [actionString := actionString, '#', anchor]. "anchor always at the end!!"
	^actionString!

prepareToHTMLPrintOn: aSession

	self ensureOnSubmitReturnFalseAtEnd.  "for ajaxSubmit to break normal submiting and full page reload"
	super prepareToHTMLPrintOn: aSession.
	self reorderTabulation. "late reordering to ensure that all form elements are present"!

printHTMLPageOn: aStream for: aRequest on: aSession

	self prepareToHTMLPrintOn: aSession.
	aStream nextPutAll: 
		self ident, '<form  method="post" action="', (self prepareActionStringOn: aSession),  
			'"', ' enctype="multipart/form-data"'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '>', self eol.
	super printHTMLPageOn: aStream for: aRequest on: aSession.
	aStream nextPutAll:  self ident, '</form>', self eol.!

registerFormElements
	"find and register (add to fields ans set aspect adapters) all form elements in itself"
	self registerFormElementsIn: self!

registerFormElementsIn: anElement
	"find and register (add to fields ans set aspect adapters) all form elements in this and subelements"
	anElement isNil ifTrue: [^nil]. 
	anElement isFormElement ifTrue:
		[anElement hasName ifFalse:
			[anElement name: 'field', (self fields size + 1 - 1"set") printString].
		(self alreadyRegistered: anElement) ifFalse: [self addToFields: anElement]. 
		self adaptFormElement: anElement].
	anElement isComposite ifTrue: 
		[anElement elements do: [:each | self registerFormElementsIn: each] ]!

registerStreamedFieldsInto: aHTTPPost
	"for streams it needs to be done before you use any post data, otherwise it is too late!!"
	self streamedFieldSet do: [:field | 
		field writeBlock notNil 
			ifTrue: [aHTTPPost postDataAt: field name beforeStreamingDo: field writeBlock].
		field writeStream notNil 
			ifTrue: [aHTTPPost postDataAt: field name streamTo: field writeStream] ]!

reorderTabulation
	"reorders tabOrder to match tabIndex order of form elements"
	| old withIndex |
	old := self tabOrder copy.
	self initTabOrder.
	withIndex := old select: [:each | each tabIndex notNil and: [each tabIndex ~= 0] ].
	withIndex := SortedCollection withAll: withIndex sortBlock: [:a :b | a tabIndex < b tabIndex].
	self tabOrder addAll: withIndex.
	withIndex := withIndex asSet.
	 "those without tab index at the end"
	self tabOrder addAll: (old reject: [:each | withIndex includes: each  ]).!

shouldIdent
	^true!

streamedFieldSet
	^self fields at: #streamedFields ifAbsent: [self initStreamedFieldSet].!

tabOrder
	"return a collection of all fields in this form, ordered by tab order"
	tabOrder isNil ifTrue: [self initTabOrder].
	^tabOrder!

uncheckAllProperChecboxesFor: aRequest
	"for single input Ajax request just that checbox, if any"
	| toUncheck |
	toUncheck := aRequest isAjaxPostWithSingleInput
		ifTrue: [Array with: (self fields at: aRequest ajaxSingleInputName ifAbsent: [^nil]) ]
		ifFalse: [self fieldSet].
	toUncheck do: [:each | each isCheckBox ifTrue: [each uncheckValue] ]!

uncheckAllProperRadioButtonsFor: aRequest
	"for single input Ajax posts just that radio button, if any"!

view
	"for which app view is that form"
	^self context view! !
!WebForm categoriesFor: #action!accessing!public! !
!WebForm categoriesFor: #action:!accessing!public! !
!WebForm categoriesFor: #adaptFormElement:!model adapting!public! !
!WebForm categoriesFor: #addToFields:!private-fields!public! !
!WebForm categoriesFor: #alreadyRegistered:!private-fields!public! !
!WebForm categoriesFor: #clear!initialize-release!public! !
!WebForm categoriesFor: #ensureOnSubmitReturnFalseAtEnd!printing!public! !
!WebForm categoriesFor: #fields!private-fields!public! !
!WebForm categoriesFor: #fieldSet!private-fields!public! !
!WebForm categoriesFor: #fieldWithTabIndex:!public!tabulation! !
!WebForm categoriesFor: #form!private! !
!WebForm categoriesFor: #initFields!initialize-release!public! !
!WebForm categoriesFor: #initFieldSet!initialize-release!public! !
!WebForm categoriesFor: #initStreamedFieldSet!initialize-release!public! !
!WebForm categoriesFor: #initTabOrder!initialize-release!public! !
!WebForm categoriesFor: #nextTabOrderFrom:!private-tabulation!public! !
!WebForm categoriesFor: #onReset:!events!public! !
!WebForm categoriesFor: #onSubmit:!events!public! !
!WebForm categoriesFor: #onSubmitUpdate:!events-ajax!public! !
!WebForm categoriesFor: #onSubmitUpdate:with:additional:!events-ajax!public! !
!WebForm categoriesFor: #prepareActionStringOn:!printing!public! !
!WebForm categoriesFor: #prepareToHTMLPrintOn:!printing!public! !
!WebForm categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebForm categoriesFor: #registerFormElements!model adapting!public! !
!WebForm categoriesFor: #registerFormElementsIn:!model adapting!public! !
!WebForm categoriesFor: #registerStreamedFieldsInto:!model adapting!public! !
!WebForm categoriesFor: #reorderTabulation!public!tabulation! !
!WebForm categoriesFor: #shouldIdent!private! !
!WebForm categoriesFor: #streamedFieldSet!private-fields!public! !
!WebForm categoriesFor: #tabOrder!private! !
!WebForm categoriesFor: #uncheckAllProperChecboxesFor:!model adapting!public! !
!WebForm categoriesFor: #uncheckAllProperRadioButtonsFor:!model adapting!public! !
!WebForm categoriesFor: #view!accessing!public! !

