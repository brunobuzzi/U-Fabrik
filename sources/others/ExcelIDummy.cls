"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIDummy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIDummy guid: (IID fromString: '{0002442E-0001-0000-C000-000000000046}')!
ExcelIDummy comment: '<ExcelIDummy> is a wrapper class for the COM interface ''Excel.IDummy'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002442E-0001-0000-C000-000000000046), 
	helpcontext(0x000200c4), 
	hidden
]
interface IDummy : IDispatch
 {
	[id(0x00000644), helpcontext(0x00010644)]
	HRESULT __stdcall _ActiveSheetOrChart();
	[id(0x0000041f), helpcontext(0x0001041f)]
	HRESULT __stdcall RGB();
	[id(0x00000420), helpcontext(0x00010420)]
	HRESULT __stdcall ChDir();
	[id(0x00000475), helpcontext(0x00010475)]
	HRESULT __stdcall DoScript();
	[id(0x00000473), helpcontext(0x00010473)]
	HRESULT __stdcall DirectObject();
	[id(0x00000758), helpcontext(0x00010758)]
	HRESULT __stdcall RefreshDocument();
	[id(0x00000a48), helpcontext(0x00010a48)]
	HRESULT __stdcall AddSignatureLine(
		[in]VARIANT SigProv,
		[out, retval]Signature** RHS);
	[id(0x00000a4a), helpcontext(0x00010a4a)]
	HRESULT __stdcall AddNonVisibleSignature(
		[in]VARIANT SigProv,
		[out, retval]Signature** RHS);
	[id(0x00000a4b), propget, helpcontext(0x00010a4b)]
	HRESULT __stdcall ShowSignaturesPane(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a4b), propput, helpcontext(0x00010a4b)]
	HRESULT __stdcall ShowSignaturesPane(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a4c), helpcontext(0x00010a4c)]
	HRESULT __stdcall ThemeFontScheme();
	[id(0x00000a4d), helpcontext(0x00010a4d)]
	HRESULT __stdcall ThemeColorScheme();
	[id(0x00000a4e), helpcontext(0x00010a4e)]
	HRESULT __stdcall ThemeEffectScheme();
	[id(0x00000a4f), helpcontext(0x00010a4f)]
	HRESULT __stdcall Load();
};
'!
!ExcelIDummy categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIDummy methodsFor!

_activeSheetOrChart
	"Invoke the _ActiveSheetOrChart() method of the COM object."

	^self _ActiveSheetOrChart
!

_ActiveSheetOrChart
	"Private - Invoke the _ActiveSheetOrChart() method of the COM object.

		HRESULT __stdcall _ActiveSheetOrChart();"

	<virtual stdcall: hresult 8>
	^self invalidCall!

addNonVisibleSignature: sigProv
	"Answer the <OfficeSignature> result of invoking the AddNonVisibleSignature() method of the COM object."

	| answer |
	answer := OfficeSignature newPointer.
	self
		AddNonVisibleSignature: sigProv asVariant
		rhs: answer.
	^answer asObject
!

AddNonVisibleSignature: sigProv rhs: rhs
	"Private - Invoke the AddNonVisibleSignature() method of the COM object.

		HRESULT __stdcall AddNonVisibleSignature(
			[in]VARIANT SigProv,
			[out, retval]Signature** RHS);"

	<virtual stdcall: hresult 15 variant OfficeSignature**>
	^self invalidCall!

addSignatureLine: sigProv
	"Answer the <OfficeSignature> result of invoking the AddSignatureLine() method of the COM object."

	| answer |
	answer := OfficeSignature newPointer.
	self
		AddSignatureLine: sigProv asVariant
		rhs: answer.
	^answer asObject
!

AddSignatureLine: sigProv rhs: rhs
	"Private - Invoke the AddSignatureLine() method of the COM object.

		HRESULT __stdcall AddSignatureLine(
			[in]VARIANT SigProv,
			[out, retval]Signature** RHS);"

	<virtual stdcall: hresult 14 variant OfficeSignature**>
	^self invalidCall!

chDir
	"Invoke the ChDir() method of the COM object."

	^self ChDir
!

ChDir
	"Private - Invoke the ChDir() method of the COM object.

		HRESULT __stdcall ChDir();"

	<virtual stdcall: hresult 10>
	^self invalidCall!

directObject
	"Invoke the DirectObject() method of the COM object."

	^self DirectObject
!

DirectObject
	"Private - Invoke the DirectObject() method of the COM object.

		HRESULT __stdcall DirectObject();"

	<virtual stdcall: hresult 12>
	^self invalidCall!

doScript
	"Invoke the DoScript() method of the COM object."

	^self DoScript
!

