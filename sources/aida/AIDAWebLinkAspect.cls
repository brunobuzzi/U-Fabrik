"Filed out from Dolphin Smalltalk 7"!

AIDAWebObjectAspect subclass: #AIDAWebLinkAspect
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAWebLinkAspect guid: (GUID fromString: '{9df7db28-c4a2-4c9d-b202-508fc601d6ed}')!
AIDAWebLinkAspect comment: ''!
!AIDAWebLinkAspect categoriesForClass!Unclassified! !
!AIDAWebLinkAspect methodsFor!

addAIDAElementTo: aWebElement value: anObject

	^aWebElement addText: anObject 

	!

isWebLink

	^true!

umlValue

	"^(self object vmPerform: secondarySelector) vmPerform: #printObjectName."

	^((self object vmPerform: secondarySelector) vmPerform: #isDomainObject) smalltalkObject  
		ifTrue: [(self object vmPerform: secondarySelector) vmPerform: #printObjectName] 
		ifFalse: ['Error on method #', secondarySelector, ' is not a domain object !!']

"DUPLICATED CODE AT:
UMLInstanceApp>>createSimpleWebControlsIn:
"! !
!AIDAWebLinkAspect categoriesFor: #addAIDAElementTo:value:!public! !
!AIDAWebLinkAspect categoriesFor: #isWebLink!public! !
!AIDAWebLinkAspect categoriesFor: #umlValue!public! !

