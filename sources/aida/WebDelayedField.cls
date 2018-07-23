"Filed out from Dolphin Smalltalk 7"!

WebInputField subclass: #WebDelayedField
	instanceVariableNames: 'update parameter delay'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebDelayedField guid: (GUID fromString: '{4df5c43b-61a3-4ffe-9131-a839f221dfb3}')!
WebDelayedField comment: 'WebDelayedField is used to delayed Ajax posting to server. It waits for delay after last key input, before it posts its contents. Ideal for live-search fields.

Use it as a normal input field, sending it #onClickPost, #onClickPostAndUdate: etc.'!
!WebDelayedField categoriesForClass!Unclassified! !
!WebDelayedField methodsFor!

addSetupScript
	self scriptAfter: (self scriptForPostAndUpdate: self update with: self parameter)!

afterPostUpdate: anElementOrId
	"update that element after delayed post"
	self update: anElementOrId!

afterPostUpdate: anElementOrId with: aParmString
	"update that element after delayed post with a parameter"
	self update: anElementOrId.
	self parameter: aParmString.!

defaultDelay
	"delay before posting, in seconds"
	^1!

delay
	"delay before posting, in seconds"
	delay isNil ifTrue: [self delay: self defaultDelay].
	^delay!

delay: aNumber
	"delay before posting, in seconds"
	delay := aNumber!

isDelayedField
	^true!

onChangePost
	"that's done by default!! "!

onChangePostAndUpdate: anElementOrId
	self error: 'use afterPostUpdate: instead!!'!

onChangePostAndUpdate: anElementOrId with: aParmString
	self error: 'use afterPostUpdate:with: instead!!'!

onChangePostAndUpdateSelf
	self error: 'use afterPostUpdate: instead!!'!

onKeyPressPostAndUpdate: anElementOrId
	self error: 'use afterPostUpdate: instead!!'!

onKeyUpPostAndUpdate: anElementOrId
	self error: 'use afterPostUpdate: instead!!'!

parameter
	^parameter!

parameter: anObject
	parameter := anObject!

printHTMLPageOn: aStream for: aRequest on: aSession
	self registerId. 
	self addSetupScript.
	super printHTMLPageOn: aStream for: aRequest on: aSession.!

scriptForPostAndUpdate: anElementOrId with: aParmString
	"Prototype specific"
	| url idSymbol parms |
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] 
		ifFalse: [anElementOrId isNil 	ifTrue: [#nil] ifFalse: [anElementOrId registerId. anElementOrId id] ].
	self registerId. 
      url := self ajaxCallUrl. parms := self ajaxCallUrlParametersFor: anElementOrId.
	aParmString notNil ifTrue: [parms := parms, '&parm=', aParmString].
	^'
new Form.Element.AIDADelayedObserver ("', self id asString, '", ', self delay printString, ', function () 
	{new Ajax.Updater(''', idSymbol asString, ''', ''', url, ''', {method: ''post'', 
		postBody: ''', self name, '=''+$F (''', self id asString, ''') + ''', ('&', parms), ''', evalScripts: true}); 
      });
'!

update
	^update!

update: anElementOrId
	update := anElementOrId! !
!WebDelayedField categoriesFor: #addSetupScript!printing!public! !
!WebDelayedField categoriesFor: #afterPostUpdate:!events-ajax!public! !
!WebDelayedField categoriesFor: #afterPostUpdate:with:!events-ajax!public! !
!WebDelayedField categoriesFor: #defaultDelay!accessing!public! !
!WebDelayedField categoriesFor: #delay!accessing!public! !
!WebDelayedField categoriesFor: #delay:!accessing!public! !
!WebDelayedField categoriesFor: #isDelayedField!public!testing! !
!WebDelayedField categoriesFor: #onChangePost!private! !
!WebDelayedField categoriesFor: #onChangePostAndUpdate:!private! !
!WebDelayedField categoriesFor: #onChangePostAndUpdate:with:!private! !
!WebDelayedField categoriesFor: #onChangePostAndUpdateSelf!private! !
!WebDelayedField categoriesFor: #onKeyPressPostAndUpdate:!private! !
!WebDelayedField categoriesFor: #onKeyUpPostAndUpdate:!private! !
!WebDelayedField categoriesFor: #parameter!private! !
!WebDelayedField categoriesFor: #parameter:!private! !
!WebDelayedField categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebDelayedField categoriesFor: #scriptForPostAndUpdate:with:!printing!public! !
!WebDelayedField categoriesFor: #update!private! !
!WebDelayedField categoriesFor: #update:!private! !

