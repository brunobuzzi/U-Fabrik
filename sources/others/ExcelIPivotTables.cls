"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotTables
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotTables guid: (IID fromString: '{00020873-0001-0000-C000-000000000046}')!
ExcelIPivotTables comment: '<ExcelIPivotTables> is a wrapper class for the COM interface ''Excel.IPivotTables'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020873-0001-0000-C000-000000000046), 
	helpcontext(0x00020033), 
	hidden
]
interface IPivotTables : IDispatch
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
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]PivotTable** RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]PivotCache* PivotCache,
		[in]VARIANT TableDestination,
		[in, optional]VARIANT TableName,
		[in, optional]VARIANT ReadData,
		[in, optional]VARIANT DefaultVersion,
		[out, retval]PivotTable** RHS);
};
'!
!ExcelIPivotTables categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotTables methodsFor!

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

	<virtual stdcall: hresult 13 IUnknown**>
	^self invalidCall!

add: pivotCache tableDestination: tableDestination
	"Answer the <ExcelPivotTable> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: pivotCache
		 tableDestination: tableDestination
		 tableName: VARIANT unspecified
		 readData: VARIANT unspecified
		 defaultVersion: VARIANT unspecified!

add: pivotCache tableDestination: tableDestination tableName: tableName readData: readData defaultVersion: defaultVersion
	"Answer the <ExcelPivotTable> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelPivotTable newPointer.
	self
		Add: pivotCache
		tableDestination: tableDestination asVariant
		tableName: tableName asVariant
		readData: readData asVariant
		defaultVersion: defaultVersion asVariant
		rhs: answer.
	^answer asObject
!

Add: pivotCache tableDestination: tableDestination tableName: tableName readData: readData defaultVersion: defaultVersion rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]PivotCache* PivotCache,
			[in]VARIANT TableDestination,
			[in, optional]VARIANT TableName,
			[in, optional]VARIANT ReadData,
			[in, optional]VARIANT DefaultVersion,
			[out, retval]PivotTable** RHS);"

	<virtual stdcall: hresult 14 ExcelPivotCache* variant variant variant variant ExcelPivotTable**>
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
	"Answer the <ExcelPivotTable> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelPivotTable newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]PivotTable** RHS);"

	<virtual stdcall: hresult 12 variant ExcelPivotTable**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIPivotTables categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelIPivotTables categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-IPivotTables!private! !
!ExcelIPivotTables categoriesFor: #add:tableDestination:!**auto generated**!methods!public! !
!ExcelIPivotTables categoriesFor: #add:tableDestination:tableName:readData:defaultVersion:!**auto generated**!methods!public! !
!ExcelIPivotTables categoriesFor: #Add:tableDestination:tableName:readData:defaultVersion:rhs:!**auto generated**!COM Interfaces-IPivotTables!private! !
!ExcelIPivotTables categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotTables categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIPivotTables categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotTables categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotTables!private! !
!ExcelIPivotTables categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IPivotTables!private! !
!ExcelIPivotTables categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotTables!private! !
!ExcelIPivotTables categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotTables!private! !
!ExcelIPivotTables categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIPivotTables categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIPivotTables categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IPivotTables!private! !
!ExcelIPivotTables categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIPivotTables class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotTables'
		ExcelIPivotTables defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant ExcelPivotTable**';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #Add:tableDestination:tableName:readData:defaultVersion:rhs:
			argumentTypes: 'ExcelPivotCache* variant variant variant variant ExcelPivotTable**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotTables initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotTables class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotTables class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

