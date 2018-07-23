"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebUserPreference
	instanceVariableNames: 'objectButtonClassSymbol lateralMenuButtonClassSymbol topMenuButtonClassSymbol headersHtmlLabelBackground headersHtmlValueBackground headerLabelFontColor headerValueFontColor referencesHtmlLabelBackground referencesLabelFontColor referencesValueFontColor basicValuesHtmlLabelBackground basicValuesHtmlValueBackground basicValuesLabelFontColor basicValuesValueFontColor webHeaderLabel webReferencesLabel webBasicLabel showHeader showReferences showBasicValues objectBackgroundColor listEvenColor listEvenTextColor listOddColor listOddTextColor bodyBackcolor'
	classVariableNames: 'Default Templates'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebUserPreference guid: (GUID fromString: '{a3d78390-5c6f-4d2a-9e50-4b201a046bf3}')!
WebUserPreference comment: ''!
!WebUserPreference categoriesForClass!Unclassified! !
!WebUserPreference methodsFor!

basicValuesHtmlLabelBackground
	^basicValuesHtmlLabelBackground!

basicValuesHtmlLabelBackground: anObject
	basicValuesHtmlLabelBackground := anObject!

basicValuesHtmlValueBackground
	^basicValuesHtmlValueBackground!

basicValuesHtmlValueBackground: anObject
	basicValuesHtmlValueBackground := anObject!

basicValuesLabelFontColor
	^basicValuesLabelFontColor!

basicValuesLabelFontColor: anObject
	basicValuesLabelFontColor := anObject!

basicValuesValueFontColor
	^basicValuesValueFontColor!

basicValuesValueFontColor: anObject
	basicValuesValueFontColor := anObject!

bodyBackcolor
	^bodyBackcolor!

bodyBackcolor: anObject
	bodyBackcolor := anObject!

headerLabelFontColor
	^headerLabelFontColor!

headerLabelFontColor: anObject
	headerLabelFontColor := anObject!

headersHtmlLabelBackground
	^headersHtmlLabelBackground!

headersHtmlLabelBackground: anObject
	headersHtmlLabelBackground := anObject!

headersHtmlValueBackground
	^headersHtmlValueBackground!

headersHtmlValueBackground: anObject
	headersHtmlValueBackground := anObject!

headerValueFontColor
	^headerValueFontColor!

headerValueFontColor: anObject
	headerValueFontColor := anObject!

initialize

	super initialize.

	objectButtonClassSymbol := #buttonWhite.
	topMenuButtonClassSymbol := #button.
	lateralMenuButtonClassSymbol := #button.
	headersHtmlLabelBackground := 'rgb(253,222,181)'. "HTML format color - rgb(253,222,181) - gainsboro - darkBlue and so on"
	headersHtmlValueBackground := 'gainsboro'.
	headerLabelFontColor := 'darkBlue'.
	headerValueFontColor := 'darkBlue'.
	referencesHtmlLabelBackground := 'lavender'.
	referencesLabelFontColor := 'black'.
	referencesValueFontColor := 'blue'.
	basicValuesHtmlLabelBackground := 'lightgray'.
	basicValuesHtmlValueBackground := 'lavender'.
	basicValuesLabelFontColor := 'black'.
	basicValuesValueFontColor := 'black'.
	webHeaderLabel := 'Header'.
	webReferencesLabel := 'References'.
	webBasicLabel := 'Basic Values'.
	showHeader := true.
	showReferences := true.
	showBasicValues := true.
	objectBackgroundColor := 'rgb(248,248,248)'.
	listEvenColor := 'rgb(214, 190, 92)'.
	listOddColor := 'rgb(245, 215, 60, 0.78)'.
	listEvenTextColor := 'black'.
	listOddTextColor := 'black'.
	bodyBackcolor := 'lightGray'.!

lateralMenuButtonClassSymbol
	^lateralMenuButtonClassSymbol!

lateralMenuButtonClassSymbol: anObject
	lateralMenuButtonClassSymbol := anObject!

listEvenColor
	^listEvenColor!

listEvenColor: anObject
	listEvenColor := anObject!

listEvenTextColor
	^listEvenTextColor!

listEvenTextColor: anObject
	listEvenTextColor := anObject!

listOddColor
	^listOddColor!

listOddColor: anObject
	listOddColor := anObject!

listOddTextColor
	^listOddTextColor!

listOddTextColor: anObject
	listOddTextColor := anObject!

objectBackgroundColor
	^objectBackgroundColor!

objectBackgroundColor: anObject
	objectBackgroundColor := anObject!

