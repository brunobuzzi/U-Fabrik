"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelErrorCheckingOptions
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelErrorCheckingOptions guid: (IID fromString: '{0002445B-0000-0000-C000-000000000046}')!
ExcelErrorCheckingOptions comment: '<ExcelErrorCheckingOptions> is a wrapper class generated for the dispatch interface ''Excel.ErrorCheckingOptions'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002445B-0000-0000-C000-000000000046), 
	helpcontext(0x000200f1)
]
dispinterface ErrorCheckingOptions {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000899), propget, helpcontext(0x00010899)]
		VARIANT_BOOL BackgroundChecking();
[id(0x00000899), propput, helpcontext(0x00010899)]
		void BackgroundChecking(
			[in]VARIANT_BOOL arg1);
[id(0x0000089a), propget, helpcontext(0x0001089a)]
		XlColorIndex IndicatorColorIndex();
[id(0x0000089a), propput, helpcontext(0x0001089a)]
		void IndicatorColorIndex(
			[in]XlColorIndex arg1);
[id(0x0000089b), propget, helpcontext(0x0001089b)]
		VARIANT_BOOL EvaluateToError();
[id(0x0000089b), propput, helpcontext(0x0001089b)]
		void EvaluateToError(
			[in]VARIANT_BOOL arg1);
[id(0x0000089c), propget, helpcontext(0x0001089c)]
		VARIANT_BOOL TextDate();
[id(0x0000089c), propput, helpcontext(0x0001089c)]
		void TextDate(
			[in]VARIANT_BOOL arg1);
[id(0x0000089d), propget, helpcontext(0x0001089d)]
		VARIANT_BOOL NumberAsText();
[id(0x0000089d), propput, helpcontext(0x0001089d)]
		void NumberAsText(
			[in]VARIANT_BOOL arg1);
[id(0x0000089e), propget, helpcontext(0x0001089e)]
		VARIANT_BOOL InconsistentFormula();
[id(0x0000089e), propput, helpcontext(0x0001089e)]
		void InconsistentFormula(
			[in]VARIANT_BOOL arg1);
[id(0x0000089f), propget, helpcontext(0x0001089f)]
		VARIANT_BOOL OmittedCells();
[id(0x0000089f), propput, helpcontext(0x0001089f)]
		void OmittedCells(
			[in]VARIANT_BOOL arg1);
[id(0x000008a0), propget, helpcontext(0x000108a0)]
		VARIANT_BOOL UnlockedFormulaCells();
[id(0x000008a0), propput, helpcontext(0x000108a0)]
		void UnlockedFormulaCells(
			[in]VARIANT_BOOL arg1);
[id(0x000008a1), propget, helpcontext(0x000108a1)]
		VARIANT_BOOL EmptyCellReferences();
[id(0x000008a1), propput, helpcontext(0x000108a1)]
		void EmptyCellReferences(
			[in]VARIANT_BOOL arg1);
[id(0x000008f8), propget, helpcontext(0x000108f8)]
		VARIANT_BOOL ListDataValidation();
[id(0x000008f8), propput, helpcontext(0x000108f8)]
		void ListDataValidation(
			[in]VARIANT_BOOL arg1);
[id(0x00000a73), propget, helpcontext(0x00010a73)]
		VARIANT_BOOL InconsistentTableFormula();
