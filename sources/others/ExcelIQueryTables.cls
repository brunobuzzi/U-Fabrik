"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIQueryTables
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIQueryTables guid: (IID fromString: '{00024429-0001-0000-C000-000000000046}')!
ExcelIQueryTables comment: '<ExcelIQueryTables> is a wrapper class for the COM interface ''Excel.IQueryTables'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024429-0001-0000-C000-000000000046), 
	helpcontext(0x000200bf), 
	hidden
]
interface IQueryTables : IDispatch
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
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]VARIANT Connection,
		[in]Range* Destination,
		[in, optional]VARIANT Sql,
		[out, retval]QueryTable** RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]QueryTable** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]QueryTable** RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIQueryTables categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIQueryTables methodsFor!

_default: index
	"Answer the <Excel_QueryTable> value of the '_Default' property of the receiver."

	| answer |
	answer := Excel_QueryTable newPointer.
	self
		get__Default: index asVariant
		rhs: answer.
	^answer asObject
!

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

	<virtual stdcall: hresult 15 IUnknown**>
	^self invalidCall!

add: connection destination: destination
	"Answer the <Excel_QueryTable> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: connection
		 destination: destination
		 sql: VARIANT unspecified!

add: connection destination: destination sql: sql
	"Answer the <Excel_QueryTable> result of invoking the Add() method of the COM object."

	| answer |
	answer := Excel_QueryTable newPointer.
	self
		Add: connection asVariant
		destination: destination
		sql: sql asVariant
		rhs: answer.
	^answer asObject
!

Add: connection destination: destination sql: sql rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]VARIANT Connection,
			[in]Range* Destination,
			[in, optional]VARIANT Sql,
			[out, retval]QueryTable** RHS);"

	<virtual stdcall: hresult 12 variant ExcelRange* variant Excel_QueryTable**>
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
			[out, retval]QueryTable** RHS);"

	<virtual stdcall: hresult 14 variant Excel_QueryTable**>
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
	"Answer the <Excel_QueryTable> result of invoking the Item() method of the COM object."

	| answer |
	answer := Excel_QueryTable newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]QueryTable** RHS);"

	<virtual stdcall: hresult 13 variant Excel_QueryTable**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIQueryTables categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIQueryTables categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelIQueryTables categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-IQueryTables!private! !
!ExcelIQueryTables categoriesFor: #add:destination:!**auto generated**!methods!public! !
!ExcelIQueryTables categoriesFor: #add:destination:sql:!**auto generated**!methods!public! !
!ExcelIQueryTables categoriesFor: #Add:destination:sql:rhs:!**auto generated**!COM Interfaces-IQueryTables!private! !
!ExcelIQueryTables categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIQueryTables categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIQueryTables categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIQueryTables categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IQueryTables!private! !
!ExcelIQueryTables categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IQueryTables!private! !
!ExcelIQueryTables categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IQueryTables!private! !
!ExcelIQueryTables categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IQueryTables!private! !
!ExcelIQueryTables categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IQueryTables!private! !
!ExcelIQueryTables categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIQueryTables categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIQueryTables categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IQueryTables!private! !
!ExcelIQueryTables categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIQueryTables class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IQueryTables'
		ExcelIQueryTables defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Add:destination:sql:rhs:
			argumentTypes: 'variant ExcelRange* variant Excel_QueryTable**';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant Excel_QueryTable**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant Excel_QueryTable**';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIQueryTables initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIQueryTables class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIQueryTables class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

