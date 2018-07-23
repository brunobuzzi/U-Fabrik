"Filed out from Dolphin Smalltalk 7"!

Object subclass: #AIDAWebPageBuilder
	instanceVariableNames: 'aidaApplication object'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAWebPageBuilder guid: (GUID fromString: '{02838392-d0e2-45f0-b362-de8a934ee6fb}')!
AIDAWebPageBuilder comment: ''!
!AIDAWebPageBuilder categoriesForClass!Unclassified! !
!AIDAWebPageBuilder methodsFor!

aidaApplication
	^aidaApplication!

aidaApplication: anObject
	aidaApplication := anObject!

generateTable
	| mainPage |

	mainPage := WebElement new.
	mainPage table class: #objectViewer.
	self observeeInstancesVariableNames do: [:eachVarName | 
		mainPage cell attributesAt: #style put: 'background: rgb(250,242,208)'.
		mainPage cell addText: eachVarName.
		mainPage newCell addText: (self observee instVarNamed: eachVarName).
		mainPage newRow].
	^mainPage!

object
	^object!

object: anObject
	object := anObject!

observee

	^aidaApplication observee!

observeeClass

	^self observee class!

observeeInstancesVariableNames

	^self observeeClass allInstVarNames! !
!AIDAWebPageBuilder categoriesFor: #aidaApplication!accessing!private! !
!AIDAWebPageBuilder categoriesFor: #aidaApplication:!accessing!private! !
!AIDAWebPageBuilder categoriesFor: #generateTable!public! !
!AIDAWebPageBuilder categoriesFor: #object!accessing!private! !
!AIDAWebPageBuilder categoriesFor: #object:!accessing!private! !
!AIDAWebPageBuilder categoriesFor: #observee!public! !
!AIDAWebPageBuilder categoriesFor: #observeeClass!public! !
!AIDAWebPageBuilder categoriesFor: #observeeInstancesVariableNames!public! !

!AIDAWebPageBuilder class methodsFor!

newFor: anAIDAApp

	^super new initialize
		aidaApplication: anAIDAApp;
		yourself.! !
!AIDAWebPageBuilder class categoriesFor: #newFor:!public! !

