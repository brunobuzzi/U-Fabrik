"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSpellingOptions
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSpellingOptions guid: (IID fromString: '{00024465-0000-0000-C000-000000000046}')!
ExcelSpellingOptions comment: '<ExcelSpellingOptions> is a wrapper class generated for the dispatch interface ''Excel.SpellingOptions'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024465-0000-0000-C000-000000000046), 
	helpcontext(0x000200fb)
]
dispinterface SpellingOptions {
	properties:
	methods:
[id(0x000008ac), propget, helpcontext(0x000108ac)]
		long DictLang();
[id(0x000008ac), propput, helpcontext(0x000108ac)]
		void DictLang(
			[in]long arg1);
[id(0x000008ad), propget, helpcontext(0x000108ad)]
		BSTR UserDict();
[id(0x000008ad), propput, helpcontext(0x000108ad)]
		void UserDict(
			[in]BSTR arg1);
[id(0x000008ae), propget, helpcontext(0x000108ae)]
		VARIANT_BOOL IgnoreCaps();
[id(0x000008ae), propput, helpcontext(0x000108ae)]
		void IgnoreCaps(
			[in]VARIANT_BOOL arg1);
[id(0x000008af), propget, helpcontext(0x000108af)]
		VARIANT_BOOL SuggestMainOnly();
[id(0x000008af), propput, helpcontext(0x000108af)]
		void SuggestMainOnly(
			[in]VARIANT_BOOL arg1);
[id(0x000008b0), propget, helpcontext(0x000108b0)]
		VARIANT_BOOL IgnoreMixedDigits();
[id(0x000008b0), propput, helpcontext(0x000108b0)]
		void IgnoreMixedDigits(
			[in]VARIANT_BOOL arg1);
[id(0x000008b1), propget, helpcontext(0x000108b1)]
		VARIANT_BOOL IgnoreFileNames();
[id(0x000008b1), propput, helpcontext(0x000108b1)]
		void IgnoreFileNames(
			[in]VARIANT_BOOL arg1);
[id(0x000008b2), propget, helpcontext(0x000108b2)]
		VARIANT_BOOL GermanPostReform();
[id(0x000008b2), propput, helpcontext(0x000108b2)]
		void GermanPostReform(
			[in]VARIANT_BOOL arg1);
[id(0x000008b3), propget, helpcontext(0x000108b3)]
		VARIANT_BOOL KoreanCombineAux();
[id(0x000008b3), propput, helpcontext(0x000108b3)]
		void KoreanCombineAux(
			[in]VARIANT_BOOL arg1);
[id(0x000008b4), propget, helpcontext(0x000108b4)]
		VARIANT_BOOL KoreanUseAutoChangeList();
[id(0x000008b4), propput, helpcontext(0x000108b4)]
		void KoreanUseAutoChangeList(
			[in]VARIANT_BOOL arg1);
[id(0x000008b5), propget, helpcontext(0x000108b5)]
		VARIANT_BOOL KoreanProcessCompound();
[id(0x000008b5), propput, helpcontext(0x000108b5)]
		void KoreanProcessCompound(
			[in]VARIANT_BOOL arg1);
[id(0x000008b6), propget, helpcontext(0x000108b6)]
		XlHebrewModes HebrewModes();
[id(0x000008b6), propput, helpcontext(0x000108b6)]
		void HebrewModes(
			[in]XlHebrewModes arg1);
[id(0x000008b7), propget, helpcontext(0x000108b7)]
		XlArabicModes ArabicModes();
[id(0x000008b7), propput, helpcontext(0x000108b7)]
		void ArabicModes(
			[in]XlArabicModes arg1);
};
'!
!ExcelSpellingOptions categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSpellingOptions methodsFor!

arabicModes
	"Answer the <sdword> value of the 'ArabicModes' property of the receiver.
		XlArabicModes ArabicModes"

	^(self getPropertyId: 2231)
!

arabicModes: arg1
	"Set the 'ArabicModes' property of the receiver to the <sdword> value of the argument.
		void ArabicModes"

	self setPropertyId: 2231 value: arg1
!

dictLang
	"Answer the <sdword> value of the 'DictLang' property of the receiver.
		long DictLang"

	^(self getPropertyId: 2220)
!

dictLang: arg1
	"Set the 'DictLang' property of the receiver to the <sdword> value of the argument.
		void DictLang"

	self setPropertyId: 2220 value: arg1
!

germanPostReform
	"Answer the <varbool> value of the 'GermanPostReform' property of the receiver.
		VARIANT_BOOL GermanPostReform"

	^(self getPropertyId: 2226)
!

germanPostReform: arg1
	"Set the 'GermanPostReform' property of the receiver to the <varbool> value of the argument.
		void GermanPostReform"

	self setPropertyId: 2226 value: arg1
