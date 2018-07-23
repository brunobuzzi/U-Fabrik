"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIDropDowns
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIDropDowns guid: (IID fromString: '{0002088C-0001-0000-C000-000000000046}')!
ExcelIDropDowns comment: '<ExcelIDropDowns> is a wrapper class for the COM interface ''Excel.IDropDowns'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002088C-0001-0000-C000-000000000046), 
	helpcontext(0x0002004c), 
	hidden
]
interface IDropDowns : IDispatch
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
	[id(0x00000353), helpcontext(0x00010353)]
	HRESULT __stdcall AddItem(
		[in]VARIANT Text,
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x00000462), propget, helpcontext(0x00010462)]
	HRESULT __stdcall Display3DShading(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000462), propput, helpcontext(0x00010462)]
	HRESULT __stdcall Display3DShading(
		[in]VARIANT_BOOL RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]long* RHS);
	[id(0000000000), propput, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]long RHS);
	[id(0x00000422), propget, helpcontext(0x00010422)]
	HRESULT __stdcall LinkedCell(
		[out, retval]BSTR* RHS);
	[id(0x00000422), propput, helpcontext(0x00010422)]
	HRESULT __stdcall LinkedCell(
		[in]BSTR RHS);
	[id(0x0001001f), hidden, restricted]
	void __stdcall _Dummy31();
	[id(0x0000035d), propget, helpcontext(0x0001035d)]
	HRESULT __stdcall List(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x0000035d), propput, helpcontext(0x0001035d)]
	HRESULT __stdcall List(
		[in, optional]VARIANT Index,
		[in]VARIANT RHS);
	[id(0x00010021), hidden, restricted]
	void __stdcall _Dummy33();
	[id(0x0000034f), propget, helpcontext(0x0001034f)]
	HRESULT __stdcall ListFillRange(
		[out, retval]BSTR* RHS);
	[id(0x0000034f), propput, helpcontext(0x0001034f)]
	HRESULT __stdcall ListFillRange(
		[in]BSTR RHS);
	[id(0x00000352), propget, helpcontext(0x00010352)]
	HRESULT __stdcall ListIndex(
		[out, retval]long* RHS);
	[id(0x00000352), propput, helpcontext(0x00010352)]
	HRESULT __stdcall ListIndex(
		[in]long RHS);
	[id(0x00010024), hidden, restricted]
	void __stdcall _Dummy36();
	[id(0x00000355), helpcontext(0x00010355)]
	HRESULT __stdcall RemoveAllItems(
		[out, retval]VARIANT* RHS);
	[id(0x00000354), helpcontext(0x00010354)]
	HRESULT __stdcall RemoveItem(
		[in]long Index,
		[in, optional]VARIANT Count,
		[out, retval]VARIANT* RHS);
	[id(0x00000463), propget, helpcontext(0x00010463)]
	HRESULT __stdcall Selected(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x00000463), propput, helpcontext(0x00010463)]
	HRESULT __stdcall Selected(
		[in, optional]VARIANT Index,
		[in]VARIANT RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]long* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]long RHS);
	[id(0x0000008b), propget, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[out, retval]BSTR* RHS);
	[id(0x0000008b), propput, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[in]BSTR RHS);
	[id(0x0000025b), propget, helpcontext(0x0001025b)]
	HRESULT __stdcall Characters(
		[in, optional]VARIANT Start,
		[in, optional]VARIANT Length,
		[out, retval]Characters** RHS);
	[id(0x00000350), propget, helpcontext(0x00010350)]
	HRESULT __stdcall DropDownLines(
		[out, retval]long* RHS);
	[id(0x00000350), propput, helpcontext(0x00010350)]
	HRESULT __stdcall DropDownLines(
		[in]long RHS);
	[id(0x0000008a), propget, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[out, retval]BSTR* RHS);
	[id(0x0000008a), propput, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[in]BSTR RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]double Left,
		[in]double Top,
		[in]double Width,
		[in]double Height,
		[in, optional]VARIANT Editable,
		[out, retval]DropDown** RHS);
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
!ExcelIDropDowns categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIDropDowns methodsFor!

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

_dummy31
	"Answer the <VOID> result of invoking the _Dummy31() method of the COM object."

	self _Dummy31
!

_Dummy31
	"Private - Invoke the _Dummy31() method of the COM object.

		void __stdcall _Dummy31();"

	<virtual stdcall: void 52>
	^self invalidCall!

