"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIAutoCorrect
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIAutoCorrect guid: (IID fromString: '{000208D4-0001-0000-C000-000000000046}')!
ExcelIAutoCorrect comment: '<ExcelIAutoCorrect> is a wrapper class for the COM interface ''Excel.IAutoCorrect'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208D4-0001-0000-C000-000000000046), 
	helpcontext(0x00020093), 
	hidden
]
interface IAutoCorrect : IDispatch
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
	[id(0x0000047a), helpcontext(0x0001047a)]
	HRESULT __stdcall AddReplacement(
		[in]BSTR What,
		[in]BSTR Replacement,
		[out, retval]VARIANT* RHS);
	[id(0x0000047e), propget, helpcontext(0x0001047e)]
	HRESULT __stdcall CapitalizeNamesOfDays(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000047e), propput, helpcontext(0x0001047e)]
	HRESULT __stdcall CapitalizeNamesOfDays(
		[in]VARIANT_BOOL RHS);
	[id(0x0000047b), helpcontext(0x0001047b)]
	HRESULT __stdcall DeleteReplacement(
		[in]BSTR What,
		[out, retval]VARIANT* RHS);
	[id(0x0000047f), propget, helpcontext(0x0001047f)]
	HRESULT __stdcall ReplacementList(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x0000047f), propput, helpcontext(0x0001047f)]
	HRESULT __stdcall ReplacementList(
		[in, optional]VARIANT Index,
		[in]VARIANT RHS);
	[id(0x0000047c), propget, helpcontext(0x0001047c)]
	HRESULT __stdcall ReplaceText(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000047c), propput, helpcontext(0x0001047c)]
	HRESULT __stdcall ReplaceText(
		[in]VARIANT_BOOL RHS);
	[id(0x0000047d), propget, helpcontext(0x0001047d)]
	HRESULT __stdcall TwoInitialCapitals(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000047d), propput, helpcontext(0x0001047d)]
	HRESULT __stdcall TwoInitialCapitals(
		[in]VARIANT_BOOL RHS);
	[id(0x00000653), propget, helpcontext(0x00010653)]
	HRESULT __stdcall CorrectSentenceCap(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000653), propput, helpcontext(0x00010653)]
	HRESULT __stdcall CorrectSentenceCap(
		[in]VARIANT_BOOL RHS);
	[id(0x00000654), propget, helpcontext(0x00010654)]
	HRESULT __stdcall CorrectCapsLock(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000654), propput, helpcontext(0x00010654)]
	HRESULT __stdcall CorrectCapsLock(
		[in]VARIANT_BOOL RHS);
	[id(0x00000786), propget, helpcontext(0x00010786)]
	HRESULT __stdcall DisplayAutoCorrectOptions(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000786), propput, helpcontext(0x00010786)]
	HRESULT __stdcall DisplayAutoCorrectOptions(
		[in]VARIANT_BOOL RHS);
	[id(0x000008f6), propget, helpcontext(0x000108f6)]
	HRESULT __stdcall AutoExpandListRange(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008f6), propput, helpcontext(0x000108f6)]
	HRESULT __stdcall AutoExpandListRange(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a52), propget, helpcontext(0x00010a52)]
	HRESULT __stdcall AutoFillFormulasInLists(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a52), propput, helpcontext(0x00010a52)]
	HRESULT __stdcall AutoFillFormulasInLists(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelIAutoCorrect categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIAutoCorrect methodsFor!

addReplacement: what replacement: replacement
	"Answer the <VARIANT> result of invoking the AddReplacement() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		AddReplacement: what
		replacement: replacement
		rhs: answer.
	^answer asObject
!

AddReplacement: what replacement: replacement rhs: rhs
	"Private - Invoke the AddReplacement() method of the COM object.

		HRESULT __stdcall AddReplacement(
			[in]BSTR What,
			[in]BSTR Replacement,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 bstr bstr variant*>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

autoExpandListRange
	"Answer the <varbool> value of the 'AutoExpandListRange' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoExpandListRange: answer.
	^answer asObject
!

autoExpandListRange: rhs
	"Set the 'AutoExpandListRange' property of the receiver to the <varbool> value of the argument."

	self put_AutoExpandListRange: rhs
!

autoFillFormulasInLists
	"Answer the <varbool> value of the 'AutoFillFormulasInLists' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoFillFormulasInLists: answer.
	^answer asObject
!

autoFillFormulasInLists: rhs
	"Set the 'AutoFillFormulasInLists' property of the receiver to the <varbool> value of the argument."

	self put_AutoFillFormulasInLists: rhs
!

capitalizeNamesOfDays
	"Answer the <varbool> value of the 'CapitalizeNamesOfDays' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_CapitalizeNamesOfDays: answer.
	^answer asObject
!

capitalizeNamesOfDays: rhs
	"Set the 'CapitalizeNamesOfDays' property of the receiver to the <varbool> value of the argument."

	self put_CapitalizeNamesOfDays: rhs
!

correctCapsLock
	"Answer the <varbool> value of the 'CorrectCapsLock' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_CorrectCapsLock: answer.
	^answer asObject
!

correctCapsLock: rhs
	"Set the 'CorrectCapsLock' property of the receiver to the <varbool> value of the argument."

	self put_CorrectCapsLock: rhs
!

correctSentenceCap
	"Answer the <varbool> value of the 'CorrectSentenceCap' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_CorrectSentenceCap: answer.
	^answer asObject
!

correctSentenceCap: rhs
	"Set the 'CorrectSentenceCap' property of the receiver to the <varbool> value of the argument."

	self put_CorrectSentenceCap: rhs
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

deleteReplacement: what
	"Answer the <VARIANT> result of invoking the DeleteReplacement() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		DeleteReplacement: what
		rhs: answer.
	^answer asObject
!

DeleteReplacement: what rhs: rhs
	"Private - Invoke the DeleteReplacement() method of the COM object.

		HRESULT __stdcall DeleteReplacement(
			[in]BSTR What,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 14 bstr variant*>
	^self invalidCall!

displayAutoCorrectOptions
	"Answer the <varbool> value of the 'DisplayAutoCorrectOptions' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayAutoCorrectOptions: answer.
	^answer asObject
!

displayAutoCorrectOptions: rhs
	"Set the 'DisplayAutoCorrectOptions' property of the receiver to the <varbool> value of the argument."

	self put_DisplayAutoCorrectOptions: rhs
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AutoExpandListRange: rhs
	"Private - Get the value of the 'AutoExpandListRange' property of the receiver.

		HRESULT __stdcall AutoExpandListRange(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 27 varbool*>
	^self invalidCall!

get_AutoFillFormulasInLists: rhs
	"Private - Get the value of the 'AutoFillFormulasInLists' property of the receiver.

		HRESULT __stdcall AutoFillFormulasInLists(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 29 varbool*>
	^self invalidCall!

get_CapitalizeNamesOfDays: rhs
	"Private - Get the value of the 'CapitalizeNamesOfDays' property of the receiver.

		HRESULT __stdcall CapitalizeNamesOfDays(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 12 varbool*>
	^self invalidCall!

get_CorrectCapsLock: rhs
	"Private - Get the value of the 'CorrectCapsLock' property of the receiver.

		HRESULT __stdcall CorrectCapsLock(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 23 varbool*>
	^self invalidCall!

get_CorrectSentenceCap: rhs
	"Private - Get the value of the 'CorrectSentenceCap' property of the receiver.

		HRESULT __stdcall CorrectSentenceCap(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 21 varbool*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DisplayAutoCorrectOptions: rhs
	"Private - Get the value of the 'DisplayAutoCorrectOptions' property of the receiver.

		HRESULT __stdcall DisplayAutoCorrectOptions(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ReplacementList: index rhs: rhs
	"Private - Get the value of the 'ReplacementList' property of the receiver.

		HRESULT __stdcall ReplacementList(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant variant*>
	^self invalidCall!

get_ReplaceText: rhs
	"Private - Get the value of the 'ReplaceText' property of the receiver.

		HRESULT __stdcall ReplaceText(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

get_TwoInitialCapitals: rhs
	"Private - Get the value of the 'TwoInitialCapitals' property of the receiver.

		HRESULT __stdcall TwoInitialCapitals(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_AutoExpandListRange: rhs
	"Private - Set the value of the 'AutoExpandListRange' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoExpandListRange(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 28 varbool>
	^self invalidCall!

put_AutoFillFormulasInLists: rhs
	"Private - Set the value of the 'AutoFillFormulasInLists' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoFillFormulasInLists(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 30 varbool>
	^self invalidCall!

put_CapitalizeNamesOfDays: rhs
	"Private - Set the value of the 'CapitalizeNamesOfDays' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall CapitalizeNamesOfDays(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 13 varbool>
	^self invalidCall!

put_CorrectCapsLock: rhs
	"Private - Set the value of the 'CorrectCapsLock' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall CorrectCapsLock(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 24 varbool>
	^self invalidCall!

put_CorrectSentenceCap: rhs
	"Private - Set the value of the 'CorrectSentenceCap' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall CorrectSentenceCap(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 22 varbool>
	^self invalidCall!

put_DisplayAutoCorrectOptions: rhs
	"Private - Set the value of the 'DisplayAutoCorrectOptions' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayAutoCorrectOptions(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_ReplacementList: index rhs: rhs
	"Private - Set the value of the 'ReplacementList' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ReplacementList(
			[in, optional]VARIANT Index,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 16 variant variant>
	^self invalidCall!

put_ReplaceText: rhs
	"Private - Set the value of the 'ReplaceText' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ReplaceText(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 18 varbool>
	^self invalidCall!

put_TwoInitialCapitals: rhs
	"Private - Set the value of the 'TwoInitialCapitals' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TwoInitialCapitals(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 20 varbool>
	^self invalidCall!

replacementList
	"Answer the <variant> value of the 'ReplacementList' property of the receiver."

	^self replacementList: VARIANT unspecified!

replacementList: index
	"Answer the <variant> value of the 'ReplacementList' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_ReplacementList: index asVariant
		rhs: answer.
	^answer asObject
!

replacementList: index rhs: rhs
	"Set the 'ReplacementList' property of the receiver to the <variant> value of the argument."

	self
		put_ReplacementList: index asVariant
		rhs: rhs asVariant
!

replaceText
	"Answer the <varbool> value of the 'ReplaceText' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ReplaceText: answer.
	^answer asObject
!

replaceText: rhs
	"Set the 'ReplaceText' property of the receiver to the <varbool> value of the argument."

	self put_ReplaceText: rhs
!

twoInitialCapitals
	"Answer the <varbool> value of the 'TwoInitialCapitals' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TwoInitialCapitals: answer.
	^answer asObject
!

twoInitialCapitals: rhs
	"Set the 'TwoInitialCapitals' property of the receiver to the <varbool> value of the argument."

	self put_TwoInitialCapitals: rhs
! !
!ExcelIAutoCorrect categoriesFor: #addReplacement:replacement:!**auto generated**!methods!public! !
!ExcelIAutoCorrect categoriesFor: #AddReplacement:replacement:rhs:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #autoExpandListRange!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #autoExpandListRange:!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #autoFillFormulasInLists!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #autoFillFormulasInLists:!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #capitalizeNamesOfDays!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #capitalizeNamesOfDays:!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #correctCapsLock!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #correctCapsLock:!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #correctSentenceCap!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #correctSentenceCap:!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #deleteReplacement:!**auto generated**!methods!public! !
!ExcelIAutoCorrect categoriesFor: #DeleteReplacement:rhs:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #displayAutoCorrectOptions!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #displayAutoCorrectOptions:!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #get_AutoExpandListRange:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #get_AutoFillFormulasInLists:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #get_CapitalizeNamesOfDays:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #get_CorrectCapsLock:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #get_CorrectSentenceCap:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #get_DisplayAutoCorrectOptions:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #get_ReplacementList:rhs:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #get_ReplaceText:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #get_TwoInitialCapitals:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #put_AutoExpandListRange:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #put_AutoFillFormulasInLists:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #put_CapitalizeNamesOfDays:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #put_CorrectCapsLock:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #put_CorrectSentenceCap:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #put_DisplayAutoCorrectOptions:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #put_ReplacementList:rhs:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #put_ReplaceText:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #put_TwoInitialCapitals:!**auto generated**!COM Interfaces-IAutoCorrect!private! !
!ExcelIAutoCorrect categoriesFor: #replacementList!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #replacementList:!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #replacementList:rhs:!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #replaceText!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #replaceText:!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #twoInitialCapitals!**auto generated**!properties!public! !
!ExcelIAutoCorrect categoriesFor: #twoInitialCapitals:!**auto generated**!properties!public! !

!ExcelIAutoCorrect class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IAutoCorrect'
		ExcelIAutoCorrect defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #AddReplacement:replacement:rhs:
			argumentTypes: 'bstr bstr variant*';
		defineFunction: #get_CapitalizeNamesOfDays:
			argumentTypes: 'varbool*';
		defineFunction: #put_CapitalizeNamesOfDays:
			argumentTypes: 'varbool';
		defineFunction: #DeleteReplacement:rhs:
			argumentTypes: 'bstr variant*';
		defineFunction: #get_ReplacementList:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #put_ReplacementList:rhs:
			argumentTypes: 'variant variant';
		defineFunction: #get_ReplaceText:
			argumentTypes: 'varbool*';
		defineFunction: #put_ReplaceText:
			argumentTypes: 'varbool';
		defineFunction: #get_TwoInitialCapitals:
			argumentTypes: 'varbool*';
		defineFunction: #put_TwoInitialCapitals:
			argumentTypes: 'varbool';
		defineFunction: #get_CorrectSentenceCap:
			argumentTypes: 'varbool*';
		defineFunction: #put_CorrectSentenceCap:
			argumentTypes: 'varbool';
		defineFunction: #get_CorrectCapsLock:
			argumentTypes: 'varbool*';
		defineFunction: #put_CorrectCapsLock:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayAutoCorrectOptions:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayAutoCorrectOptions:
			argumentTypes: 'varbool';
		defineFunction: #get_AutoExpandListRange:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoExpandListRange:
			argumentTypes: 'varbool';
		defineFunction: #get_AutoFillFormulasInLists:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoFillFormulasInLists:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIAutoCorrect initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIAutoCorrect class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIAutoCorrect class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

