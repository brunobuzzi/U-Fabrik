"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIScenarios
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIScenarios guid: (IID fromString: '{00020896-0001-0000-C000-000000000046}')!
ExcelIScenarios comment: '<ExcelIScenarios> is a wrapper class for the COM interface ''Excel.IScenarios'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020896-0001-0000-C000-000000000046), 
	helpcontext(0x00020056), 
	hidden
]
interface IScenarios : IDispatch
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
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Name,
		[in]VARIANT ChangingCells,
		[in, optional]VARIANT Values,
		[in, optional]VARIANT Comment,
		[in, optional]VARIANT Locked,
		[in, optional]VARIANT Hidden,
		[out, retval]Scenario** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x00000391), helpcontext(0x00010391)]
	HRESULT __stdcall CreateSummary(
		[in, defaultvalue(1)]XlSummaryReportType ReportType,
		[in, optional]VARIANT ResultCells,
		[out, retval]VARIANT* RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]Scenario** RHS);
	[id(0x00000234), helpcontext(0x00010234)]
	HRESULT __stdcall Merge(
		[in]VARIANT Source,
		[out, retval]VARIANT* RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIScenarios categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIScenarios methodsFor!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	| answer |
	answer := IUnknown newPointer.
	self _NewEnum: answer.
	^answer asObject
!

_NewEnum: rhs
	"Private - Invoke the _NewEnum() method of the COM object.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 16 IUnknown**>
	^self invalidCall!

add: name changingCells: changingCells
	"Answer the <ExcelScenario> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: name
		 changingCells: changingCells
		 values: VARIANT unspecified
		 comment: VARIANT unspecified
		 locked: VARIANT unspecified
		 hidden: VARIANT unspecified!

add: name changingCells: changingCells values: values comment: comment locked: locked hidden: hidden
	"Answer the <ExcelScenario> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelScenario newPointer.
	self
		Add: name
		changingCells: changingCells asVariant
		values: values asVariant
		comment: comment asVariant
		locked: locked asVariant
		hidden: hidden asVariant
		rhs: answer.
	^answer asObject
!

Add: name changingCells: changingCells values: values comment: comment locked: locked hidden: hidden rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]BSTR Name,
			[in]VARIANT ChangingCells,
			[in, optional]VARIANT Values,
			[in, optional]VARIANT Comment,
			[in, optional]VARIANT Locked,
			[in, optional]VARIANT Hidden,
			[out, retval]Scenario** RHS);"

	<virtual stdcall: hresult 11 bstr variant variant variant variant variant ExcelScenario**>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

createSummary
	"Answer the <VARIANT> result of invoking the CreateSummary() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 createSummary: 1
		 resultCells: VARIANT unspecified!

createSummary: reportType resultCells: resultCells
	"Answer the <VARIANT> result of invoking the CreateSummary() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		CreateSummary: reportType
		resultCells: resultCells asVariant
		rhs: answer.
	^answer asObject
!

CreateSummary: reportType resultCells: resultCells rhs: rhs
	"Private - Invoke the CreateSummary() method of the COM object.

		HRESULT __stdcall CreateSummary(
			[in, defaultvalue(1)]XlSummaryReportType ReportType,
			[in, optional]VARIANT ResultCells,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 sdword variant variant*>
	^self invalidCall!

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

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 12 sdword*>
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

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelScenario> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelScenario newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]Scenario** RHS);"

	<virtual stdcall: hresult 14 variant ExcelScenario**>
	^self invalidCall!

merge: source
	"Answer the <VARIANT> result of invoking the Merge() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Merge: source asVariant
		rhs: answer.
	^answer asObject
!

Merge: source rhs: rhs
	"Private - Invoke the Merge() method of the COM object.

		HRESULT __stdcall Merge(
			[in]VARIANT Source,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant variant*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIScenarios categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelIScenarios categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-IScenarios!private! !
!ExcelIScenarios categoriesFor: #add:changingCells:!**auto generated**!methods!public! !
!ExcelIScenarios categoriesFor: #add:changingCells:values:comment:locked:hidden:!**auto generated**!methods!public! !
!ExcelIScenarios categoriesFor: #Add:changingCells:values:comment:locked:hidden:rhs:!**auto generated**!COM Interfaces-IScenarios!private! !
!ExcelIScenarios categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIScenarios categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIScenarios categoriesFor: #createSummary!**auto generated**!methods!public! !
!ExcelIScenarios categoriesFor: #createSummary:resultCells:!**auto generated**!methods!public! !
!ExcelIScenarios categoriesFor: #CreateSummary:resultCells:rhs:!**auto generated**!COM Interfaces-IScenarios!private! !
!ExcelIScenarios categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIScenarios categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IScenarios!private! !
!ExcelIScenarios categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IScenarios!private! !
!ExcelIScenarios categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IScenarios!private! !
!ExcelIScenarios categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IScenarios!private! !
!ExcelIScenarios categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIScenarios categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIScenarios categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IScenarios!private! !
!ExcelIScenarios categoriesFor: #merge:!**auto generated**!methods!public! !
!ExcelIScenarios categoriesFor: #Merge:rhs:!**auto generated**!COM Interfaces-IScenarios!private! !
!ExcelIScenarios categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIScenarios class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IScenarios'
		ExcelIScenarios defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:changingCells:values:comment:locked:hidden:rhs:
			argumentTypes: 'bstr variant variant variant variant variant ExcelScenario**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #CreateSummary:resultCells:rhs:
			argumentTypes: 'sdword variant variant*';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant ExcelScenario**';
		defineFunction: #Merge:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIScenarios initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIScenarios class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIScenarios class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

