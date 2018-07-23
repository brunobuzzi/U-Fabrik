"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIErrorCheckingOptions
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIErrorCheckingOptions guid: (IID fromString: '{0002445B-0001-0000-C000-000000000046}')!
ExcelIErrorCheckingOptions comment: '<ExcelIErrorCheckingOptions> is a wrapper class for the COM interface ''Excel.IErrorCheckingOptions'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002445B-0001-0000-C000-000000000046), 
	helpcontext(0x000200f1), 
	hidden
]
interface IErrorCheckingOptions : IDispatch
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
	[id(0x00000899), propget, helpcontext(0x00010899)]
	HRESULT __stdcall BackgroundChecking(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000899), propput, helpcontext(0x00010899)]
	HRESULT __stdcall BackgroundChecking(
		[in]VARIANT_BOOL RHS);
	[id(0x0000089a), propget, helpcontext(0x0001089a)]
	HRESULT __stdcall IndicatorColorIndex(
		[out, retval]XlColorIndex* RHS);
	[id(0x0000089a), propput, helpcontext(0x0001089a)]
	HRESULT __stdcall IndicatorColorIndex(
		[in]XlColorIndex RHS);
	[id(0x0000089b), propget, helpcontext(0x0001089b)]
	HRESULT __stdcall EvaluateToError(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000089b), propput, helpcontext(0x0001089b)]
	HRESULT __stdcall EvaluateToError(
		[in]VARIANT_BOOL RHS);
	[id(0x0000089c), propget, helpcontext(0x0001089c)]
	HRESULT __stdcall TextDate(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000089c), propput, helpcontext(0x0001089c)]
	HRESULT __stdcall TextDate(
		[in]VARIANT_BOOL RHS);
	[id(0x0000089d), propget, helpcontext(0x0001089d)]
	HRESULT __stdcall NumberAsText(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000089d), propput, helpcontext(0x0001089d)]
	HRESULT __stdcall NumberAsText(
		[in]VARIANT_BOOL RHS);
	[id(0x0000089e), propget, helpcontext(0x0001089e)]
	HRESULT __stdcall InconsistentFormula(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000089e), propput, helpcontext(0x0001089e)]
	HRESULT __stdcall InconsistentFormula(
		[in]VARIANT_BOOL RHS);
	[id(0x0000089f), propget, helpcontext(0x0001089f)]
	HRESULT __stdcall OmittedCells(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000089f), propput, helpcontext(0x0001089f)]
	HRESULT __stdcall OmittedCells(
		[in]VARIANT_BOOL RHS);
	[id(0x000008a0), propget, helpcontext(0x000108a0)]
	HRESULT __stdcall UnlockedFormulaCells(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008a0), propput, helpcontext(0x000108a0)]
	HRESULT __stdcall UnlockedFormulaCells(
		[in]VARIANT_BOOL RHS);
	[id(0x000008a1), propget, helpcontext(0x000108a1)]
	HRESULT __stdcall EmptyCellReferences(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008a1), propput, helpcontext(0x000108a1)]
	HRESULT __stdcall EmptyCellReferences(
		[in]VARIANT_BOOL RHS);
	[id(0x000008f8), propget, helpcontext(0x000108f8)]
	HRESULT __stdcall ListDataValidation(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008f8), propput, helpcontext(0x000108f8)]
	HRESULT __stdcall ListDataValidation(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a73), propget, helpcontext(0x00010a73)]
	HRESULT __stdcall InconsistentTableFormula(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a73), propput, helpcontext(0x00010a73)]
	HRESULT __stdcall InconsistentTableFormula(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelIErrorCheckingOptions categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIErrorCheckingOptions methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

backgroundChecking
	"Answer the <varbool> value of the 'BackgroundChecking' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_BackgroundChecking: answer.
	^answer asObject
!

backgroundChecking: rhs
	"Set the 'BackgroundChecking' property of the receiver to the <varbool> value of the argument."

	self put_BackgroundChecking: rhs
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

emptyCellReferences
	"Answer the <varbool> value of the 'EmptyCellReferences' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EmptyCellReferences: answer.
	^answer asObject
!

emptyCellReferences: rhs
	"Set the 'EmptyCellReferences' property of the receiver to the <varbool> value of the argument."

	self put_EmptyCellReferences: rhs
!

evaluateToError
	"Answer the <varbool> value of the 'EvaluateToError' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EvaluateToError: answer.
	^answer asObject
!

evaluateToError: rhs
	"Set the 'EvaluateToError' property of the receiver to the <varbool> value of the argument."

	self put_EvaluateToError: rhs
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_BackgroundChecking: rhs
	"Private - Get the value of the 'BackgroundChecking' property of the receiver.

		HRESULT __stdcall BackgroundChecking(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_EmptyCellReferences: rhs
	"Private - Get the value of the 'EmptyCellReferences' property of the receiver.

		HRESULT __stdcall EmptyCellReferences(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 27 varbool*>
	^self invalidCall!

get_EvaluateToError: rhs
	"Private - Get the value of the 'EvaluateToError' property of the receiver.

		HRESULT __stdcall EvaluateToError(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 15 varbool*>
	^self invalidCall!

get_InconsistentFormula: rhs
	"Private - Get the value of the 'InconsistentFormula' property of the receiver.

		HRESULT __stdcall InconsistentFormula(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 21 varbool*>
	^self invalidCall!

get_InconsistentTableFormula: rhs
	"Private - Get the value of the 'InconsistentTableFormula' property of the receiver.

		HRESULT __stdcall InconsistentTableFormula(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 31 varbool*>
	^self invalidCall!

get_IndicatorColorIndex: rhs
	"Private - Get the value of the 'IndicatorColorIndex' property of the receiver.

		HRESULT __stdcall IndicatorColorIndex(
			[out, retval]XlColorIndex* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_ListDataValidation: rhs
	"Private - Get the value of the 'ListDataValidation' property of the receiver.

		HRESULT __stdcall ListDataValidation(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 29 varbool*>
	^self invalidCall!

get_NumberAsText: rhs
	"Private - Get the value of the 'NumberAsText' property of the receiver.

		HRESULT __stdcall NumberAsText(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

get_OmittedCells: rhs
	"Private - Get the value of the 'OmittedCells' property of the receiver.

		HRESULT __stdcall OmittedCells(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 23 varbool*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_TextDate: rhs
	"Private - Get the value of the 'TextDate' property of the receiver.

		HRESULT __stdcall TextDate(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

get_UnlockedFormulaCells: rhs
	"Private - Get the value of the 'UnlockedFormulaCells' property of the receiver.

		HRESULT __stdcall UnlockedFormulaCells(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

inconsistentFormula
	"Answer the <varbool> value of the 'InconsistentFormula' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_InconsistentFormula: answer.
	^answer asObject
!

inconsistentFormula: rhs
	"Set the 'InconsistentFormula' property of the receiver to the <varbool> value of the argument."

	self put_InconsistentFormula: rhs
!

inconsistentTableFormula
	"Answer the <varbool> value of the 'InconsistentTableFormula' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_InconsistentTableFormula: answer.
	^answer asObject
!

inconsistentTableFormula: rhs
	"Set the 'InconsistentTableFormula' property of the receiver to the <varbool> value of the argument."

	self put_InconsistentTableFormula: rhs
!

indicatorColorIndex
	"Answer the <sdword> value of the 'IndicatorColorIndex' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_IndicatorColorIndex: answer.
	^answer asObject
!

indicatorColorIndex: rhs
	"Set the 'IndicatorColorIndex' property of the receiver to the <sdword> value of the argument."

	self put_IndicatorColorIndex: rhs
!

listDataValidation
	"Answer the <varbool> value of the 'ListDataValidation' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ListDataValidation: answer.
	^answer asObject
!

listDataValidation: rhs
	"Set the 'ListDataValidation' property of the receiver to the <varbool> value of the argument."

	self put_ListDataValidation: rhs
!

numberAsText
	"Answer the <varbool> value of the 'NumberAsText' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_NumberAsText: answer.
	^answer asObject
!

numberAsText: rhs
	"Set the 'NumberAsText' property of the receiver to the <varbool> value of the argument."

	self put_NumberAsText: rhs
!

omittedCells
	"Answer the <varbool> value of the 'OmittedCells' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_OmittedCells: answer.
	^answer asObject
!

omittedCells: rhs
	"Set the 'OmittedCells' property of the receiver to the <varbool> value of the argument."

	self put_OmittedCells: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_BackgroundChecking: rhs
	"Private - Set the value of the 'BackgroundChecking' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall BackgroundChecking(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

put_EmptyCellReferences: rhs
	"Private - Set the value of the 'EmptyCellReferences' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EmptyCellReferences(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 28 varbool>
	^self invalidCall!

put_EvaluateToError: rhs
	"Private - Set the value of the 'EvaluateToError' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EvaluateToError(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 16 varbool>
	^self invalidCall!

put_InconsistentFormula: rhs
	"Private - Set the value of the 'InconsistentFormula' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall InconsistentFormula(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 22 varbool>
	^self invalidCall!

put_InconsistentTableFormula: rhs
	"Private - Set the value of the 'InconsistentTableFormula' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall InconsistentTableFormula(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 32 varbool>
	^self invalidCall!

put_IndicatorColorIndex: rhs
	"Private - Set the value of the 'IndicatorColorIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall IndicatorColorIndex(
			[in]XlColorIndex RHS);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

put_ListDataValidation: rhs
	"Private - Set the value of the 'ListDataValidation' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ListDataValidation(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 30 varbool>
	^self invalidCall!

put_NumberAsText: rhs
	"Private - Set the value of the 'NumberAsText' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall NumberAsText(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 20 varbool>
	^self invalidCall!

put_OmittedCells: rhs
	"Private - Set the value of the 'OmittedCells' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall OmittedCells(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 24 varbool>
	^self invalidCall!

put_TextDate: rhs
	"Private - Set the value of the 'TextDate' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TextDate(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 18 varbool>
	^self invalidCall!

put_UnlockedFormulaCells: rhs
	"Private - Set the value of the 'UnlockedFormulaCells' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall UnlockedFormulaCells(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

textDate
	"Answer the <varbool> value of the 'TextDate' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TextDate: answer.
	^answer asObject
!

textDate: rhs
	"Set the 'TextDate' property of the receiver to the <varbool> value of the argument."

	self put_TextDate: rhs
!

unlockedFormulaCells
	"Answer the <varbool> value of the 'UnlockedFormulaCells' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_UnlockedFormulaCells: answer.
	^answer asObject
!

unlockedFormulaCells: rhs
	"Set the 'UnlockedFormulaCells' property of the receiver to the <varbool> value of the argument."

	self put_UnlockedFormulaCells: rhs
! !
!ExcelIErrorCheckingOptions categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #backgroundChecking!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #backgroundChecking:!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #emptyCellReferences!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #emptyCellReferences:!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #evaluateToError!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #evaluateToError:!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_BackgroundChecking:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_EmptyCellReferences:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_EvaluateToError:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_InconsistentFormula:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_InconsistentTableFormula:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_IndicatorColorIndex:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_ListDataValidation:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_NumberAsText:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_OmittedCells:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_TextDate:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #get_UnlockedFormulaCells:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #inconsistentFormula!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #inconsistentFormula:!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #inconsistentTableFormula!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #inconsistentTableFormula:!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #indicatorColorIndex!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #indicatorColorIndex:!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #listDataValidation!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #listDataValidation:!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #numberAsText!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #numberAsText:!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #omittedCells!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #omittedCells:!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #put_BackgroundChecking:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #put_EmptyCellReferences:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #put_EvaluateToError:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #put_InconsistentFormula:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #put_InconsistentTableFormula:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #put_IndicatorColorIndex:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #put_ListDataValidation:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #put_NumberAsText:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #put_OmittedCells:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #put_TextDate:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #put_UnlockedFormulaCells:!**auto generated**!COM Interfaces-IErrorCheckingOptions!private! !
!ExcelIErrorCheckingOptions categoriesFor: #textDate!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #textDate:!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #unlockedFormulaCells!**auto generated**!properties!public! !
!ExcelIErrorCheckingOptions categoriesFor: #unlockedFormulaCells:!**auto generated**!properties!public! !

!ExcelIErrorCheckingOptions class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IErrorCheckingOptions'
		ExcelIErrorCheckingOptions defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_BackgroundChecking:
			argumentTypes: 'varbool*';
		defineFunction: #put_BackgroundChecking:
			argumentTypes: 'varbool';
		defineFunction: #get_IndicatorColorIndex:
			argumentTypes: 'sdword*';
		defineFunction: #put_IndicatorColorIndex:
			argumentTypes: 'sdword';
		defineFunction: #get_EvaluateToError:
			argumentTypes: 'varbool*';
		defineFunction: #put_EvaluateToError:
			argumentTypes: 'varbool';
		defineFunction: #get_TextDate:
			argumentTypes: 'varbool*';
		defineFunction: #put_TextDate:
			argumentTypes: 'varbool';
		defineFunction: #get_NumberAsText:
			argumentTypes: 'varbool*';
		defineFunction: #put_NumberAsText:
			argumentTypes: 'varbool';
		defineFunction: #get_InconsistentFormula:
			argumentTypes: 'varbool*';
		defineFunction: #put_InconsistentFormula:
			argumentTypes: 'varbool';
		defineFunction: #get_OmittedCells:
			argumentTypes: 'varbool*';
		defineFunction: #put_OmittedCells:
			argumentTypes: 'varbool';
		defineFunction: #get_UnlockedFormulaCells:
			argumentTypes: 'varbool*';
		defineFunction: #put_UnlockedFormulaCells:
			argumentTypes: 'varbool';
		defineFunction: #get_EmptyCellReferences:
			argumentTypes: 'varbool*';
		defineFunction: #put_EmptyCellReferences:
			argumentTypes: 'varbool';
		defineFunction: #get_ListDataValidation:
			argumentTypes: 'varbool*';
		defineFunction: #put_ListDataValidation:
			argumentTypes: 'varbool';
		defineFunction: #get_InconsistentTableFormula:
			argumentTypes: 'varbool*';
		defineFunction: #put_InconsistentTableFormula:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIErrorCheckingOptions initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIErrorCheckingOptions class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIErrorCheckingOptions class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

