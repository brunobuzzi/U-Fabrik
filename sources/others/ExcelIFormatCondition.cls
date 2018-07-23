"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIFormatCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIFormatCondition guid: (IID fromString: '{00024425-0001-0000-C000-000000000046}')!
ExcelIFormatCondition comment: '<ExcelIFormatCondition> is a wrapper class for the COM interface ''Excel.IFormatCondition'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024425-0001-0000-C000-000000000046), 
	helpcontext(0x000200bb), 
	hidden
]
interface IFormatCondition : IDispatch
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
	[id(0x00000a3f), hidden, helpcontext(0x00010a3f)]
	HRESULT __stdcall _Modify(
		[in]XlFormatConditionType Type,
		[in, optional]VARIANT Operator,
		[in, optional]VARIANT Formula1,
		[in, optional]VARIANT Formula2);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]long* RHS);
	[id(0x0000031d), propget, helpcontext(0x0001031d)]
	HRESULT __stdcall Operator(
		[out, retval]long* RHS);
	[id(0x0000062b), propget, helpcontext(0x0001062b)]
	HRESULT __stdcall Formula1(
		[out, retval]BSTR* RHS);
	[id(0x0000062c), propget, helpcontext(0x0001062c)]
	HRESULT __stdcall Formula2(
		[out, retval]BSTR* RHS);
	[id(0x00000081), propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x000001b3), propget, helpcontext(0x000101b3)]
	HRESULT __stdcall Borders(
		[out, retval]Borders** RHS);
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x0000062d), helpcontext(0x0001062d)]
	HRESULT __stdcall Modify(
		[in]XlFormatConditionType Type,
		[in, optional]VARIANT Operator,
		[in, optional]VARIANT Formula1,
		[in, optional]VARIANT Formula2,
		[in, optional]VARIANT String,
		[in, optional]VARIANT Operator2);
	[id(0x0000008a), propget, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[out, retval]BSTR* RHS);
	[id(0x0000008a), propput, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[in]BSTR RHS);
	[id(0x00000a35), propget, helpcontext(0x00010a35)]
	HRESULT __stdcall TextOperator(
		[out, retval]XlContainsOperator* RHS);
	[id(0x00000a35), propput, helpcontext(0x00010a35)]
	HRESULT __stdcall TextOperator(
		[in]XlContainsOperator RHS);
	[id(0x00000a36), propget, helpcontext(0x00010a36)]
	HRESULT __stdcall DateOperator(
		[out, retval]XlTimePeriods* RHS);
	[id(0x00000a36), propput, helpcontext(0x00010a36)]
	HRESULT __stdcall DateOperator(
		[in]XlTimePeriods RHS);
	[id(0x000000c1), propget, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[out, retval]VARIANT* RHS);
	[id(0x000000c1), propput, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[in]VARIANT RHS);
	[id(0x000003d9), propget, helpcontext(0x000103d9)]
	HRESULT __stdcall Priority(
		[out, retval]long* RHS);
	[id(0x000003d9), propput, helpcontext(0x000103d9)]
	HRESULT __stdcall Priority(
		[in]long RHS);
	[id(0x00000a41), propget, helpcontext(0x00010a41)]
	HRESULT __stdcall StopIfTrue(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a41), propput, helpcontext(0x00010a41)]
	HRESULT __stdcall StopIfTrue(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a42), propget, helpcontext(0x00010a42)]
	HRESULT __stdcall AppliesTo(
		[out, retval]Range** RHS);
	[id(0x00000a43), helpcontext(0x00010a43)]
	HRESULT __stdcall ModifyAppliesToRange(
		[in]Range* Range);
	[id(0x00000a45), helpcontext(0x00010a45)]
	HRESULT __stdcall SetFirstPriority();
	[id(0x00000a46), helpcontext(0x00010a46)]
	HRESULT __stdcall SetLastPriority();
	[id(0x00000a47), propget, helpcontext(0x00010a47)]
	HRESULT __stdcall PTCondition(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a37), propget, helpcontext(0x00010a37)]
	HRESULT __stdcall ScopeType(
		[out, retval]XlPivotConditionScope* RHS);
	[id(0x00000a37), propput, helpcontext(0x00010a37)]
	HRESULT __stdcall ScopeType(
		[in]XlPivotConditionScope RHS);
};
'!
!ExcelIFormatCondition categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIFormatCondition methodsFor!

_modify: type
	"Invoke the _Modify() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _modify: type
		 operator: VARIANT unspecified
		 formula1: VARIANT unspecified
		 formula2: VARIANT unspecified!

