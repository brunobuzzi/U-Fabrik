"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIListObjects
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIListObjects guid: (IID fromString: '{00024470-0001-0000-C000-000000000046}')!
ExcelIListObjects comment: '<ExcelIListObjects> is a wrapper class for the COM interface ''Excel.IListObjects'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024470-0001-0000-C000-000000000046), 
	helpcontext(0x00020106), 
	hidden
]
interface IListObjects : IDispatch
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
	[id(0x00000825), hidden, helpcontext(0x00010825)]
	HRESULT __stdcall _Add(
		[in, defaultvalue(1)]XlListObjectSourceType SourceType,
		[in, optional]VARIANT Source,
		[in, optional]VARIANT LinkSource,
		[in, defaultvalue(0)]XlYesNoGuess XlListObjectHasHeaders,
		[in, optional]VARIANT Destination,
		[out, retval]ListObject** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]ListObject** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]ListObject** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in, defaultvalue(1)]XlListObjectSourceType SourceType,
		[in, optional]VARIANT Source,
		[in, optional]VARIANT LinkSource,
		[in, defaultvalue(0)]XlYesNoGuess XlListObjectHasHeaders,
		[in, optional]VARIANT Destination,
		[in, optional]VARIANT TableStyleName,
		[out, retval]ListObject** RHS);
};
'!
!ExcelIListObjects categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIListObjects methodsFor!

_add
	"Answer the <ExcelListObject> result of invoking the _Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _add: 1
		 source: VARIANT unspecified
		 linkSource: VARIANT unspecified
		 xlListObjectHasHeaders: 0
		 destination: VARIANT unspecified!

_add: sourceType source: source linkSource: linkSource xlListObjectHasHeaders: xlListObjectHasHeaders destination: destination
	"Answer the <ExcelListObject> result of invoking the _Add() method of the COM object."

	| answer |
	answer := ExcelListObject newPointer.
	self
		_Add: sourceType
		source: source asVariant
		linkSource: linkSource asVariant
		xlListObjectHasHeaders: xlListObjectHasHeaders
		destination: destination asVariant
		rhs: answer.
	^answer asObject
!

_Add: sourceType source: source linkSource: linkSource xlListObjectHasHeaders: xlListObjectHasHeaders destination: destination rhs: rhs
	"Private - Invoke the _Add() method of the COM object.

		HRESULT __stdcall _Add(
			[in, defaultvalue(1)]XlListObjectSourceType SourceType,
			[in, optional]VARIANT Source,
			[in, optional]VARIANT LinkSource,
			[in, defaultvalue(0)]XlYesNoGuess XlListObjectHasHeaders,
			[in, optional]VARIANT Destination,
			[out, retval]ListObject** RHS);"

	<virtual stdcall: hresult 11 sdword variant variant sdword variant ExcelListObject**>
	^self invalidCall!

_default: index
	"Answer the <ExcelListObject> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelListObject newPointer.
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

add
	"Answer the <ExcelListObject> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: 1
		 source: VARIANT unspecified
		 linkSource: VARIANT unspecified
		 xlListObjectHasHeaders: 0
		 destination: VARIANT unspecified
		 tableStyleName: VARIANT unspecified!

add: sourceType source: source linkSource: linkSource xlListObjectHasHeaders: xlListObjectHasHeaders destination: destination tableStyleName: tableStyleName
	"Answer the <ExcelListObject> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelListObject newPointer.
	self
		Add: sourceType
		source: source asVariant
		linkSource: linkSource asVariant
		xlListObjectHasHeaders: xlListObjectHasHeaders
		destination: destination asVariant
		tableStyleName: tableStyleName asVariant
		rhs: answer.
	^answer asObject
!

Add: sourceType source: source linkSource: linkSource xlListObjectHasHeaders: xlListObjectHasHeaders destination: destination tableStyleName: tableStyleName rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in, defaultvalue(1)]XlListObjectSourceType SourceType,
			[in, optional]VARIANT Source,
			[in, optional]VARIANT LinkSource,
			[in, defaultvalue(0)]XlYesNoGuess XlListObjectHasHeaders,
			[in, optional]VARIANT Destination,
			[in, optional]VARIANT TableStyleName,
			[out, retval]ListObject** RHS);"

	<virtual stdcall: hresult 16 sdword variant variant sdword variant variant ExcelListObject**>
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
			[out, retval]ListObject** RHS);"

	<virtual stdcall: hresult 12 variant ExcelListObject**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 13 IUnknown**>
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

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]ListObject** RHS);"

	<virtual stdcall: hresult 14 variant ExcelListObject**>
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
	"Answer the <ExcelListObject> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelListObject newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIListObjects categoriesFor: #_add!**auto generated**!methods!public! !
!ExcelIListObjects categoriesFor: #_add:source:linkSource:xlListObjectHasHeaders:destination:!**auto generated**!methods!public! !
!ExcelIListObjects categoriesFor: #_Add:source:linkSource:xlListObjectHasHeaders:destination:rhs:!**auto generated**!COM Interfaces-IListObjects!private! !
!ExcelIListObjects categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIListObjects categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIListObjects categoriesFor: #add!**auto generated**!methods!public! !
!ExcelIListObjects categoriesFor: #add:source:linkSource:xlListObjectHasHeaders:destination:tableStyleName:!**auto generated**!methods!public! !
!ExcelIListObjects categoriesFor: #Add:source:linkSource:xlListObjectHasHeaders:destination:tableStyleName:rhs:!**auto generated**!COM Interfaces-IListObjects!private! !
!ExcelIListObjects categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIListObjects categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIListObjects categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIListObjects categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IListObjects!private! !
!ExcelIListObjects categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IListObjects!private! !
!ExcelIListObjects categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IListObjects!private! !
!ExcelIListObjects categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IListObjects!private! !
!ExcelIListObjects categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IListObjects!private! !
!ExcelIListObjects categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IListObjects!private! !
!ExcelIListObjects categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IListObjects!private! !
!ExcelIListObjects categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIListObjects categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIListObjects categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIListObjects class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IListObjects'
		ExcelIListObjects defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #_Add:source:linkSource:xlListObjectHasHeaders:destination:rhs:
			argumentTypes: 'sdword variant variant sdword variant ExcelListObject**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelListObject**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelListObject**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Add:source:linkSource:xlListObjectHasHeaders:destination:tableStyleName:rhs:
			argumentTypes: 'sdword variant variant sdword variant variant ExcelListObject**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIListObjects initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIListObjects class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIListObjects class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