objectButtonClassSymbol
	^objectButtonClassSymbol!

objectButtonClassSymbol: anObject
	objectButtonClassSymbol := anObject!

referencesHtmlLabelBackground
	^referencesHtmlLabelBackground!

referencesHtmlLabelBackground: anObject
	referencesHtmlLabelBackground := anObject!

referencesLabelFontColor
	^referencesLabelFontColor!

referencesLabelFontColor: anObject
	referencesLabelFontColor := anObject!

referencesValueFontColor
	^referencesValueFontColor!

referencesValueFontColor: anObject
	referencesValueFontColor := anObject!

removeTemplateNamed: aString

	^self class removeTemplateNamed: aString.

	!

saveTemplate

	self class addTemplate: self.

	!

saveTemplateAs: aString
	| newTemplate |

	newTemplate := self class new.
	newTemplate objectButtonClassSymbol: objectButtonClassSymbol;
		lateralMenuButtonClassSymbol: lateralMenuButtonClassSymbol;
		topMenuButtonClassSymbol: topMenuButtonClassSymbol;
		headersHtmlLabelBackground: headersHtmlLabelBackground;
		headersHtmlValueBackground: headersHtmlValueBackground;
		headerLabelFontColor: headerLabelFontColor;
		headerValueFontColor: headerValueFontColor;
		referencesHtmlLabelBackground: referencesHtmlLabelBackground;
		referencesLabelFontColor: referencesLabelFontColor;
		referencesValueFontColor: referencesValueFontColor;
		basicValuesHtmlLabelBackground: basicValuesHtmlLabelBackground;
		basicValuesHtmlValueBackground: basicValuesHtmlValueBackground;
		basicValuesLabelFontColor: basicValuesLabelFontColor;
		basicValuesValueFontColor: basicValuesValueFontColor.

	^self class saveTemplate: newTemplate as: aString!

showBasicValues
	^showBasicValues!

showBasicValues: anObject
	showBasicValues := anObject!

showHeader
	^showHeader!

showHeader: anObject
	showHeader := anObject!

showReferences
	^showReferences!

showReferences: anObject
	showReferences := anObject!

topMenuButtonClassSymbol
	^topMenuButtonClassSymbol!

topMenuButtonClassSymbol: anObject
	topMenuButtonClassSymbol := anObject!

webBasicLabel
	^webBasicLabel!

webBasicLabel: anObject
	webBasicLabel := anObject!

webHeaderLabel
	^webHeaderLabel!

webHeaderLabel: anObject
	webHeaderLabel := anObject!

webReferencesLabel
	^webReferencesLabel!

webReferencesLabel: anObject
	webReferencesLabel := anObject! !