_dummy33
	"Answer the <VOID> result of invoking the _Dummy33() method of the COM object."

	self _Dummy33
!

_Dummy33
	"Private - Invoke the _Dummy33() method of the COM object.

		void __stdcall _Dummy33();"

	<virtual stdcall: void 55>
	^self invalidCall!

_dummy36
	"Answer the <VOID> result of invoking the _Dummy36() method of the COM object."

	self _Dummy36
!

_Dummy36
	"Private - Invoke the _Dummy36() method of the COM object.

		void __stdcall _Dummy36();"

	<virtual stdcall: void 60>
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

	<virtual stdcall: hresult 78 IUnknown**>
	^self invalidCall!

add: left top: top width: width height: height
	"Answer the <ExcelDropDown> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: left
		 top: top
		 width: width
		 height: height
		 editable: VARIANT unspecified!

add: left top: top width: width height: height editable: editable
	"Answer the <ExcelDropDown> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelDropDown newPointer.
	self
		Add: left
		top: top
		width: width
		height: height
		editable: editable asVariant
		rhs: answer.
	^answer asObject
!

Add: left top: top width: width height: height editable: editable rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]double Left,
			[in]double Top,
			[in]double Width,
			[in]double Height,
			[in, optional]VARIANT Editable,
			[out, retval]DropDown** RHS);"

	<virtual stdcall: hresult 74 double double double double variant ExcelDropDown**>
	^self invalidCall!

addItem: text
	"Answer the <VARIANT> result of invoking the AddItem() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addItem: text
		 index: VARIANT unspecified!

addItem: text index: index
	"Answer the <VARIANT> result of invoking the AddItem() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		AddItem: text asVariant
		index: index asVariant
		rhs: answer.
	^answer asObject
!

