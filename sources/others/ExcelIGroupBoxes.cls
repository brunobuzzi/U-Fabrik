"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIGroupBoxes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIGroupBoxes guid: (IID fromString: '{0002088A-0001-0000-C000-000000000046}')!
ExcelIGroupBoxes comment: '<ExcelIGroupBoxes> is a wrapper class for the COM interface ''Excel.IGroupBoxes'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002088A-0001-0000-C000-000000000046), 
	helpcontext(0x0002004a), 
	hidden
]
interface IGroupBoxes : IDispatch
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
	[id(0x000001f9), helpcontext(0x000101f9)]
	HRESULT __stdcall CheckSpelling(
		[in, optional]VARIANT CustomDictionary,
		[in, optional]VARIANT IgnoreUppercase,
		[in, optional]VARIANT AlwaysSuggest,
		[in, optional]VARIANT SpellLang,
		[out, retval]VARIANT* RHS);
	[id(0x00000268), propget, helpcontext(0x00010268)]
	HRESULT __stdcall LockedText(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000268), propput, helpcontext(0x00010268)]
	HRESULT __stdcall LockedText(
		[in]VARIANT_BOOL RHS);
	[id(0x0000008a), propget, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[out, retval]BSTR* RHS);
	[id(0x0000008a), propput, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[in]BSTR RHS);
	[id(0x0000034e), propget, helpcontext(0x0001034e)]
	HRESULT __stdcall Accelerator(
		[out, retval]VARIANT* RHS);
	[id(0x0000034e), propput, helpcontext(0x0001034e)]
	HRESULT __stdcall Accelerator(
		[in]VARIANT RHS);
	[id(0x00000462), propget, helpcontext(0x00010462)]
	HRESULT __stdcall Display3DShading(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000462), propput, helpcontext(0x00010462)]
	HRESULT __stdcall Display3DShading(
		[in]VARIANT_BOOL RHS);
	[id(0x00000461), propget, helpcontext(0x00010461)]
	HRESULT __stdcall PhoneticAccelerator(
		[out, retval]VARIANT* RHS);
	[id(0x00000461), propput, helpcontext(0x00010461)]
	HRESULT __stdcall PhoneticAccelerator(
		[in]VARIANT RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]double Left,
		[in]double Top,
		[in]double Width,
		[in]double Height,
		[out, retval]GroupBox** RHS);
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
!ExcelIGroupBoxes categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIGroupBoxes methodsFor!

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

accelerator
	"Answer the <variant> value of the 'Accelerator' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Accelerator: answer.
	^answer asObject
!

accelerator: rhs
	"Set the 'Accelerator' property of the receiver to the <variant> value of the argument."

	self put_Accelerator: rhs asVariant
!

add: left top: top width: width height: height
	"Answer the <ExcelGroupBox> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelGroupBox newPointer.
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
			[out, retval]GroupBox** RHS);"

	<virtual stdcall: hresult 59 double double double double ExcelGroupBox**>
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

checkSpelling
	"Answer the <VARIANT> result of invoking the CheckSpelling() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 checkSpelling: VARIANT unspecified
		 ignoreUppercase: VARIANT unspecified
		 alwaysSuggest: VARIANT unspecified
		 spellLang: VARIANT unspecified!

checkSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang
	"Answer the <VARIANT> result of invoking the CheckSpelling() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		CheckSpelling: customDictionary asVariant
		ignoreUppercase: ignoreUppercase asVariant
		alwaysSuggest: alwaysSuggest asVariant
		spellLang: spellLang asVariant
		rhs: answer.
	^answer asObject
!

CheckSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang rhs: rhs
	"Private - Invoke the CheckSpelling() method of the COM object.

		HRESULT __stdcall CheckSpelling(
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in, optional]VARIANT AlwaysSuggest,
			[in, optional]VARIANT SpellLang,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 48 variant variant variant variant variant*>
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

get_Accelerator: rhs
	"Private - Get the value of the 'Accelerator' property of the receiver.

		HRESULT __stdcall Accelerator(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 53 variant*>
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

	<virtual stdcall: hresult 45 bstr*>
	^self invalidCall!

get_Characters: start length: length rhs: rhs
	"Private - Get the value of the 'Characters' property of the receiver.

		HRESULT __stdcall Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length,
			[out, retval]Characters** RHS);"

	<virtual stdcall: hresult 47 variant variant ExcelCharacters**>
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

	<virtual stdcall: hresult 55 varbool*>
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

