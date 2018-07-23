"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISpinners
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISpinners guid: (IID fromString: '{0002088E-0001-0000-C000-000000000046}')!
ExcelISpinners comment: '<ExcelISpinners> is a wrapper class for the COM interface ''Excel.ISpinners'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002088E-0001-0000-C000-000000000046), 
	helpcontext(0x0002004e), 
	hidden
]
interface ISpinners : IDispatch
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
	[id(0x00010003), hidden, restricted]
	void __stdcall _Dummy3();
	[id(0x0000025a), helpcontext(0x0001025a)]
	HRESULT __stdcall BringToFront(
		[out, retval]VARIANT* RHS);
	[id(0x00000227), helpcontext(0x00010227)]
	HRESULT __stdcall Copy(
		[out, retval]VARIANT* RHS);
	[id(0x000000d5), helpcontext(0x000100d5)]
	HRESULT __stdcall CopyPicture(
		[in, defaultvalue(2)]XlPictureAppearance Appearance,
		[in, defaultvalue(-4147)]XlCopyPictureFormat Format,
		[out, retval]VARIANT* RHS);
	[id(0x00000235), helpcontext(0x00010235)]
	HRESULT __stdcall Cut(
		[out, retval]VARIANT* RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x0000040f), helpcontext(0x0001040f)]
	HRESULT __stdcall Duplicate(
		[out, retval]IDispatch** RHS);
	[id(0x00000258), propget, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000258), propput, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[in]VARIANT_BOOL RHS);
	[id(0x0000007b), propget, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[out, retval]double* RHS);
	[id(0x0000007b), propput, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[in]double RHS);
	[id(0x0001000c), hidden, restricted]
	void __stdcall _Dummy12();
	[id(0x0000007f), propget, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[out, retval]double* RHS);
	[id(0x0000007f), propput, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[in]double RHS);
	[id(0x0000010d), propget, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000010d), propput, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[in]VARIANT_BOOL RHS);
	[id(0x0001000f), hidden, restricted]
	void __stdcall _Dummy15();
	[id(0x00000254), hidden, propget, helpcontext(0x00010254)]
	HRESULT __stdcall OnAction(
		[out, retval]BSTR* RHS);
	[id(0x00000254), hidden, propput, helpcontext(0x00010254)]
	HRESULT __stdcall OnAction(
		[in]BSTR RHS);
	[id(0x00000269), propget, helpcontext(0x00010269)]
	HRESULT __stdcall Placement(
		[out, retval]VARIANT* RHS);
	[id(0x00000269), propput, helpcontext(0x00010269)]
	HRESULT __stdcall Placement(
		[in]VARIANT RHS);
	[id(0x0000026a), propget, helpcontext(0x0001026a)]
	HRESULT __stdcall PrintObject(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000026a), propput, helpcontext(0x0001026a)]
	HRESULT __stdcall PrintObject(
		[in]VARIANT_BOOL RHS);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[in, optional]VARIANT Replace,
		[out, retval]VARIANT* RHS);
	[id(0x0000025d), helpcontext(0x0001025d)]
	HRESULT __stdcall SendToBack(
		[out, retval]VARIANT* RHS);
	[id(0x0000007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[out, retval]double* RHS);
	[id(0x0000007e), propput, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[in]double RHS);
	[id(0x00010016), hidden, restricted]
	void __stdcall _Dummy22();
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]VARIANT_BOOL RHS);
	[id(0x0000007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[out, retval]double* RHS);
	[id(0x0000007a), propput, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[in]double RHS);
	[id(0x0000026e), propget, helpcontext(0x0001026e)]
	HRESULT __stdcall ZOrder(
		[out, retval]long* RHS);
	[id(0x000005f8), propget, helpcontext(0x000105f8)]
	HRESULT __stdcall ShapeRange(
		[out, retval]ShapeRange** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]long* RHS);
	[id(0000000000), propput, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]long RHS);
	[id(0x00000462), propget, helpcontext(0x00010462)]
	HRESULT __stdcall Display3DShading(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000462), propput, helpcontext(0x00010462)]
	HRESULT __stdcall Display3DShading(
		[in]VARIANT_BOOL RHS);
	[id(0x00000422), propget, helpcontext(0x00010422)]
	HRESULT __stdcall LinkedCell(
		[out, retval]BSTR* RHS);
	[id(0x00000422), propput, helpcontext(0x00010422)]
	HRESULT __stdcall LinkedCell(
		[in]BSTR RHS);
	[id(0x0000034a), propget, helpcontext(0x0001034a)]
	HRESULT __stdcall Max(
		[out, retval]long* RHS);
	[id(0x0000034a), propput, helpcontext(0x0001034a)]
	HRESULT __stdcall Max(
		[in]long RHS);
	[id(0x0000034b), propget, helpcontext(0x0001034b)]
	HRESULT __stdcall Min(
		[out, retval]long* RHS);
	[id(0x0000034b), propput, helpcontext(0x0001034b)]
	HRESULT __stdcall Min(
		[in]long RHS);
	[id(0x0000034c), propget, helpcontext(0x0001034c)]
	HRESULT __stdcall SmallChange(
		[out, retval]long* RHS);
	[id(0x0000034c), propput, helpcontext(0x0001034c)]
	HRESULT __stdcall SmallChange(
		[in]long RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]long* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]long RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]double Left,
		[in]double Top,
		[in]double Width,
		[in]double Height,
		[out, retval]Spinner** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x0000002e), helpcontext(0x0001002e)]
	HRESULT __stdcall Group(
		[out, retval]GroupObject** RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelISpinners categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISpinners methodsFor!

_default
	"Answer the <sdword> value of the '_Default' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get__Default: answer.
	^answer asObject
!

_default: rhs
	"Set the '_Default' property of the receiver to the <sdword> value of the argument."

	self put__Default: rhs
!

_dummy12
	"Answer the <VOID> result of invoking the _Dummy12() method of the COM object."

	self _Dummy12
!

_Dummy12
	"Private - Invoke the _Dummy12() method of the COM object.

		void __stdcall _Dummy12();"

	<virtual stdcall: void 22>
	^self invalidCall!

_dummy15
	"Answer the <VOID> result of invoking the _Dummy15() method of the COM object."

	self _Dummy15
!

_Dummy15
	"Private - Invoke the _Dummy15() method of the COM object.

		void __stdcall _Dummy15();"

	<virtual stdcall: void 27>
	^self invalidCall!

_dummy22
	"Answer the <VOID> result of invoking the _Dummy22() method of the COM object."

	self _Dummy22
!

_Dummy22
	"Private - Invoke the _Dummy22() method of the COM object.

		void __stdcall _Dummy22();"

	<virtual stdcall: void 38>
	^self invalidCall!

_dummy3
	"Answer the <VOID> result of invoking the _Dummy3() method of the COM object."

	self _Dummy3
!

_Dummy3
	"Private - Invoke the _Dummy3() method of the COM object.

		void __stdcall _Dummy3();"

	<virtual stdcall: void 11>
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

	<virtual stdcall: hresult 63 IUnknown**>
	^self invalidCall!

add: left top: top width: width height: height
	"Answer the <ExcelSpinner> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelSpinner newPointer.
	self
		Add: left
		top: top
		width: width
		height: height
		rhs: answer.
	^answer asObject
!

Add: left top: top width: width height: height rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]double Left,
			[in]double Top,
			[in]double Width,
			[in]double Height,
			[out, retval]Spinner** RHS);"

	<virtual stdcall: hresult 59 double double double double ExcelSpinner**>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