_modify: type operator: operator formula1: formula1 formula2: formula2
	"Invoke the _Modify() method of the COM object."

	^self
		_Modify: type
		operator: operator asVariant
		formula1: formula1 asVariant
		formula2: formula2 asVariant
!

_Modify: type operator: operator formula1: formula1 formula2: formula2
	"Private - Invoke the _Modify() method of the COM object.

		HRESULT __stdcall _Modify(
			[in]XlFormatConditionType Type,
			[in, optional]VARIANT Operator,
			[in, optional]VARIANT Formula1,
			[in, optional]VARIANT Formula2);"

	<virtual stdcall: hresult 11 sdword variant variant variant>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

appliesTo
	"Answer the <ExcelRange> value of the 'AppliesTo' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_AppliesTo: answer.
	^answer asObject
!

borders
	"Answer the <ExcelBorders> value of the 'Borders' property of the receiver."

	| answer |
	answer := ExcelBorders newPointer.
	self get_Borders: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

dateOperator
	"Answer the <sdword> value of the 'DateOperator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DateOperator: answer.
	^answer asObject
!

dateOperator: rhs
	"Set the 'DateOperator' property of the receiver to the <sdword> value of the argument."

	self put_DateOperator: rhs
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 19>
	^self invalidCall!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
	^answer asObject
!

formula1
	"Answer the <bstr> value of the 'Formula1' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Formula1: answer.
	^answer asObject
!

