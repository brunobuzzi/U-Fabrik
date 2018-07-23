"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISeriesCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISeriesCollection guid: (IID fromString: '{0002086C-0001-0000-C000-000000000046}')!
ExcelISeriesCollection comment: '<ExcelISeriesCollection> is a wrapper class for the COM interface ''Excel.ISeriesCollection'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002086C-0001-0000-C000-000000000046), 
	helpcontext(0x0002002c), 
	hidden
]
interface ISeriesCollection : IDispatch
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
		[in]VARIANT Source,
		[in, defaultvalue(-4105)]XlRowCol Rowcol,
		[in, optional]VARIANT SeriesLabels,
		[in, optional]VARIANT CategoryLabels,
		[in, optional]VARIANT Replace,
		[out, retval]Series** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000e3), helpcontext(0x000100e3)]
	HRESULT __stdcall Extend(
		[in]VARIANT Source,
		[in, optional]VARIANT Rowcol,
		[in, optional]VARIANT CategoryLabels,
		[out, retval]VARIANT* RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]Series** RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000000d3), helpcontext(0x000100d3)]
	HRESULT __stdcall Paste(
		[in, defaultvalue(-4105)]XlRowCol Rowcol,
		[in, optional]VARIANT SeriesLabels,
		[in, optional]VARIANT CategoryLabels,
		[in, optional]VARIANT Replace,
		[in, optional]VARIANT NewSeries,
		[out, retval]VARIANT* RHS);
	[id(0x0000045d), helpcontext(0x0001045d)]
	HRESULT __stdcall NewSeries(
		[out, retval]Series** RHS);
	[id(0000000000), helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]Series** RHS);
};
'!
!ExcelISeriesCollection categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISeriesCollection methodsFor!

_default: index
	"Answer the <ExcelSeries> result of invoking the _Default() method of the COM object."

	| answer |
	answer := ExcelSeries newPointer.
	self
		_Default: index asVariant
		rhs: answer.
	^answer asObject
!

_Default: index rhs: rhs
	"Private - Invoke the _Default() method of the COM object.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]Series** RHS);"

	<virtual stdcall: hresult 18 variant ExcelSeries**>
	^self invalidCall!

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

add: source
	"Answer the <ExcelSeries> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: source
		 rowcol: -4105
		 seriesLabels: VARIANT unspecified
		 categoryLabels: VARIANT unspecified
		 replace: VARIANT unspecified!

add: source rowcol: rowcol seriesLabels: seriesLabels categoryLabels: categoryLabels replace: replace
	"Answer the <ExcelSeries> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelSeries newPointer.
	self
		Add: source asVariant
		rowcol: rowcol
		seriesLabels: seriesLabels asVariant
		categoryLabels: categoryLabels asVariant
		replace: replace asVariant
		rhs: answer.
	^answer asObject
!

Add: source rowcol: rowcol seriesLabels: seriesLabels categoryLabels: categoryLabels replace: replace rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]VARIANT Source,
			[in, defaultvalue(-4105)]XlRowCol Rowcol,
			[in, optional]VARIANT SeriesLabels,
			[in, optional]VARIANT CategoryLabels,
			[in, optional]VARIANT Replace,
			[out, retval]Series** RHS);"

	<virtual stdcall: hresult 11 variant sdword variant variant variant ExcelSeries**>
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

extend: source
	"Answer the <VARIANT> result of invoking the Extend() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 extend: source
		 rowcol: VARIANT unspecified
		 categoryLabels: VARIANT unspecified!

extend: source rowcol: rowcol categoryLabels: categoryLabels
	"Answer the <VARIANT> result of invoking the Extend() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Extend: source asVariant
		rowcol: rowcol asVariant
		categoryLabels: categoryLabels asVariant
		rhs: answer.
	^answer asObject
!

