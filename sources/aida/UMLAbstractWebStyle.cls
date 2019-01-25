"Filed out from Dolphin Smalltalk 7"!

DefaultWebStyle subclass: #UMLAbstractWebStyle
	instanceVariableNames: 'loginErrorText'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAbstractWebStyle guid: (GUID fromString: '{71701171-4737-4dd9-a3ca-4e5d13506e05}')!
UMLAbstractWebStyle comment: ''!
!UMLAbstractWebStyle categoriesForClass!Unclassified! !
!UMLAbstractWebStyle methodsFor!

loginErrorText

	(loginErrorText isNil or: [loginErrorText isEmpty]) ifTrue: [^super loginErrorText].

	^'<b>', loginErrorText, '</b>'!

loginErrorText: anObject

	loginErrorText := anObject! !
!UMLAbstractWebStyle categoriesFor: #loginErrorText!accessing!private! !
!UMLAbstractWebStyle categoriesFor: #loginErrorText:!accessing!private! !

