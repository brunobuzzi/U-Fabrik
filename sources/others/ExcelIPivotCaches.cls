"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotCaches
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotCaches guid: (IID fromString: '{0002441D-0001-0000-C000-000000000046}')!
ExcelIPivotCaches comment: '<ExcelIPivotCaches> is a wrapper class for the COM interface ''Excel.IPivotCaches'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002441D-0001-0000-C000-000000000046), 
	helpcontext(0x000200b3), 
	hidden
]
interface IPivotCaches : IDispatch
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
		[out, retval]PivotCache** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]PivotCache** RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000000b5), hidden, helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]XlPivotTableSourceType SourceType,
		[in, optional]VARIANT SourceData,
		[out, retval]PivotCache** RHS);
	[id(0x00000768), helpcontext(0x00010768)]
	HRESULT __stdcall Create(
		[in]XlPivotTableSourceType SourceType,
		[in, optional]VARIANT SourceData,
		[in, optional]VARIANT Version,
		[out, retval]PivotCache** RHS);
};
'!
!ExcelIPivotCaches categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotCaches methodsFor!

_default: index
	"Answer the <ExcelPivotCache> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelPivotCache newPointer.
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

	<virtual stdcall: hresult 14 IUnknown**>
	^self invalidCall!

add: sourceType
	"Answer the <ExcelPivotCache> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: sourceType
		 sourceData: VARIANT unspecified!

add: sourceType sourceData: sourceData
	"Answer the <ExcelPivotCache> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelPivotCache newPointer.
	self
		Add: sourceType
		sourceData: sourceData asVariant
		rhs: answer.
	^answer asObject
!

Add: sourceType sourceData: sourceData rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]XlPivotTableSourceType SourceType,
			[in, optional]VARIANT SourceData,
			[out, retval]PivotCache** RHS);"

	<virtual stdcall: hresult 15 sdword variant ExcelPivotCache**>
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

create: sourceType
	"Answer the <ExcelPivotCache> result of invoking the Create() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 create: sourceType
		 sourceData: VARIANT unspecified
		 version: VARIANT unspecified!

create: sourceType sourceData: sourceData version: version
	"Answer the <ExcelPivotCache> result of invoking the Create() method of the COM object."

	| answer |
	answer := ExcelPivotCache newPointer.
	self
		Create: sourceType
		sourceData: sourceData asVariant
		version: version asVariant
		rhs: answer.
	^answer asObject
!

Create: sourceType sourceData: sourceData version: version rhs: rhs
	"Private - Invoke the Create() method of the COM object.

		HRESULT __stdcall Create(
			[in]XlPivotTableSourceType SourceType,
			[in, optional]VARIANT SourceData,
			[in, optional]VARIANT Version,
			[out, retval]PivotCache** RHS);"

	<virtual stdcall: hresult 16 sdword variant variant ExcelPivotCache**>
	^self invalidCall!

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
			[out, retval]PivotCache** RHS);"

	<virtual stdcall: hresult 13 variant ExcelPivotCache**>
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
	"Answer the <ExcelPivotCache> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelPivotCache newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]PivotCache** RHS);"

	<virtual stdcall: hresult 12 variant ExcelPivotCache**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIPivotCaches categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIPivotCaches categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelIPivotCaches categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-IPivotCaches!private! !
!ExcelIPivotCaches categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelIPivotCaches categoriesFor: #add:sourceData:!**auto generated**!methods!public! !
!ExcelIPivotCaches categoriesFor: #Add:sourceData:rhs:!**auto generated**!COM Interfaces-IPivotCaches!private! !
!ExcelIPivotCaches categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotCaches categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIPivotCaches categoriesFor: #create:!**auto generated**!methods!public! !
!ExcelIPivotCaches categoriesFor: #create:sourceData:version:!**auto generated**!methods!public! !
!ExcelIPivotCaches categoriesFor: #Create:sourceData:version:rhs:!**auto generated**!COM Interfaces-IPivotCaches!private! !
!ExcelIPivotCaches categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotCaches categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IPivotCaches!private! !
!ExcelIPivotCaches categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotCaches!private! !
!ExcelIPivotCaches categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IPivotCaches!private! !
!ExcelIPivotCaches categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotCaches!private! !
!ExcelIPivotCaches categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotCaches!private! !
!ExcelIPivotCaches categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIPivotCaches categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIPivotCaches categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IPivotCaches!private! !
!ExcelIPivotCaches categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIPivotCaches class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotCaches'
		ExcelIPivotCaches defineTemplate"

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
			argumentTypes: 'variant ExcelPivotCache**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelPivotCache**';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #Add:sourceData:rhs:
			argumentTypes: 'sdword variant ExcelPivotCache**';
		defineFunction: #Create:sourceData:version:rhs:
			argumentTypes: 'sdword variant variant ExcelPivotCache**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotCaches initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotCaches class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotCaches class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

