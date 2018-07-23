"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelAutoCorrect
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelAutoCorrect guid: (IID fromString: '{000208D4-0000-0000-C000-000000000046}')!
ExcelAutoCorrect comment: '<ExcelAutoCorrect> is a wrapper class generated for the dispatch interface ''Excel.AutoCorrect'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208D4-0000-0000-C000-000000000046), 
	helpcontext(0x00020093)
]
dispinterface AutoCorrect {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000047a), helpcontext(0x0001047a)]
		VARIANT AddReplacement(
			[in]BSTR What,
			[in]BSTR Replacement);
[id(0x0000047e), propget, helpcontext(0x0001047e)]
		VARIANT_BOOL CapitalizeNamesOfDays();
[id(0x0000047e), propput, helpcontext(0x0001047e)]
		void CapitalizeNamesOfDays(
			[in]VARIANT_BOOL arg1);
[id(0x0000047b), helpcontext(0x0001047b)]
		VARIANT DeleteReplacement(
			[in]BSTR What);
[id(0x0000047f), propget, helpcontext(0x0001047f)]
		VARIANT ReplacementList(
			[in, optional]VARIANT Index);
[id(0x0000047f), propput, helpcontext(0x0001047f)]
		void ReplacementList(
			[in, optional]VARIANT Index,
			[in]VARIANT arg2);
[id(0x0000047c), propget, helpcontext(0x0001047c)]
		VARIANT_BOOL ReplaceText();
[id(0x0000047c), propput, helpcontext(0x0001047c)]
		void ReplaceText(
			[in]VARIANT_BOOL arg1);
[id(0x0000047d), propget, helpcontext(0x0001047d)]
		VARIANT_BOOL TwoInitialCapitals();
[id(0x0000047d), propput, helpcontext(0x0001047d)]
		void TwoInitialCapitals(
			[in]VARIANT_BOOL arg1);
[id(0x00000653), propget, helpcontext(0x00010653)]
		VARIANT_BOOL CorrectSentenceCap();
[id(0x00000653), propput, helpcontext(0x00010653)]
		void CorrectSentenceCap(
			[in]VARIANT_BOOL arg1);
[id(0x00000654), propget, helpcontext(0x00010654)]
		VARIANT_BOOL CorrectCapsLock();
[id(0x00000654), propput, helpcontext(0x00010654)]
		void CorrectCapsLock(
			[in]VARIANT_BOOL arg1);
[id(0x00000786), propget, helpcontext(0x00010786)]
		VARIANT_BOOL DisplayAutoCorrectOptions();
[id(0x00000786), propput, helpcontext(0x00010786)]
		void DisplayAutoCorrectOptions(
			[in]VARIANT_BOOL arg1);
[id(0x000008f6), propget, helpcontext(0x000108f6)]
		VARIANT_BOOL AutoExpandListRange();
[id(0x000008f6), propput, helpcontext(0x000108f6)]
		void AutoExpandListRange(
			[in]VARIANT_BOOL arg1);
[id(0x00000a52), propget, helpcontext(0x00010a52)]
		VARIANT_BOOL AutoFillFormulasInLists();
