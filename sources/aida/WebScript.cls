"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebScript
	instanceVariableNames: 'script source'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebScript guid: (GUID fromString: '{631d6c8f-c176-430a-b96d-793bf131bfa9}')!
WebScript comment: ''!
!WebScript categoriesForClass!Unclassified! !
!WebScript methodsFor!

changeContextFrom: oldCtx to: newCtx
	"scan for all references to context ids and change them. Also in subelements"
	| in out aidaCtx sep |
	aidaCtx := WebContext contextIdName.
	(('*', aidaCtx, '*') match: self script) ifFalse: [^nil].
	in := self script readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse: 
		[out nextPutAll: (in upTo: aidaCtx). 
		in atEnd not ifTrue: 
			[in skip "=". sep := in upTo: $&.
			out nextPutAll: aidaCtx, '=', newCtx id printString, sep ] ].
	self script: out contents!

includesScriptTag
	"if script starts and ends with a script tag. Otherwise we add it by ourselves"
	^'<script*' match: self script!

printHTMLPageOn: aStream for: aRequest on: aSession
	| existScriptTag |
	existScriptTag := self includesScriptTag. "don't add script tag if script already have it!! "
	existScriptTag ifFalse: [aStream nextPutAll: '<script type="text/javascript"'].
	self source notNil ifTrue: 
		[aStream nextPutAll: ' src="', self source, '"'].
	existScriptTag ifFalse: [aStream nextPutAll: '>']. 
	self script notNil ifTrue: [aStream nextPutAll: script].
	existScriptTag ifFalse: [aStream nextPutAll: '</script>'].
	aStream nextPutAll: self eol.!

script
	^script!

script: aString
	"add to others if already exists, separate with JavaScript separator ; "
	script isNil ifTrue: [script := ''].
	(script notEmpty and: [script last ~= $; ]) ifTrue: [script := script, '; '].
	script := script, aString trimBlanks.!

source
	"URL of external script source, if any"
	^source!

source: anURLString
	source := anURLString! !
!WebScript categoriesFor: #changeContextFrom:to:!private! !
!WebScript categoriesFor: #includesScriptTag!printing!public! !
!WebScript categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebScript categoriesFor: #script!accessing!public! !
!WebScript categoriesFor: #script:!accessing!public! !
!WebScript categoriesFor: #source!accessing!public! !
!WebScript categoriesFor: #source:!accessing!public! !

!WebScript class methodsFor!

script: aString
	^super new script: aString!

source: anURLString
	"and external script, with an Url to it"
	^super new source: anURLString! !
!WebScript class categoriesFor: #script:!instance creation!public! !
!WebScript class categoriesFor: #source:!instance creation!public! !

