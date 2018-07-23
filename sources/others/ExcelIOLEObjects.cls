"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIOLEObjects
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIOLEObjects guid: (IID fromString: '{000208A3-0001-0000-C000-000000000046}')!
ExcelIOLEObjects comment: '<ExcelIOLEObjects> is a wrapper class for the COM interface ''Excel.IOLEObjects'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208A3-0001-0000-C000-000000000046), 
	helpcontext(0x00020063), 
	hidden
]
interface IOLEObjects : IDispatch
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
	[id(0x00000080), propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000081), propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x00000067), propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000067), propput, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[in]VARIANT_BOOL RHS);
	[id(0x0001001e), hidden, restricted]
	void __stdcall _Dummy30();
	[id(0x000004a2), propget, helpcontext(0x000104a2)]
	HRESULT __stdcall AutoLoad(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000004a2), propput, helpcontext(0x000104a2)]
	HRESULT __stdcall AutoLoad(
		[in]VARIANT_BOOL RHS);
	[id(0x00010020), hidden, restricted]
	void __stdcall _Dummy32();
	[id(0x00010021), hidden, restricted]
	void __stdcall _Dummy33();
	[id(0x00010022), hidden, restricted]
	void __stdcall _Dummy34();
	[id(0x000002d1), propget, helpcontext(0x000102d1)]
	HRESULT __stdcall SourceName(
		[out, retval]BSTR* RHS);
	[id(0x000002d1), propput, helpcontext(0x000102d1)]
	HRESULT __stdcall SourceName(
		[in]BSTR RHS);
	[id(0x00010024), hidden, restricted]
	void __stdcall _Dummy36();
	[id(0x00010025), hidden, restricted]
	void __stdcall _Dummy37();
	[id(0x00010026), hidden, restricted]
	void __stdcall _Dummy38();
	[id(0x00010027), hidden, restricted]
	void __stdcall _Dummy39();
	[id(0x00010028), hidden, restricted]
	void __stdcall _Dummy40();
	[id(0x00010029), hidden, restricted]
	void __stdcall _Dummy41();
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in, optional]VARIANT ClassType,
		[in, optional]VARIANT Filename,
		[in, optional]VARIANT Link,
		[in, optional]VARIANT DisplayAsIcon,
		[in, optional]VARIANT IconFileName,
		[in, optional]VARIANT IconIndex,
		[in, optional]VARIANT IconLabel,
		[in, optional]VARIANT Left,
		[in, optional]VARIANT Top,
		[in, optional]VARIANT Width,
		[in, optional]VARIANT Height,
		[out, retval]OLEObject** RHS);
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
};
'!
!ExcelIOLEObjects categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIOLEObjects methodsFor!

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

_dummy30
	"Answer the <VOID> result of invoking the _Dummy30() method of the COM object."

	self _Dummy30
!

_Dummy30
	"Private - Invoke the _Dummy30() method of the COM object.

		void __stdcall _Dummy30();"

	<virtual stdcall: void 49>
	^self invalidCall!

_dummy32
	"Answer the <VOID> result of invoking the _Dummy32() method of the COM object."

	self _Dummy32
!

_Dummy32
	"Private - Invoke the _Dummy32() method of the COM object.

		void __stdcall _Dummy32();"

	<virtual stdcall: void 52>
	^self invalidCall!

_dummy33
	"Answer the <VOID> result of invoking the _Dummy33() method of the COM object."

	self _Dummy33
!

_Dummy33
	"Private - Invoke the _Dummy33() method of the COM object.

		void __stdcall _Dummy33();"

	<virtual stdcall: void 53>
	^self invalidCall!

_dummy34
	"Answer the <VOID> result of invoking the _Dummy34() method of the COM object."

	self _Dummy34
!

_Dummy34
	"Private - Invoke the _Dummy34() method of the COM object.

		void __stdcall _Dummy34();"

	<virtual stdcall: void 54>
	^self invalidCall!

