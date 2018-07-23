"Filed out from Dolphin Smalltalk 7"!

AIDAProtocolAdaptor subclass: #AIDAAspectAdaptor
	instanceVariableNames: 'aspect'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAAspectAdaptor guid: (GUID fromString: '{9cc6db5e-12ac-4c0b-9242-0dc7e1b23421}')!
AIDAAspectAdaptor comment: ''!
!AIDAAspectAdaptor categoriesForClass!Unclassified! !
!AIDAAspectAdaptor methodsFor!

aspect

	^aspect!

aspect: aSymbol

	aspect := aSymbol!

value: aValue

	(self subject class == WebUserGroup) ifTrue: [^self subject perform: (self aspect asString, ':') asSymbol with: aValue].
	((subject isKindOf: WebApplication) not and: [(subject hasVariableNamed: aspect) not]) ifTrue: [^self]. "this is because is not an instance variable but a method in the <GUI Value Category>"
	self subject perform: (self aspect asString, ':') asSymbol with: aValue! !
!AIDAAspectAdaptor categoriesFor: #aspect!accessing!public! !
!AIDAAspectAdaptor categoriesFor: #aspect:!accessing!public! !
!AIDAAspectAdaptor categoriesFor: #value:!accessing!public! !

!AIDAAspectAdaptor class methodsFor!

forAspect: aSymbol

	^super new aspect: aSymbol! !
!AIDAAspectAdaptor class categoriesFor: #forAspect:!instance creation!public! !

