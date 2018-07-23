"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIIconSetCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIIconSetCondition guid: (IID fromString: '{00024497-0001-0000-C000-000000000046}')!
ExcelIIconSetCondition comment: '<ExcelIIconSetCondition> is a wrapper class for the COM interface ''Excel.IIconSetCondition'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024497-0001-0000-C000-000000000046), 
	helpcontext(0x0002012d), 
	hidden
]
interface IIconSetCondition : IDispatch
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
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]long* RHS);
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
	[id(0x00000a45), helpcontext(0x00010a45)]
	HRESULT __stdcall SetFirstPriority();
	[id(0x00000a46), helpcontext(0x00010a46)]
	HRESULT __stdcall SetLastPriority();
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000aa3), propget, helpcontext(0x00010aa3)]
	HRESULT __stdcall ReverseOrder(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000aa3), propput, helpcontext(0x00010aa3)]
	HRESULT __stdcall ReverseOrder(
		[in]VARIANT_BOOL RHS);
	[id(0x00000aa4), propget, helpcontext(0x00010aa4)]
	HRESULT __stdcall PercentileValues(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000aa4), propput, helpcontext(0x00010aa4)]
	HRESULT __stdcall PercentileValues(
		[in]VARIANT_BOOL RHS);
	[id(0x00000aa5), propget, helpcontext(0x00010aa5)]
	HRESULT __stdcall ShowIconOnly(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000aa5), propput, helpcontext(0x00010aa5)]
	HRESULT __stdcall ShowIconOnly(
		[in]VARIANT_BOOL RHS);
	[id(0x00000105), propget, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[out, retval]BSTR* RHS);
	[id(0x00000105), propput, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[in]BSTR RHS);
	[id(0x00000aa6), propget, helpcontext(0x00010aa6)]
	HRESULT __stdcall IconSet(
		[out, retval]VARIANT* RHS);
	[id(0x00000aa6), propput, helpcontext(0x00010aa6)]
	HRESULT __stdcall IconSet(
		[in]VARIANT RHS);
	[id(0x00000aa7), propget, helpcontext(0x00010aa7)]
	HRESULT __stdcall IconCriteria(
		[out, retval]IconCriteria** RHS);
};
'!
!ExcelIIconSetCondition categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIIconSetCondition methodsFor!

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

	<virtual stdcall: hresult 22>
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

	<virtual stdcall: hresult 29 bstr*>
	^self invalidCall!

get_IconCriteria: rhs
	"Private - Get the value of the 'IconCriteria' property of the receiver.

		HRESULT __stdcall IconCriteria(
			[out, retval]IconCriteria** RHS);"

	<virtual stdcall: hresult 33 ExcelIconCriteria**>
	^self invalidCall!