AddItem: text index: index rhs: rhs
	"Private - Invoke the AddItem() method of the COM object.

		HRESULT __stdcall AddItem(
			[in]VARIANT Text,
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 45 variant variant variant*>
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

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Caption: answer.
	^answer asObject
!

caption: rhs
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument."

	self put_Caption: rhs
!

characters
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver."

	^self
		 characters: VARIANT unspecified
		 length: VARIANT unspecified!

characters: start length: length
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver."

	| answer |
	answer := ExcelCharacters newPointer.
	self
		get_Characters: start asVariant
		length: length asVariant
		rhs: answer.
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

dropDownLines
	"Answer the <sdword> value of the 'DropDownLines' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DropDownLines: answer.
	^answer asObject
!

dropDownLines: rhs
	"Set the 'DropDownLines' property of the receiver to the <sdword> value of the argument."

	self put_DropDownLines: rhs
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

	<virtual stdcall: hresult 48 sdword*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Caption: rhs
	"Private - Get the value of the 'Caption' property of the receiver.

		HRESULT __stdcall Caption(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 67 bstr*>
	^self invalidCall!

get_Characters: start length: length rhs: rhs
	"Private - Get the value of the 'Characters' property of the receiver.

		HRESULT __stdcall Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length,
			[out, retval]Characters** RHS);"

	<virtual stdcall: hresult 69 variant variant ExcelCharacters**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 75 sdword*>
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

	<virtual stdcall: hresult 46 varbool*>
	^self invalidCall!

get_DropDownLines: rhs
	"Private - Get the value of the 'DropDownLines' property of the receiver.

		HRESULT __stdcall DropDownLines(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 70 sdword*>
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

	<virtual stdcall: hresult 50 bstr*>
	^self invalidCall!

get_List: index rhs: rhs
	"Private - Get the value of the 'List' property of the receiver.

		HRESULT __stdcall List(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 53 variant variant*>
	^self invalidCall!

get_ListFillRange: rhs
	"Private - Get the value of the 'ListFillRange' property of the receiver.

		HRESULT __stdcall ListFillRange(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 56 bstr*>
	^self invalidCall!

get_ListIndex: rhs
	"Private - Get the value of the 'ListIndex' property of the receiver.

		HRESULT __stdcall ListIndex(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 58 sdword*>
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

get_Selected: index rhs: rhs
	"Private - Get the value of the 'Selected' property of the receiver.

		HRESULT __stdcall Selected(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 63 variant variant*>
	^self invalidCall!

get_ShapeRange: rhs
	"Private - Get the value of the 'ShapeRange' property of the receiver.

		HRESULT __stdcall ShapeRange(
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 44 ExcelShapeRange**>
	^self invalidCall!

get_Text: rhs
	"Private - Get the value of the 'Text' property of the receiver.

		HRESULT __stdcall Text(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 72 bstr*>
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

	<virtual stdcall: hresult 65 sdword*>
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

	<virtual stdcall: hresult 76 ExcelGroupObject**>
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

	<virtual stdcall: hresult 77 variant IDispatch**>
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

list
	"Answer the <variant> value of the 'List' property of the receiver."

	^self list: VARIANT unspecified!

list: index
	"Answer the <variant> value of the 'List' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_List: index asVariant
		rhs: answer.
	^answer asObject
!

list: index rhs: rhs
	"Set the 'List' property of the receiver to the <variant> value of the argument."

	self
		put_List: index asVariant
		rhs: rhs asVariant
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

listIndex
	"Answer the <sdword> value of the 'ListIndex' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ListIndex: answer.
	^answer asObject
!

listIndex: rhs
	"Set the 'ListIndex' property of the receiver to the <sdword> value of the argument."

	self put_ListIndex: rhs
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

put__Default: rhs
	"Private - Set the value of the '_Default' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall _Default(
			[in]long RHS);"

	<virtual stdcall: hresult 49 sdword>
	^self invalidCall!

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Caption(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 68 bstr>
	^self invalidCall!

put_Display3DShading: rhs
	"Private - Set the value of the 'Display3DShading' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Display3DShading(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 47 varbool>
	^self invalidCall!

put_DropDownLines: rhs
	"Private - Set the value of the 'DropDownLines' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DropDownLines(
			[in]long RHS);"

	<virtual stdcall: hresult 71 sdword>
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

	<virtual stdcall: hresult 51 bstr>
	^self invalidCall!

put_List: index rhs: rhs
	"Private - Set the value of the 'List' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall List(
			[in, optional]VARIANT Index,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 54 variant variant>
	^self invalidCall!

put_ListFillRange: rhs
	"Private - Set the value of the 'ListFillRange' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ListFillRange(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 57 bstr>
	^self invalidCall!

put_ListIndex: rhs
	"Private - Set the value of the 'ListIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ListIndex(
			[in]long RHS);"

	<virtual stdcall: hresult 59 sdword>
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

put_Selected: index rhs: rhs
	"Private - Set the value of the 'Selected' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Selected(
			[in, optional]VARIANT Index,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 64 variant variant>
	^self invalidCall!

put_Text: rhs
	"Private - Set the value of the 'Text' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Text(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 73 bstr>
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

	<virtual stdcall: hresult 66 sdword>
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

removeAllItems
	"Answer the <VARIANT> result of invoking the RemoveAllItems() method of the COM object."

	| answer |
	answer := VARIANT new.
	self RemoveAllItems: answer.
	^answer asObject
!

RemoveAllItems: rhs
	"Private - Invoke the RemoveAllItems() method of the COM object.

		HRESULT __stdcall RemoveAllItems(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 61 variant*>
	^self invalidCall!

removeItem: index
	"Answer the <VARIANT> result of invoking the RemoveItem() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 removeItem: index
		 count: VARIANT unspecified!

removeItem: index count: count
	"Answer the <VARIANT> result of invoking the RemoveItem() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		RemoveItem: index
		count: count asVariant
		rhs: answer.
	^answer asObject
!

RemoveItem: index count: count rhs: rhs
	"Private - Invoke the RemoveItem() method of the COM object.

		HRESULT __stdcall RemoveItem(
			[in]long Index,
			[in, optional]VARIANT Count,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 62 sdword variant variant*>
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

selected
	"Answer the <variant> value of the 'Selected' property of the receiver."

	^self selected: VARIANT unspecified!

selected: index
	"Answer the <variant> value of the 'Selected' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_Selected: index asVariant
		rhs: answer.
	^answer asObject
!

selected: index rhs: rhs
	"Set the 'Selected' property of the receiver to the <variant> value of the argument."

	self
		put_Selected: index asVariant
		rhs: rhs asVariant
!

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

text
	"Answer the <bstr> value of the 'Text' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Text: answer.
	^answer asObject
!

text: rhs
	"Set the 'Text' property of the receiver to the <bstr> value of the argument."

	self put_Text: rhs
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
!ExcelIDropDowns categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #_Dummy12!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #_dummy15!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #_Dummy15!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #_Dummy22!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #_Dummy3!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #_dummy31!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #_Dummy31!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #_dummy33!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #_Dummy33!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #_dummy36!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #_Dummy36!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #add:top:width:height:!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #add:top:width:height:editable:!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #Add:top:width:height:editable:rhs:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #addItem:!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #addItem:index:!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #AddItem:index:rhs:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #BringToFront:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #Copy:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #Cut:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #Delete:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #display3DShading!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #display3DShading:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #dropDownLines!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #dropDownLines:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #Duplicate:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Characters:length:rhs:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Display3DShading:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_DropDownLines:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_LinkedCell:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_List:rhs:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_ListFillRange:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_ListIndex:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Placement:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_PrintObject:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Selected:rhs:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_ShapeRange:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Text:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #get_ZOrder:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #group!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #Group:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIDropDowns categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #linkedCell!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #linkedCell:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #list!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #list:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #list:rhs:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #listFillRange!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #listFillRange:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #listIndex!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #listIndex:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #put__Default:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Display3DShading:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_DropDownLines:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_LinkedCell:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_List:rhs:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_ListFillRange:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_ListIndex:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Placement:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_PrintObject:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Selected:rhs:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Text:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Value:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #removeAllItems!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #RemoveAllItems:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #removeItem:!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #removeItem:count:!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #RemoveItem:count:rhs:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #Select:rhs:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #selected!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #selected:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #selected:rhs:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelIDropDowns categoriesFor: #SendToBack:!**auto generated**!COM Interfaces-IDropDowns!private! !
!ExcelIDropDowns categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #text!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelIDropDowns categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelIDropDowns class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IDropDowns'
		ExcelIDropDowns defineTemplate"

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
		defineFunction: #AddItem:index:rhs:
			argumentTypes: 'variant variant variant*';
		defineFunction: #get_Display3DShading:
			argumentTypes: 'varbool*';
		defineFunction: #put_Display3DShading:
			argumentTypes: 'varbool';
		defineFunction: #get__Default:
			argumentTypes: 'sdword*';
		defineFunction: #put__Default:
			argumentTypes: 'sdword';
		defineFunction: #get_LinkedCell:
			argumentTypes: 'bstr*';
		defineFunction: #put_LinkedCell:
			argumentTypes: 'bstr';
		defineFunction: #_Dummy31
			returnType: 'void';
		defineFunction: #get_List:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #put_List:rhs:
			argumentTypes: 'variant variant';
		defineFunction: #_Dummy33
			returnType: 'void';
		defineFunction: #get_ListFillRange:
			argumentTypes: 'bstr*';
		defineFunction: #put_ListFillRange:
			argumentTypes: 'bstr';
		defineFunction: #get_ListIndex:
			argumentTypes: 'sdword*';
		defineFunction: #put_ListIndex:
			argumentTypes: 'sdword';
		defineFunction: #_Dummy36
			returnType: 'void';
		defineFunction: #RemoveAllItems:
			argumentTypes: 'variant*';
		defineFunction: #RemoveItem:count:rhs:
			argumentTypes: 'sdword variant variant*';
		defineFunction: #get_Selected:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #put_Selected:rhs:
			argumentTypes: 'variant variant';
		defineFunction: #get_Value:
			argumentTypes: 'sdword*';
		defineFunction: #put_Value:
			argumentTypes: 'sdword';
		defineFunction: #get_Caption:
			argumentTypes: 'bstr*';
		defineFunction: #put_Caption:
			argumentTypes: 'bstr';
		defineFunction: #get_Characters:length:rhs:
			argumentTypes: 'variant variant ExcelCharacters**';
		defineFunction: #get_DropDownLines:
			argumentTypes: 'sdword*';
		defineFunction: #put_DropDownLines:
			argumentTypes: 'sdword';
		defineFunction: #get_Text:
			argumentTypes: 'bstr*';
		defineFunction: #put_Text:
			argumentTypes: 'bstr';
		defineFunction: #Add:top:width:height:editable:rhs:
			argumentTypes: 'double double double double variant ExcelDropDown**';
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
		ExcelIDropDowns initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIDropDowns class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIDropDowns class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

