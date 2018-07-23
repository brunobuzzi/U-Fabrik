"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIDatabar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIDatabar guid: (IID fromString: '{00024496-0001-0000-C000-000000000046}')!
ExcelIDatabar comment: '<ExcelIDatabar> is a wrapper class for the COM interface ''Excel.IDatabar'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024496-0001-0000-C000-000000000046), 
	helpcontext(0x0002012c), 
	hidden
]
interface IDatabar : IDispatch
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
	[id(0x000003d9), propget, helpcontext(0x000103d9)]
	HRESULT __stdcall Priority(
		[out, retval]long* RHS);
	[id(0x000003d9), propput, helpcontext(0x000103d9)]
	HRESULT __stdcall Priority(
		[in]long RHS);
	[id(0x00000a41), propget, helpcontext(0x00010a41)]
	HRESULT __stdcall StopIfTrue(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a42), propget, helpcontext(0x00010a42)]
	HRESULT __stdcall AppliesTo(
		[out, retval]Range** RHS);
	[id(0x00000a9e), propget, helpcontext(0x00010a9e)]
	HRESULT __stdcall MinPoint(
		[out, retval]ConditionValue** RHS);
	[id(0x00000a9f), propget, helpcontext(0x00010a9f)]
	HRESULT __stdcall MaxPoint(
		[out, retval]ConditionValue** RHS);
	[id(0x00000aa0), propget, helpcontext(0x00010aa0)]
	HRESULT __stdcall PercentMin(
		[out, retval]long* RHS);
	[id(0x00000aa0), propput, helpcontext(0x00010aa0)]
	HRESULT __stdcall PercentMin(
		[in]long RHS);
	[id(0x00000aa1), propget, helpcontext(0x00010aa1)]
	HRESULT __stdcall PercentMax(
		[out, retval]long* RHS);
	[id(0x00000aa1), propput, helpcontext(0x00010aa1)]
	HRESULT __stdcall PercentMax(
		[in]long RHS);
	[id(0x00000aa2), propget, helpcontext(0x00010aa2)]
	HRESULT __stdcall BarColor(
		[out, retval]IDispatch** RHS);
	[id(0x000007e8), propget, helpcontext(0x000107e8)]
	HRESULT __stdcall ShowValue(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007e8), propput, helpcontext(0x000107e8)]
	HRESULT __stdcall ShowValue(
		[in]VARIANT_BOOL RHS);
	[id(0x00000105), propget, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[out, retval]BSTR* RHS);
	[id(0x00000105), propput, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[in]BSTR RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]long* RHS);
	[id(0x00000a45), helpcontext(0x00010a45)]
	HRESULT __stdcall SetFirstPriority();
	[id(0x00000a46), helpcontext(0x00010a46)]
	HRESULT __stdcall SetLastPriority();
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000a43), helpcontext(0x00010a43)]
	HRESULT __stdcall ModifyAppliesToRange(
		[in]Range* Range);
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
!ExcelIDatabar categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIDatabar methodsFor!

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

barColor
	"Answer the <IDispatch> value of the 'BarColor' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_BarColor: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 29>
	^self invalidCall!

formula
	"Answer the <bstr> value of the 'Formula' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Formula: answer.
	^answer asObject
!

formula: rhs
	"Set the 'Formula' property of the receiver to the <bstr> value of the argument."

	self put_Formula: rhs
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

	<virtual stdcall: hresult 14 ExcelRange**>
	^self invalidCall!