_dummy36
	"Answer the <VOID> result of invoking the _Dummy36() method of the COM object."

	self _Dummy36
!

_Dummy36
	"Private - Invoke the _Dummy36() method of the COM object.

		void __stdcall _Dummy36();"

	<virtual stdcall: void 57>
	^self invalidCall!

_dummy37
	"Answer the <VOID> result of invoking the _Dummy37() method of the COM object."

	self _Dummy37
!

_Dummy37
	"Private - Invoke the _Dummy37() method of the COM object.

		void __stdcall _Dummy37();"

	<virtual stdcall: void 58>
	^self invalidCall!

_dummy38
	"Answer the <VOID> result of invoking the _Dummy38() method of the COM object."

	self _Dummy38
!

_Dummy38
	"Private - Invoke the _Dummy38() method of the COM object.

		void __stdcall _Dummy38();"

	<virtual stdcall: void 59>
	^self invalidCall!

_dummy39
	"Answer the <VOID> result of invoking the _Dummy39() method of the COM object."

	self _Dummy39
!

_Dummy39
	"Private - Invoke the _Dummy39() method of the COM object.

		void __stdcall _Dummy39();"

	<virtual stdcall: void 60>
	^self invalidCall!

_dummy40
	"Answer the <VOID> result of invoking the _Dummy40() method of the COM object."

	self _Dummy40
!

_Dummy40
	"Private - Invoke the _Dummy40() method of the COM object.

		void __stdcall _Dummy40();"

	<virtual stdcall: void 61>
	^self invalidCall!

_dummy41
	"Answer the <VOID> result of invoking the _Dummy41() method of the COM object."

	self _Dummy41
!

_Dummy41
	"Private - Invoke the _Dummy41() method of the COM object.

		void __stdcall _Dummy41();"

	<virtual stdcall: void 62>
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

	<virtual stdcall: hresult 67 IUnknown**>
	^self invalidCall!

add
	"Answer the <Excel_OLEObject> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: VARIANT unspecified
		 filename: VARIANT unspecified
		 link: VARIANT unspecified
		 displayAsIcon: VARIANT unspecified
		 iconFileName: VARIANT unspecified
		 iconIndex: VARIANT unspecified
		 iconLabel: VARIANT unspecified
		 left: VARIANT unspecified
		 top: VARIANT unspecified
		 width: VARIANT unspecified
		 height: VARIANT unspecified!

add: classType filename: filename link: link displayAsIcon: displayAsIcon iconFileName: iconFileName iconIndex: iconIndex iconLabel: iconLabel left: left top: top width: width height: height
	"Answer the <Excel_OLEObject> result of invoking the Add() method of the COM object."

	| answer |
	answer := Excel_OLEObject newPointer.
	self
		Add: classType asVariant
		filename: filename asVariant
		link: link asVariant
		displayAsIcon: displayAsIcon asVariant
		iconFileName: iconFileName asVariant
		iconIndex: iconIndex asVariant
		iconLabel: iconLabel asVariant
		left: left asVariant
		top: top asVariant
		width: width asVariant
		height: height asVariant
		rhs: answer.
	^answer asObject
!

Add: classType filename: filename link: link displayAsIcon: displayAsIcon iconFileName: iconFileName iconIndex: iconIndex iconLabel: iconLabel left: left top: top width: width height: height rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in, optional]VARIANT ClassType,
			[in, optional]VARIANT Filename,
			[in, optional]VARIANT Link,
			[in, optional]VARIANT DisplayAsIcon,
			[in, optional]VARIANT IconFileName,
			[in, optional]VARIANT IconIndex,
			[in, optional]VARIANT IconLabel,
			[in, optional]VARIANT Left,
			[in, optional]VARIANT Top,
			[in, optional]VARIANT Width,
			[in, optional]VARIANT Height,
			[out, retval]OLEObject** RHS);"

	<virtual stdcall: hresult 63 variant variant variant variant variant variant variant variant variant variant variant Excel_OLEObject**>
	^self invalidCall!

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