get_IconSet: rhs
	"Private - Get the value of the 'IconSet' property of the receiver.

		HRESULT __stdcall IconSet(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 31 variant*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PercentileValues: rhs
	"Private - Get the value of the 'PercentileValues' property of the receiver.

		HRESULT __stdcall PercentileValues(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
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

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

get_ReverseOrder: rhs
	"Private - Get the value of the 'ReverseOrder' property of the receiver.

		HRESULT __stdcall ReverseOrder(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 23 varbool*>
	^self invalidCall!

get_ScopeType: rhs
	"Private - Get the value of the 'ScopeType' property of the receiver.

		HRESULT __stdcall ScopeType(
			[out, retval]XlPivotConditionScope* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_ShowIconOnly: rhs
	"Private - Get the value of the 'ShowIconOnly' property of the receiver.

		HRESULT __stdcall ShowIconOnly(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 27 varbool*>
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

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

iconCriteria
	"Answer the <ExcelIconCriteria> value of the 'IconCriteria' property of the receiver."

	| answer |
	answer := ExcelIconCriteria newPointer.
	self get_IconCriteria: answer.
	^answer asObject
!

iconSet
	"Answer the <variant> value of the 'IconSet' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_IconSet: answer.
	^answer asObject
!

iconSet: rhs
	"Set the 'IconSet' property of the receiver to the <variant> value of the argument."

	self put_IconSet: rhs asVariant
!

modifyAppliesToRange: range
	"Invoke the ModifyAppliesToRange() method of the COM object."

	^self ModifyAppliesToRange: range
!

ModifyAppliesToRange: range
	"Private - Invoke the ModifyAppliesToRange() method of the COM object.

		HRESULT __stdcall ModifyAppliesToRange(
			[in]Range* Range);"

	<virtual stdcall: hresult 16 ExcelRange*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

percentileValues
	"Answer the <varbool> value of the 'PercentileValues' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PercentileValues: answer.
	^answer asObject
!

percentileValues: rhs
	"Set the 'PercentileValues' property of the receiver to the <varbool> value of the argument."

	self put_PercentileValues: rhs
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

	<virtual stdcall: hresult 30 bstr>
	^self invalidCall!

put_IconSet: rhs
	"Private - Set the value of the 'IconSet' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall IconSet(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 32 variant>
	^self invalidCall!

put_PercentileValues: rhs
	"Private - Set the value of the 'PercentileValues' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PercentileValues(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_Priority: rhs
	"Private - Set the value of the 'Priority' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Priority(
			[in]long RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

put_ReverseOrder: rhs
	"Private - Set the value of the 'ReverseOrder' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ReverseOrder(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 24 varbool>
	^self invalidCall!

put_ScopeType: rhs
	"Private - Set the value of the 'ScopeType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ScopeType(
			[in]XlPivotConditionScope RHS);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

put_ShowIconOnly: rhs
	"Private - Set the value of the 'ShowIconOnly' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowIconOnly(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 28 varbool>
	^self invalidCall!

reverseOrder
	"Answer the <varbool> value of the 'ReverseOrder' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ReverseOrder: answer.
	^answer asObject
!

reverseOrder: rhs
	"Set the 'ReverseOrder' property of the receiver to the <varbool> value of the argument."

	self put_ReverseOrder: rhs
!

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

	<virtual stdcall: hresult 20>
	^self invalidCall!

setLastPriority
	"Invoke the SetLastPriority() method of the COM object."

	^self SetLastPriority
!

SetLastPriority
	"Private - Invoke the SetLastPriority() method of the COM object.

		HRESULT __stdcall SetLastPriority();"

	<virtual stdcall: hresult 21>
	^self invalidCall!

showIconOnly
	"Answer the <varbool> value of the 'ShowIconOnly' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowIconOnly: answer.
	^answer asObject
!

showIconOnly: rhs
	"Set the 'ShowIconOnly' property of the receiver to the <varbool> value of the argument."

	self put_ShowIconOnly: rhs
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
!ExcelIIconSetCondition categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #appliesTo!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIIconSetCondition categoriesFor: #Delete!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_AppliesTo:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_Formula:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_IconCriteria:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_IconSet:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_PercentileValues:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_Priority:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_PTCondition:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_ReverseOrder:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_ScopeType:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_ShowIconOnly:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_StopIfTrue:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #iconCriteria!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #iconSet!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #iconSet:!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #modifyAppliesToRange:!**auto generated**!methods!public! !
!ExcelIIconSetCondition categoriesFor: #ModifyAppliesToRange:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #percentileValues!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #percentileValues:!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #priority!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #priority:!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #ptCondition!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #put_Formula:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #put_IconSet:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #put_PercentileValues:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #put_Priority:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #put_ReverseOrder:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #put_ScopeType:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #put_ShowIconOnly:!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #reverseOrder!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #reverseOrder:!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #scopeType!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #scopeType:!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #setFirstPriority!**auto generated**!methods!public! !
!ExcelIIconSetCondition categoriesFor: #SetFirstPriority!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #setLastPriority!**auto generated**!methods!public! !
!ExcelIIconSetCondition categoriesFor: #SetLastPriority!**auto generated**!COM Interfaces-IIconSetCondition!private! !
!ExcelIIconSetCondition categoriesFor: #showIconOnly!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #showIconOnly:!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #stopIfTrue!**auto generated**!properties!public! !
!ExcelIIconSetCondition categoriesFor: #type!**auto generated**!properties!public! !

!ExcelIIconSetCondition class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IIconSetCondition'
		ExcelIIconSetCondition defineTemplate"

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
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #ModifyAppliesToRange:
			argumentTypes: 'ExcelRange*';
		defineFunction: #get_PTCondition:
			argumentTypes: 'varbool*';
		defineFunction: #get_ScopeType:
			argumentTypes: 'sdword*';
		defineFunction: #put_ScopeType:
			argumentTypes: 'sdword';
		defineFunction: #SetFirstPriority;
		defineFunction: #SetLastPriority;
		defineFunction: #Delete;
		defineFunction: #get_ReverseOrder:
			argumentTypes: 'varbool*';
		defineFunction: #put_ReverseOrder:
			argumentTypes: 'varbool';
		defineFunction: #get_PercentileValues:
			argumentTypes: 'varbool*';
		defineFunction: #put_PercentileValues:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowIconOnly:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowIconOnly:
			argumentTypes: 'varbool';
		defineFunction: #get_Formula:
			argumentTypes: 'bstr*';
		defineFunction: #put_Formula:
			argumentTypes: 'bstr';
		defineFunction: #get_IconSet:
			argumentTypes: 'variant*';
		defineFunction: #put_IconSet:
			argumentTypes: 'variant';
		defineFunction: #get_IconCriteria:
			argumentTypes: 'ExcelIconCriteria**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIIconSetCondition initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIIconSetCondition class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIIconSetCondition class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

