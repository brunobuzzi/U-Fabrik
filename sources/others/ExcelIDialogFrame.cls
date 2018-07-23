"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIDialogFrame
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIDialogFrame guid: (IID fromString: '{0002088F-0001-0000-C000-000000000046}')!
ExcelIDialogFrame comment: '<ExcelIDialogFrame> is a wrapper class for the COM interface ''Excel.IDialogFrame'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002088F-0001-0000-C000-000000000046), 
	helpcontext(0x0002004f), 
	hidden
]
interface IDialogFrame : IDispatch
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
	[id(0x00010004), hidden, restricted]
	void __stdcall _Dummy4();
	[id(0x00010005), hidden, restricted]
	void __stdcall _Dummy5();
	[id(0x000000d5), helpcontext(0x000100d5)]
	HRESULT __stdcall CopyPicture(
		[in, defaultvalue(2)]XlPictureAppearance Appearance,
		[in, defaultvalue(-4147)]XlCopyPictureFormat Format,
		[out, retval]VARIANT* RHS);
	[id(0x00010007), hidden, restricted]
	void __stdcall _Dummy7();
	[id(0x00010008), hidden, restricted]
	void __stdcall _Dummy8();
	[id(0x00010009), hidden, restricted]
	void __stdcall _Dummy9();
	[id(0x0001000a), hidden, restricted]
	void __stdcall _Dummy10();
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
	[id(0x00010011), hidden, restricted]
	void __stdcall _Dummy17();
	[id(0x00010012), hidden, restricted]
	void __stdcall _Dummy18();
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[in, optional]VARIANT Replace,
		[out, retval]VARIANT* RHS);
	[id(0x00010014), hidden, restricted]
	void __stdcall _Dummy20();
	[id(0x0000007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[out, retval]double* RHS);
	[id(0x0000007e), propput, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[in]double RHS);
	[id(0x00010016), hidden, restricted]
	void __stdcall _Dummy22();
	[id(0x00010017), hidden, restricted]
	void __stdcall _Dummy23();
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
};
'!
!ExcelIDialogFrame categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIDialogFrame methodsFor!

_dummy10
	"Answer the <VOID> result of invoking the _Dummy10() method of the COM object."

	self _Dummy10
!

_Dummy10
	"Private - Invoke the _Dummy10() method of the COM object.

		void __stdcall _Dummy10();"

	<virtual stdcall: void 18>
	^self invalidCall!

_dummy12
	"Answer the <VOID> result of invoking the _Dummy12() method of the COM object."

	self _Dummy12
!

_Dummy12
	"Private - Invoke the _Dummy12() method of the COM object.

		void __stdcall _Dummy12();"

	<virtual stdcall: void 21>
	^self invalidCall!

_dummy17
	"Answer the <VOID> result of invoking the _Dummy17() method of the COM object."

	self _Dummy17
!

_Dummy17
	"Private - Invoke the _Dummy17() method of the COM object.

		void __stdcall _Dummy17();"

	<virtual stdcall: void 30>
	^self invalidCall!

_dummy18
	"Answer the <VOID> result of invoking the _Dummy18() method of the COM object."

	self _Dummy18
!

_Dummy18
	"Private - Invoke the _Dummy18() method of the COM object.

		void __stdcall _Dummy18();"

	<virtual stdcall: void 31>
	^self invalidCall!

_dummy20
	"Answer the <VOID> result of invoking the _Dummy20() method of the COM object."

	self _Dummy20
!

_Dummy20
	"Private - Invoke the _Dummy20() method of the COM object.

		void __stdcall _Dummy20();"

	<virtual stdcall: void 33>
	^self invalidCall!

_dummy22
	"Answer the <VOID> result of invoking the _Dummy22() method of the COM object."

	self _Dummy22
!

_Dummy22
	"Private - Invoke the _Dummy22() method of the COM object.

		void __stdcall _Dummy22();"

	<virtual stdcall: void 36>
	^self invalidCall!

_dummy23
	"Answer the <VOID> result of invoking the _Dummy23() method of the COM object."

	self _Dummy23
!

_Dummy23
	"Private - Invoke the _Dummy23() method of the COM object.

		void __stdcall _Dummy23();"

	<virtual stdcall: void 37>
	^self invalidCall!

_dummy25
	"Answer the <VOID> result of invoking the _Dummy25() method of the COM object."

	self _Dummy25
!

_Dummy25
	"Private - Invoke the _Dummy25() method of the COM object.

		void __stdcall _Dummy25();"

	<virtual stdcall: void 40>
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

_dummy4
	"Answer the <VOID> result of invoking the _Dummy4() method of the COM object."

	self _Dummy4
!

_Dummy4
	"Private - Invoke the _Dummy4() method of the COM object.

		void __stdcall _Dummy4();"

	<virtual stdcall: void 12>
	^self invalidCall!

_dummy5
	"Answer the <VOID> result of invoking the _Dummy5() method of the COM object."

	self _Dummy5
!

_Dummy5
	"Private - Invoke the _Dummy5() method of the COM object.

		void __stdcall _Dummy5();"

	<virtual stdcall: void 13>
	^self invalidCall!

_dummy7
	"Answer the <VOID> result of invoking the _Dummy7() method of the COM object."

	self _Dummy7
!

_Dummy7
	"Private - Invoke the _Dummy7() method of the COM object.

		void __stdcall _Dummy7();"

	<virtual stdcall: void 15>
	^self invalidCall!

