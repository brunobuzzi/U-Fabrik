"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIWorkbookConnection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIWorkbookConnection guid: (IID fromString: '{00024485-0001-0000-C000-000000000046}')!
ExcelIWorkbookConnection comment: '<ExcelIWorkbookConnection> is a wrapper class for the COM interface ''Excel.IWorkbookConnection'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024485-0001-0000-C000-000000000046), 
	helpcontext(0x0002011b), 
	hidden
]
interface IWorkbookConnection : IDispatch
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
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x000000da), propget, helpcontext(0x000100da)]
	HRESULT __stdcall Description(
		[out, retval]BSTR* RHS);
	[id(0x000000da), propput, helpcontext(0x000100da)]
	HRESULT __stdcall Description(
		[in]BSTR RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0000000000), propput, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]BSTR RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]XlConnectionType* RHS);
	[id(0x00000a89), propget, helpcontext(0x00010a89)]
	HRESULT __stdcall OLEDBConnection(
		[out, retval]OLEDBConnection** RHS);
	[id(0x00000a8a), propget, helpcontext(0x00010a8a)]
	HRESULT __stdcall ODBCConnection(
		[out, retval]ODBCConnection** RHS);
	[id(0x00000a8b), propget, helpcontext(0x00010a8b)]
	HRESULT __stdcall Ranges(
		[out, retval]Ranges** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000589), helpcontext(0x00010589)]
	HRESULT __stdcall Refresh();
};
'!
!ExcelIWorkbookConnection categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIWorkbookConnection methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

_default: rhs
	"Set the '_Default' property of the receiver to the <bstr> value of the argument."

	self put__Default: rhs
!

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

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 21>
	^self invalidCall!

description
	"Answer the <bstr> value of the 'Description' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Description: answer.
	^answer asObject
!

description: rhs
	"Set the 'Description' property of the receiver to the <bstr> value of the argument."

	self put_Description: rhs
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

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

get_Description: rhs
	"Private - Get the value of the 'Description' property of the receiver.

		HRESULT __stdcall Description(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_ODBCConnection: rhs
	"Private - Get the value of the 'ODBCConnection' property of the receiver.

		HRESULT __stdcall ODBCConnection(
			[out, retval]ODBCConnection** RHS);"

	<virtual stdcall: hresult 19 ExcelODBCConnection**>
	^self invalidCall!

get_OLEDBConnection: rhs
	"Private - Get the value of the 'OLEDBConnection' property of the receiver.

		HRESULT __stdcall OLEDBConnection(
			[out, retval]OLEDBConnection** RHS);"

	<virtual stdcall: hresult 18 ExcelOLEDBConnection**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Ranges: rhs
	"Private - Get the value of the 'Ranges' property of the receiver.

		HRESULT __stdcall Ranges(
			[out, retval]Ranges** RHS);"

	<virtual stdcall: hresult 20 ExcelRanges**>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]XlConnectionType* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <bstr> value of the argument."

	self put_Name: rhs
!

odbcConnection
	"Answer the <ExcelODBCConnection> value of the 'ODBCConnection' property of the receiver."

	| answer |
	answer := ExcelODBCConnection newPointer.
	self get_ODBCConnection: answer.
	^answer asObject
!

oledbConnection
	"Answer the <ExcelOLEDBConnection> value of the 'OLEDBConnection' property of the receiver."

	| answer |
	answer := ExcelOLEDBConnection newPointer.
	self get_OLEDBConnection: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put__Default: rhs
	"Private - Set the value of the '_Default' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall _Default(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 16 bstr>
	^self invalidCall!

put_Description: rhs
	"Private - Set the value of the 'Description' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Description(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 14 bstr>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 12 bstr>
	^self invalidCall!

ranges
	"Answer the <ExcelRanges> value of the 'Ranges' property of the receiver."

	| answer |
	answer := ExcelRanges newPointer.
	self get_Ranges: answer.
	^answer asObject
!

refresh
	"Invoke the Refresh() method of the COM object."

	^self Refresh
!

Refresh
	"Private - Invoke the Refresh() method of the COM object.

		HRESULT __stdcall Refresh();"

	<virtual stdcall: hresult 22>
	^self invalidCall!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
!

value: rhs
	"Set the '_Default' property of the receiver to the <bstr> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: rhs
! !
!ExcelIWorkbookConnection categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIWorkbookConnection categoriesFor: #Delete!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #description!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #description:!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #get_Description:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #get_ODBCConnection:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #get_OLEDBConnection:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #get_Ranges:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #odbcConnection!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #oledbConnection!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #put__Default:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #put_Description:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #ranges!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #refresh!**auto generated**!methods!public! !
!ExcelIWorkbookConnection categoriesFor: #Refresh!**auto generated**!COM Interfaces-IWorkbookConnection!private! !
!ExcelIWorkbookConnection categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIWorkbookConnection categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelIWorkbookConnection class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IWorkbookConnection'
		ExcelIWorkbookConnection defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_Description:
			argumentTypes: 'bstr*';
		defineFunction: #put_Description:
			argumentTypes: 'bstr';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #put__Default:
			argumentTypes: 'bstr';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_OLEDBConnection:
			argumentTypes: 'ExcelOLEDBConnection**';
		defineFunction: #get_ODBCConnection:
			argumentTypes: 'ExcelODBCConnection**';
		defineFunction: #get_Ranges:
			argumentTypes: 'ExcelRanges**';
		defineFunction: #Delete;
		defineFunction: #Refresh
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIWorkbookConnection initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIWorkbookConnection class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIWorkbookConnection class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