[id(0x00000a73), propput, helpcontext(0x00010a73)]
		void InconsistentTableFormula(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelErrorCheckingOptions categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelErrorCheckingOptions methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

backgroundChecking
	"Answer the <varbool> value of the 'BackgroundChecking' property of the receiver.
		VARIANT_BOOL BackgroundChecking"

	^(self getPropertyId: 2201)
!

backgroundChecking: arg1
	"Set the 'BackgroundChecking' property of the receiver to the <varbool> value of the argument.
		void BackgroundChecking"

	self setPropertyId: 2201 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

emptyCellReferences
	"Answer the <varbool> value of the 'EmptyCellReferences' property of the receiver.
		VARIANT_BOOL EmptyCellReferences"

	^(self getPropertyId: 2209)
!

emptyCellReferences: arg1
	"Set the 'EmptyCellReferences' property of the receiver to the <varbool> value of the argument.
		void EmptyCellReferences"

	self setPropertyId: 2209 value: arg1
!

evaluateToError
	"Answer the <varbool> value of the 'EvaluateToError' property of the receiver.
		VARIANT_BOOL EvaluateToError"

	^(self getPropertyId: 2203)
!

evaluateToError: arg1
	"Set the 'EvaluateToError' property of the receiver to the <varbool> value of the argument.
		void EvaluateToError"

	self setPropertyId: 2203 value: arg1
!

inconsistentFormula
	"Answer the <varbool> value of the 'InconsistentFormula' property of the receiver.
		VARIANT_BOOL InconsistentFormula"

	^(self getPropertyId: 2206)
!

inconsistentFormula: arg1
	"Set the 'InconsistentFormula' property of the receiver to the <varbool> value of the argument.
		void InconsistentFormula"

	self setPropertyId: 2206 value: arg1
!

inconsistentTableFormula
	"Answer the <varbool> value of the 'InconsistentTableFormula' property of the receiver.
		VARIANT_BOOL InconsistentTableFormula"

	^(self getPropertyId: 2675)
!

inconsistentTableFormula: arg1
	"Set the 'InconsistentTableFormula' property of the receiver to the <varbool> value of the argument.
		void InconsistentTableFormula"

	self setPropertyId: 2675 value: arg1
!

indicatorColorIndex
	"Answer the <sdword> value of the 'IndicatorColorIndex' property of the receiver.
		XlColorIndex IndicatorColorIndex"

	^(self getPropertyId: 2202)
!

indicatorColorIndex: arg1
	"Set the 'IndicatorColorIndex' property of the receiver to the <sdword> value of the argument.
		void IndicatorColorIndex"

	self setPropertyId: 2202 value: arg1
!

listDataValidation
	"Answer the <varbool> value of the 'ListDataValidation' property of the receiver.
		VARIANT_BOOL ListDataValidation"

	^(self getPropertyId: 2296)
!

listDataValidation: arg1
	"Set the 'ListDataValidation' property of the receiver to the <varbool> value of the argument.
		void ListDataValidation"

	self setPropertyId: 2296 value: arg1
!

numberAsText
	"Answer the <varbool> value of the 'NumberAsText' property of the receiver.
		VARIANT_BOOL NumberAsText"

	^(self getPropertyId: 2205)
!

numberAsText: arg1
	"Set the 'NumberAsText' property of the receiver to the <varbool> value of the argument.
		void NumberAsText"

	self setPropertyId: 2205 value: arg1
!

omittedCells
	"Answer the <varbool> value of the 'OmittedCells' property of the receiver.
		VARIANT_BOOL OmittedCells"

	^(self getPropertyId: 2207)
!

omittedCells: arg1
	"Set the 'OmittedCells' property of the receiver to the <varbool> value of the argument.
		void OmittedCells"

	self setPropertyId: 2207 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

textDate
	"Answer the <varbool> value of the 'TextDate' property of the receiver.
		VARIANT_BOOL TextDate"

	^(self getPropertyId: 2204)
!

textDate: arg1
	"Set the 'TextDate' property of the receiver to the <varbool> value of the argument.
		void TextDate"

	self setPropertyId: 2204 value: arg1
!

unlockedFormulaCells
	"Answer the <varbool> value of the 'UnlockedFormulaCells' property of the receiver.
		VARIANT_BOOL UnlockedFormulaCells"

	^(self getPropertyId: 2208)
!

unlockedFormulaCells: arg1
	"Set the 'UnlockedFormulaCells' property of the receiver to the <varbool> value of the argument.
		void UnlockedFormulaCells"

	self setPropertyId: 2208 value: arg1
! !
!ExcelErrorCheckingOptions categoriesFor: #application!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #backgroundChecking!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #backgroundChecking:!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #emptyCellReferences!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #emptyCellReferences:!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #evaluateToError!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #evaluateToError:!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #inconsistentFormula!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #inconsistentFormula:!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #inconsistentTableFormula!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #inconsistentTableFormula:!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #indicatorColorIndex!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #indicatorColorIndex:!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #listDataValidation!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #listDataValidation:!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #numberAsText!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #numberAsText:!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #omittedCells!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #omittedCells:!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #textDate!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #textDate:!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #unlockedFormulaCells!**auto generated**!properties!public! !
!ExcelErrorCheckingOptions categoriesFor: #unlockedFormulaCells:!**auto generated**!properties!public! !

!ExcelErrorCheckingOptions class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelErrorCheckingOptions initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelErrorCheckingOptions class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

