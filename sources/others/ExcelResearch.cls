"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelResearch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelResearch guid: (IID fromString: '{000244AC-0000-0000-C000-000000000046}')!
ExcelResearch comment: '<ExcelResearch> is a wrapper class generated for the dispatch interface ''Excel.Research'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244AC-0000-0000-C000-000000000046), 
	helpcontext(0x00020142)
]
dispinterface Research {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000abf), helpcontext(0x00010abf)]
		VARIANT Query(
			[in]BSTR ServiceID,
			[in, optional]VARIANT QueryString,
			[in, optional]VARIANT QueryLanguage,
			[in, optional]VARIANT UseSelection,
			[in, optional]VARIANT LaunchQuery);
[id(0x00000ac5), helpcontext(0x00010ac5)]
		VARIANT_BOOL IsResearchService(
			[in]BSTR ServiceID);
[id(0x00000ac6), helpcontext(0x00010ac6)]
		VARIANT SetLanguagePair(
			[in]long LanguageFrom,
			[in]long LanguageTo);
};
'!
!ExcelResearch categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelResearch methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

isResearchService: serviceID
	"Answer the <VARIANT_BOOL> result of invoking the IsResearchService() method of the COM object."

	^(self invokeId: 2757 with: serviceID)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

query: serviceID
	"Answer the <VARIANT> result of invoking the Query() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 query: serviceID
		 queryString: VARIANT unspecified
		 queryLanguage: VARIANT unspecified
		 useSelection: VARIANT unspecified
		 launchQuery: VARIANT unspecified!

query: serviceID queryString: queryString queryLanguage: queryLanguage useSelection: useSelection launchQuery: launchQuery
	"Answer the <VARIANT> result of invoking the Query() method of the COM object."

	^(self invokeId: 2751 withArguments:
			((Array new: 5)
				basicAt: 1 put: serviceID;
				basicAt: 2 put: queryString;
				basicAt: 3 put: queryLanguage;
				basicAt: 4 put: useSelection;
				basicAt: 5 put: launchQuery;
				yourself))
!

setLanguagePair: languageFrom languageTo: languageTo
	"Answer the <VARIANT> result of invoking the SetLanguagePair() method of the COM object."

	^(self invokeId: 2758 with: languageFrom with: languageTo)
! !
!ExcelResearch categoriesFor: #application!**auto generated**!properties!public! !
!ExcelResearch categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelResearch categoriesFor: #isResearchService:!**auto generated**!methods!public! !
!ExcelResearch categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelResearch categoriesFor: #query:!**auto generated**!methods!public! !
!ExcelResearch categoriesFor: #query:queryString:queryLanguage:useSelection:launchQuery:!**auto generated**!methods!public! !
!ExcelResearch categoriesFor: #setLanguagePair:languageTo:!**auto generated**!methods!public! !

!ExcelResearch class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelResearch initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelResearch class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

