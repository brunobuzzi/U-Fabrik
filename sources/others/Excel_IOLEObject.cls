"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #Excel_IOLEObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
Excel_IOLEObject guid: (IID fromString: '{000208A2-0001-0000-C000-000000000046}')!
Excel_IOLEObject comment: '<Excel_IOLEObject> is a wrapper class for the COM interface ''Excel._IOLEObject'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208A2-0001-0000-C000-000000000046), 
	helpcontext(0x00020062), 
	hidden
]
interface _IOLEObject : IDispatch
 {
	[id(0x80010094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x80010095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x80010096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** RHS);
	[id(0x80010267), propget, helpcontext(0x00010267)]
	HRESULT __stdcall BottomRightCell(
		[out, retval]Range** RHS);
	[id(0x8001025a), helpcontext(0x0001025a)]
	HRESULT __stdcall BringToFront(
		[out, retval]VARIANT* RHS);
	[id(0x80010227), helpcontext(0x00010227)]
	HRESULT __stdcall Copy(
		[out, retval]VARIANT* RHS);
	[id(0x800100d5), helpcontext(0x000100d5)]
	HRESULT __stdcall CopyPicture(
		[in, defaultvalue(2)]XlPictureAppearance Appearance,
		[in, defaultvalue(-4147)]XlCopyPictureFormat Format,
		[out, retval]VARIANT* RHS);
	[id(0x80010235), helpcontext(0x00010235)]
	HRESULT __stdcall Cut(
		[out, retval]VARIANT* RHS);
	[id(0x80010075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x8001040f), helpcontext(0x0001040f)]
	HRESULT __stdcall Duplicate(
		[out, retval]IDispatch** RHS);
	[id(0x80010258), propget, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x80010258), propput, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[in]VARIANT_BOOL RHS);
	[id(0x8001007b), propget, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[out, retval]double* RHS);
	[id(0x8001007b), propput, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[in]double RHS);
	[id(0x800101e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x8001007f), propget, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[out, retval]double* RHS);
	[id(0x8001007f), propput, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[in]double RHS);
	[id(0x8001010d), propget, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x8001010d), propput, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[in]VARIANT_BOOL RHS);
	[id(0x8001006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x8001006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x80010254), hidden, propget, helpcontext(0x00010254)]
	HRESULT __stdcall OnAction(
		[out, retval]BSTR* RHS);
	[id(0x80010254), hidden, propput, helpcontext(0x00010254)]
	HRESULT __stdcall OnAction(
		[in]BSTR RHS);
	[id(0x80010269), propget, helpcontext(0x00010269)]
	HRESULT __stdcall Placement(
		[out, retval]VARIANT* RHS);
	[id(0x80010269), propput, helpcontext(0x00010269)]
	HRESULT __stdcall Placement(
		[in]VARIANT RHS);
	[id(0x8001026a), propget, helpcontext(0x0001026a)]
	HRESULT __stdcall PrintObject(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x8001026a), propput, helpcontext(0x0001026a)]
	HRESULT __stdcall PrintObject(
		[in]VARIANT_BOOL RHS);
	[id(0x800100eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[in, optional]VARIANT Replace,
		[out, retval]VARIANT* RHS);
	[id(0x8001025d), helpcontext(0x0001025d)]
	HRESULT __stdcall SendToBack(
		[out, retval]VARIANT* RHS);
	[id(0x8001007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[out, retval]double* RHS);
	[id(0x8001007e), propput, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[in]double RHS);
	[id(0x8001026c), propget, helpcontext(0x0001026c)]
	HRESULT __stdcall TopLeftCell(
		[out, retval]Range** RHS);
	[id(0x8001022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x8001022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]VARIANT_BOOL RHS);
	[id(0x8001007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[out, retval]double* RHS);
	[id(0x8001007a), propput, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[in]double RHS);
	[id(0x8001026e), propget, helpcontext(0x0001026e)]
	HRESULT __stdcall ZOrder(
		[out, retval]long* RHS);
	[id(0x800105f8), propget, helpcontext(0x000105f8)]
	HRESULT __stdcall ShapeRange(
		[out, retval]ShapeRange** RHS);
	[id(0x80010080), propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x80010081), propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x80010067), propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x80010067), propput, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[in]VARIANT_BOOL RHS);
	[id(0x80010130), helpcontext(0x00010130)]
	HRESULT __stdcall Activate(
		[out, retval]VARIANT* RHS);
	[id(0x800104a2), propget, helpcontext(0x000104a2)]
	HRESULT __stdcall AutoLoad(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x800104a2), propput, helpcontext(0x000104a2)]
	HRESULT __stdcall AutoLoad(
		[in]VARIANT_BOOL RHS);
	[id(0x80010418), propget, helpcontext(0x00010418)]
	HRESULT __stdcall AutoUpdate(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x80010418), propput, helpcontext(0x00010418)]
	HRESULT __stdcall AutoUpdate(
		[in]VARIANT_BOOL RHS);
	[id(0x80010419), propget, helpcontext(0x00010419)]
	HRESULT __stdcall Object(
		[out, retval]IDispatch** RHS);
	[id(0x8001041e), propget, helpcontext(0x0001041e)]
	HRESULT __stdcall OLEType(
		[out, retval]VARIANT* RHS);
	[id(0x800102d1), propget, helpcontext(0x000102d1)]
	HRESULT __stdcall SourceName(
		[out, retval]BSTR* RHS);
	[id(0x800102d1), propput, helpcontext(0x000102d1)]
	HRESULT __stdcall SourceName(
		[in]BSTR RHS);
	[id(0x800102a8), helpcontext(0x000102a8)]
	HRESULT __stdcall Update(
		[out, retval]VARIANT* RHS);
	[id(0x8001025e), helpcontext(0x0001025e)]
	HRESULT __stdcall Verb(
		[in, defaultvalue(1)]XlOLEVerb Verb,
		[out, retval]VARIANT* RHS);
	[id(0x80010422), propget, helpcontext(0x00010422)]
	HRESULT __stdcall LinkedCell(
		[out, retval]BSTR* RHS);
	[id(0x80010422), propput, helpcontext(0x00010422)]
	HRESULT __stdcall LinkedCell(
		[in]BSTR RHS);
	[id(0x8001034f), propget, helpcontext(0x0001034f)]
	HRESULT __stdcall ListFillRange(
		[out, retval]BSTR* RHS);
	[id(0x8001034f), propput, helpcontext(0x0001034f)]
	HRESULT __stdcall ListFillRange(
		[in]BSTR RHS);
	[id(0x800105f3), propget, helpcontext(0x000105f3)]
	HRESULT __stdcall progID(
		[out, retval]BSTR* RHS);
	[id(0x8001073d), hidden, propget, helpcontext(0x0001073d)]
	HRESULT __stdcall AltHTML(
		[out, retval]BSTR* RHS);
	[id(0x8001073d), hidden, propput, helpcontext(0x0001073d)]
	HRESULT __stdcall AltHTML(
		[in]BSTR RHS);
};
'!
!Excel_IOLEObject categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!Excel_IOLEObject methodsFor!

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

	<virtual stdcall: hresult 50 variant*>
	^self invalidCall!

