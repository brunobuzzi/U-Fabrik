"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIResearch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIResearch guid: (IID fromString: '{000244AC-0001-0000-C000-000000000046}')!
ExcelIResearch comment: '<ExcelIResearch> is a wrapper class for the COM interface ''Excel.IResearch'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244AC-0001-0000-C000-000000000046), 
	helpcontext(0x00020142), 
	hidden
]
interface IResearch : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** RHS);
	[id(0x00000abf), helpcontext(0x00010abf)]
	HRESULT __stdcall Query(
		[in]BSTR ServiceID,
		[in, optional]VARIANT QueryString,
		[in, optional]VARIANT QueryLanguage,
		[in, optional]VARIANT UseSelection,
		[in, optional]VARIANT LaunchQuery,
		[out, retval]VARIANT* RHS);
	[id(0x00000ac5), helpcontext(0x00010ac5)]
	HRESULT __stdcall IsResearchService(
		[in]BSTR ServiceID,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000ac6), helpcontext(0x00010ac6)]
	HRESULT __stdcall SetLanguagePair(
		[in]long LanguageFrom,
		[in]long LanguageTo,
		[out, retval]VARIANT* RHS);
};
'!
!ExcelIResearch categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIResearch methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

isResearchService: serviceID
	"Answer the <VARIANT_BOOL> result of invoking the IsResearchService() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		IsResearchService: serviceID
		rhs: answer.
	^answer asObject
!

IsResearchService: serviceID rhs: rhs
	"Private - Invoke the IsResearchService() method of the COM object.

		HRESULT __stdcall IsResearchService(
			[in]BSTR ServiceID,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 12 bstr varbool*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
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

	| answer |
	answer := VARIANT new.
	self
		Query: serviceID
		queryString: queryString asVariant
		queryLanguage: queryLanguage asVariant
		useSelection: useSelection asVariant
		launchQuery: launchQuery asVariant
		rhs: answer.
	^answer asObject
!

Query: serviceID queryString: queryString queryLanguage: queryLanguage useSelection: useSelection launchQuery: launchQuery rhs: rhs
	"Private - Invoke the Query() method of the COM object.

		HRESULT __stdcall Query(
			[in]BSTR ServiceID,
			[in, optional]VARIANT QueryString,
			[in, optional]VARIANT QueryLanguage,
			[in, optional]VARIANT UseSelection,
			[in, optional]VARIANT LaunchQuery,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 bstr variant variant variant variant variant*>
	^self invalidCall!

setLanguagePair: languageFrom languageTo: languageTo
	"Answer the <VARIANT> result of invoking the SetLanguagePair() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		SetLanguagePair: languageFrom
		languageTo: languageTo
		rhs: answer.
	^answer asObject
!

SetLanguagePair: languageFrom languageTo: languageTo rhs: rhs
	"Private - Invoke the SetLanguagePair() method of the COM object.

		HRESULT __stdcall SetLanguagePair(
			[in]long LanguageFrom,
			[in]long LanguageTo,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 sdword sdword variant*>
	^self invalidCall! !
!ExcelIResearch categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIResearch categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIResearch categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IResearch!private! !
!ExcelIResearch categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IResearch!private! !
!ExcelIResearch categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IResearch!private! !
!ExcelIResearch categoriesFor: #isResearchService:!**auto generated**!methods!public! !
!ExcelIResearch categoriesFor: #IsResearchService:rhs:!**auto generated**!COM Interfaces-IResearch!private! !
!ExcelIResearch categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIResearch categoriesFor: #query:!**auto generated**!methods!public! !
!ExcelIResearch categoriesFor: #query:queryString:queryLanguage:useSelection:launchQuery:!**auto generated**!methods!public! !
!ExcelIResearch categoriesFor: #Query:queryString:queryLanguage:useSelection:launchQuery:rhs:!**auto generated**!COM Interfaces-IResearch!private! !
!ExcelIResearch categoriesFor: #setLanguagePair:languageTo:!**auto generated**!methods!public! !
!ExcelIResearch categoriesFor: #SetLanguagePair:languageTo:rhs:!**auto generated**!COM Interfaces-IResearch!private! !

!ExcelIResearch class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IResearch'
		ExcelIResearch defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Query:queryString:queryLanguage:useSelection:launchQuery:rhs:
			argumentTypes: 'bstr variant variant variant variant variant*';
		defineFunction: #IsResearchService:rhs:
			argumentTypes: 'bstr varbool*';
		defineFunction: #SetLanguagePair:languageTo:rhs:
			argumentTypes: 'sdword sdword variant*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIResearch initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIResearch class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIResearch class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