!

hebrewModes
	"Answer the <sdword> value of the 'HebrewModes' property of the receiver.
		XlHebrewModes HebrewModes"

	^(self getPropertyId: 2230)
!

hebrewModes: arg1
	"Set the 'HebrewModes' property of the receiver to the <sdword> value of the argument.
		void HebrewModes"

	self setPropertyId: 2230 value: arg1
!

ignoreCaps
	"Answer the <varbool> value of the 'IgnoreCaps' property of the receiver.
		VARIANT_BOOL IgnoreCaps"

	^(self getPropertyId: 2222)
!

ignoreCaps: arg1
	"Set the 'IgnoreCaps' property of the receiver to the <varbool> value of the argument.
		void IgnoreCaps"

	self setPropertyId: 2222 value: arg1
!

ignoreFileNames
	"Answer the <varbool> value of the 'IgnoreFileNames' property of the receiver.
		VARIANT_BOOL IgnoreFileNames"

	^(self getPropertyId: 2225)
!

ignoreFileNames: arg1
	"Set the 'IgnoreFileNames' property of the receiver to the <varbool> value of the argument.
		void IgnoreFileNames"

	self setPropertyId: 2225 value: arg1
!

ignoreMixedDigits
	"Answer the <varbool> value of the 'IgnoreMixedDigits' property of the receiver.
		VARIANT_BOOL IgnoreMixedDigits"

	^(self getPropertyId: 2224)
!

ignoreMixedDigits: arg1
	"Set the 'IgnoreMixedDigits' property of the receiver to the <varbool> value of the argument.
		void IgnoreMixedDigits"

	self setPropertyId: 2224 value: arg1
!

koreanCombineAux
	"Answer the <varbool> value of the 'KoreanCombineAux' property of the receiver.
		VARIANT_BOOL KoreanCombineAux"

	^(self getPropertyId: 2227)
!

koreanCombineAux: arg1
	"Set the 'KoreanCombineAux' property of the receiver to the <varbool> value of the argument.
		void KoreanCombineAux"

	self setPropertyId: 2227 value: arg1
!

koreanProcessCompound
	"Answer the <varbool> value of the 'KoreanProcessCompound' property of the receiver.
		VARIANT_BOOL KoreanProcessCompound"

	^(self getPropertyId: 2229)
!

koreanProcessCompound: arg1
	"Set the 'KoreanProcessCompound' property of the receiver to the <varbool> value of the argument.
		void KoreanProcessCompound"

	self setPropertyId: 2229 value: arg1
!

koreanUseAutoChangeList
	"Answer the <varbool> value of the 'KoreanUseAutoChangeList' property of the receiver.
		VARIANT_BOOL KoreanUseAutoChangeList"

	^(self getPropertyId: 2228)
!

koreanUseAutoChangeList: arg1
	"Set the 'KoreanUseAutoChangeList' property of the receiver to the <varbool> value of the argument.
		void KoreanUseAutoChangeList"

	self setPropertyId: 2228 value: arg1
!

suggestMainOnly
	"Answer the <varbool> value of the 'SuggestMainOnly' property of the receiver.
		VARIANT_BOOL SuggestMainOnly"

	^(self getPropertyId: 2223)
!

suggestMainOnly: arg1
	"Set the 'SuggestMainOnly' property of the receiver to the <varbool> value of the argument.
		void SuggestMainOnly"

	self setPropertyId: 2223 value: arg1
!

userDict
	"Answer the <bstr> value of the 'UserDict' property of the receiver.
		BSTR UserDict"

	^(self getPropertyId: 2221)
!

userDict: arg1
	"Set the 'UserDict' property of the receiver to the <bstr> value of the argument.
		void UserDict"

	self setPropertyId: 2221 value: arg1
! !
!ExcelSpellingOptions categoriesFor: #arabicModes!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #arabicModes:!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #dictLang!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #dictLang:!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #germanPostReform!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #germanPostReform:!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #hebrewModes!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #hebrewModes:!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #ignoreCaps!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #ignoreCaps:!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #ignoreFileNames!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #ignoreFileNames:!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #ignoreMixedDigits!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #ignoreMixedDigits:!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #koreanCombineAux!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #koreanCombineAux:!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #koreanProcessCompound!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #koreanProcessCompound:!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #koreanUseAutoChangeList!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #koreanUseAutoChangeList:!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #suggestMainOnly!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #suggestMainOnly:!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #userDict!**auto generated**!properties!public! !
!ExcelSpellingOptions categoriesFor: #userDict:!**auto generated**!properties!public! !

!ExcelSpellingOptions class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSpellingOptions initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSpellingOptions class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

