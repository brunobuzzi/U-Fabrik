"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIName
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIName guid: (IID fromString: '{000208B9-0001-0000-C000-000000000046}')!
ExcelIName comment: '<ExcelIName> is a wrapper class for the COM interface ''Excel.IName'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208B9-0001-0000-C000-000000000046), 
	helpcontext(0x00020079), 
	hidden
]
interface IName : IDispatch
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
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x000003a6), propget, helpcontext(0x000103a6)]
	HRESULT __stdcall Category(
		[in]long lcidIn,
		[out, retval]BSTR* RHS);
	[id(0x000003a6), propput, helpcontext(0x000103a6)]
	HRESULT __stdcall Category(
		[in]long lcidIn,
		[in]BSTR RHS);
	[id(0x000003a7), propget, helpcontext(0x000103a7)]
	HRESULT __stdcall CategoryLocal(
		[out, retval]BSTR* RHS);
	[id(0x000003a7), propput, helpcontext(0x000103a7)]
	HRESULT __stdcall CategoryLocal(
		[in]BSTR RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x000003a8), propget, helpcontext(0x000103a8)]
	HRESULT __stdcall MacroType(
		[out, retval]XlXLMMacroType* RHS);
	[id(0x000003a8), propput, helpcontext(0x000103a8)]
	HRESULT __stdcall MacroType(
		[in]XlXLMMacroType RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]long lcidIn,
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]long lcidIn,
		[in]BSTR RHS);
	[id(0x000003aa), propget, helpcontext(0x000103aa)]
	HRESULT __stdcall RefersTo(
		[in]long lcidIn,
		[out, retval]VARIANT* RHS);
	[id(0x000003aa), propput, helpcontext(0x000103aa)]
	HRESULT __stdcall RefersTo(
		[in]long lcidIn,
		[in]VARIANT RHS);
	[id(0x00000255), propget, helpcontext(0x00010255)]
	HRESULT __stdcall ShortcutKey(
		[out, retval]BSTR* RHS);
	[id(0x00000255), propput, helpcontext(0x00010255)]
	HRESULT __stdcall ShortcutKey(
		[in]BSTR RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]BSTR* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]BSTR RHS);
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]VARIANT_BOOL RHS);
	[id(0x000003a9), propget, helpcontext(0x000103a9)]
	HRESULT __stdcall NameLocal(
		[out, retval]BSTR* RHS);
	[id(0x000003a9), propput, helpcontext(0x000103a9)]
	HRESULT __stdcall NameLocal(
		[in]BSTR RHS);
	[id(0x000003ab), propget, helpcontext(0x000103ab)]
	HRESULT __stdcall RefersToLocal(
		[out, retval]VARIANT* RHS);
	[id(0x000003ab), propput, helpcontext(0x000103ab)]
	HRESULT __stdcall RefersToLocal(
		[in]VARIANT RHS);
	[id(0x000003ac), propget, helpcontext(0x000103ac)]
	HRESULT __stdcall RefersToR1C1(
		[in]long lcidIn,
		[out, retval]VARIANT* RHS);
	[id(0x000003ac), propput, helpcontext(0x000103ac)]
	HRESULT __stdcall RefersToR1C1(
		[in]long lcidIn,
		[in]VARIANT RHS);
	[id(0x000003ad), propget, helpcontext(0x000103ad)]
	HRESULT __stdcall RefersToR1C1Local(
		[out, retval]VARIANT* RHS);
	[id(0x000003ad), propput, helpcontext(0x000103ad)]
	HRESULT __stdcall RefersToR1C1Local(
		[in]VARIANT RHS);
	[id(0x00000488), propget, helpcontext(0x00010488)]
	HRESULT __stdcall RefersToRange(
		[out, retval]Range** RHS);
	[id(0x0000038e), propget, helpcontext(0x0001038e)]
	HRESULT __stdcall Comment(
		[out, retval]BSTR* RHS);
	[id(0x0000038e), propput, helpcontext(0x0001038e)]
	HRESULT __stdcall Comment(
		[in]BSTR RHS);
	[id(0x00000a2f), propget, helpcontext(0x00010a2f)]
	HRESULT __stdcall WorkbookParameter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a2f), propput, helpcontext(0x00010a2f)]
	HRESULT __stdcall WorkbookParameter(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a30), propget, helpcontext(0x00010a30)]
	HRESULT __stdcall ValidWorkbookParameter(
		[out, retval]VARIANT_BOOL* RHS);
};
'!
!ExcelIName categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIName methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