altHTML
	"Answer the <bstr> value of the 'AltHTML' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_AltHTML: answer.
	^answer asObject
!

altHTML: rhs
	"Set the 'AltHTML' property of the receiver to the <bstr> value of the argument."

	self put_AltHTML: rhs
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

autoLoad
	"Answer the <varbool> value of the 'AutoLoad' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoLoad: answer.
	^answer asObject
!

autoLoad: rhs
	"Set the 'AutoLoad' property of the receiver to the <varbool> value of the argument."

	self put_AutoLoad: rhs
!

autoUpdate
	"Answer the <varbool> value of the 'AutoUpdate' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoUpdate: answer.
	^answer asObject
!

autoUpdate: rhs
	"Set the 'AutoUpdate' property of the receiver to the <varbool> value of the argument."

	self put_AutoUpdate: rhs
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

get_AltHTML: rhs
	"Private - Get the value of the 'AltHTML' property of the receiver.

		HRESULT __stdcall AltHTML(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 66 bstr*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AutoLoad: rhs
	"Private - Get the value of the 'AutoLoad' property of the receiver.

		HRESULT __stdcall AutoLoad(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 51 varbool*>
	^self invalidCall!

get_AutoUpdate: rhs
	"Private - Get the value of the 'AutoUpdate' property of the receiver.

		HRESULT __stdcall AutoUpdate(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 53 varbool*>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 46 ExcelBorder**>
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

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 47 ExcelInterior**>
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

	<virtual stdcall: hresult 61 bstr*>
	^self invalidCall!

get_ListFillRange: rhs
	"Private - Get the value of the 'ListFillRange' property of the receiver.

		HRESULT __stdcall ListFillRange(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 63 bstr*>
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

get_Object: rhs
	"Private - Get the value of the 'Object' property of the receiver.

		HRESULT __stdcall Object(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 55 IDispatch**>
	^self invalidCall!

get_OLEType: rhs
	"Private - Get the value of the 'OLEType' property of the receiver.

		HRESULT __stdcall OLEType(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 56 variant*>
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

get_progID: rhs
	"Private - Get the value of the 'progID' property of the receiver.

		HRESULT __stdcall progID(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 65 bstr*>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 48 varbool*>
	^self invalidCall!

get_ShapeRange: rhs
	"Private - Get the value of the 'ShapeRange' property of the receiver.

		HRESULT __stdcall ShapeRange(
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 45 ExcelShapeRange**>
	^self invalidCall!

get_SourceName: rhs
	"Private - Get the value of the 'SourceName' property of the receiver.

		HRESULT __stdcall SourceName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 57 bstr*>
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

listFillRange
	"Answer the <bstr> value of the 'ListFillRange' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ListFillRange: answer.
	^answer asObject
!

listFillRange: rhs
	"Set the 'ListFillRange' property of the receiver to the <bstr> value of the argument."

	self put_ListFillRange: rhs
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

object
	"Answer the <IDispatch> value of the 'Object' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Object: answer.
	^answer asObject
!

oleType
	"Answer the <variant> value of the 'OLEType' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_OLEType: answer.
	^answer asObject
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

progID
	"Answer the <bstr> value of the 'progID' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_progID: answer.
	^answer asObject
!

put_AltHTML: rhs
	"Private - Set the value of the 'AltHTML' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall AltHTML(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 67 bstr>
	^self invalidCall!

put_AutoLoad: rhs
	"Private - Set the value of the 'AutoLoad' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoLoad(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 52 varbool>
	^self invalidCall!

put_AutoUpdate: rhs
	"Private - Set the value of the 'AutoUpdate' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoUpdate(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 54 varbool>
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

	<virtual stdcall: hresult 62 bstr>
	^self invalidCall!

put_ListFillRange: rhs
	"Private - Set the value of the 'ListFillRange' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ListFillRange(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 64 bstr>
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

put_Shadow: rhs
	"Private - Set the value of the 'Shadow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Shadow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 49 varbool>
	^self invalidCall!

put_SourceName: rhs
	"Private - Set the value of the 'SourceName' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall SourceName(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 58 bstr>
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

sourceName
	"Answer the <bstr> value of the 'SourceName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SourceName: answer.
	^answer asObject
!

sourceName: rhs
	"Set the 'SourceName' property of the receiver to the <bstr> value of the argument."

	self put_SourceName: rhs
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

update
	"Answer the <VARIANT> result of invoking the Update() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Update: answer.
	^answer asObject
!

Update: rhs
	"Private - Invoke the Update() method of the COM object.

		HRESULT __stdcall Update(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 59 variant*>
	^self invalidCall!

verb
	"Answer the <VARIANT> result of invoking the Verb() method of the COM object.
	Default values are passed for all optional parameters."

	^self verb: 1!

verb: verb
	"Answer the <VARIANT> result of invoking the Verb() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Verb: verb
		rhs: answer.
	^answer asObject
!

Verb: verb rhs: rhs
	"Private - Invoke the Verb() method of the COM object.

		HRESULT __stdcall Verb(
			[in, defaultvalue(1)]XlOLEVerb Verb,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 60 sdword variant*>
	^self invalidCall!

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
!Excel_IOLEObject categoriesFor: #activate!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #Activate:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #altHTML!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #altHTML:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #application!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #autoLoad!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #autoLoad:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #autoUpdate!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #autoUpdate:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #border!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #bottomRightCell!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #bringToFront!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #BringToFront:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #copy!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #Copy:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #copyPicture!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #creator!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #cut!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #Cut:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #delete!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #Delete:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #duplicate!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #Duplicate:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #enabled!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #enabled:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #get_AltHTML:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Application:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_AutoLoad:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_AutoUpdate:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Border:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_BottomRightCell:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Height:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Index:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Left:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_LinkedCell:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_ListFillRange:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Name:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Object:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_OLEType:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Placement:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_PrintObject:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_progID:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_ShapeRange:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_SourceName:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Top:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_TopLeftCell:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_Width:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #get_ZOrder:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #height!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #height:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #index!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #interior!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #left!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #left:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #linkedCell!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #linkedCell:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #listFillRange!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #listFillRange:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #locked!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #locked:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #name!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #name:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #object!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #oleType!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #onAction!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #onAction:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #parent!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #placement!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #placement:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #printObject!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #printObject:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #progID!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #put_AltHTML:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_AutoLoad:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_AutoUpdate:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_Height:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_Left:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_LinkedCell:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_ListFillRange:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_Name:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_Placement:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_PrintObject:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_Shadow:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_SourceName:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_Top:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #put_Width:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #select!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #select:!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #Select:rhs:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #sendToBack!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #SendToBack:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #shadow!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #shadow:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #shapeRange!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #sourceName!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #sourceName:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #top!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #top:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #topLeftCell!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #update!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #Update:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #verb!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #verb:!**auto generated**!methods!public! !
!Excel_IOLEObject categoriesFor: #Verb:rhs:!**auto generated**!COM Interfaces-_IOLEObject!private! !
!Excel_IOLEObject categoriesFor: #visible!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #visible:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #width!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #width:!**auto generated**!properties!public! !
!Excel_IOLEObject categoriesFor: #zOrder!**auto generated**!properties!public! !

!Excel_IOLEObject class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel._IOLEObject'
		Excel_IOLEObject defineTemplate"

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
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Shadow:
			argumentTypes: 'varbool*';
		defineFunction: #put_Shadow:
			argumentTypes: 'varbool';
		defineFunction: #Activate:
			argumentTypes: 'variant*';
		defineFunction: #get_AutoLoad:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoLoad:
			argumentTypes: 'varbool';
		defineFunction: #get_AutoUpdate:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoUpdate:
			argumentTypes: 'varbool';
		defineFunction: #get_Object:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_OLEType:
			argumentTypes: 'variant*';
		defineFunction: #get_SourceName:
			argumentTypes: 'bstr*';
		defineFunction: #put_SourceName:
			argumentTypes: 'bstr';
		defineFunction: #Update:
			argumentTypes: 'variant*';
		defineFunction: #Verb:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #get_LinkedCell:
			argumentTypes: 'bstr*';
		defineFunction: #put_LinkedCell:
			argumentTypes: 'bstr';
		defineFunction: #get_ListFillRange:
			argumentTypes: 'bstr*';
		defineFunction: #put_ListFillRange:
			argumentTypes: 'bstr';
		defineFunction: #get_progID:
			argumentTypes: 'bstr*';
		defineFunction: #get_AltHTML:
			argumentTypes: 'bstr*';
		defineFunction: #put_AltHTML:
			argumentTypes: 'bstr'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		Excel_IOLEObject initializeTypeLib"

	typeLib := ExcelLib! !
!Excel_IOLEObject class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!Excel_IOLEObject class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

