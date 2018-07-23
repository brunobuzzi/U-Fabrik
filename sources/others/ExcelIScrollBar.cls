"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIScrollBar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIScrollBar guid: (IID fromString: '{00020885-0001-0000-C000-000000000046}')!
ExcelIScrollBar comment: '<ExcelIScrollBar> is a wrapper class for the COM interface ''Excel.IScrollBar'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020885-0001-0000-C000-000000000046), 
	helpcontext(0x00020045), 
	hidden
]
interface IScrollBar : IDispatch
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
	[id(0x00000267), propget, helpcontext(0x00010267)]
	HRESULT __stdcall BottomRightCell(
		[out, retval]Range** RHS);
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
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
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
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
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
	[id(0x0000026c), propget, helpcontext(0x0001026c)]
	HRESULT __stdcall TopLeftCell(
		[out, retval]Range** RHS);
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
	[id(0x0000034d), propget, helpcontext(0x0001034d)]
	HRESULT __stdcall LargeChange(
		[out, retval]long* RHS);
	[id(0x0000034d), propput, helpcontext(0x0001034d)]
	HRESULT __stdcall LargeChange(
		[in]long RHS);
};
'!
!ExcelIScrollBar categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIScrollBar methodsFor!

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

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

bottomRightCell
	"Answer the <ExcelRange> value of the 'BottomRightCell' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_BottomRightCell: answer.
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

	<virtual stdcall: hresult 46 sdword*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_BottomRightCell: rhs
	"Private - Get the value of the 'BottomRightCell' property of the receiver.

		HRESULT __stdcall BottomRightCell(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 11 ExcelRange**>
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

	<virtual stdcall: hresult 48 varbool*>
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

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 22 sdword*>
	^self invalidCall!

get_LargeChange: rhs
	"Private - Get the value of the 'LargeChange' property of the receiver.

		HRESULT __stdcall LargeChange(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 60 sdword*>
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

	<virtual stdcall: hresult 50 bstr*>
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

	<virtual stdcall: hresult 52 sdword*>
	^self invalidCall!

get_Min: rhs
	"Private - Get the value of the 'Min' property of the receiver.

		HRESULT __stdcall Min(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 54 sdword*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 27 bstr*>
	^self invalidCall!

get_OnAction: rhs
	"Private - Get the value of the 'OnAction' property of the receiver.

		HRESULT __stdcall OnAction(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 29 bstr*>
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

	<virtual stdcall: hresult 31 variant*>
	^self invalidCall!

get_PrintObject: rhs
	"Private - Get the value of the 'PrintObject' property of the receiver.

		HRESULT __stdcall PrintObject(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 33 varbool*>
	^self invalidCall!

get_ShapeRange: rhs
	"Private - Get the value of the 'ShapeRange' property of the receiver.

		HRESULT __stdcall ShapeRange(
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 45 ExcelShapeRange**>
	^self invalidCall!

get_SmallChange: rhs
	"Private - Get the value of the 'SmallChange' property of the receiver.

		HRESULT __stdcall SmallChange(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 56 sdword*>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 37 double*>
	^self invalidCall!

get_TopLeftCell: rhs
	"Private - Get the value of the 'TopLeftCell' property of the receiver.

		HRESULT __stdcall TopLeftCell(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 39 ExcelRange**>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 58 sdword*>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 40 varbool*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 42 double*>
	^self invalidCall!

get_ZOrder: rhs
	"Private - Get the value of the 'ZOrder' property of the receiver.

		HRESULT __stdcall ZOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 44 sdword*>
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

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

largeChange
	"Answer the <sdword> value of the 'LargeChange' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_LargeChange: answer.
	^answer asObject
!

largeChange: rhs
	"Set the 'LargeChange' property of the receiver to the <sdword> value of the argument."

	self put_LargeChange: rhs
!

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

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <bstr> value of the argument."

	self put_Name: rhs
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

	<virtual stdcall: hresult 47 sdword>
	^self invalidCall!

put_Display3DShading: rhs
	"Private - Set the value of the 'Display3DShading' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Display3DShading(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 49 varbool>
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

put_LargeChange: rhs
	"Private - Set the value of the 'LargeChange' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall LargeChange(
			[in]long RHS);"

	<virtual stdcall: hresult 61 sdword>
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

	<virtual stdcall: hresult 51 bstr>
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

	<virtual stdcall: hresult 53 sdword>
	^self invalidCall!

put_Min: rhs
	"Private - Set the value of the 'Min' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Min(
			[in]long RHS);"

	<virtual stdcall: hresult 55 sdword>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 28 bstr>
	^self invalidCall!

put_OnAction: rhs
	"Private - Set the value of the 'OnAction' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnAction(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 30 bstr>
	^self invalidCall!

put_Placement: rhs
	"Private - Set the value of the 'Placement' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Placement(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 32 variant>
	^self invalidCall!

put_PrintObject: rhs
	"Private - Set the value of the 'PrintObject' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PrintObject(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 34 varbool>
	^self invalidCall!

put_SmallChange: rhs
	"Private - Set the value of the 'SmallChange' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SmallChange(
			[in]long RHS);"

	<virtual stdcall: hresult 57 sdword>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Top(
			[in]double RHS);"

	<virtual stdcall: hresult 38 double>
	^self invalidCall!

put_Value: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Value(
			[in]long RHS);"

	<virtual stdcall: hresult 59 sdword>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Visible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 41 varbool>
	^self invalidCall!

put_Width: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Width(
			[in]double RHS);"

	<virtual stdcall: hresult 43 double>
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

	<virtual stdcall: hresult 35 variant variant*>
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

	<virtual stdcall: hresult 36 variant*>
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

topLeftCell
	"Answer the <ExcelRange> value of the 'TopLeftCell' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_TopLeftCell: answer.
	^answer asObject
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
!ExcelIScrollBar categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #bottomRightCell!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelIScrollBar categoriesFor: #BringToFront:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelIScrollBar categoriesFor: #Copy:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelIScrollBar categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelIScrollBar categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelIScrollBar categoriesFor: #Cut:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIScrollBar categoriesFor: #Delete:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #display3DShading!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #display3DShading:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelIScrollBar categoriesFor: #Duplicate:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_BottomRightCell:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Display3DShading:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_LargeChange:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_LinkedCell:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Max:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Min:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Placement:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_PrintObject:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_ShapeRange:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_SmallChange:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_TopLeftCell:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #get_ZOrder:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #largeChange!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #largeChange:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #linkedCell!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #linkedCell:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #max!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #max:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #min!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #min:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #put__Default:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Display3DShading:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_LargeChange:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_LinkedCell:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Max:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Min:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Placement:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_PrintObject:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_SmallChange:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Value:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIScrollBar categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelIScrollBar categoriesFor: #Select:rhs:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelIScrollBar categoriesFor: #SendToBack:!**auto generated**!COM Interfaces-IScrollBar!private! !
!ExcelIScrollBar categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #smallChange!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #smallChange:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #topLeftCell!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelIScrollBar categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelIScrollBar class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IScrollBar'
		ExcelIScrollBar defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_BottomRightCell:
			argumentTypes: 'ExcelRange**';
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
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_Left:
			argumentTypes: 'double*';
		defineFunction: #put_Left:
			argumentTypes: 'double';
		defineFunction: #get_Locked:
			argumentTypes: 'varbool*';
		defineFunction: #put_Locked:
			argumentTypes: 'varbool';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
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
		defineFunction: #get_TopLeftCell:
			argumentTypes: 'ExcelRange**';
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
		defineFunction: #get_LargeChange:
			argumentTypes: 'sdword*';
		defineFunction: #put_LargeChange:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIScrollBar initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIScrollBar class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIScrollBar class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

