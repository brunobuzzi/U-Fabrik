"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIGroupShapes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIGroupShapes guid: (IID fromString: '{0002443C-0001-0000-C000-000000000046}')!
ExcelIGroupShapes comment: '<ExcelIGroupShapes> is a wrapper class for the COM interface ''Excel.IGroupShapes'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002443C-0001-0000-C000-000000000046), 
	helpcontext(0x000200d2), 
	hidden
]
interface IGroupShapes : IDispatch
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
		[out, retval]Shape** RHS);
	[id(0000000000), helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]Shape** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[in]VARIANT Index,
		[out, retval]ShapeRange** RHS);
};
'!
!ExcelIGroupShapes categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIGroupShapes methodsFor!

_default: index
	"Answer the <ExcelShape> result of invoking the _Default() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		_Default: index asVariant
		rhs: answer.
	^answer asObject
!

_Default: index rhs: rhs
	"Private - Invoke the _Default() method of the COM object.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 13 variant ExcelShape**>
	^self invalidCall!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

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

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 14 IUnknown**>
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

get_Range: index rhs: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[in]VARIANT Index,
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 15 variant ExcelShapeRange**>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelShape> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 12 variant ExcelShape**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

range: index
	"Answer the <ExcelShapeRange> value of the 'Range' property of the receiver."

	| answer |
	answer := ExcelShapeRange newPointer.
	self
		get_Range: index asVariant
		rhs: answer.
	^answer asObject
!

value: index
	"Set the '_Default' property of the receiver to the <ExcelShape**> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: index
! !
!ExcelIGroupShapes categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelIGroupShapes categoriesFor: #_Default:rhs:!**auto generated**!COM Interfaces-IGroupShapes!private! !
!ExcelIGroupShapes categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIGroupShapes categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIGroupShapes categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIGroupShapes categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIGroupShapes categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IGroupShapes!private! !
!ExcelIGroupShapes categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IGroupShapes!private! !
!ExcelIGroupShapes categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IGroupShapes!private! !
!ExcelIGroupShapes categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IGroupShapes!private! !
!ExcelIGroupShapes categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IGroupShapes!private! !
!ExcelIGroupShapes categoriesFor: #get_Range:rhs:!**auto generated**!COM Interfaces-IGroupShapes!private! !
!ExcelIGroupShapes categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIGroupShapes categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIGroupShapes categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IGroupShapes!private! !
!ExcelIGroupShapes categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIGroupShapes categoriesFor: #range:!**auto generated**!properties!public! !
!ExcelIGroupShapes categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelIGroupShapes class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IGroupShapes'
		ExcelIGroupShapes defineTemplate"

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
			argumentTypes: 'variant ExcelShape**';
		defineFunction: #_Default:rhs:
			argumentTypes: 'variant ExcelShape**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get_Range:rhs:
			argumentTypes: 'variant ExcelShapeRange**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIGroupShapes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIGroupShapes class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIGroupShapes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

