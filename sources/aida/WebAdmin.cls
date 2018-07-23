"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebAdmin
	instanceVariableNames: 'host ip port'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebAdmin guid: (GUID fromString: '{9c78883f-f70a-4879-8cb5-0ac67379dd3a}')!
WebAdmin comment: ''!
!WebAdmin categoriesForClass!Unclassified! !
!WebAdmin methodsFor!

aidaCacheView: aSymbol on: aWebSession
	^false
	"^aSymbol = #login"  "use only for standard throughput benchmark!!"!

host
	^host!

host: aString
	host := aString!

ip
	^ip!

ip: aString
	ip := aString!

port
	^port!

port: aNumber
	port := aNumber! !
!WebAdmin categoriesFor: #aidaCacheView:on:!accessing!public! !
!WebAdmin categoriesFor: #host!accessing!public! !
!WebAdmin categoriesFor: #host:!accessing!public! !
!WebAdmin categoriesFor: #ip!accessing!public! !
!WebAdmin categoriesFor: #ip:!accessing!public! !
!WebAdmin categoriesFor: #port!accessing!public! !
!WebAdmin categoriesFor: #port:!accessing!public! !