[id(0x00000a52), propput, helpcontext(0x00010a52)]
		void AutoFillFormulasInLists(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelAutoCorrect categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelAutoCorrect methodsFor!

addReplacement: what replacement: replacement
	"Answer the <VARIANT> result of invoking the AddReplacement() method of the COM object."

	^(self invokeId: 1146 with: what with: replacement)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

autoExpandListRange
	"Answer the <varbool> value of the 'AutoExpandListRange' property of the receiver.
		VARIANT_BOOL AutoExpandListRange"

	^(self getPropertyId: 2294)
!

autoExpandListRange: arg1
	"Set the 'AutoExpandListRange' property of the receiver to the <varbool> value of the argument.
		void AutoExpandListRange"

	self setPropertyId: 2294 value: arg1
!

autoFillFormulasInLists
	"Answer the <varbool> value of the 'AutoFillFormulasInLists' property of the receiver.
		VARIANT_BOOL AutoFillFormulasInLists"

	^(self getPropertyId: 2642)
!

autoFillFormulasInLists: arg1
	"Set the 'AutoFillFormulasInLists' property of the receiver to the <varbool> value of the argument.
		void AutoFillFormulasInLists"

	self setPropertyId: 2642 value: arg1
!

capitalizeNamesOfDays
	"Answer the <varbool> value of the 'CapitalizeNamesOfDays' property of the receiver.
		VARIANT_BOOL CapitalizeNamesOfDays"

	^(self getPropertyId: 1150)
!

capitalizeNamesOfDays: arg1
	"Set the 'CapitalizeNamesOfDays' property of the receiver to the <varbool> value of the argument.
		void CapitalizeNamesOfDays"

	self setPropertyId: 1150 value: arg1
!

correctCapsLock
	"Answer the <varbool> value of the 'CorrectCapsLock' property of the receiver.
		VARIANT_BOOL CorrectCapsLock"

	^(self getPropertyId: 1620)
!

correctCapsLock: arg1
	"Set the 'CorrectCapsLock' property of the receiver to the <varbool> value of the argument.
		void CorrectCapsLock"

	self setPropertyId: 1620 value: arg1
!

correctSentenceCap
	"Answer the <varbool> value of the 'CorrectSentenceCap' property of the receiver.
		VARIANT_BOOL CorrectSentenceCap"

	^(self getPropertyId: 1619)
!

correctSentenceCap: arg1
	"Set the 'CorrectSentenceCap' property of the receiver to the <varbool> value of the argument.
		void CorrectSentenceCap"

	self setPropertyId: 1619 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

deleteReplacement: what
	"Answer the <VARIANT> result of invoking the DeleteReplacement() method of the COM object."

	^(self invokeId: 1147 with: what)
!

displayAutoCorrectOptions
	"Answer the <varbool> value of the 'DisplayAutoCorrectOptions' property of the receiver.
		VARIANT_BOOL DisplayAutoCorrectOptions"

	^(self getPropertyId: 1926)
!

displayAutoCorrectOptions: arg1
	"Set the 'DisplayAutoCorrectOptions' property of the receiver to the <varbool> value of the argument.
		void DisplayAutoCorrectOptions"

	self setPropertyId: 1926 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

replacementList
	"Answer the <variant> value of the 'ReplacementList' property of the receiver.
		VARIANT ReplacementList"

	^self replacementList: VARIANT unspecified!

replacementList: index
	"Answer the <variant> value of the 'ReplacementList' property of the receiver.
		VARIANT ReplacementList"

	^(self getPropertyId: 1151 item: index)
!

replacementList: index _: arg2
	"Set the 'ReplacementList' property of the receiver to the <variant> value of the argument.
		void ReplacementList"

	self setPropertyId: 1151 item: index value: arg2
!

replaceText
	"Answer the <varbool> value of the 'ReplaceText' property of the receiver.
		VARIANT_BOOL ReplaceText"

	^(self getPropertyId: 1148)
!

replaceText: arg1
	"Set the 'ReplaceText' property of the receiver to the <varbool> value of the argument.
		void ReplaceText"

	self setPropertyId: 1148 value: arg1
!

twoInitialCapitals
	"Answer the <varbool> value of the 'TwoInitialCapitals' property of the receiver.
		VARIANT_BOOL TwoInitialCapitals"

	^(self getPropertyId: 1149)
!

twoInitialCapitals: arg1
	"Set the 'TwoInitialCapitals' property of the receiver to the <varbool> value of the argument.
		void TwoInitialCapitals"

	self setPropertyId: 1149 value: arg1
! !
!ExcelAutoCorrect categoriesFor: #addReplacement:replacement:!**auto generated**!methods!public! !
!ExcelAutoCorrect categoriesFor: #application!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #autoExpandListRange!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #autoExpandListRange:!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #autoFillFormulasInLists!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #autoFillFormulasInLists:!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #capitalizeNamesOfDays!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #capitalizeNamesOfDays:!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #correctCapsLock!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #correctCapsLock:!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #correctSentenceCap!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #correctSentenceCap:!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #deleteReplacement:!**auto generated**!methods!public! !
!ExcelAutoCorrect categoriesFor: #displayAutoCorrectOptions!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #displayAutoCorrectOptions:!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #replacementList!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #replacementList:!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #replacementList:_:!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #replaceText!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #replaceText:!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #twoInitialCapitals!**auto generated**!properties!public! !
!ExcelAutoCorrect categoriesFor: #twoInitialCapitals:!**auto generated**!properties!public! !

!ExcelAutoCorrect class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelAutoCorrect initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelAutoCorrect class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

