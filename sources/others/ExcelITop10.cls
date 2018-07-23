"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelITop10
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelITop10 guid: (IID fromString: '{0002449D-0001-0000-C000-000000000046}')!
ExcelITop10 comment: '<ExcelITop10> is a wrapper class for the COM interface ''Excel.ITop10'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002449D-0001-0000-C000-000000000046), 
	helpcontext(0x00020133), 
	hidden
]
interface ITop10 : IDispatch
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
	[id(0x00000a41), propput, helpcontext(0x00010a41)]
	HRESULT __stdcall StopIfTrue(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a42), propget, helpcontext(0x00010a42)]
	HRESULT __stdcall AppliesTo(
		[out, retval]Range** RHS);
	[id(0x00000aa8), propget, helpcontext(0x00010aa8)]
	HRESULT __stdcall TopBottom(
		[out, retval]XlTopBottom* RHS);
	[id(0x00000aa8), propput, helpcontext(0x00010aa8)]
	HRESULT __stdcall TopBottom(
		[in]XlTopBottom RHS);
	[id(0x0000050a), propget, helpcontext(0x0001050a)]
	HRESULT __stdcall Rank(
		[out, retval]long* RHS);
	[id(0x0000050a), propput, helpcontext(0x0001050a)]
	HRESULT __stdcall Rank(
		[in]long RHS);
	[id(0x00000aa9), propget, helpcontext(0x00010aa9)]
	HRESULT __stdcall Percent(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000aa9), propput, helpcontext(0x00010aa9)]
	HRESULT __stdcall Percent(
		[in]VARIANT_BOOL RHS);
	[id(0x00000081), propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x000001b3), propget, helpcontext(0x000101b3)]
	HRESULT __stdcall Borders(
		[out, retval]Borders** RHS);
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]long* RHS);
	[id(0x000000c1), propget, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[out, retval]VARIANT* RHS);
	[id(0x000000c1), propput, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[in]VARIANT RHS);
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
	[id(0x00000aaa), propget, helpcontext(0x00010aaa)]
	HRESULT __stdcall CalcFor(
		[out, retval]XlCalcFor* RHS);
	[id(0x00000aaa), propput, helpcontext(0x00010aaa)]
	HRESULT __stdcall CalcFor(
		[in]XlCalcFor RHS);
};
'!
!ExcelITop10 categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelITop10 methodsFor!

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

calcFor
	"Answer the <sdword> value of the 'CalcFor' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CalcFor: answer.
	^answer asObject
!

calcFor: rhs
	"Set the 'CalcFor' property of the receiver to the <sdword> value of the argument."

	self put_CalcFor: rhs
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

	<virtual stdcall: hresult 30>
	^self invalidCall!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
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

	<virtual stdcall: hresult 15 ExcelRange**>
	^self invalidCall!

get_Borders: rhs
	"Private - Get the value of the 'Borders' property of the receiver.

		HRESULT __stdcall Borders(
			[out, retval]Borders** RHS);"

	<virtual stdcall: hresult 23 ExcelBorders**>
	^self invalidCall!

get_CalcFor: rhs
	"Private - Get the value of the 'CalcFor' property of the receiver.

		HRESULT __stdcall CalcFor(
			[out, retval]XlCalcFor* RHS);"

	<virtual stdcall: hresult 35 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Font: rhs
	"Private - Get the value of the 'Font' property of the receiver.

		HRESULT __stdcall Font(
			[out, retval]Font** RHS);"

	<virtual stdcall: hresult 24 ExcelFont**>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 22 ExcelInterior**>
	^self invalidCall!

