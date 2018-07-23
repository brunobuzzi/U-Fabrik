"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIAxes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIAxes guid: (IID fromString: '{0002085B-0001-0000-C000-000000000046}')!
ExcelIAxes comment: '<ExcelIAxes> is a wrapper class for the COM interface ''Excel.IAxes'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002085B-0001-0000-C000-000000000046), 
	helpcontext(0x0002001b), 
	hidden
]
interface IAxes : IDispatch
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
		[in]XlAxisType Type,
		[in, defaultvalue(1)]XlAxisGroup AxisGroup,
		[out, retval]Axis** RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0000000000), helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]XlAxisType Type,
		[in, defaultvalue(1)]XlAxisGroup AxisGroup,
		[out, retval]Axis** RHS);
};
'!
!ExcelIAxes categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIAxes methodsFor!

_default: type
	"Answer the <ExcelAxis> result of invoking the _Default() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _default: type
		 axisGroup: 1!

_default: type axisGroup: axisGroup
	"Answer the <ExcelAxis> result of invoking the _Default() method of the COM object."

	| answer |
	answer := ExcelAxis newPointer.
	self
		_Default: type
		axisGroup: axisGroup
		rhs: answer.
	^answer asObject
!

_Default: type axisGroup: axisGroup rhs: rhs
	"Private - Invoke the _Default() method of the COM object.

		HRESULT __stdcall _Default(
			[in]XlAxisType Type,
			[in, defaultvalue(1)]XlAxisGroup AxisGroup,
			[out, retval]Axis** RHS);"

	<virtual stdcall: hresult 14 sdword sdword ExcelAxis**>
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

	<virtual stdcall: hresult 13 IUnknown**>
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

item: type
	"Answer the <ExcelAxis> result of invoking the Item() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 item: type
		 axisGroup: 1!

item: type axisGroup: axisGroup
	"Answer the <ExcelAxis> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelAxis newPointer.
	self
		Item: type
		axisGroup: axisGroup
		rhs: answer.
	^answer asObject
!

Item: type axisGroup: axisGroup rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]XlAxisType Type,
			[in, defaultvalue(1)]XlAxisGroup AxisGroup,
			[out, retval]Axis** RHS);"

	<virtual stdcall: hresult 12 sdword sdword ExcelAxis**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIAxes categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelIAxes categoriesFor: #_default:axisGroup:!**auto generated**!methods!public! !
!ExcelIAxes categoriesFor: #_Default:axisGroup:rhs:!**auto generated**!COM Interfaces-IAxes!private! !
!ExcelIAxes categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelIAxes categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-IAxes!private! !
!ExcelIAxes categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIAxes categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIAxes categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIAxes categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IAxes!private! !
!ExcelIAxes categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IAxes!private! !
!ExcelIAxes categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IAxes!private! !
!ExcelIAxes categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IAxes!private! !
!ExcelIAxes categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIAxes categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIAxes categoriesFor: #item:axisGroup:!**auto generated**!methods!public! !
!ExcelIAxes categoriesFor: #Item:axisGroup:rhs:!**auto generated**!COM Interfaces-IAxes!private! !
!ExcelIAxes categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIAxes class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IAxes'
		ExcelIAxes defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Item:axisGroup:rhs:
			argumentTypes: 'sdword sdword ExcelAxis**';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #_Default:axisGroup:rhs:
			argumentTypes: 'sdword sdword ExcelAxis**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIAxes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIAxes class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIAxes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

