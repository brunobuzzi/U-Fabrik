"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIChartObjects
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIChartObjects guid: (IID fromString: '{000208D0-0001-0000-C000-000000000046}')!
ExcelIChartObjects comment: '<ExcelIChartObjects> is a wrapper class for the COM interface ''Excel.IChartObjects'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208D0-0001-0000-C000-000000000046), 
	helpcontext(0x0002008f), 
	hidden
]
interface IChartObjects : IDispatch
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
	[id(0x0000025a), hidden, helpcontext(0x0001025a)]
	HRESULT __stdcall BringToFront(
		[out, retval]VARIANT* RHS);
	[id(0x00000a31), hidden, helpcontext(0x00010a31)]
	HRESULT __stdcall _Copy(
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
	[id(0x00000258), hidden, propget, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000258), hidden, propput, helpcontext(0x00010258)]
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
	[id(0x0000025d), hidden, helpcontext(0x0001025d)]
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
	[id(0x00010019), hidden, restricted]
	void __stdcall _Dummy25();
	[id(0x000005f8), propget, helpcontext(0x000105f8)]
	HRESULT __stdcall ShapeRange(
		[out, retval]ShapeRange** RHS);
	[id(0x0001001b), hidden, restricted]
	void __stdcall _Dummy27();
	[id(0x0001001c), hidden, restricted]
	void __stdcall _Dummy28();
	[id(0x000005f9), propget, helpcontext(0x000105f9)]
	HRESULT __stdcall ProtectChartObject(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005f9), propput, helpcontext(0x000105f9)]
	HRESULT __stdcall ProtectChartObject(
		[in]VARIANT_BOOL RHS);
	[id(0x0000026b), hidden, propget, helpcontext(0x0001026b)]
	HRESULT __stdcall RoundedCorners(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000026b), hidden, propput, helpcontext(0x0001026b)]
	HRESULT __stdcall RoundedCorners(
		[in]VARIANT_BOOL RHS);
	[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x00000067), hidden, propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000067), hidden, propput, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[in]VARIANT_BOOL RHS);
	[id(0x00000227), helpcontext(0x00010227)]
	HRESULT __stdcall Copy(
		[out, retval]VARIANT* RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]double Left,
		[in]double Top,
		[in]double Width,
		[in]double Height,
		[out, retval]ChartObject** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x0000002e), hidden, helpcontext(0x0001002e)]
	HRESULT __stdcall Group(
		[out, retval]GroupObject** RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0000000000), helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
};
'!
!ExcelIChartObjects categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIChartObjects methodsFor!

_copy
	"Answer the <VARIANT> result of invoking the _Copy() method of the COM object."

	| answer |
	answer := VARIANT new.
	self _Copy: answer.
	^answer asObject
!

_Copy: rhs
	"Private - Invoke the _Copy() method of the COM object.

		HRESULT __stdcall _Copy(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

_default: index
	"Answer the <IDispatch> result of invoking the _Default() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		_Default: index asVariant
		rhs: answer.
	^answer asObject
!

_Default: index rhs: rhs
	"Private - Invoke the _Default() method of the COM object.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 61 variant IDispatch**>
	^self invalidCall!

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

_dummy25
	"Answer the <VOID> result of invoking the _Dummy25() method of the COM object."

	self _Dummy25
!

_Dummy25
	"Private - Invoke the _Dummy25() method of the COM object.

		void __stdcall _Dummy25();"

	<virtual stdcall: void 43>
	^self invalidCall!

_dummy27
	"Answer the <VOID> result of invoking the _Dummy27() method of the COM object."

	self _Dummy27
!

_Dummy27
	"Private - Invoke the _Dummy27() method of the COM object.

		void __stdcall _Dummy27();"

	<virtual stdcall: void 45>
	^self invalidCall!

_dummy28
	"Answer the <VOID> result of invoking the _Dummy28() method of the COM object."

	self _Dummy28
!

_Dummy28
	"Private - Invoke the _Dummy28() method of the COM object.

		void __stdcall _Dummy28();"

	<virtual stdcall: void 46>
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

	<virtual stdcall: hresult 60 IUnknown**>
	^self invalidCall!

add: left top: top width: width height: height
	"Answer the <ExcelChartObject> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelChartObject newPointer.
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
			[out, retval]ChartObject** RHS);"

	<virtual stdcall: hresult 56 double double double double ExcelChartObject**>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self get_Border: answer.
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

	<virtual stdcall: hresult 55 variant*>
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

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 51 ExcelBorder**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 57 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
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

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 52 ExcelInterior**>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 23 double*>
	^self invalidCall!

