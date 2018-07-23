"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIConnections
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIConnections guid: (IID fromString: '{00024486-0001-0000-C000-000000000046}')!
ExcelIConnections comment: '<ExcelIConnections> is a wrapper class for the COM interface ''Excel.IConnections'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024486-0001-0000-C000-000000000046), 
	helpcontext(0x0002011c), 
	hidden
]
interface IConnections : IDispatch
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
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x00000a8c), helpcontext(0x00010a8c)]
	HRESULT __stdcall AddFromFile(
		[in]BSTR Filename,
		[out, retval]WorkbookConnection** RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Name,
		[in]BSTR Description,
		[in]VARIANT ConnectionString,
		[in]VARIANT CommandText,
		[in, optional]VARIANT lCmdtype,
		[out, retval]WorkbookConnection** RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]WorkbookConnection** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]WorkbookConnection** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIConnections categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIConnections methodsFor!

_default: index
	"Answer the <ExcelWorkbookConnection> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelWorkbookConnection newPointer.
	self
		get__Default: index asVariant
		rhs: answer.
	^answer asObject
!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

add: name description: description connectionString: connectionString commandText: commandText
	"Answer the <ExcelWorkbookConnection> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: name
		 description: description
		 connectionString: connectionString
		 commandText: commandText
		 lCmdtype: VARIANT unspecified!

add: name description: description connectionString: connectionString commandText: commandText lCmdtype: lCmdtype
	"Answer the <ExcelWorkbookConnection> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelWorkbookConnection newPointer.
	self
		Add: name
		description: description
		connectionString: connectionString asVariant
		commandText: commandText asVariant
		lCmdtype: lCmdtype asVariant
		rhs: answer.
	^answer asObject
!

Add: name description: description connectionString: connectionString commandText: commandText lCmdtype: lCmdtype rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]BSTR Name,
			[in]BSTR Description,
			[in]VARIANT ConnectionString,
			[in]VARIANT CommandText,
			[in, optional]VARIANT lCmdtype,
			[out, retval]WorkbookConnection** RHS);"

	<virtual stdcall: hresult 13 bstr bstr variant variant variant ExcelWorkbookConnection**>
	^self invalidCall!

addFromFile: filename
	"Answer the <ExcelWorkbookConnection> result of invoking the AddFromFile() method of the COM object."

	| answer |
	answer := ExcelWorkbookConnection newPointer.
	self
		AddFromFile: filename
		rhs: answer.
	^answer asObject
!

AddFromFile: filename rhs: rhs
	"Private - Invoke the AddFromFile() method of the COM object.

		HRESULT __stdcall AddFromFile(
			[in]BSTR Filename,
			[out, retval]WorkbookConnection** RHS);"

	<virtual stdcall: hresult 12 bstr ExcelWorkbookConnection**>
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

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]WorkbookConnection** RHS);"

	<virtual stdcall: hresult 15 variant ExcelWorkbookConnection**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 16 IUnknown**>
	^self invalidCall!

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

	<virtual stdcall: hresult 11 sdword*>
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
	"Answer the <ExcelWorkbookConnection> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelWorkbookConnection newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]WorkbookConnection** RHS);"

	<virtual stdcall: hresult 14 variant ExcelWorkbookConnection**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIConnections categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIConnections categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIConnections categoriesFor: #add:description:connectionString:commandText:!**auto generated**!methods!public! !
!ExcelIConnections categoriesFor: #add:description:connectionString:commandText:lCmdtype:!**auto generated**!methods!public! !
!ExcelIConnections categoriesFor: #Add:description:connectionString:commandText:lCmdtype:rhs:!**auto generated**!COM Interfaces-IConnections!private! !
!ExcelIConnections categoriesFor: #addFromFile:!**auto generated**!methods!public! !
!ExcelIConnections categoriesFor: #AddFromFile:rhs:!**auto generated**!COM Interfaces-IConnections!private! !
!ExcelIConnections categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIConnections categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIConnections categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIConnections categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IConnections!private! !
!ExcelIConnections categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IConnections!private! !
!ExcelIConnections categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IConnections!private! !
!ExcelIConnections categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IConnections!private! !
!ExcelIConnections categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IConnections!private! !
!ExcelIConnections categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IConnections!private! !
!ExcelIConnections categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIConnections categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIConnections categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IConnections!private! !
!ExcelIConnections categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIConnections class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IConnections'
		ExcelIConnections defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #AddFromFile:rhs:
			argumentTypes: 'bstr ExcelWorkbookConnection**';
		defineFunction: #Add:description:connectionString:commandText:lCmdtype:rhs:
			argumentTypes: 'bstr bstr variant variant variant ExcelWorkbookConnection**';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant ExcelWorkbookConnection**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelWorkbookConnection**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIConnections initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIConnections class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIConnections class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