_dummy8
	"Answer the <VOID> result of invoking the _Dummy8() method of the COM object."

	self _Dummy8
!

_Dummy8
	"Private - Invoke the _Dummy8() method of the COM object.

		void __stdcall _Dummy8();"

	<virtual stdcall: void 16>
	^self invalidCall!

_dummy9
	"Answer the <VOID> result of invoking the _Dummy9() method of the COM object."

	self _Dummy9
!

_Dummy9
	"Private - Invoke the _Dummy9() method of the COM object.

		void __stdcall _Dummy9();"

	<virtual stdcall: void 17>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

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

	<virtual stdcall: hresult 45 variant variant variant variant variant*>
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

	<virtual stdcall: hresult 42 bstr*>
	^self invalidCall!

get_Characters: start length: length rhs: rhs
	"Private - Get the value of the 'Characters' property of the receiver.

		HRESULT __stdcall Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length,
			[out, retval]Characters** RHS);"

	<virtual stdcall: hresult 44 variant variant ExcelCharacters**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 19 double*>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 22 double*>
	^self invalidCall!

get_Locked: rhs
	"Private - Get the value of the 'Locked' property of the receiver.

		HRESULT __stdcall Locked(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 24 varbool*>
	^self invalidCall!

get_LockedText: rhs
	"Private - Get the value of the 'LockedText' property of the receiver.

		HRESULT __stdcall LockedText(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 46 varbool*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 26 bstr*>
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

get_ShapeRange: rhs
	"Private - Get the value of the 'ShapeRange' property of the receiver.

		HRESULT __stdcall ShapeRange(
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 41 ExcelShapeRange**>
	^self invalidCall!

get_Text: rhs
	"Private - Get the value of the 'Text' property of the receiver.

		HRESULT __stdcall Text(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 48 bstr*>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 34 double*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 38 double*>
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

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Caption(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 43 bstr>
	^self invalidCall!

put_Height: rhs
	"Private - Set the value of the 'Height' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Height(
			[in]double RHS);"

	<virtual stdcall: hresult 20 double>
	^self invalidCall!

put_Left: rhs
	"Private - Set the value of the 'Left' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Left(
			[in]double RHS);"

	<virtual stdcall: hresult 23 double>
	^self invalidCall!

put_Locked: rhs
	"Private - Set the value of the 'Locked' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Locked(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 25 varbool>
	^self invalidCall!

put_LockedText: rhs
	"Private - Set the value of the 'LockedText' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall LockedText(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 47 varbool>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 27 bstr>
	^self invalidCall!

put_OnAction: rhs
	"Private - Set the value of the 'OnAction' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnAction(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 29 bstr>
	^self invalidCall!

put_Text: rhs
	"Private - Set the value of the 'Text' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Text(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 49 bstr>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Top(
			[in]double RHS);"

	<virtual stdcall: hresult 35 double>
	^self invalidCall!

put_Width: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Width(
			[in]double RHS);"

	<virtual stdcall: hresult 39 double>
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

	<virtual stdcall: hresult 32 variant variant*>
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
!ExcelIDialogFrame categoriesFor: #_dummy10!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy10!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy12!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy17!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy17!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy18!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy18!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy20!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy20!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy22!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy23!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy23!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy25!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy25!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy3!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy4!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy4!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy5!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy5!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy7!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy7!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy8!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy8!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #_dummy9!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #_Dummy9!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:rhs:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_Characters:length:rhs:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_LockedText:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_ShapeRange:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_Text:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #lockedText!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #lockedText:!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #put_LockedText:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #put_Text:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelIDialogFrame categoriesFor: #Select:rhs:!**auto generated**!COM Interfaces-IDialogFrame!private! !
!ExcelIDialogFrame categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #text!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIDialogFrame categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelIDialogFrame class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IDialogFrame'
		ExcelIDialogFrame defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #_Dummy3
			returnType: 'void';
		defineFunction: #_Dummy4
			returnType: 'void';
		defineFunction: #_Dummy5
			returnType: 'void';
		defineFunction: #CopyPicture:format:rhs:
			argumentTypes: 'sdword sdword variant*';
		defineFunction: #_Dummy7
			returnType: 'void';
		defineFunction: #_Dummy8
			returnType: 'void';
		defineFunction: #_Dummy9
			returnType: 'void';
		defineFunction: #_Dummy10
			returnType: 'void';
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
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_OnAction:
			argumentTypes: 'bstr*';
		defineFunction: #put_OnAction:
			argumentTypes: 'bstr';
		defineFunction: #_Dummy17
			returnType: 'void';
		defineFunction: #_Dummy18
			returnType: 'void';
		defineFunction: #Select:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #_Dummy20
			returnType: 'void';
		defineFunction: #get_Top:
			argumentTypes: 'double*';
		defineFunction: #put_Top:
			argumentTypes: 'double';
		defineFunction: #_Dummy22
			returnType: 'void';
		defineFunction: #_Dummy23
			returnType: 'void';
		defineFunction: #get_Width:
			argumentTypes: 'double*';
		defineFunction: #put_Width:
			argumentTypes: 'double';
		defineFunction: #_Dummy25
			returnType: 'void';
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
			argumentTypes: 'bstr'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIDialogFrame initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIDialogFrame class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIDialogFrame class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