DoScript
	"Private - Invoke the DoScript() method of the COM object.

		HRESULT __stdcall DoScript();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

get_ShowSignaturesPane: rhs
	"Private - Get the value of the 'ShowSignaturesPane' property of the receiver.

		HRESULT __stdcall ShowSignaturesPane(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 16 varbool*>
	^self invalidCall!

load
	"Invoke the Load() method of the COM object."

	^self Load
!

Load
	"Private - Invoke the Load() method of the COM object.

		HRESULT __stdcall Load();"

	<virtual stdcall: hresult 21>
	^self invalidCall!

put_ShowSignaturesPane: rhs
	"Private - Set the value of the 'ShowSignaturesPane' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowSignaturesPane(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 17 varbool>
	^self invalidCall!

refreshDocument
	"Invoke the RefreshDocument() method of the COM object."

	^self RefreshDocument
!

RefreshDocument
	"Private - Invoke the RefreshDocument() method of the COM object.

		HRESULT __stdcall RefreshDocument();"

	<virtual stdcall: hresult 13>
	^self invalidCall!

rgb
	"Invoke the RGB() method of the COM object."

	^self RGB
!

RGB
	"Private - Invoke the RGB() method of the COM object.

		HRESULT __stdcall RGB();"

	<virtual stdcall: hresult 9>
	^self invalidCall!

showSignaturesPane
	"Answer the <varbool> value of the 'ShowSignaturesPane' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowSignaturesPane: answer.
	^answer asObject
!

showSignaturesPane: rhs
	"Set the 'ShowSignaturesPane' property of the receiver to the <varbool> value of the argument."

	self put_ShowSignaturesPane: rhs
!

themeColorScheme
	"Invoke the ThemeColorScheme() method of the COM object."

	^self ThemeColorScheme
!

ThemeColorScheme
	"Private - Invoke the ThemeColorScheme() method of the COM object.

		HRESULT __stdcall ThemeColorScheme();"

	<virtual stdcall: hresult 19>
	^self invalidCall!

themeEffectScheme
	"Invoke the ThemeEffectScheme() method of the COM object."

	^self ThemeEffectScheme
!

ThemeEffectScheme
	"Private - Invoke the ThemeEffectScheme() method of the COM object.

		HRESULT __stdcall ThemeEffectScheme();"

	<virtual stdcall: hresult 20>
	^self invalidCall!

themeFontScheme
	"Invoke the ThemeFontScheme() method of the COM object."

	^self ThemeFontScheme
!

ThemeFontScheme
	"Private - Invoke the ThemeFontScheme() method of the COM object.

		HRESULT __stdcall ThemeFontScheme();"

	<virtual stdcall: hresult 18>
	^self invalidCall! !
!ExcelIDummy categoriesFor: #_activeSheetOrChart!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #_ActiveSheetOrChart!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #addNonVisibleSignature:!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #AddNonVisibleSignature:rhs:!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #addSignatureLine:!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #AddSignatureLine:rhs:!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #chDir!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #ChDir!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #directObject!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #DirectObject!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #doScript!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #DoScript!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #get_ShowSignaturesPane:!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #load!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #Load!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #put_ShowSignaturesPane:!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #refreshDocument!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #RefreshDocument!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #rgb!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #RGB!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #showSignaturesPane!**auto generated**!properties!public! !
!ExcelIDummy categoriesFor: #showSignaturesPane:!**auto generated**!properties!public! !
!ExcelIDummy categoriesFor: #themeColorScheme!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #ThemeColorScheme!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #themeEffectScheme!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #ThemeEffectScheme!**auto generated**!COM Interfaces-IDummy!private! !
!ExcelIDummy categoriesFor: #themeFontScheme!**auto generated**!methods!public! !
!ExcelIDummy categoriesFor: #ThemeFontScheme!**auto generated**!COM Interfaces-IDummy!private! !

!ExcelIDummy class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IDummy'
		ExcelIDummy defineTemplate"

	self
		defineFunction: #_ActiveSheetOrChart;
		defineFunction: #RGB;
		defineFunction: #ChDir;
		defineFunction: #DoScript;
		defineFunction: #DirectObject;
		defineFunction: #RefreshDocument;
		defineFunction: #AddSignatureLine:rhs:
			argumentTypes: 'variant OfficeSignature**';
		defineFunction: #AddNonVisibleSignature:rhs:
			argumentTypes: 'variant OfficeSignature**';
		defineFunction: #get_ShowSignaturesPane:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowSignaturesPane:
			argumentTypes: 'varbool';
		defineFunction: #ThemeFontScheme;
		defineFunction: #ThemeColorScheme;
		defineFunction: #ThemeEffectScheme;
		defineFunction: #Load
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIDummy initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIDummy class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIDummy class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