get_Locked: rhs
	"Private - Get the value of the 'Locked' property of the receiver.

		HRESULT __stdcall Locked(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
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

get_ProtectChartObject: rhs
	"Private - Get the value of the 'ProtectChartObject' property of the receiver.

		HRESULT __stdcall ProtectChartObject(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 47 varbool*>
	^self invalidCall!

get_RoundedCorners: rhs
	"Private - Get the value of the 'RoundedCorners' property of the receiver.

		HRESULT __stdcall RoundedCorners(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 49 varbool*>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 53 varbool*>
	^self invalidCall!

get_ShapeRange: rhs
	"Private - Get the value of the 'ShapeRange' property of the receiver.

		HRESULT __stdcall ShapeRange(
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 44 ExcelShapeRange**>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 36 double*>
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

	<virtual stdcall: hresult 58 ExcelGroupObject**>
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

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
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

	<virtual stdcall: hresult 59 variant IDispatch**>
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

protectChartObject
	"Answer the <varbool> value of the 'ProtectChartObject' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ProtectChartObject: answer.
	^answer asObject
!

protectChartObject: rhs
	"Set the 'ProtectChartObject' property of the receiver to the <varbool> value of the argument."

	self put_ProtectChartObject: rhs
!

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

put_Locked: rhs
	"Private - Set the value of the 'Locked' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Locked(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
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

put_ProtectChartObject: rhs
	"Private - Set the value of the 'ProtectChartObject' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ProtectChartObject(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 48 varbool>
	^self invalidCall!

put_RoundedCorners: rhs
	"Private - Set the value of the 'RoundedCorners' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RoundedCorners(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 50 varbool>
	^self invalidCall!

put_Shadow: rhs
	"Private - Set the value of the 'Shadow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Shadow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 54 varbool>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Top(
			[in]double RHS);"

	<virtual stdcall: hresult 37 double>
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

roundedCorners
	"Answer the <varbool> value of the 'RoundedCorners' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_RoundedCorners: answer.
	^answer asObject
!

roundedCorners: rhs
	"Set the 'RoundedCorners' property of the receiver to the <varbool> value of the argument."

	self put_RoundedCorners: rhs
!

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

shadow
	"Answer the <varbool> value of the 'Shadow' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Shadow: answer.
	^answer asObject
!

shadow: rhs
	"Set the 'Shadow' property of the receiver to the <varbool> value of the argument."

	self put_Shadow: rhs
!

shapeRange
	"Answer the <ExcelShapeRange> value of the 'ShapeRange' property of the receiver."

	| answer |
	answer := ExcelShapeRange newPointer.
	self get_ShapeRange: answer.
	^answer asObject
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

value: index
	"Set the '_Default' property of the receiver to the <IDispatch**> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: index
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
! !
!ExcelIChartObjects categoriesFor: #_copy!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #_Copy:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #_Default:rhs:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #_Dummy12!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #_dummy15!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #_Dummy15!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #_Dummy22!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #_dummy25!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #_Dummy25!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #_dummy27!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #_Dummy27!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #_dummy28!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #_Dummy28!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #_Dummy3!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #add:top:width:height:!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #Add:top:width:height:rhs:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #border!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #BringToFront:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #Copy:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #Cut:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #Delete:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #Duplicate:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Border:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Placement:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_PrintObject:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_ProtectChartObject:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_RoundedCorners:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_ShapeRange:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #group!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #Group:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIChartObjects categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #protectChartObject!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #protectChartObject:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #put_Placement:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #put_PrintObject:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #put_ProtectChartObject:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #put_RoundedCorners:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #put_Shadow:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #roundedCorners!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #roundedCorners:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #Select:rhs:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelIChartObjects categoriesFor: #SendToBack:!**auto generated**!COM Interfaces-IChartObjects!private! !
!ExcelIChartObjects categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIChartObjects categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelIChartObjects class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IChartObjects'
		ExcelIChartObjects defineTemplate"

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
		defineFunction: #_Copy:
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
		defineFunction: #_Dummy25
			returnType: 'void';
		defineFunction: #get_ShapeRange:
			argumentTypes: 'ExcelShapeRange**';
		defineFunction: #_Dummy27
			returnType: 'void';
		defineFunction: #_Dummy28
			returnType: 'void';
		defineFunction: #get_ProtectChartObject:
			argumentTypes: 'varbool*';
		defineFunction: #put_ProtectChartObject:
			argumentTypes: 'varbool';
		defineFunction: #get_RoundedCorners:
			argumentTypes: 'varbool*';
		defineFunction: #put_RoundedCorners:
			argumentTypes: 'varbool';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Shadow:
			argumentTypes: 'varbool*';
		defineFunction: #put_Shadow:
			argumentTypes: 'varbool';
		defineFunction: #Copy:
			argumentTypes: 'variant*';
		defineFunction: #Add:top:width:height:rhs:
			argumentTypes: 'double double double double ExcelChartObject**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Group:
			argumentTypes: 'ExcelGroupObject**';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #_Default:rhs:
			argumentTypes: 'variant IDispatch**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIChartObjects initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIChartObjects class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIChartObjects class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