get_Locked: rhs
	"Private - Get the value of the 'Locked' property of the receiver.

		HRESULT __stdcall Locked(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_LockedText: rhs
	"Private - Get the value of the 'LockedText' property of the receiver.

		HRESULT __stdcall LockedText(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 49 varbool*>
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

get_PhoneticAccelerator: rhs
	"Private - Get the value of the 'PhoneticAccelerator' property of the receiver.

		HRESULT __stdcall PhoneticAccelerator(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 57 variant*>
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

get_Text: rhs
	"Private - Get the value of the 'Text' property of the receiver.

		HRESULT __stdcall Text(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 51 bstr*>
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

lockedText
	"Answer the <varbool> value of the 'LockedText' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_LockedText: answer.
	^answer asObject
!

lockedText: rhs
	"Set the 'LockedText' property of the receiver to the <varbool> value of the argument."

	self put_LockedText: rhs
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

phoneticAccelerator
	"Answer the <variant> value of the 'PhoneticAccelerator' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_PhoneticAccelerator: answer.
	^answer asObject
!

phoneticAccelerator: rhs
	"Set the 'PhoneticAccelerator' property of the receiver to the <variant> value of the argument."

	self put_PhoneticAccelerator: rhs asVariant
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

put_Accelerator: rhs
	"Private - Set the value of the 'Accelerator' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Accelerator(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 54 variant>
	^self invalidCall!

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Caption(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 46 bstr>
	^self invalidCall!

put_Display3DShading: rhs
	"Private - Set the value of the 'Display3DShading' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Display3DShading(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 56 varbool>
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

put_LockedText: rhs
	"Private - Set the value of the 'LockedText' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall LockedText(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 50 varbool>
	^self invalidCall!

put_OnAction: rhs
	"Private - Set the value of the 'OnAction' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnAction(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 29 bstr>
	^self invalidCall!

put_PhoneticAccelerator: rhs
	"Private - Set the value of the 'PhoneticAccelerator' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall PhoneticAccelerator(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 58 variant>
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

put_Text: rhs
	"Private - Set the value of the 'Text' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Text(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 52 bstr>
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
!ExcelIGroupBoxes categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #_Dummy12!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #_dummy15!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #_Dummy15!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #_Dummy22!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #_Dummy3!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #accelerator!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #accelerator:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #add:top:width:height:!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #Add:top:width:height:rhs:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #BringToFront:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:rhs:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #Copy:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #Cut:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #Delete:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #display3DShading!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #display3DShading:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #Duplicate:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #get_Accelerator:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Characters:length:rhs:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Display3DShading:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_LockedText:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_PhoneticAccelerator:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Placement:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_PrintObject:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_ShapeRange:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Text:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #get_ZOrder:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #group!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #Group:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIGroupBoxes categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #lockedText!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #lockedText:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #phoneticAccelerator!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #phoneticAccelerator:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #put_Accelerator:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_Display3DShading:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_LockedText:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_PhoneticAccelerator:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_Placement:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_PrintObject:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_Text:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #Select:rhs:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelIGroupBoxes categoriesFor: #SendToBack:!**auto generated**!COM Interfaces-IGroupBoxes!private! !
!ExcelIGroupBoxes categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #text!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelIGroupBoxes categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelIGroupBoxes class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IGroupBoxes'
		ExcelIGroupBoxes defineTemplate"

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
		defineFunction: #get_Caption:
			argumentTypes: 'bstr*';
		defineFunction: #put_Caption:
			argumentTypes: 'bstr';
		defineFunction: #get_Characters:length:rhs:
			argumentTypes: 'variant variant ExcelCharacters**';
		defineFunction: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #get_LockedText:
			argumentTypes: 'varbool*';
		defineFunction: #put_LockedText:
			argumentTypes: 'varbool';
		defineFunction: #get_Text:
			argumentTypes: 'bstr*';
		defineFunction: #put_Text:
			argumentTypes: 'bstr';
		defineFunction: #get_Accelerator:
			argumentTypes: 'variant*';
		defineFunction: #put_Accelerator:
			argumentTypes: 'variant';
		defineFunction: #get_Display3DShading:
			argumentTypes: 'varbool*';
		defineFunction: #put_Display3DShading:
			argumentTypes: 'varbool';
		defineFunction: #get_PhoneticAccelerator:
			argumentTypes: 'variant*';
		defineFunction: #put_PhoneticAccelerator:
			argumentTypes: 'variant';
		defineFunction: #Add:top:width:height:rhs:
			argumentTypes: 'double double double double ExcelGroupBox**';
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
		ExcelIGroupBoxes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIGroupBoxes class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIGroupBoxes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

