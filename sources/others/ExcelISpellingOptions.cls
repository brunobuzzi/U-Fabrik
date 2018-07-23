"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISpellingOptions
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISpellingOptions guid: (IID fromString: '{00024465-0001-0000-C000-000000000046}')!
ExcelISpellingOptions comment: '<ExcelISpellingOptions> is a wrapper class for the COM interface ''Excel.ISpellingOptions'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024465-0001-0000-C000-000000000046), 
	helpcontext(0x000200fb), 
	hidden
]
interface ISpellingOptions : IDispatch
 {
	[id(0x000008ac), propget, helpcontext(0x000108ac)]
	HRESULT __stdcall DictLang(
		[out, retval]long* RHS);
	[id(0x000008ac), propput, helpcontext(0x000108ac)]
	HRESULT __stdcall DictLang(
		[in]long RHS);
	[id(0x000008ad), propget, helpcontext(0x000108ad)]
	HRESULT __stdcall UserDict(
		[out, retval]BSTR* RHS);
	[id(0x000008ad), propput, helpcontext(0x000108ad)]
	HRESULT __stdcall UserDict(
		[in]BSTR RHS);
	[id(0x000008ae), propget, helpcontext(0x000108ae)]
	HRESULT __stdcall IgnoreCaps(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008ae), propput, helpcontext(0x000108ae)]
	HRESULT __stdcall IgnoreCaps(
		[in]VARIANT_BOOL RHS);
	[id(0x000008af), propget, helpcontext(0x000108af)]
	HRESULT __stdcall SuggestMainOnly(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008af), propput, helpcontext(0x000108af)]
	HRESULT __stdcall SuggestMainOnly(
		[in]VARIANT_BOOL RHS);
	[id(0x000008b0), propget, helpcontext(0x000108b0)]
	HRESULT __stdcall IgnoreMixedDigits(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008b0), propput, helpcontext(0x000108b0)]
	HRESULT __stdcall IgnoreMixedDigits(
		[in]VARIANT_BOOL RHS);
	[id(0x000008b1), propget, helpcontext(0x000108b1)]
	HRESULT __stdcall IgnoreFileNames(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008b1), propput, helpcontext(0x000108b1)]
	HRESULT __stdcall IgnoreFileNames(
		[in]VARIANT_BOOL RHS);
	[id(0x000008b2), propget, helpcontext(0x000108b2)]
	HRESULT __stdcall GermanPostReform(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008b2), propput, helpcontext(0x000108b2)]
	HRESULT __stdcall GermanPostReform(
		[in]VARIANT_BOOL RHS);
	[id(0x000008b3), propget, helpcontext(0x000108b3)]
	HRESULT __stdcall KoreanCombineAux(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008b3), propput, helpcontext(0x000108b3)]
	HRESULT __stdcall KoreanCombineAux(
		[in]VARIANT_BOOL RHS);
	[id(0x000008b4), propget, helpcontext(0x000108b4)]
	HRESULT __stdcall KoreanUseAutoChangeList(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008b4), propput, helpcontext(0x000108b4)]
	HRESULT __stdcall KoreanUseAutoChangeList(
		[in]VARIANT_BOOL RHS);
	[id(0x000008b5), propget, helpcontext(0x000108b5)]
	HRESULT __stdcall KoreanProcessCompound(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008b5), propput, helpcontext(0x000108b5)]
	HRESULT __stdcall KoreanProcessCompound(
		[in]VARIANT_BOOL RHS);
	[id(0x000008b6), propget, helpcontext(0x000108b6)]
	HRESULT __stdcall HebrewModes(
		[out, retval]XlHebrewModes* RHS);
	[id(0x000008b6), propput, helpcontext(0x000108b6)]
	HRESULT __stdcall HebrewModes(
		[in]XlHebrewModes RHS);
	[id(0x000008b7), propget, helpcontext(0x000108b7)]
	HRESULT __stdcall ArabicModes(
		[out, retval]XlArabicModes* RHS);
	[id(0x000008b7), propput, helpcontext(0x000108b7)]
	HRESULT __stdcall ArabicModes(
		[in]XlArabicModes RHS);
};
'!
!ExcelISpellingOptions categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISpellingOptions methodsFor!