category: lcidIn
	"Answer the <bstr> value of the 'Category' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_Category: lcidIn
		rhs: answer.
	^answer asObject
!

category: lcidIn rhs: rhs
	"Set the 'Category' property of the receiver to the <bstr> value of the argument."

	self
		put_Category: lcidIn
		rhs: rhs
!

categoryLocal
	"Answer the <bstr> value of the 'CategoryLocal' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_CategoryLocal: answer.
	^answer asObject
!

categoryLocal: rhs
	"Set the 'CategoryLocal' property of the receiver to the <bstr> value of the argument."

	self put_CategoryLocal: rhs
!

comment
	"Answer the <bstr> value of the 'Comment' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Comment: answer.
	^answer asObject
!

comment: rhs
	"Set the 'Comment' property of the receiver to the <bstr> value of the argument."

	self put_Comment: rhs
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

	<virtual stdcall: hresult 17>
	^self invalidCall!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Category: lcidIn rhs: rhs
	"Private - Get the value of the 'Category' property of the receiver.

		HRESULT __stdcall Category(
			[in]long lcidIn,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 sdword bstr*>
	^self invalidCall!

get_CategoryLocal: rhs
	"Private - Get the value of the 'CategoryLocal' property of the receiver.

		HRESULT __stdcall CategoryLocal(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

get_Comment: rhs
	"Private - Get the value of the 'Comment' property of the receiver.

		HRESULT __stdcall Comment(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 39 bstr*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_MacroType: rhs
	"Private - Get the value of the 'MacroType' property of the receiver.

		HRESULT __stdcall MacroType(
			[out, retval]XlXLMMacroType* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_Name: lcidIn rhs: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[in]long lcidIn,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 20 sdword bstr*>
	^self invalidCall!

get_NameLocal: rhs
	"Private - Get the value of the 'NameLocal' property of the receiver.

		HRESULT __stdcall NameLocal(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 30 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_RefersTo: lcidIn rhs: rhs
	"Private - Get the value of the 'RefersTo' property of the receiver.

		HRESULT __stdcall RefersTo(
			[in]long lcidIn,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 22 sdword variant*>
	^self invalidCall!

get_RefersToLocal: rhs
	"Private - Get the value of the 'RefersToLocal' property of the receiver.

		HRESULT __stdcall RefersToLocal(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 32 variant*>
	^self invalidCall!

get_RefersToR1C1: lcidIn rhs: rhs
	"Private - Get the value of the 'RefersToR1C1' property of the receiver.

		HRESULT __stdcall RefersToR1C1(
			[in]long lcidIn,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 34 sdword variant*>
	^self invalidCall!

get_RefersToR1C1Local: rhs
	"Private - Get the value of the 'RefersToR1C1Local' property of the receiver.

		HRESULT __stdcall RefersToR1C1Local(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 36 variant*>
	^self invalidCall!

get_RefersToRange: rhs
	"Private - Get the value of the 'RefersToRange' property of the receiver.

		HRESULT __stdcall RefersToRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 38 ExcelRange**>
	^self invalidCall!

get_ShortcutKey: rhs
	"Private - Get the value of the 'ShortcutKey' property of the receiver.

		HRESULT __stdcall ShortcutKey(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 24 bstr*>
	^self invalidCall!

get_ValidWorkbookParameter: rhs
	"Private - Get the value of the 'ValidWorkbookParameter' property of the receiver.

		HRESULT __stdcall ValidWorkbookParameter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 43 varbool*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 26 bstr*>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 28 varbool*>
	^self invalidCall!

get_WorkbookParameter: rhs
	"Private - Get the value of the 'WorkbookParameter' property of the receiver.

		HRESULT __stdcall WorkbookParameter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 41 varbool*>
	^self invalidCall!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

macroType
	"Answer the <sdword> value of the 'MacroType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MacroType: answer.
	^answer asObject
!

macroType: rhs
	"Set the 'MacroType' property of the receiver to the <sdword> value of the argument."

	self put_MacroType: rhs
!

name: lcidIn
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_Name: lcidIn
		rhs: answer.
	^answer asObject
!

name: lcidIn rhs: rhs
	"Set the 'Name' property of the receiver to the <bstr> value of the argument."

	self
		put_Name: lcidIn
		rhs: rhs
!

nameLocal
	"Answer the <bstr> value of the 'NameLocal' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_NameLocal: answer.
	^answer asObject
!

nameLocal: rhs
	"Set the 'NameLocal' property of the receiver to the <bstr> value of the argument."

	self put_NameLocal: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Category: lcidIn rhs: rhs
	"Private - Set the value of the 'Category' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Category(
			[in]long lcidIn,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 14 sdword bstr>
	^self invalidCall!

put_CategoryLocal: rhs
	"Private - Set the value of the 'CategoryLocal' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall CategoryLocal(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 16 bstr>
	^self invalidCall!

put_Comment: rhs
	"Private - Set the value of the 'Comment' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Comment(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 40 bstr>
	^self invalidCall!

put_MacroType: rhs
	"Private - Set the value of the 'MacroType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MacroType(
			[in]XlXLMMacroType RHS);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

put_Name: lcidIn rhs: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]long lcidIn,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 21 sdword bstr>
	^self invalidCall!

put_NameLocal: rhs
	"Private - Set the value of the 'NameLocal' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall NameLocal(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 31 bstr>
	^self invalidCall!

put_RefersTo: lcidIn rhs: rhs
	"Private - Set the value of the 'RefersTo' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall RefersTo(
			[in]long lcidIn,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 23 sdword variant>
	^self invalidCall!

put_RefersToLocal: rhs
	"Private - Set the value of the 'RefersToLocal' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall RefersToLocal(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 33 variant>
	^self invalidCall!

put_RefersToR1C1: lcidIn rhs: rhs
	"Private - Set the value of the 'RefersToR1C1' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall RefersToR1C1(
			[in]long lcidIn,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 35 sdword variant>
	^self invalidCall!

put_RefersToR1C1Local: rhs
	"Private - Set the value of the 'RefersToR1C1Local' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall RefersToR1C1Local(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 37 variant>
	^self invalidCall!

put_ShortcutKey: rhs
	"Private - Set the value of the 'ShortcutKey' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ShortcutKey(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 25 bstr>
	^self invalidCall!

put_Value: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Value(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 27 bstr>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Visible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 29 varbool>
	^self invalidCall!

put_WorkbookParameter: rhs
	"Private - Set the value of the 'WorkbookParameter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall WorkbookParameter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 42 varbool>
	^self invalidCall!

refersTo: lcidIn
	"Answer the <variant> value of the 'RefersTo' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_RefersTo: lcidIn
		rhs: answer.
	^answer asObject
!

refersTo: lcidIn rhs: rhs
	"Set the 'RefersTo' property of the receiver to the <variant> value of the argument."

	self
		put_RefersTo: lcidIn
		rhs: rhs asVariant
!

refersToLocal
	"Answer the <variant> value of the 'RefersToLocal' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_RefersToLocal: answer.
	^answer asObject
!

refersToLocal: rhs
	"Set the 'RefersToLocal' property of the receiver to the <variant> value of the argument."

	self put_RefersToLocal: rhs asVariant
!

refersToR1C1: lcidIn
	"Answer the <variant> value of the 'RefersToR1C1' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_RefersToR1C1: lcidIn
		rhs: answer.
	^answer asObject
!

refersToR1C1: lcidIn rhs: rhs
	"Set the 'RefersToR1C1' property of the receiver to the <variant> value of the argument."

	self
		put_RefersToR1C1: lcidIn
		rhs: rhs asVariant
!

refersToR1C1Local
	"Answer the <variant> value of the 'RefersToR1C1Local' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_RefersToR1C1Local: answer.
	^answer asObject
!

refersToR1C1Local: rhs
	"Set the 'RefersToR1C1Local' property of the receiver to the <variant> value of the argument."

	self put_RefersToR1C1Local: rhs asVariant
!

refersToRange
	"Answer the <ExcelRange> value of the 'RefersToRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_RefersToRange: answer.
	^answer asObject
!

shortcutKey
	"Answer the <bstr> value of the 'ShortcutKey' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ShortcutKey: answer.
	^answer asObject
!

shortcutKey: rhs
	"Set the 'ShortcutKey' property of the receiver to the <bstr> value of the argument."

	self put_ShortcutKey: rhs
!

validWorkbookParameter
	"Answer the <varbool> value of the 'ValidWorkbookParameter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ValidWorkbookParameter: answer.
	^answer asObject
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Value: answer.
	^answer asObject
!

value: rhs
	"Set the 'Value' property of the receiver to the <bstr> value of the argument."

	self put_Value: rhs
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Visible: answer.
	^answer asObject
!

visible: rhs
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument."

	self put_Visible: rhs
!

workbookParameter
	"Answer the <varbool> value of the 'WorkbookParameter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_WorkbookParameter: answer.
	^answer asObject
!

workbookParameter: rhs
	"Set the 'WorkbookParameter' property of the receiver to the <varbool> value of the argument."

	self put_WorkbookParameter: rhs
! !
!ExcelIName categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #category:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #category:rhs:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #categoryLocal!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #categoryLocal:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #comment!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #comment:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIName categoriesFor: #Delete!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_Category:rhs:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_CategoryLocal:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_Comment:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_MacroType:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_Name:rhs:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_NameLocal:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_RefersTo:rhs:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_RefersToLocal:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_RefersToR1C1:rhs:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_RefersToR1C1Local:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_RefersToRange:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_ShortcutKey:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_ValidWorkbookParameter:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #get_WorkbookParameter:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #macroType!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #macroType:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #name:rhs:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #nameLocal!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #nameLocal:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #put_Category:rhs:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_CategoryLocal:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_Comment:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_MacroType:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_Name:rhs:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_NameLocal:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_RefersTo:rhs:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_RefersToLocal:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_RefersToR1C1:rhs:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_RefersToR1C1Local:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_ShortcutKey:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_Value:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #put_WorkbookParameter:!**auto generated**!COM Interfaces-IName!private! !
!ExcelIName categoriesFor: #refersTo:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #refersTo:rhs:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #refersToLocal!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #refersToLocal:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #refersToR1C1:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #refersToR1C1:rhs:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #refersToR1C1Local!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #refersToR1C1Local:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #refersToRange!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #shortcutKey!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #shortcutKey:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #validWorkbookParameter!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #workbookParameter!**auto generated**!properties!public! !
!ExcelIName categoriesFor: #workbookParameter:!**auto generated**!properties!public! !

!ExcelIName class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IName'
		ExcelIName defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_Category:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_Category:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_CategoryLocal:
			argumentTypes: 'bstr*';
		defineFunction: #put_CategoryLocal:
			argumentTypes: 'bstr';
		defineFunction: #Delete;
		defineFunction: #get_MacroType:
			argumentTypes: 'sdword*';
		defineFunction: #put_MacroType:
			argumentTypes: 'sdword';
		defineFunction: #get_Name:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_Name:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_RefersTo:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #put_RefersTo:rhs:
			argumentTypes: 'sdword variant';
		defineFunction: #get_ShortcutKey:
			argumentTypes: 'bstr*';
		defineFunction: #put_ShortcutKey:
			argumentTypes: 'bstr';
		defineFunction: #get_Value:
			argumentTypes: 'bstr*';
		defineFunction: #put_Value:
			argumentTypes: 'bstr';
		defineFunction: #get_Visible:
			argumentTypes: 'varbool*';
		defineFunction: #put_Visible:
			argumentTypes: 'varbool';
		defineFunction: #get_NameLocal:
			argumentTypes: 'bstr*';
		defineFunction: #put_NameLocal:
			argumentTypes: 'bstr';
		defineFunction: #get_RefersToLocal:
			argumentTypes: 'variant*';
		defineFunction: #put_RefersToLocal:
			argumentTypes: 'variant';
		defineFunction: #get_RefersToR1C1:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #put_RefersToR1C1:rhs:
			argumentTypes: 'sdword variant';
		defineFunction: #get_RefersToR1C1Local:
			argumentTypes: 'variant*';
		defineFunction: #put_RefersToR1C1Local:
			argumentTypes: 'variant';
		defineFunction: #get_RefersToRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Comment:
			argumentTypes: 'bstr*';
		defineFunction: #put_Comment:
			argumentTypes: 'bstr';
		defineFunction: #get_WorkbookParameter:
			argumentTypes: 'varbool*';
		defineFunction: #put_WorkbookParameter:
			argumentTypes: 'varbool';
		defineFunction: #get_ValidWorkbookParameter:
			argumentTypes: 'varbool*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIName initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIName class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIName class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

