"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelILine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelILine guid: (IID fromString: '{0002089A-0001-0000-C000-000000000046}')!
ExcelILine comment: '<ExcelILine> is a wrapper class for the COM interface ''Excel.ILine'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002089A-0001-0000-C000-000000000046), 
	helpcontext(0x0002005a), 
	hidden
]
interface ILine : IDispatch
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
	[id(0x00000263), propget, helpcontext(0x00010263)]
	HRESULT __stdcall ArrowHeadLength(
		[out, retval]VARIANT* RHS);
	[id(0x00000263), propput, helpcontext(0x00010263)]
	HRESULT __stdcall ArrowHeadLength(
		[in]VARIANT RHS);
	[id(0x00000264), propget, helpcontext(0x00010264)]
	HRESULT __stdcall ArrowHeadStyle(
		[out, retval]VARIANT* RHS);
	[id(0x00000264), propput, helpcontext(0x00010264)]
	HRESULT __stdcall ArrowHeadStyle(
		[in]VARIANT RHS);
	[id(0x00000265), propget, helpcontext(0x00010265)]
	HRESULT __stdcall ArrowHeadWidth(
		[out, retval]VARIANT* RHS);
	[id(0x00000265), propput, helpcontext(0x00010265)]
	HRESULT __stdcall ArrowHeadWidth(
		[in]VARIANT RHS);
	[id(0x00000080), propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
};
'!
!ExcelILine categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelILine methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

arrowHeadLength
	"Answer the <variant> value of the 'ArrowHeadLength' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ArrowHeadLength: answer.
	^answer asObject
!

arrowHeadLength: rhs
	"Set the 'ArrowHeadLength' property of the receiver to the <variant> value of the argument."

	self put_ArrowHeadLength: rhs asVariant
!

arrowHeadStyle
	"Answer the <variant> value of the 'ArrowHeadStyle' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ArrowHeadStyle: answer.
	^answer asObject
!

arrowHeadStyle: rhs
	"Set the 'ArrowHeadStyle' property of the receiver to the <variant> value of the argument."

	self put_ArrowHeadStyle: rhs asVariant
!

arrowHeadWidth
	"Answer the <variant> value of the 'ArrowHeadWidth' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ArrowHeadWidth: answer.
	^answer asObject
!

arrowHeadWidth: rhs
	"Set the 'ArrowHeadWidth' property of the receiver to the <variant> value of the argument."

	self put_ArrowHeadWidth: rhs asVariant
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

get_ArrowHeadLength: rhs
	"Private - Get the value of the 'ArrowHeadLength' property of the receiver.

		HRESULT __stdcall ArrowHeadLength(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 46 variant*>
	^self invalidCall!

get_ArrowHeadStyle: rhs
	"Private - Get the value of the 'ArrowHeadStyle' property of the receiver.

		HRESULT __stdcall ArrowHeadStyle(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 48 variant*>
	^self invalidCall!

get_ArrowHeadWidth: rhs
	"Private - Get the value of the 'ArrowHeadWidth' property of the receiver.

		HRESULT __stdcall ArrowHeadWidth(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 50 variant*>
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

put_ArrowHeadLength: rhs
	"Private - Set the value of the 'ArrowHeadLength' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ArrowHeadLength(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 47 variant>
	^self invalidCall!

put_ArrowHeadStyle: rhs
	"Private - Set the value of the 'ArrowHeadStyle' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ArrowHeadStyle(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 49 variant>
	^self invalidCall!

put_ArrowHeadWidth: rhs
	"Private - Set the value of the 'ArrowHeadWidth' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ArrowHeadWidth(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 51 variant>
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
!ExcelILine categoriesFor: #application!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #arrowHeadLength!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #arrowHeadLength:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #arrowHeadStyle!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #arrowHeadStyle:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #arrowHeadWidth!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #arrowHeadWidth:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #border!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #bottomRightCell!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelILine categoriesFor: #BringToFront:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelILine categoriesFor: #Copy:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelILine categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelILine categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelILine categoriesFor: #Cut:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelILine categoriesFor: #Delete:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelILine categoriesFor: #Duplicate:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_ArrowHeadLength:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_ArrowHeadStyle:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_ArrowHeadWidth:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Border:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_BottomRightCell:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Height:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Index:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Left:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Name:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Placement:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_PrintObject:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_ShapeRange:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Top:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_TopLeftCell:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_Width:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #get_ZOrder:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #height!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #index!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #left!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #name!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #put_ArrowHeadLength:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_ArrowHeadStyle:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_ArrowHeadWidth:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_Height:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_Left:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_Name:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_Placement:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_PrintObject:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_Top:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #put_Width:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #select!**auto generated**!methods!public! !
!ExcelILine categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelILine categoriesFor: #Select:rhs:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelILine categoriesFor: #SendToBack:!**auto generated**!COM Interfaces-ILine!private! !
!ExcelILine categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #top!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #topLeftCell!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #width!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelILine categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelILine class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ILine'
		ExcelILine defineTemplate"

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
		defineFunction: #get_ArrowHeadLength:
			argumentTypes: 'variant*';
		defineFunction: #put_ArrowHeadLength:
			argumentTypes: 'variant';
		defineFunction: #get_ArrowHeadStyle:
			argumentTypes: 'variant*';
		defineFunction: #put_ArrowHeadStyle:
			argumentTypes: 'variant';
		defineFunction: #get_ArrowHeadWidth:
			argumentTypes: 'variant*';
		defineFunction: #put_ArrowHeadWidth:
			argumentTypes: 'variant';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelILine initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelILine class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelILine class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