formula2
	"Answer the <bstr> value of the 'Formula2' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Formula2: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AppliesTo: rhs
	"Private - Get the value of the 'AppliesTo' property of the receiver.

		HRESULT __stdcall AppliesTo(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 33 ExcelRange**>
	^self invalidCall!

get_Borders: rhs
	"Private - Get the value of the 'Borders' property of the receiver.

		HRESULT __stdcall Borders(
			[out, retval]Borders** RHS);"

	<virtual stdcall: hresult 17 ExcelBorders**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DateOperator: rhs
	"Private - Get the value of the 'DateOperator' property of the receiver.

		HRESULT __stdcall DateOperator(
			[out, retval]XlTimePeriods* RHS);"

	<virtual stdcall: hresult 25 sdword*>
	^self invalidCall!

get_Font: rhs
	"Private - Get the value of the 'Font' property of the receiver.

		HRESULT __stdcall Font(
			[out, retval]Font** RHS);"

	<virtual stdcall: hresult 18 ExcelFont**>
	^self invalidCall!

get_Formula1: rhs
	"Private - Get the value of the 'Formula1' property of the receiver.

		HRESULT __stdcall Formula1(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

get_Formula2: rhs
	"Private - Get the value of the 'Formula2' property of the receiver.

		HRESULT __stdcall Formula2(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 16 ExcelInterior**>
	^self invalidCall!

get_NumberFormat: rhs
	"Private - Get the value of the 'NumberFormat' property of the receiver.

		HRESULT __stdcall NumberFormat(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 27 variant*>
	^self invalidCall!

get_Operator: rhs
	"Private - Get the value of the 'Operator' property of the receiver.

		HRESULT __stdcall Operator(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Priority: rhs
	"Private - Get the value of the 'Priority' property of the receiver.

		HRESULT __stdcall Priority(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 29 sdword*>
	^self invalidCall!

get_PTCondition: rhs
	"Private - Get the value of the 'PTCondition' property of the receiver.

		HRESULT __stdcall PTCondition(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 37 varbool*>
	^self invalidCall!

get_ScopeType: rhs
	"Private - Get the value of the 'ScopeType' property of the receiver.

		HRESULT __stdcall ScopeType(
			[out, retval]XlPivotConditionScope* RHS);"

	<virtual stdcall: hresult 38 sdword*>
	^self invalidCall!

get_StopIfTrue: rhs
	"Private - Get the value of the 'StopIfTrue' property of the receiver.

		HRESULT __stdcall StopIfTrue(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 31 varbool*>
	^self invalidCall!

get_Text: rhs
	"Private - Get the value of the 'Text' property of the receiver.

		HRESULT __stdcall Text(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 21 bstr*>
	^self invalidCall!

get_TextOperator: rhs
	"Private - Get the value of the 'TextOperator' property of the receiver.

		HRESULT __stdcall TextOperator(
			[out, retval]XlContainsOperator* RHS);"

	<virtual stdcall: hresult 23 sdword*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
!

modify: type
	"Invoke the Modify() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 modify: type
		 operator: VARIANT unspecified
		 formula1: VARIANT unspecified
		 formula2: VARIANT unspecified
		 string: VARIANT unspecified
		 operator2: VARIANT unspecified!

modify: type operator: operator formula1: formula1 formula2: formula2 string: string operator2: operator2
	"Invoke the Modify() method of the COM object."

	^self
		Modify: type
		operator: operator asVariant
		formula1: formula1 asVariant
		formula2: formula2 asVariant
		string: string asVariant
		operator2: operator2 asVariant
!

Modify: type operator: operator formula1: formula1 formula2: formula2 string: string operator2: operator2
	"Private - Invoke the Modify() method of the COM object.

		HRESULT __stdcall Modify(
			[in]XlFormatConditionType Type,
			[in, optional]VARIANT Operator,
			[in, optional]VARIANT Formula1,
			[in, optional]VARIANT Formula2,
			[in, optional]VARIANT String,
			[in, optional]VARIANT Operator2);"

	<virtual stdcall: hresult 20 sdword variant variant variant variant variant>
	^self invalidCall!

modifyAppliesToRange: range
	"Invoke the ModifyAppliesToRange() method of the COM object."

	^self ModifyAppliesToRange: range
!

ModifyAppliesToRange: range
	"Private - Invoke the ModifyAppliesToRange() method of the COM object.

		HRESULT __stdcall ModifyAppliesToRange(
			[in]Range* Range);"

	<virtual stdcall: hresult 34 ExcelRange*>
	^self invalidCall!

numberFormat
	"Answer the <variant> value of the 'NumberFormat' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_NumberFormat: answer.
	^answer asObject
!

numberFormat: rhs
	"Set the 'NumberFormat' property of the receiver to the <variant> value of the argument."

	self put_NumberFormat: rhs asVariant
!

operator
	"Answer the <sdword> value of the 'Operator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Operator: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

priority
	"Answer the <sdword> value of the 'Priority' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Priority: answer.
	^answer asObject
!

priority: rhs
	"Set the 'Priority' property of the receiver to the <sdword> value of the argument."

	self put_Priority: rhs
!

ptCondition
	"Answer the <varbool> value of the 'PTCondition' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PTCondition: answer.
	^answer asObject
!

put_DateOperator: rhs
	"Private - Set the value of the 'DateOperator' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DateOperator(
			[in]XlTimePeriods RHS);"

	<virtual stdcall: hresult 26 sdword>
	^self invalidCall!

put_NumberFormat: rhs
	"Private - Set the value of the 'NumberFormat' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall NumberFormat(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 28 variant>
	^self invalidCall!

put_Priority: rhs
	"Private - Set the value of the 'Priority' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Priority(
			[in]long RHS);"

	<virtual stdcall: hresult 30 sdword>
	^self invalidCall!

put_ScopeType: rhs
	"Private - Set the value of the 'ScopeType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ScopeType(
			[in]XlPivotConditionScope RHS);"

	<virtual stdcall: hresult 39 sdword>
	^self invalidCall!

put_StopIfTrue: rhs
	"Private - Set the value of the 'StopIfTrue' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall StopIfTrue(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 32 varbool>
	^self invalidCall!

put_Text: rhs
	"Private - Set the value of the 'Text' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Text(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 22 bstr>
	^self invalidCall!

put_TextOperator: rhs
	"Private - Set the value of the 'TextOperator' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TextOperator(
			[in]XlContainsOperator RHS);"

	<virtual stdcall: hresult 24 sdword>
	^self invalidCall!

scopeType
	"Answer the <sdword> value of the 'ScopeType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ScopeType: answer.
	^answer asObject
!

scopeType: rhs
	"Set the 'ScopeType' property of the receiver to the <sdword> value of the argument."

	self put_ScopeType: rhs
!

setFirstPriority
	"Invoke the SetFirstPriority() method of the COM object."

	^self SetFirstPriority
!

SetFirstPriority
	"Private - Invoke the SetFirstPriority() method of the COM object.

		HRESULT __stdcall SetFirstPriority();"

	<virtual stdcall: hresult 35>
	^self invalidCall!

setLastPriority
	"Invoke the SetLastPriority() method of the COM object."

	^self SetLastPriority
!

SetLastPriority
	"Private - Invoke the SetLastPriority() method of the COM object.

		HRESULT __stdcall SetLastPriority();"

	<virtual stdcall: hresult 36>
	^self invalidCall!

stopIfTrue
	"Answer the <varbool> value of the 'StopIfTrue' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_StopIfTrue: answer.
	^answer asObject
!

stopIfTrue: rhs
	"Set the 'StopIfTrue' property of the receiver to the <varbool> value of the argument."

	self put_StopIfTrue: rhs
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

textOperator
	"Answer the <sdword> value of the 'TextOperator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TextOperator: answer.
	^answer asObject
!

textOperator: rhs
	"Set the 'TextOperator' property of the receiver to the <sdword> value of the argument."

	self put_TextOperator: rhs
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
! !
!ExcelIFormatCondition categoriesFor: #_modify:!**auto generated**!methods!public! !
!ExcelIFormatCondition categoriesFor: #_modify:operator:formula1:formula2:!**auto generated**!methods!public! !
!ExcelIFormatCondition categoriesFor: #_Modify:operator:formula1:formula2:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #appliesTo!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #dateOperator!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #dateOperator:!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIFormatCondition categoriesFor: #Delete!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #font!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #formula1!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #formula2!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_AppliesTo:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Borders:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_DateOperator:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Font:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Formula1:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Formula2:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_NumberFormat:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Operator:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Priority:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_PTCondition:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_ScopeType:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_StopIfTrue:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Text:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_TextOperator:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #modify:!**auto generated**!methods!public! !
!ExcelIFormatCondition categoriesFor: #modify:operator:formula1:formula2:string:operator2:!**auto generated**!methods!public! !
!ExcelIFormatCondition categoriesFor: #Modify:operator:formula1:formula2:string:operator2:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #modifyAppliesToRange:!**auto generated**!methods!public! !
!ExcelIFormatCondition categoriesFor: #ModifyAppliesToRange:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #operator!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #priority!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #priority:!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #ptCondition!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #put_DateOperator:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #put_NumberFormat:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #put_Priority:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #put_ScopeType:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #put_StopIfTrue:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #put_Text:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #put_TextOperator:!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #scopeType!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #scopeType:!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #setFirstPriority!**auto generated**!methods!public! !
!ExcelIFormatCondition categoriesFor: #SetFirstPriority!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #setLastPriority!**auto generated**!methods!public! !
!ExcelIFormatCondition categoriesFor: #SetLastPriority!**auto generated**!COM Interfaces-IFormatCondition!private! !
!ExcelIFormatCondition categoriesFor: #stopIfTrue!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #stopIfTrue:!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #text!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #textOperator!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #textOperator:!**auto generated**!properties!public! !
!ExcelIFormatCondition categoriesFor: #type!**auto generated**!properties!public! !

!ExcelIFormatCondition class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IFormatCondition'
		ExcelIFormatCondition defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #_Modify:operator:formula1:formula2:
			argumentTypes: 'sdword variant variant variant';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_Operator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Formula1:
			argumentTypes: 'bstr*';
		defineFunction: #get_Formula2:
			argumentTypes: 'bstr*';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Borders:
			argumentTypes: 'ExcelBorders**';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #Delete;
		defineFunction: #Modify:operator:formula1:formula2:string:operator2:
			argumentTypes: 'sdword variant variant variant variant variant';
		defineFunction: #get_Text:
			argumentTypes: 'bstr*';
		defineFunction: #put_Text:
			argumentTypes: 'bstr';
		defineFunction: #get_TextOperator:
			argumentTypes: 'sdword*';
		defineFunction: #put_TextOperator:
			argumentTypes: 'sdword';
		defineFunction: #get_DateOperator:
			argumentTypes: 'sdword*';
		defineFunction: #put_DateOperator:
			argumentTypes: 'sdword';
		defineFunction: #get_NumberFormat:
			argumentTypes: 'variant*';
		defineFunction: #put_NumberFormat:
			argumentTypes: 'variant';
		defineFunction: #get_Priority:
			argumentTypes: 'sdword*';
		defineFunction: #put_Priority:
			argumentTypes: 'sdword';
		defineFunction: #get_StopIfTrue:
			argumentTypes: 'varbool*';
		defineFunction: #put_StopIfTrue:
			argumentTypes: 'varbool';
		defineFunction: #get_AppliesTo:
			argumentTypes: 'ExcelRange**';
		defineFunction: #ModifyAppliesToRange:
			argumentTypes: 'ExcelRange*';
		defineFunction: #SetFirstPriority;
		defineFunction: #SetLastPriority;
		defineFunction: #get_PTCondition:
			argumentTypes: 'varbool*';
		defineFunction: #get_ScopeType:
			argumentTypes: 'sdword*';
		defineFunction: #put_ScopeType:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIFormatCondition initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIFormatCondition class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIFormatCondition class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