!WebUserPreference categoriesFor: #basicValuesHtmlLabelBackground!accessing!private! !
!WebUserPreference categoriesFor: #basicValuesHtmlLabelBackground:!accessing!private! !
!WebUserPreference categoriesFor: #basicValuesHtmlValueBackground!accessing!private! !
!WebUserPreference categoriesFor: #basicValuesHtmlValueBackground:!accessing!private! !
!WebUserPreference categoriesFor: #basicValuesLabelFontColor!accessing!private! !
!WebUserPreference categoriesFor: #basicValuesLabelFontColor:!accessing!private! !
!WebUserPreference categoriesFor: #basicValuesValueFontColor!accessing!private! !
!WebUserPreference categoriesFor: #basicValuesValueFontColor:!accessing!private! !
!WebUserPreference categoriesFor: #bodyBackcolor!accessing!private! !
!WebUserPreference categoriesFor: #bodyBackcolor:!accessing!private! !
!WebUserPreference categoriesFor: #headerLabelFontColor!accessing!private! !
!WebUserPreference categoriesFor: #headerLabelFontColor:!accessing!private! !
!WebUserPreference categoriesFor: #headersHtmlLabelBackground!accessing!private! !
!WebUserPreference categoriesFor: #headersHtmlLabelBackground:!accessing!private! !
!WebUserPreference categoriesFor: #headersHtmlValueBackground!accessing!private! !
!WebUserPreference categoriesFor: #headersHtmlValueBackground:!accessing!private! !
!WebUserPreference categoriesFor: #headerValueFontColor!accessing!private! !
!WebUserPreference categoriesFor: #headerValueFontColor:!accessing!private! !
!WebUserPreference categoriesFor: #initialize!public! !
!WebUserPreference categoriesFor: #lateralMenuButtonClassSymbol!accessing!private! !
!WebUserPreference categoriesFor: #lateralMenuButtonClassSymbol:!accessing!private! !
!WebUserPreference categoriesFor: #listEvenColor!accessing!private! !
!WebUserPreference categoriesFor: #listEvenColor:!accessing!private! !
!WebUserPreference categoriesFor: #listEvenTextColor!accessing!private! !
!WebUserPreference categoriesFor: #listEvenTextColor:!accessing!private! !
!WebUserPreference categoriesFor: #listOddColor!accessing!private! !
!WebUserPreference categoriesFor: #listOddColor:!accessing!private! !
!WebUserPreference categoriesFor: #listOddTextColor!accessing!private! !
!WebUserPreference categoriesFor: #listOddTextColor:!accessing!private! !
!WebUserPreference categoriesFor: #objectBackgroundColor!accessing!private! !
!WebUserPreference categoriesFor: #objectBackgroundColor:!accessing!private! !
!WebUserPreference categoriesFor: #objectButtonClassSymbol!accessing!private! !
!WebUserPreference categoriesFor: #objectButtonClassSymbol:!accessing!private! !
!WebUserPreference categoriesFor: #referencesHtmlLabelBackground!accessing!private! !
!WebUserPreference categoriesFor: #referencesHtmlLabelBackground:!accessing!private! !
!WebUserPreference categoriesFor: #referencesLabelFontColor!accessing!private! !
!WebUserPreference categoriesFor: #referencesLabelFontColor:!accessing!private! !
!WebUserPreference categoriesFor: #referencesValueFontColor!accessing!private! !
!WebUserPreference categoriesFor: #referencesValueFontColor:!accessing!private! !
!WebUserPreference categoriesFor: #removeTemplateNamed:!public! !
!WebUserPreference categoriesFor: #saveTemplate!public! !
!WebUserPreference categoriesFor: #saveTemplateAs:!public! !
!WebUserPreference categoriesFor: #showBasicValues!accessing!private! !
!WebUserPreference categoriesFor: #showBasicValues:!accessing!private! !
!WebUserPreference categoriesFor: #showHeader!accessing!private! !
!WebUserPreference categoriesFor: #showHeader:!accessing!private! !
!WebUserPreference categoriesFor: #showReferences!accessing!private! !
!WebUserPreference categoriesFor: #showReferences:!accessing!private! !
!WebUserPreference categoriesFor: #topMenuButtonClassSymbol!accessing!private! !
!WebUserPreference categoriesFor: #topMenuButtonClassSymbol:!accessing!private! !
!WebUserPreference categoriesFor: #webBasicLabel!accessing!private! !
!WebUserPreference categoriesFor: #webBasicLabel:!accessing!private! !
!WebUserPreference categoriesFor: #webHeaderLabel!accessing!private! !
!WebUserPreference categoriesFor: #webHeaderLabel:!accessing!private! !
!WebUserPreference categoriesFor: #webReferencesLabel!accessing!private! !
!WebUserPreference categoriesFor: #webReferencesLabel:!accessing!private! !

!WebUserPreference class methodsFor!

addTemplate: aWebUserPreference as: aString

	^self templates at: aString put: aWebUserPreference!

default

	Default ifNil: [Default := super new initialize].

	^Default!

default: aWebUserPreference

	^Default := aWebUserPreference!

initializeDefault

	Default := nil.
	Templates := nil.

	^self default!

removeTemplateNamed: aString

	(self templates size <= 1) ifTrue: [^aString].

	^self templates removeKey: aString!

saveTemplate: aWebUserPreference as: stringName

	^self templates at: stringName put: aWebUserPreference!

templateNamed: stringName

	^self templates at: stringName!

templateNamed: stringName ifAbsent: aBlock

	^self templates at: stringName ifAbsent: aBlock!

templates

	Templates ifNil: [Templates := LookupTable new.
				self saveTemplate: self default as: 'Default'].

	^Templates! !
!WebUserPreference class categoriesFor: #addTemplate:as:!public! !
!WebUserPreference class categoriesFor: #default!public! !
!WebUserPreference class categoriesFor: #default:!public! !
!WebUserPreference class categoriesFor: #initializeDefault!public! !
!WebUserPreference class categoriesFor: #removeTemplateNamed:!public! !
!WebUserPreference class categoriesFor: #saveTemplate:as:!public! !
!WebUserPreference class categoriesFor: #templateNamed:!public! !
!WebUserPreference class categoriesFor: #templateNamed:ifAbsent:!public! !
!WebUserPreference class categoriesFor: #templates!public! !