get_NumberFormat: rhs
	"Private - Get the value of the 'NumberFormat' property of the receiver.

		HRESULT __stdcall NumberFormat(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 26 variant*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Percent: rhs
	"Private - Get the value of the 'Percent' property of the receiver.

		HRESULT __stdcall Percent(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 20 varbool*>
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

	<virtual stdcall: hresult 32 varbool*>
	^self invalidCall!

get_Rank: rhs
	"Private - Get the value of the 'Rank' property of the receiver.

		HRESULT __stdcall Rank(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_ScopeType: rhs
	"Private - Get the value of the 'ScopeType' property of the receiver.

		HRESULT __stdcall ScopeType(
			[out, retval]XlPivotConditionScope* RHS);"

	<virtual stdcall: hresult 33 sdword*>
	^self invalidCall!

get_StopIfTrue: rhs
	"Private - Get the value of the 'StopIfTrue' property of the receiver.

		HRESULT __stdcall StopIfTrue(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
	^self invalidCall!

get_TopBottom: rhs
	"Private - Get the value of the 'TopBottom' property of the receiver.

		HRESULT __stdcall TopBottom(
			[out, retval]XlTopBottom* RHS);"

	<virtual stdcall: hresult 16 sdword*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 25 sdword*>
	^self invalidCall!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
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

	<virtual stdcall: hresult 31 ExcelRange*>
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

percent
	"Answer the <varbool> value of the 'Percent' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Percent: answer.
	^answer asObject
!

percent: rhs
	"Set the 'Percent' property of the receiver to the <varbool> value of the argument."

	self put_Percent: rhs
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

put_CalcFor: rhs
	"Private - Set the value of the 'CalcFor' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CalcFor(
			[in]XlCalcFor RHS);"

	<virtual stdcall: hresult 36 sdword>
	^self invalidCall!

put_NumberFormat: rhs
	"Private - Set the value of the 'NumberFormat' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall NumberFormat(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 27 variant>
	^self invalidCall!

put_Percent: rhs
	"Private - Set the value of the 'Percent' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Percent(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 21 varbool>
	^self invalidCall!

put_Priority: rhs
	"Private - Set the value of the 'Priority' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Priority(
			[in]long RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

put_Rank: rhs
	"Private - Set the value of the 'Rank' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Rank(
			[in]long RHS);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

put_ScopeType: rhs
	"Private - Set the value of the 'ScopeType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ScopeType(
			[in]XlPivotConditionScope RHS);"

	<virtual stdcall: hresult 34 sdword>
	^self invalidCall!

put_StopIfTrue: rhs
	"Private - Set the value of the 'StopIfTrue' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall StopIfTrue(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 14 varbool>
	^self invalidCall!

put_TopBottom: rhs
	"Private - Set the value of the 'TopBottom' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TopBottom(
			[in]XlTopBottom RHS);"

	<virtual stdcall: hresult 17 sdword>
	^self invalidCall!

rank
	"Answer the <sdword> value of the 'Rank' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Rank: answer.
	^answer asObject
!

rank: rhs
	"Set the 'Rank' property of the receiver to the <sdword> value of the argument."

	self put_Rank: rhs
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

	<virtual stdcall: hresult 28>
	^self invalidCall!

setLastPriority
	"Invoke the SetLastPriority() method of the COM object."

	^self SetLastPriority
!

SetLastPriority
	"Private - Invoke the SetLastPriority() method of the COM object.

		HRESULT __stdcall SetLastPriority();"

	<virtual stdcall: hresult 29>
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

topBottom
	"Answer the <sdword> value of the 'TopBottom' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TopBottom: answer.
	^answer asObject
!

topBottom: rhs
	"Set the 'TopBottom' property of the receiver to the <sdword> value of the argument."

	self put_TopBottom: rhs
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
! !
!ExcelITop10 categoriesFor: #application!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #appliesTo!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #calcFor!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #calcFor:!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelITop10 categoriesFor: #Delete!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #font!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_AppliesTo:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_Borders:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_CalcFor:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_Font:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_NumberFormat:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_Percent:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_Priority:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_PTCondition:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_Rank:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_ScopeType:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_StopIfTrue:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_TopBottom:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #get_Type:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #modifyAppliesToRange:!**auto generated**!methods!public! !
!ExcelITop10 categoriesFor: #ModifyAppliesToRange:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #percent!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #percent:!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #priority!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #priority:!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #ptCondition!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #put_CalcFor:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #put_NumberFormat:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #put_Percent:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #put_Priority:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #put_Rank:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #put_ScopeType:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #put_StopIfTrue:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #put_TopBottom:!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #rank!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #rank:!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #scopeType!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #scopeType:!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #setFirstPriority!**auto generated**!methods!public! !
!ExcelITop10 categoriesFor: #SetFirstPriority!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #setLastPriority!**auto generated**!methods!public! !
!ExcelITop10 categoriesFor: #SetLastPriority!**auto generated**!COM Interfaces-ITop10!private! !
!ExcelITop10 categoriesFor: #stopIfTrue!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #stopIfTrue:!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #topBottom!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #topBottom:!**auto generated**!properties!public! !
!ExcelITop10 categoriesFor: #type!**auto generated**!properties!public! !

!ExcelITop10 class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ITop10'
		ExcelITop10 defineTemplate"

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
		defineFunction: #put_StopIfTrue:
			argumentTypes: 'varbool';
		defineFunction: #get_AppliesTo:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_TopBottom:
			argumentTypes: 'sdword*';
		defineFunction: #put_TopBottom:
			argumentTypes: 'sdword';
		defineFunction: #get_Rank:
			argumentTypes: 'sdword*';
		defineFunction: #put_Rank:
			argumentTypes: 'sdword';
		defineFunction: #get_Percent:
			argumentTypes: 'varbool*';
		defineFunction: #put_Percent:
			argumentTypes: 'varbool';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Borders:
			argumentTypes: 'ExcelBorders**';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_NumberFormat:
			argumentTypes: 'variant*';
		defineFunction: #put_NumberFormat:
			argumentTypes: 'variant';
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
			argumentTypes: 'sdword';
		defineFunction: #get_CalcFor:
			argumentTypes: 'sdword*';
		defineFunction: #put_CalcFor:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelITop10 initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelITop10 class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelITop10 class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