get_BarColor: rhs
	"Private - Get the value of the 'BarColor' property of the receiver.

		HRESULT __stdcall BarColor(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 21 IDispatch**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Formula: rhs
	"Private - Get the value of the 'Formula' property of the receiver.

		HRESULT __stdcall Formula(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 24 bstr*>
	^self invalidCall!

get_MaxPoint: rhs
	"Private - Get the value of the 'MaxPoint' property of the receiver.

		HRESULT __stdcall MaxPoint(
			[out, retval]ConditionValue** RHS);"

	<virtual stdcall: hresult 16 ExcelConditionValue**>
	^self invalidCall!

get_MinPoint: rhs
	"Private - Get the value of the 'MinPoint' property of the receiver.

		HRESULT __stdcall MinPoint(
			[out, retval]ConditionValue** RHS);"

	<virtual stdcall: hresult 15 ExcelConditionValue**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PercentMax: rhs
	"Private - Get the value of the 'PercentMax' property of the receiver.

		HRESULT __stdcall PercentMax(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 19 sdword*>
	^self invalidCall!

get_PercentMin: rhs
	"Private - Get the value of the 'PercentMin' property of the receiver.

		HRESULT __stdcall PercentMin(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_Priority: rhs
	"Private - Get the value of the 'Priority' property of the receiver.

		HRESULT __stdcall Priority(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_PTCondition: rhs
	"Private - Get the value of the 'PTCondition' property of the receiver.

		HRESULT __stdcall PTCondition(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 31 varbool*>
	^self invalidCall!

get_ScopeType: rhs
	"Private - Get the value of the 'ScopeType' property of the receiver.

		HRESULT __stdcall ScopeType(
			[out, retval]XlPivotConditionScope* RHS);"

	<virtual stdcall: hresult 32 sdword*>
	^self invalidCall!

get_ShowValue: rhs
	"Private - Get the value of the 'ShowValue' property of the receiver.

		HRESULT __stdcall ShowValue(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 22 varbool*>
	^self invalidCall!

get_StopIfTrue: rhs
	"Private - Get the value of the 'StopIfTrue' property of the receiver.

		HRESULT __stdcall StopIfTrue(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 26 sdword*>
	^self invalidCall!

maxPoint
	"Answer the <ExcelConditionValue> value of the 'MaxPoint' property of the receiver."

	| answer |
	answer := ExcelConditionValue newPointer.
	self get_MaxPoint: answer.
	^answer asObject
!

minPoint
	"Answer the <ExcelConditionValue> value of the 'MinPoint' property of the receiver."

	| answer |
	answer := ExcelConditionValue newPointer.
	self get_MinPoint: answer.
	^answer asObject
!

modifyAppliesToRange: range
	"Invoke the ModifyAppliesToRange() method of the COM object."

	^self ModifyAppliesToRange: range
!

ModifyAppliesToRange: range
	"Private - Invoke the ModifyAppliesToRange() method of the COM object.

		HRESULT __stdcall ModifyAppliesToRange(
			[in]Range* Range);"

	<virtual stdcall: hresult 30 ExcelRange*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

percentMax
	"Answer the <sdword> value of the 'PercentMax' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PercentMax: answer.
	^answer asObject
!

percentMax: rhs
	"Set the 'PercentMax' property of the receiver to the <sdword> value of the argument."

	self put_PercentMax: rhs
!

percentMin
	"Answer the <sdword> value of the 'PercentMin' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PercentMin: answer.
	^answer asObject
!

percentMin: rhs
	"Set the 'PercentMin' property of the receiver to the <sdword> value of the argument."

	self put_PercentMin: rhs
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

put_Formula: rhs
	"Private - Set the value of the 'Formula' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Formula(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 25 bstr>
	^self invalidCall!

put_PercentMax: rhs
	"Private - Set the value of the 'PercentMax' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PercentMax(
			[in]long RHS);"

	<virtual stdcall: hresult 20 sdword>
	^self invalidCall!

put_PercentMin: rhs
	"Private - Set the value of the 'PercentMin' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PercentMin(
			[in]long RHS);"

	<virtual stdcall: hresult 18 sdword>
	^self invalidCall!

put_Priority: rhs
	"Private - Set the value of the 'Priority' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Priority(
			[in]long RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

put_ScopeType: rhs
	"Private - Set the value of the 'ScopeType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ScopeType(
			[in]XlPivotConditionScope RHS);"

	<virtual stdcall: hresult 33 sdword>
	^self invalidCall!

put_ShowValue: rhs
	"Private - Set the value of the 'ShowValue' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowValue(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 23 varbool>
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

	<virtual stdcall: hresult 27>
	^self invalidCall!

setLastPriority
	"Invoke the SetLastPriority() method of the COM object."

	^self SetLastPriority
!

SetLastPriority
	"Private - Invoke the SetLastPriority() method of the COM object.

		HRESULT __stdcall SetLastPriority();"

	<virtual stdcall: hresult 28>
	^self invalidCall!

showValue
	"Answer the <varbool> value of the 'ShowValue' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowValue: answer.
	^answer asObject
!

showValue: rhs
	"Set the 'ShowValue' property of the receiver to the <varbool> value of the argument."

	self put_ShowValue: rhs
!

stopIfTrue
	"Answer the <varbool> value of the 'StopIfTrue' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_StopIfTrue: answer.
	^answer asObject
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
! !
!ExcelIDatabar categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #appliesTo!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #barColor!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIDatabar categoriesFor: #Delete!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_AppliesTo:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_BarColor:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_Formula:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_MaxPoint:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_MinPoint:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_PercentMax:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_PercentMin:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_Priority:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_PTCondition:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_ScopeType:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_ShowValue:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_StopIfTrue:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #maxPoint!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #minPoint!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #modifyAppliesToRange:!**auto generated**!methods!public! !
!ExcelIDatabar categoriesFor: #ModifyAppliesToRange:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #percentMax!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #percentMax:!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #percentMin!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #percentMin:!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #priority!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #priority:!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #ptCondition!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #put_Formula:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #put_PercentMax:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #put_PercentMin:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #put_Priority:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #put_ScopeType:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #put_ShowValue:!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #scopeType!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #scopeType:!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #setFirstPriority!**auto generated**!methods!public! !
!ExcelIDatabar categoriesFor: #SetFirstPriority!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #setLastPriority!**auto generated**!methods!public! !
!ExcelIDatabar categoriesFor: #SetLastPriority!**auto generated**!COM Interfaces-IDatabar!private! !
!ExcelIDatabar categoriesFor: #showValue!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #showValue:!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #stopIfTrue!**auto generated**!properties!public! !
!ExcelIDatabar categoriesFor: #type!**auto generated**!properties!public! !

!ExcelIDatabar class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IDatabar'
		ExcelIDatabar defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Priority:
			argumentTypes: 'sdword*';
		defineFunction: #put_Priority:
			argumentTypes: 'sdword';
		defineFunction: #get_StopIfTrue:
			argumentTypes: 'varbool*';
		defineFunction: #get_AppliesTo:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_MinPoint:
			argumentTypes: 'ExcelConditionValue**';
		defineFunction: #get_MaxPoint:
			argumentTypes: 'ExcelConditionValue**';
		defineFunction: #get_PercentMin:
			argumentTypes: 'sdword*';
		defineFunction: #put_PercentMin:
			argumentTypes: 'sdword';
		defineFunction: #get_PercentMax:
			argumentTypes: 'sdword*';
		defineFunction: #put_PercentMax:
			argumentTypes: 'sdword';
		defineFunction: #get_BarColor:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_ShowValue:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowValue:
			argumentTypes: 'varbool';
		defineFunction: #get_Formula:
			argumentTypes: 'bstr*';
		defineFunction: #put_Formula:
			argumentTypes: 'bstr';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #SetFirstPriority;
		defineFunction: #SetLastPriority;
		defineFunction: #Delete;
		defineFunction: #ModifyAppliesToRange:
			argumentTypes: 'ExcelRange*';
		defineFunction: #get_PTCondition:
			argumentTypes: 'varbool*';
		defineFunction: #get_ScopeType:
			argumentTypes: 'sdword*';
		defineFunction: #put_ScopeType:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIDatabar initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIDatabar class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIDatabar class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

