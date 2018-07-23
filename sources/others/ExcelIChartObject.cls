"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIChartObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIChartObject guid: (IID fromString: '{000208CF-0001-0000-C000-000000000046}')!
ExcelIChartObject comment: '<ExcelIChartObject> is a wrapper class for the COM interface ''Excel.IChartObject'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208CF-0001-0000-C000-000000000046), 
	helpcontext(0x0002008e), 
	hidden
]
interface IChartObject : IDispatch
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
	[id(0x00000130), helpcontext(0x00010130)]
	HRESULT __stdcall Activate(
		[out, retval]VARIANT* RHS);
	[id(0x00000007), propget, helpcontext(0x00010007)]
	HRESULT __stdcall Chart(
		[out, retval]Chart** RHS);
	[id(0x000005f9), propget, helpcontext(0x000105f9)]
	HRESULT __stdcall ProtectChartObject(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005f9), propput, helpcontext(0x000105f9)]
	HRESULT __stdcall ProtectChartObject(
		[in]VARIANT_BOOL RHS);
	[id(0x0000026b), propget, helpcontext(0x0001026b)]
	HRESULT __stdcall RoundedCorners(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000026b), propput, helpcontext(0x0001026b)]
	HRESULT __stdcall RoundedCorners(
		[in]VARIANT_BOOL RHS);
	[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x00000067), propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000067), propput, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[in]VARIANT_BOOL RHS);
	[id(0x00000227), helpcontext(0x00010227)]
	HRESULT __stdcall Copy(
		[out, retval]VARIANT* RHS);
};
'!
!ExcelIChartObject categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIChartObject methodsFor!

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

activate
	"Answer the <VARIANT> result of invoking the Activate() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Activate: answer.
	^answer asObject
!

Activate: rhs
	"Private - Invoke the Activate() method of the COM object.

		HRESULT __stdcall Activate(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 46 variant*>
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

chart
	"Answer the <Excel_Chart> value of the 'Chart' property of the receiver."

	| answer |
	answer := Excel_Chart newPointer.
	self get_Chart: answer.
	^answer asObject
!

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

	<virtual stdcall: hresult 56 variant*>
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

	<virtual stdcall: hresult 52 ExcelBorder**>
	^self invalidCall!

get_BottomRightCell: rhs
	"Private - Get the value of the 'BottomRightCell' property of the receiver.

		HRESULT __stdcall BottomRightCell(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 11 ExcelRange**>
	^self invalidCall!

get_Chart: rhs
	"Private - Get the value of the 'Chart' property of the receiver.

		HRESULT __stdcall Chart(
			[out, retval]Chart** RHS);"

	<virtual stdcall: hresult 47 Excel_Chart**>
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

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 22 sdword*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 53 ExcelInterior**>
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

get_ProtectChartObject: rhs
	"Private - Get the value of the 'ProtectChartObject' property of the receiver.

		HRESULT __stdcall ProtectChartObject(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 48 varbool*>
	^self invalidCall!

get_RoundedCorners: rhs
	"Private - Get the value of the 'RoundedCorners' property of the receiver.

		HRESULT __stdcall RoundedCorners(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 50 varbool*>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 54 varbool*>
	^self invalidCall!

get_ShapeRange: rhs
	"Private - Get the value of the 'ShapeRange' property of the receiver.

		HRESULT __stdcall ShapeRange(
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 45 ExcelShapeRange**>
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

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
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

put_ProtectChartObject: rhs
	"Private - Set the value of the 'ProtectChartObject' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ProtectChartObject(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 49 varbool>
	^self invalidCall!

put_RoundedCorners: rhs
	"Private - Set the value of the 'RoundedCorners' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RoundedCorners(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 51 varbool>
	^self invalidCall!

put_Shadow: rhs
	"Private - Set the value of the 'Shadow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Shadow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 55 varbool>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Top(
			[in]double RHS);"

	<virtual stdcall: hresult 38 double>
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

topLeftCell
	"Answer the <ExcelRange> value of the 'TopLeftCell' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_TopLeftCell: answer.
	^answer asObject
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
!ExcelIChartObject categoriesFor: #_copy!**auto generated**!methods!public! !
!ExcelIChartObject categoriesFor: #_Copy:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelIChartObject categoriesFor: #Activate:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #border!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #bottomRightCell!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelIChartObject categoriesFor: #BringToFront:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #chart!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelIChartObject categoriesFor: #Copy:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelIChartObject categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelIChartObject categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelIChartObject categoriesFor: #Cut:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIChartObject categoriesFor: #Delete:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelIChartObject categoriesFor: #Duplicate:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Border:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_BottomRightCell:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Chart:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Placement:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_PrintObject:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_ProtectChartObject:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_RoundedCorners:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_ShapeRange:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_TopLeftCell:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #get_ZOrder:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #protectChartObject!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #protectChartObject:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_Placement:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_PrintObject:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_ProtectChartObject:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_RoundedCorners:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_Shadow:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #roundedCorners!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #roundedCorners:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIChartObject categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelIChartObject categoriesFor: #Select:rhs:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelIChartObject categoriesFor: #SendToBack:!**auto generated**!COM Interfaces-IChartObject!private! !
!ExcelIChartObject categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #topLeftCell!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelIChartObject categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelIChartObject class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IChartObject'
		ExcelIChartObject defineTemplate"

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
		defineFunction: #Activate:
			argumentTypes: 'variant*';
		defineFunction: #get_Chart:
			argumentTypes: 'Excel_Chart**';
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
			argumentTypes: 'variant*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIChartObject initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIChartObject class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIChartObject class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

