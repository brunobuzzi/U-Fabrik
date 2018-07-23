"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelITrendlines
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelITrendlines guid: (IID fromString: '{000208BD-0001-0000-C000-000000000046}')!
ExcelITrendlines comment: '<ExcelITrendlines> is a wrapper class for the COM interface ''Excel.ITrendlines'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208BD-0001-0000-C000-000000000046), 
	helpcontext(0x0002007d), 
	hidden
]
interface ITrendlines : IDispatch
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
		[in, defaultvalue(-4132)]XlTrendlineType Type,
		[in, optional]VARIANT Order,
		[in, optional]VARIANT Period,
		[in, optional]VARIANT Forward,
		[in, optional]VARIANT Backward,
		[in, optional]VARIANT Intercept,
		[in, optional]VARIANT DisplayEquation,
		[in, optional]VARIANT DisplayRSquared,
		[in, optional]VARIANT Name,
		[out, retval]Trendline** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in, optional]VARIANT Index,
		[out, retval]Trendline** RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0000000000), helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in, optional]VARIANT Index,
		[out, retval]Trendline** RHS);
};
'!
!ExcelITrendlines categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelITrendlines methodsFor!

_default
	"Answer the <ExcelTrendline> result of invoking the _Default() method of the COM object.
	Default values are passed for all optional parameters."

	^self _default: VARIANT unspecified!

_default: index
	"Answer the <ExcelTrendline> result of invoking the _Default() method of the COM object."

	| answer |
	answer := ExcelTrendline newPointer.
	self
		_Default: index asVariant
		rhs: answer.
	^answer asObject
!

_Default: index rhs: rhs
	"Private - Invoke the _Default() method of the COM object.

		HRESULT __stdcall _Default(
			[in, optional]VARIANT Index,
			[out, retval]Trendline** RHS);"

	<virtual stdcall: hresult 15 variant ExcelTrendline**>
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

	<virtual stdcall: hresult 14 IUnknown**>
	^self invalidCall!

add
	"Answer the <ExcelTrendline> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: -4132
		 order: VARIANT unspecified
		 period: VARIANT unspecified
		 forward: VARIANT unspecified
		 backward: VARIANT unspecified
		 intercept: VARIANT unspecified
		 displayEquation: VARIANT unspecified
		 displayRSquared: VARIANT unspecified
		 name: VARIANT unspecified!

add: type order: order period: period forward: forward backward: backward intercept: intercept displayEquation: displayEquation displayRSquared: displayRSquared name: name
	"Answer the <ExcelTrendline> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelTrendline newPointer.
	self
		Add: type
		order: order asVariant
		period: period asVariant
		forward: forward asVariant
		backward: backward asVariant
		intercept: intercept asVariant
		displayEquation: displayEquation asVariant
		displayRSquared: displayRSquared asVariant
		name: name asVariant
		rhs: answer.
	^answer asObject
!

Add: type order: order period: period forward: forward backward: backward intercept: intercept displayEquation: displayEquation displayRSquared: displayRSquared name: name rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in, defaultvalue(-4132)]XlTrendlineType Type,
			[in, optional]VARIANT Order,
			[in, optional]VARIANT Period,
			[in, optional]VARIANT Forward,
			[in, optional]VARIANT Backward,
			[in, optional]VARIANT Intercept,
			[in, optional]VARIANT DisplayEquation,
			[in, optional]VARIANT DisplayRSquared,
			[in, optional]VARIANT Name,
			[out, retval]Trendline** RHS);"

	<virtual stdcall: hresult 11 sdword variant variant variant variant variant variant variant variant ExcelTrendline**>
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

item
	"Answer the <ExcelTrendline> result of invoking the Item() method of the COM object.
	Default values are passed for all optional parameters."

	^self item: VARIANT unspecified!

item: index
	"Answer the <ExcelTrendline> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelTrendline newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in, optional]VARIANT Index,
			[out, retval]Trendline** RHS);"

	<virtual stdcall: hresult 13 variant ExcelTrendline**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

value: index
	"Set the '_Default' property of the receiver to the <ExcelTrendline**> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: index
! !
!ExcelITrendlines categoriesFor: #_default!**auto generated**!methods!public! !
!ExcelITrendlines categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelITrendlines categoriesFor: #_Default:rhs:!**auto generated**!COM Interfaces-ITrendlines!private! !
!ExcelITrendlines categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelITrendlines categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-ITrendlines!private! !
!ExcelITrendlines categoriesFor: #add!**auto generated**!methods!public! !
!ExcelITrendlines categoriesFor: #add:order:period:forward:backward:intercept:displayEquation:displayRSquared:name:!**auto generated**!methods!public! !
!ExcelITrendlines categoriesFor: #Add:order:period:forward:backward:intercept:displayEquation:displayRSquared:name:rhs:!**auto generated**!COM Interfaces-ITrendlines!private! !
!ExcelITrendlines categoriesFor: #application!**auto generated**!properties!public! !
!ExcelITrendlines categoriesFor: #count!**auto generated**!properties!public! !
!ExcelITrendlines categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelITrendlines categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ITrendlines!private! !
!ExcelITrendlines categoriesFor: #get_Count:!**auto generated**!COM Interfaces-ITrendlines!private! !
!ExcelITrendlines categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ITrendlines!private! !
!ExcelITrendlines categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ITrendlines!private! !
!ExcelITrendlines categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelITrendlines categoriesFor: #item!**auto generated**!methods!public! !
!ExcelITrendlines categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelITrendlines categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-ITrendlines!private! !
!ExcelITrendlines categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelITrendlines categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelITrendlines class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ITrendlines'
		ExcelITrendlines defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:order:period:forward:backward:intercept:displayEquation:displayRSquared:name:rhs:
			argumentTypes: 'sdword variant variant variant variant variant variant variant variant ExcelTrendline**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant ExcelTrendline**';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #_Default:rhs:
			argumentTypes: 'variant ExcelTrendline**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelITrendlines initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelITrendlines class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelITrendlines class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