bringToFront
	"Answer the <VARIANT> result of invoking the BringToFront() method of the COM object."

	| answer |
	answer := VARIANT new.
	self BringToFront: answer.
	^answer asObject
!

BringToFront: rhs
	"Private - Invoke the BringToFront() method of the COM object.

		HRESULT __stdcall BringToFront(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall!

copy
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Copy: answer.
	^answer asObject
!

Copy: rhs
	"Private - Invoke the Copy() method of the COM object.

		HRESULT __stdcall Copy(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

copyPicture
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copyPicture: 2
		 format: -4147!

copyPicture: appearance format: format
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		CopyPicture: appearance
		format: format
		rhs: answer.
	^answer asObject
!

CopyPicture: appearance format: format rhs: rhs
	"Private - Invoke the CopyPicture() method of the COM object.

		HRESULT __stdcall CopyPicture(
			[in, defaultvalue(2)]XlPictureAppearance Appearance,
			[in, defaultvalue(-4147)]XlCopyPictureFormat Format,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 14 sdword sdword variant*>
	^self invalidCall!

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

cut
	"Answer the <VARIANT> result of invoking the Cut() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Cut: answer.
	^answer asObject
!

Cut: rhs
	"Private - Invoke the Cut() method of the COM object.

		HRESULT __stdcall Cut(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant*>
	^self invalidCall!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Delete: answer.
	^answer asObject
!

Delete: rhs
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 16 variant*>
	^self invalidCall!

display3DShading
	"Answer the <varbool> value of the 'Display3DShading' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Display3DShading: answer.
	^answer asObject
!

display3DShading: rhs
	"Set the 'Display3DShading' property of the receiver to the <varbool> value of the argument."

	self put_Display3DShading: rhs
!

duplicate
	"Answer the <IDispatch> result of invoking the Duplicate() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self Duplicate: answer.
	^answer asObject
!

Duplicate: rhs
	"Private - Invoke the Duplicate() method of the COM object.

		HRESULT __stdcall Duplicate(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 17 IDispatch**>
	^self invalidCall!

enabled
	"Answer the <varbool> value of the 'Enabled' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Enabled: answer.
	^answer asObject
!

enabled: rhs
	"Set the 'Enabled' property of the receiver to the <varbool> value of the argument."

	self put_Enabled: rhs
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 45 sdword*>
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

	<virtual stdcall: hresult 60 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Display3DShading: rhs
	"Private - Get the value of the 'Display3DShading' property of the receiver.

		HRESULT __stdcall Display3DShading(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 47 varbool*>
	^self invalidCall!

get_Enabled: rhs
	"Private - Get the value of the 'Enabled' property of the receiver.

		HRESULT __stdcall Enabled(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 18 varbool*>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 20 double*>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 23 double*>
	^self invalidCall!

get_LinkedCell: rhs
	"Private - Get the value of the 'LinkedCell' property of the receiver.

		HRESULT __stdcall LinkedCell(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 49 bstr*>
	^self invalidCall!

get_Locked: rhs
	"Private - Get the value of the 'Locked' property of the receiver.

		HRESULT __stdcall Locked(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_Max: rhs
	"Private - Get the value of the 'Max' property of the receiver.

		HRESULT __stdcall Max(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 51 sdword*>
	^self invalidCall!

get_Min: rhs
	"Private - Get the value of the 'Min' property of the receiver.

		HRESULT __stdcall Min(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 53 sdword*>
	^self invalidCall!

get_OnAction: rhs
	"Private - Get the value of the 'OnAction' property of the receiver.

		HRESULT __stdcall OnAction(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 28 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Placement: rhs
	"Private - Get the value of the 'Placement' property of the receiver.

		HRESULT __stdcall Placement(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 30 variant*>
	^self invalidCall!

get_PrintObject: rhs
	"Private - Get the value of the 'PrintObject' property of the receiver.

		HRESULT __stdcall PrintObject(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 32 varbool*>
	^self invalidCall!

get_ShapeRange: rhs
	"Private - Get the value of the 'ShapeRange' property of the receiver.

		HRESULT __stdcall ShapeRange(
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 44 ExcelShapeRange**>
	^self invalidCall!

get_SmallChange: rhs
	"Private - Get the value of the 'SmallChange' property of the receiver.

		HRESULT __stdcall SmallChange(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 55 sdword*>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 36 double*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 57 sdword*>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 39 varbool*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 41 double*>
	^self invalidCall!

get_ZOrder: rhs
	"Private - Get the value of the 'ZOrder' property of the receiver.

		HRESULT __stdcall ZOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 43 sdword*>
	^self invalidCall!

group
	"Answer the <ExcelGroupObject> result of invoking the Group() method of the COM object."

	| answer |
	answer := ExcelGroupObject newPointer.
	self Group: answer.
	^answer asObject
!

Group: rhs
	"Private - Invoke the Group() method of the COM object.

		HRESULT __stdcall Group(
			[out, retval]GroupObject** RHS);"

	<virtual stdcall: hresult 61 ExcelGroupObject**>
	^self invalidCall!

height
	"Answer the <double> value of the 'Height' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Height: answer.
	^answer asObject
!

height: rhs
	"Set the 'Height' property of the receiver to the <double> value of the argument."

	self put_Height: rhs
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <IDispatch> result of invoking the Item() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 62 variant IDispatch**>
	^self invalidCall!

left
	"Answer the <double> value of the 'Left' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Left: answer.
	^answer asObject
!

left: rhs
	"Set the 'Left' property of the receiver to the <double> value of the argument."

	self put_Left: rhs
!

linkedCell
	"Answer the <bstr> value of the 'LinkedCell' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_LinkedCell: answer.
	^answer asObject
!

linkedCell: rhs
	"Set the 'LinkedCell' property of the receiver to the <bstr> value of the argument."

	self put_LinkedCell: rhs
!

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Locked: answer.
	^answer asObject
!

locked: rhs
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument."

	self put_Locked: rhs
!

max
	"Answer the <sdword> value of the 'Max' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Max: answer.
	^answer asObject
!

max: rhs
	"Set the 'Max' property of the receiver to the <sdword> value of the argument."

	self put_Max: rhs
!

min
	"Answer the <sdword> value of the 'Min' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Min: answer.
	^answer asObject
!

min: rhs
	"Set the 'Min' property of the receiver to the <sdword> value of the argument."

	self put_Min: rhs
!

onAction
	"Answer the <bstr> value of the 'OnAction' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_OnAction: answer.
	^answer asObject
!

onAction: rhs
	"Set the 'OnAction' property of the receiver to the <bstr> value of the argument."

	self put_OnAction: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

placement
	"Answer the <variant> value of the 'Placement' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Placement: answer.
	^answer asObject
!

placement: rhs
	"Set the 'Placement' property of the receiver to the <variant> value of the argument."

	self put_Placement: rhs asVariant
!

printObject
	"Answer the <varbool> value of the 'PrintObject' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PrintObject: answer.
	^answer asObject
!

printObject: rhs
	"Set the 'PrintObject' property of the receiver to the <varbool> value of the argument."

	self put_PrintObject: rhs
!

put__Default: rhs
	"Private - Set the value of the '_Default' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall _Default(
			[in]long RHS);"

	<virtual stdcall: hresult 46 sdword>
	^self invalidCall!

put_Display3DShading: rhs
	"Private - Set the value of the 'Display3DShading' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Display3DShading(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 48 varbool>
	^self invalidCall!

put_Enabled: rhs
	"Private - Set the value of the 'Enabled' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Enabled(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 19 varbool>
	^self invalidCall!

put_Height: rhs
	"Private - Set the value of the 'Height' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Height(
			[in]double RHS);"

	<virtual stdcall: hresult 21 double>
	^self invalidCall!

put_Left: rhs
	"Private - Set the value of the 'Left' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Left(
			[in]double RHS);"

	<virtual stdcall: hresult 24 double>
	^self invalidCall!

put_LinkedCell: rhs
	"Private - Set the value of the 'LinkedCell' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall LinkedCell(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 50 bstr>
	^self invalidCall!

put_Locked: rhs
	"Private - Set the value of the 'Locked' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Locked(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_Max: rhs
	"Private - Set the value of the 'Max' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Max(
			[in]long RHS);"

	<virtual stdcall: hresult 52 sdword>
	^self invalidCall!

put_Min: rhs
	"Private - Set the value of the 'Min' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Min(
			[in]long RHS);"

	<virtual stdcall: hresult 54 sdword>
	^self invalidCall!

put_OnAction: rhs
	"Private - Set the value of the 'OnAction' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnAction(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 29 bstr>
	^self invalidCall!

put_Placement: rhs
	"Private - Set the value of the 'Placement' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Placement(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 31 variant>
	^self invalidCall!

put_PrintObject: rhs
	"Private - Set the value of the 'PrintObject' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PrintObject(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 33 varbool>
	^self invalidCall!

put_SmallChange: rhs
	"Private - Set the value of the 'SmallChange' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SmallChange(
			[in]long RHS);"

	<virtual stdcall: hresult 56 sdword>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Top(
			[in]double RHS);"

	<virtual stdcall: hresult 37 double>
	^self invalidCall!

put_Value: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Value(
			[in]long RHS);"

	<virtual stdcall: hresult 58 sdword>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Visible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 40 varbool>
	^self invalidCall!

put_Width: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Width(
			[in]double RHS);"

	<virtual stdcall: hresult 42 double>
	^self invalidCall!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object.
	Default values are passed for all optional parameters."

	^self select: VARIANT unspecified!

select: replace
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Select: replace asVariant
		rhs: answer.
	^answer asObject
!

Select: replace rhs: rhs
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select(
			[in, optional]VARIANT Replace,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 34 variant variant*>
	^self invalidCall!

sendToBack
	"Answer the <VARIANT> result of invoking the SendToBack() method of the COM object."

	| answer |
	answer := VARIANT new.
	self SendToBack: answer.
	^answer asObject
!

SendToBack: rhs
	"Private - Invoke the SendToBack() method of the COM object.

		HRESULT __stdcall SendToBack(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 35 variant*>
	^self invalidCall!

shapeRange
	"Answer the <ExcelShapeRange> value of the 'ShapeRange' property of the receiver."

	| answer |
	answer := ExcelShapeRange newPointer.
	self get_ShapeRange: answer.
	^answer asObject
!

smallChange
	"Answer the <sdword> value of the 'SmallChange' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SmallChange: answer.
	^answer asObject
!

smallChange: rhs
	"Set the 'SmallChange' property of the receiver to the <sdword> value of the argument."

	self put_SmallChange: rhs
!

top
	"Answer the <double> value of the 'Top' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Top: answer.
	^answer asObject
!

top: rhs
	"Set the 'Top' property of the receiver to the <double> value of the argument."

	self put_Top: rhs
!

value
	"Answer the <sdword> value of the 'Value' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Value: answer.
	^answer asObject
!

value: rhs
	"Set the 'Value' property of the receiver to the <sdword> value of the argument."

	self put_Value: rhs
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Visible: answer.
	^answer asObject
!

visible: rhs
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument."

	self put_Visible: rhs
!

width
	"Answer the <double> value of the 'Width' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Width: answer.
	^answer asObject
!

width: rhs
	"Set the 'Width' property of the receiver to the <double> value of the argument."

	self put_Width: rhs
!

zOrder
	"Answer the <sdword> value of the 'ZOrder' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ZOrder: answer.
	^answer asObject
! !
!ExcelISpinners categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #_Dummy12!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #_dummy15!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #_Dummy15!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #_Dummy22!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #_Dummy3!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #add:top:width:height:!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #Add:top:width:height:rhs:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #application!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #BringToFront:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #Copy:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #count!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #Cut:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #Delete:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #display3DShading!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #display3DShading:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #Duplicate:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #get__Default:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Count:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Display3DShading:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Height:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Left:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_LinkedCell:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Max:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Min:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Placement:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_PrintObject:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_ShapeRange:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_SmallChange:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Top:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Value:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_Width:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #get_ZOrder:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #group!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #Group:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #height!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelISpinners categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #left!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #linkedCell!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #linkedCell:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #max!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #max:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #min!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #min:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #put__Default:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_Display3DShading:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_Height:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_Left:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_LinkedCell:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_Max:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_Min:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_Placement:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_PrintObject:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_SmallChange:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_Top:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_Value:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #put_Width:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #select!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #Select:rhs:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelISpinners categoriesFor: #SendToBack:!**auto generated**!COM Interfaces-ISpinners!private! !
!ExcelISpinners categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #smallChange!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #smallChange:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #top!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #value!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #width!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelISpinners categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelISpinners class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISpinners'
		ExcelISpinners defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #_Dummy3
			returnType: 'void';
		defineFunction: #BringToFront:
			argumentTypes: 'variant*';
		defineFunction: #Copy:
			argumentTypes: 'variant*';
		defineFunction: #CopyPicture:format:rhs:
			argumentTypes: 'sdword sdword variant*';
		defineFunction: #Cut:
			argumentTypes: 'variant*';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #Duplicate:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Enabled:
			argumentTypes: 'varbool*';
		defineFunction: #put_Enabled:
			argumentTypes: 'varbool';
		defineFunction: #get_Height:
			argumentTypes: 'double*';
		defineFunction: #put_Height:
			argumentTypes: 'double';
		defineFunction: #_Dummy12
			returnType: 'void';
		defineFunction: #get_Left:
			argumentTypes: 'double*';
		defineFunction: #put_Left:
			argumentTypes: 'double';
		defineFunction: #get_Locked:
			argumentTypes: 'varbool*';
		defineFunction: #put_Locked:
			argumentTypes: 'varbool';
		defineFunction: #_Dummy15
			returnType: 'void';
		defineFunction: #get_OnAction:
			argumentTypes: 'bstr*';
		defineFunction: #put_OnAction:
			argumentTypes: 'bstr';
		defineFunction: #get_Placement:
			argumentTypes: 'variant*';
		defineFunction: #put_Placement:
			argumentTypes: 'variant';
		defineFunction: #get_PrintObject:
			argumentTypes: 'varbool*';
		defineFunction: #put_PrintObject:
			argumentTypes: 'varbool';
		defineFunction: #Select:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #SendToBack:
			argumentTypes: 'variant*';
		defineFunction: #get_Top:
			argumentTypes: 'double*';
		defineFunction: #put_Top:
			argumentTypes: 'double';
		defineFunction: #_Dummy22
			returnType: 'void';
		defineFunction: #get_Visible:
			argumentTypes: 'varbool*';
		defineFunction: #put_Visible:
			argumentTypes: 'varbool';
		defineFunction: #get_Width:
			argumentTypes: 'double*';
		defineFunction: #put_Width:
			argumentTypes: 'double';
		defineFunction: #get_ZOrder:
			argumentTypes: 'sdword*';
		defineFunction: #get_ShapeRange:
			argumentTypes: 'ExcelShapeRange**';
		defineFunction: #get__Default:
			argumentTypes: 'sdword*';
		defineFunction: #put__Default:
			argumentTypes: 'sdword';
		defineFunction: #get_Display3DShading:
			argumentTypes: 'varbool*';
		defineFunction: #put_Display3DShading:
			argumentTypes: 'varbool';
		defineFunction: #get_LinkedCell:
			argumentTypes: 'bstr*';
		defineFunction: #put_LinkedCell:
			argumentTypes: 'bstr';
		defineFunction: #get_Max:
			argumentTypes: 'sdword*';
		defineFunction: #put_Max:
			argumentTypes: 'sdword';
		defineFunction: #get_Min:
			argumentTypes: 'sdword*';
		defineFunction: #put_Min:
			argumentTypes: 'sdword';
		defineFunction: #get_SmallChange:
			argumentTypes: 'sdword*';
		defineFunction: #put_SmallChange:
			argumentTypes: 'sdword';
		defineFunction: #get_Value:
			argumentTypes: 'sdword*';
		defineFunction: #put_Value:
			argumentTypes: 'sdword';
		defineFunction: #Add:top:width:height:rhs:
			argumentTypes: 'double double double double ExcelSpinner**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Group:
			argumentTypes: 'ExcelGroupObject**';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISpinners initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISpinners class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISpinners class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