arabicModes
	"Answer the <sdword> value of the 'ArabicModes' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ArabicModes: answer.
	^answer asObject
!

arabicModes: rhs
	"Set the 'ArabicModes' property of the receiver to the <sdword> value of the argument."

	self put_ArabicModes: rhs
!

dictLang
	"Answer the <sdword> value of the 'DictLang' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DictLang: answer.
	^answer asObject
!

dictLang: rhs
	"Set the 'DictLang' property of the receiver to the <sdword> value of the argument."

	self put_DictLang: rhs
!

germanPostReform
	"Answer the <varbool> value of the 'GermanPostReform' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_GermanPostReform: answer.
	^answer asObject
!

germanPostReform: rhs
	"Set the 'GermanPostReform' property of the receiver to the <varbool> value of the argument."

	self put_GermanPostReform: rhs
!

get_ArabicModes: rhs
	"Private - Get the value of the 'ArabicModes' property of the receiver.

		HRESULT __stdcall ArabicModes(
			[out, retval]XlArabicModes* RHS);"

	<virtual stdcall: hresult 30 sdword*>
	^self invalidCall!

get_DictLang: rhs
	"Private - Get the value of the 'DictLang' property of the receiver.

		HRESULT __stdcall DictLang(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 8 sdword*>
	^self invalidCall!

get_GermanPostReform: rhs
	"Private - Get the value of the 'GermanPostReform' property of the receiver.

		HRESULT __stdcall GermanPostReform(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 20 varbool*>
	^self invalidCall!

get_HebrewModes: rhs
	"Private - Get the value of the 'HebrewModes' property of the receiver.

		HRESULT __stdcall HebrewModes(
			[out, retval]XlHebrewModes* RHS);"

	<virtual stdcall: hresult 28 sdword*>
	^self invalidCall!

get_IgnoreCaps: rhs
	"Private - Get the value of the 'IgnoreCaps' property of the receiver.

		HRESULT __stdcall IgnoreCaps(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 12 varbool*>
	^self invalidCall!

get_IgnoreFileNames: rhs
	"Private - Get the value of the 'IgnoreFileNames' property of the receiver.

		HRESULT __stdcall IgnoreFileNames(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 18 varbool*>
	^self invalidCall!

get_IgnoreMixedDigits: rhs
	"Private - Get the value of the 'IgnoreMixedDigits' property of the receiver.

		HRESULT __stdcall IgnoreMixedDigits(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 16 varbool*>
	^self invalidCall!

get_KoreanCombineAux: rhs
	"Private - Get the value of the 'KoreanCombineAux' property of the receiver.

		HRESULT __stdcall KoreanCombineAux(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 22 varbool*>
	^self invalidCall!

get_KoreanProcessCompound: rhs
	"Private - Get the value of the 'KoreanProcessCompound' property of the receiver.

		HRESULT __stdcall KoreanProcessCompound(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 26 varbool*>
	^self invalidCall!

get_KoreanUseAutoChangeList: rhs
	"Private - Get the value of the 'KoreanUseAutoChangeList' property of the receiver.

		HRESULT __stdcall KoreanUseAutoChangeList(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 24 varbool*>
	^self invalidCall!

get_SuggestMainOnly: rhs
	"Private - Get the value of the 'SuggestMainOnly' property of the receiver.

		HRESULT __stdcall SuggestMainOnly(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 14 varbool*>
	^self invalidCall!

get_UserDict: rhs
	"Private - Get the value of the 'UserDict' property of the receiver.

		HRESULT __stdcall UserDict(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 10 bstr*>
	^self invalidCall!

hebrewModes
	"Answer the <sdword> value of the 'HebrewModes' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HebrewModes: answer.
	^answer asObject
!

hebrewModes: rhs
	"Set the 'HebrewModes' property of the receiver to the <sdword> value of the argument."

	self put_HebrewModes: rhs
!

ignoreCaps
	"Answer the <varbool> value of the 'IgnoreCaps' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IgnoreCaps: answer.
	^answer asObject
!

ignoreCaps: rhs
	"Set the 'IgnoreCaps' property of the receiver to the <varbool> value of the argument."

	self put_IgnoreCaps: rhs
!

ignoreFileNames
	"Answer the <varbool> value of the 'IgnoreFileNames' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IgnoreFileNames: answer.
	^answer asObject
!

ignoreFileNames: rhs
	"Set the 'IgnoreFileNames' property of the receiver to the <varbool> value of the argument."

	self put_IgnoreFileNames: rhs
!

ignoreMixedDigits
	"Answer the <varbool> value of the 'IgnoreMixedDigits' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IgnoreMixedDigits: answer.
	^answer asObject
!

ignoreMixedDigits: rhs
	"Set the 'IgnoreMixedDigits' property of the receiver to the <varbool> value of the argument."

	self put_IgnoreMixedDigits: rhs
!

koreanCombineAux
	"Answer the <varbool> value of the 'KoreanCombineAux' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_KoreanCombineAux: answer.
	^answer asObject
!

koreanCombineAux: rhs
	"Set the 'KoreanCombineAux' property of the receiver to the <varbool> value of the argument."

	self put_KoreanCombineAux: rhs
!

koreanProcessCompound
	"Answer the <varbool> value of the 'KoreanProcessCompound' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_KoreanProcessCompound: answer.
	^answer asObject
!

koreanProcessCompound: rhs
	"Set the 'KoreanProcessCompound' property of the receiver to the <varbool> value of the argument."

	self put_KoreanProcessCompound: rhs
!

koreanUseAutoChangeList
	"Answer the <varbool> value of the 'KoreanUseAutoChangeList' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_KoreanUseAutoChangeList: answer.
	^answer asObject
!

koreanUseAutoChangeList: rhs
	"Set the 'KoreanUseAutoChangeList' property of the receiver to the <varbool> value of the argument."

	self put_KoreanUseAutoChangeList: rhs
!

put_ArabicModes: rhs
	"Private - Set the value of the 'ArabicModes' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ArabicModes(
			[in]XlArabicModes RHS);"

	<virtual stdcall: hresult 31 sdword>
	^self invalidCall!

put_DictLang: rhs
	"Private - Set the value of the 'DictLang' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DictLang(
			[in]long RHS);"

	<virtual stdcall: hresult 9 sdword>
	^self invalidCall!

put_GermanPostReform: rhs
	"Private - Set the value of the 'GermanPostReform' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall GermanPostReform(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 21 varbool>
	^self invalidCall!

put_HebrewModes: rhs
	"Private - Set the value of the 'HebrewModes' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall HebrewModes(
			[in]XlHebrewModes RHS);"

	<virtual stdcall: hresult 29 sdword>
	^self invalidCall!

put_IgnoreCaps: rhs
	"Private - Set the value of the 'IgnoreCaps' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IgnoreCaps(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 13 varbool>
	^self invalidCall!

put_IgnoreFileNames: rhs
	"Private - Set the value of the 'IgnoreFileNames' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IgnoreFileNames(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 19 varbool>
	^self invalidCall!

put_IgnoreMixedDigits: rhs
	"Private - Set the value of the 'IgnoreMixedDigits' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IgnoreMixedDigits(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 17 varbool>
	^self invalidCall!

put_KoreanCombineAux: rhs
	"Private - Set the value of the 'KoreanCombineAux' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall KoreanCombineAux(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 23 varbool>
	^self invalidCall!

put_KoreanProcessCompound: rhs
	"Private - Set the value of the 'KoreanProcessCompound' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall KoreanProcessCompound(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 27 varbool>
	^self invalidCall!

put_KoreanUseAutoChangeList: rhs
	"Private - Set the value of the 'KoreanUseAutoChangeList' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall KoreanUseAutoChangeList(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 25 varbool>
	^self invalidCall!

put_SuggestMainOnly: rhs
	"Private - Set the value of the 'SuggestMainOnly' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SuggestMainOnly(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 15 varbool>
	^self invalidCall!

put_UserDict: rhs
	"Private - Set the value of the 'UserDict' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall UserDict(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 11 bstr>
	^self invalidCall!

suggestMainOnly
	"Answer the <varbool> value of the 'SuggestMainOnly' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_SuggestMainOnly: answer.
	^answer asObject
!

suggestMainOnly: rhs
	"Set the 'SuggestMainOnly' property of the receiver to the <varbool> value of the argument."

	self put_SuggestMainOnly: rhs
!

userDict
	"Answer the <bstr> value of the 'UserDict' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_UserDict: answer.
	^answer asObject
!

userDict: rhs
	"Set the 'UserDict' property of the receiver to the <bstr> value of the argument."

	self put_UserDict: rhs
! !
!ExcelISpellingOptions categoriesFor: #arabicModes!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #arabicModes:!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #dictLang!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #dictLang:!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #germanPostReform!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #germanPostReform:!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #get_ArabicModes:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #get_DictLang:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #get_GermanPostReform:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #get_HebrewModes:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #get_IgnoreCaps:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #get_IgnoreFileNames:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #get_IgnoreMixedDigits:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #get_KoreanCombineAux:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #get_KoreanProcessCompound:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #get_KoreanUseAutoChangeList:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #get_SuggestMainOnly:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #get_UserDict:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #hebrewModes!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #hebrewModes:!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #ignoreCaps!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #ignoreCaps:!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #ignoreFileNames!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #ignoreFileNames:!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #ignoreMixedDigits!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #ignoreMixedDigits:!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #koreanCombineAux!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #koreanCombineAux:!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #koreanProcessCompound!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #koreanProcessCompound:!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #koreanUseAutoChangeList!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #koreanUseAutoChangeList:!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #put_ArabicModes:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #put_DictLang:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #put_GermanPostReform:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #put_HebrewModes:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #put_IgnoreCaps:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #put_IgnoreFileNames:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #put_IgnoreMixedDigits:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #put_KoreanCombineAux:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #put_KoreanProcessCompound:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #put_KoreanUseAutoChangeList:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #put_SuggestMainOnly:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #put_UserDict:!**auto generated**!COM Interfaces-ISpellingOptions!private! !
!ExcelISpellingOptions categoriesFor: #suggestMainOnly!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #suggestMainOnly:!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #userDict!**auto generated**!properties!public! !
!ExcelISpellingOptions categoriesFor: #userDict:!**auto generated**!properties!public! !

!ExcelISpellingOptions class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISpellingOptions'
		ExcelISpellingOptions defineTemplate"

	self
		defineFunction: #get_DictLang:
			argumentTypes: 'sdword*';
		defineFunction: #put_DictLang:
			argumentTypes: 'sdword';
		defineFunction: #get_UserDict:
			argumentTypes: 'bstr*';
		defineFunction: #put_UserDict:
			argumentTypes: 'bstr';
		defineFunction: #get_IgnoreCaps:
			argumentTypes: 'varbool*';
		defineFunction: #put_IgnoreCaps:
			argumentTypes: 'varbool';
		defineFunction: #get_SuggestMainOnly:
			argumentTypes: 'varbool*';
		defineFunction: #put_SuggestMainOnly:
			argumentTypes: 'varbool';
		defineFunction: #get_IgnoreMixedDigits:
			argumentTypes: 'varbool*';
		defineFunction: #put_IgnoreMixedDigits:
			argumentTypes: 'varbool';
		defineFunction: #get_IgnoreFileNames:
			argumentTypes: 'varbool*';
		defineFunction: #put_IgnoreFileNames:
			argumentTypes: 'varbool';
		defineFunction: #get_GermanPostReform:
			argumentTypes: 'varbool*';
		defineFunction: #put_GermanPostReform:
			argumentTypes: 'varbool';
		defineFunction: #get_KoreanCombineAux:
			argumentTypes: 'varbool*';
		defineFunction: #put_KoreanCombineAux:
			argumentTypes: 'varbool';
		defineFunction: #get_KoreanUseAutoChangeList:
			argumentTypes: 'varbool*';
		defineFunction: #put_KoreanUseAutoChangeList:
			argumentTypes: 'varbool';
		defineFunction: #get_KoreanProcessCompound:
			argumentTypes: 'varbool*';
		defineFunction: #put_KoreanProcessCompound:
			argumentTypes: 'varbool';
		defineFunction: #get_HebrewModes:
			argumentTypes: 'sdword*';
		defineFunction: #put_HebrewModes:
			argumentTypes: 'sdword';
		defineFunction: #get_ArabicModes:
			argumentTypes: 'sdword*';
		defineFunction: #put_ArabicModes:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISpellingOptions initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISpellingOptions class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISpellingOptions class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