Extend: source rowcol: rowcol categoryLabels: categoryLabels rhs: rhs
	"Private - Invoke the Extend() method of the COM object.

		HRESULT __stdcall Extend(
			[in]VARIANT Source,
			[in, optional]VARIANT Rowcol,
			[in, optional]VARIANT CategoryLabels,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant variant variant variant*>
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
	"Answer the <ExcelSeries> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelSeries newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]Series** RHS);"

	<virtual stdcall: hresult 14 variant ExcelSeries**>
	^self invalidCall!

newSeries
	"Answer the <ExcelSeries> result of invoking the NewSeries() method of the COM object."

	| answer |
	answer := ExcelSeries newPointer.
	self NewSeries: answer.
	^answer asObject
!

NewSeries: rhs
	"Private - Invoke the NewSeries() method of the COM object.

		HRESULT __stdcall NewSeries(
			[out, retval]Series** RHS);"

	<virtual stdcall: hresult 17 ExcelSeries**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

paste
	"Answer the <VARIANT> result of invoking the Paste() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 paste: -4105
		 seriesLabels: VARIANT unspecified
		 categoryLabels: VARIANT unspecified
		 replace: VARIANT unspecified
		 newSeries: VARIANT unspecified!

paste: rowcol seriesLabels: seriesLabels categoryLabels: categoryLabels replace: replace newSeries: newSeries
	"Answer the <VARIANT> result of invoking the Paste() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Paste: rowcol
		seriesLabels: seriesLabels asVariant
		categoryLabels: categoryLabels asVariant
		replace: replace asVariant
		newSeries: newSeries asVariant
		rhs: answer.
	^answer asObject
!

Paste: rowcol seriesLabels: seriesLabels categoryLabels: categoryLabels replace: replace newSeries: newSeries rhs: rhs
	"Private - Invoke the Paste() method of the COM object.

		HRESULT __stdcall Paste(
			[in, defaultvalue(-4105)]XlRowCol Rowcol,
			[in, optional]VARIANT SeriesLabels,
			[in, optional]VARIANT CategoryLabels,
			[in, optional]VARIANT Replace,
			[in, optional]VARIANT NewSeries,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 16 sdword variant variant variant variant variant*>
	^self invalidCall!

value: index
	"Set the '_Default' property of the receiver to the <ExcelSeries**> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: index
! !
!ExcelISeriesCollection categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelISeriesCollection categoriesFor: #_Default:rhs:!**auto generated**!COM Interfaces-ISeriesCollection!private! !
!ExcelISeriesCollection categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelISeriesCollection categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-ISeriesCollection!private! !
!ExcelISeriesCollection categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelISeriesCollection categoriesFor: #add:rowcol:seriesLabels:categoryLabels:replace:!**auto generated**!methods!public! !
!ExcelISeriesCollection categoriesFor: #Add:rowcol:seriesLabels:categoryLabels:replace:rhs:!**auto generated**!COM Interfaces-ISeriesCollection!private! !
!ExcelISeriesCollection categoriesFor: #application!**auto generated**!properties!public! !
!ExcelISeriesCollection categoriesFor: #count!**auto generated**!properties!public! !
!ExcelISeriesCollection categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelISeriesCollection categoriesFor: #extend:!**auto generated**!methods!public! !
!ExcelISeriesCollection categoriesFor: #extend:rowcol:categoryLabels:!**auto generated**!methods!public! !
!ExcelISeriesCollection categoriesFor: #Extend:rowcol:categoryLabels:rhs:!**auto generated**!COM Interfaces-ISeriesCollection!private! !
!ExcelISeriesCollection categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ISeriesCollection!private! !
!ExcelISeriesCollection categoriesFor: #get_Count:!**auto generated**!COM Interfaces-ISeriesCollection!private! !
!ExcelISeriesCollection categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ISeriesCollection!private! !
!ExcelISeriesCollection categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ISeriesCollection!private! !
!ExcelISeriesCollection categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelISeriesCollection categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelISeriesCollection categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-ISeriesCollection!private! !
!ExcelISeriesCollection categoriesFor: #newSeries!**auto generated**!methods!public! !
!ExcelISeriesCollection categoriesFor: #NewSeries:!**auto generated**!COM Interfaces-ISeriesCollection!private! !
!ExcelISeriesCollection categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelISeriesCollection categoriesFor: #paste!**auto generated**!methods!public! !
!ExcelISeriesCollection categoriesFor: #paste:seriesLabels:categoryLabels:replace:newSeries:!**auto generated**!methods!public! !
!ExcelISeriesCollection categoriesFor: #Paste:seriesLabels:categoryLabels:replace:newSeries:rhs:!**auto generated**!COM Interfaces-ISeriesCollection!private! !
!ExcelISeriesCollection categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelISeriesCollection class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISeriesCollection'
		ExcelISeriesCollection defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:rowcol:seriesLabels:categoryLabels:replace:rhs:
			argumentTypes: 'variant sdword variant variant variant ExcelSeries**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Extend:rowcol:categoryLabels:rhs:
			argumentTypes: 'variant variant variant variant*';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant ExcelSeries**';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #Paste:seriesLabels:categoryLabels:replace:newSeries:rhs:
			argumentTypes: 'sdword variant variant variant variant variant*';
		defineFunction: #NewSeries:
			argumentTypes: 'ExcelSeries**';
		defineFunction: #_Default:rhs:
			argumentTypes: 'variant ExcelSeries**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISeriesCollection initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISeriesCollection class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISeriesCollection class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

