"Filed out from Dolphin Smalltalk 7"!

WebWidget subclass: #WebRichEditorWakeup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebRichEditorWakeup guid: (GUID fromString: '{013f7142-e3eb-4578-bd7e-a1330253efbf}')!
WebRichEditorWakeup comment: 'WebRichEditorWakeup is a component which speedup editing by loading all JS and other libraries for rich text editor in background. 

Add it to the end of your pages but only if user has editing rights.'!
!WebRichEditorWakeup categoriesForClass!Unclassified! !
!WebRichEditorWakeup methodsFor!

ajaxUpdate
	self build!

build
	| iframe |
	self clear. self setDiv. self hide.
"	self isWakeupTimeout ifFalse: [^self]. "
	iframe := WebIFrame new src: '/admin.html?view=wakeupRichEditor'.
	self add: iframe.
	self setWakeupTimestamp.
	
"	self setDiv. self registerId.
	self session lastRequest isAjaxRequest 
		ifFalse: 
			[self hide.
			self update ] ""to call iframe below in backgrund""
		ifTrue: 
			[iframe := WebIFrame new src: '/admin.html?view=wakeupRichEditor'.
			self add: iframe.
			self setWakeupTimestamp]
"!

isWakeupTimeout
	"more that one hour since last prefech?"
	"why refresh every hour?"
	| last |
	last := self session userValues at: #wakeupRichEditorTimestamp ifAbsent: [^true].
	^SpTimestamp now asSeconds - last asSeconds > 3600!

setWakeupTimestamp
	"store in user's session when last wakeup was done"
	self session userValues at: #wakeupRichEditorTimestamp put: SpTimestamp now.! !
!WebRichEditorWakeup categoriesFor: #ajaxUpdate!printing!public! !
!WebRichEditorWakeup categoriesFor: #build!printing!public! !
!WebRichEditorWakeup categoriesFor: #isWakeupTimeout!public!timeout! !
!WebRichEditorWakeup categoriesFor: #setWakeupTimestamp!public!timeout! !

!WebRichEditorWakeup class methodsFor!

new
	^super new
		method: #ajaxUpdate;
		build! !
!WebRichEditorWakeup class categoriesFor: #new!instance creation!public! !