get_AutoLoad: rhs
	"Private - Get the value of the 'AutoLoad' property of the receiver.

		HRESULT __stdcall AutoLoad(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 50 varbool*>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 45 ExcelBorder**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 64 sdword*>
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

	<virtual stdcall: hresult 46 ExcelInterior**>
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

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 47 varbool*>
	^self invalidCall!

get_ShapeRange: rhs
	"Private - Get the value of the 'ShapeRange' property of the receiver.

		HRESULT __stdcall ShapeRange(
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 44 ExcelShapeRange**>
	^self invalidCall!

get_SourceName: rhs
	"Private - Get the value of the 'SourceName' property of the receiver.

		HRESULT __stdcall SourceName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 55 bstr*>
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

	<virtual stdcall: hresult 65 ExcelGroupObject**>
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

	<virtual stdcall: hresult 66 variant IDispatch**>
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

put_AutoLoad: rhs
	"Private - Set the value of the 'AutoLoad' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoLoad(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 51 varbool>
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

put_Shadow: rhs
	"Private - Set the value of the 'Shadow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Shadow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 48 varbool>
	^self invalidCall!

put_SourceName: rhs
	"Private - Set the value of the 'SourceName' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall SourceName(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 56 bstr>
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
!ExcelIOLEObjects categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy12!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy15!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy15!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy22!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy3!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy30!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy30!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy32!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy32!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy33!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy33!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy34!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy34!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy36!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy36!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy37!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy37!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy38!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy38!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy39!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy39!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy40!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy40!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_dummy41!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_Dummy41!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #add!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #add:filename:link:displayAsIcon:iconFileName:iconIndex:iconLabel:left:top:width:height:!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #Add:filename:link:displayAsIcon:iconFileName:iconIndex:iconLabel:left:top:width:height:rhs:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #autoLoad!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #autoLoad:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #border!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #BringToFront:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #Copy:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #Cut:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #Delete:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #Duplicate:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_AutoLoad:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Border:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Placement:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_PrintObject:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_ShapeRange:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_SourceName:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #get_ZOrder:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #group!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #Group:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIOLEObjects categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #put_AutoLoad:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #put_Placement:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #put_PrintObject:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #put_Shadow:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #put_SourceName:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #Select:rhs:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelIOLEObjects categoriesFor: #SendToBack:!**auto generated**!COM Interfaces-IOLEObjects!private! !
!ExcelIOLEObjects categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #sourceName!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #sourceName:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelIOLEObjects categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelIOLEObjects class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IOLEObjects'
		ExcelIOLEObjects defineTemplate"

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
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Shadow:
			argumentTypes: 'varbool*';
		defineFunction: #put_Shadow:
			argumentTypes: 'varbool';
		defineFunction: #_Dummy30
			returnType: 'void';
		defineFunction: #get_AutoLoad:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoLoad:
			argumentTypes: 'varbool';
		defineFunction: #_Dummy32
			returnType: 'void';
		defineFunction: #_Dummy33
			returnType: 'void';
		defineFunction: #_Dummy34
			returnType: 'void';
		defineFunction: #get_SourceName:
			argumentTypes: 'bstr*';
		defineFunction: #put_SourceName:
			argumentTypes: 'bstr';
		defineFunction: #_Dummy36
			returnType: 'void';
		defineFunction: #_Dummy37
			returnType: 'void';
		defineFunction: #_Dummy38
			returnType: 'void';
		defineFunction: #_Dummy39
			returnType: 'void';
		defineFunction: #_Dummy40
			returnType: 'void';
		defineFunction: #_Dummy41
			returnType: 'void';
		defineFunction: #Add:filename:link:displayAsIcon:iconFileName:iconIndex:iconLabel:left:top:width:height:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant Excel_OLEObject**';
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
		ExcelIOLEObjects initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIOLEObjects class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIOLEObjects class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

