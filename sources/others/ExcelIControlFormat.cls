"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIControlFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIControlFormat guid: (IID fromString: '{00024440-0001-0000-C000-000000000046}')!
ExcelIControlFormat comment: '<ExcelIControlFormat> is a wrapper class for the COM interface ''Excel.IControlFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024440-0001-0000-C000-000000000046), 
	helpcontext(0x000200d6), 
	hidden
]
interface IControlFormat : IDispatch
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
	[id(0x00000353), helpcontext(0x00010353)]
	HRESULT __stdcall AddItem(
		[in]BSTR Text,
		[in, optional]VARIANT Index);
	[id(0x00000355), helpcontext(0x00010355)]
	HRESULT __stdcall RemoveAllItems();
	[id(0x00000354), helpcontext(0x00010354)]
	HRESULT __stdcall RemoveItem(
		[in]long Index,
		[in, optional]VARIANT Count);
	[id(0x00000350), propget, helpcontext(0x00010350)]
	HRESULT __stdcall DropDownLines(
		[out, retval]long* RHS);
	[id(0x00000350), propput, helpcontext(0x00010350)]
	HRESULT __stdcall DropDownLines(
		[in]long RHS);
	[id(0x00000258), propget, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000258), propput, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[in]VARIANT_BOOL RHS);
	[id(0x0000034d), propget, helpcontext(0x0001034d)]
	HRESULT __stdcall LargeChange(
		[out, retval]long* RHS);
	[id(0x0000034d), propput, helpcontext(0x0001034d)]
	HRESULT __stdcall LargeChange(
		[in]long RHS);
	[id(0x00000422), propget, helpcontext(0x00010422)]
	HRESULT __stdcall LinkedCell(
		[out, retval]BSTR* RHS);
	[id(0x00000422), propput, helpcontext(0x00010422)]
	HRESULT __stdcall LinkedCell(
		[in]BSTR RHS);
	[id(0x0000035d), helpcontext(0x0001035d)]
	HRESULT __stdcall List(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x00000351), propget, helpcontext(0x00010351)]
	HRESULT __stdcall ListCount(
		[out, retval]long* RHS);
	[id(0x00000351), propput, helpcontext(0x00010351)]
	HRESULT __stdcall ListCount(
		[in]long RHS);
	[id(0x0000034f), propget, helpcontext(0x0001034f)]
	HRESULT __stdcall ListFillRange(
		[out, retval]BSTR* RHS);
	[id(0x0000034f), propput, helpcontext(0x0001034f)]
	HRESULT __stdcall ListFillRange(
		[in]BSTR RHS);
	[id(0x00000352), propget, helpcontext(0x00010352)]
	HRESULT __stdcall ListIndex(
		[out, retval]long* RHS);
	[id(0x00000352), propput, helpcontext(0x00010352)]
	HRESULT __stdcall ListIndex(
		[in]long RHS);
	[id(0x00000268), propget, helpcontext(0x00010268)]
	HRESULT __stdcall LockedText(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000268), propput, helpcontext(0x00010268)]
	HRESULT __stdcall LockedText(
		[in]VARIANT_BOOL RHS);
	[id(0x0000034a), propget, helpcontext(0x0001034a)]
	HRESULT __stdcall Max(
		[out, retval]long* RHS);
	[id(0x0000034a), propput, helpcontext(0x0001034a)]
	HRESULT __stdcall Max(
		[in]long RHS);
	[id(0x0000034b), propget, helpcontext(0x0001034b)]
	HRESULT __stdcall Min(
		[out, retval]long* RHS);
	[id(0x0000034b), propput, helpcontext(0x0001034b)]
	HRESULT __stdcall Min(
		[in]long RHS);
	[id(0x00000020), propget, helpcontext(0x00010020)]
	HRESULT __stdcall MultiSelect(
		[out, retval]long* RHS);
	[id(0x00000020), propput, helpcontext(0x00010020)]
	HRESULT __stdcall MultiSelect(
		[in]long RHS);
	[id(0x0000026a), propget, helpcontext(0x0001026a)]
	HRESULT __stdcall PrintObject(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000026a), propput, helpcontext(0x0001026a)]
	HRESULT __stdcall PrintObject(
		[in]VARIANT_BOOL RHS);
	[id(0x0000034c), propget, helpcontext(0x0001034c)]
	HRESULT __stdcall SmallChange(
		[out, retval]long* RHS);
	[id(0x0000034c), propput, helpcontext(0x0001034c)]
	HRESULT __stdcall SmallChange(
		[in]long RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]long* RHS);
	[id(0000000000), propput, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]long RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]long* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]long RHS);
};
'!
!ExcelIControlFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIControlFormat methodsFor!

_default
	"Answer the <sdword> value of the '_Default' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get__Default: answer.
	^answer asObject
!

_default: rhs
	"Set the '_Default' property of the receiver to the <sdword> value of the argument."

	self put__Default: rhs
!

addItem: text
	"Invoke the AddItem() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addItem: text
		 index: VARIANT unspecified!

addItem: text index: index
	"Invoke the AddItem() method of the COM object."

	^self
		AddItem: text
		index: index asVariant
!

AddItem: text index: index
	"Private - Invoke the AddItem() method of the COM object.

		HRESULT __stdcall AddItem(
			[in]BSTR Text,
			[in, optional]VARIANT Index);"

	<virtual stdcall: hresult 11 bstr variant>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

dropDownLines
	"Answer the <sdword> value of the 'DropDownLines' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DropDownLines: answer.
	^answer asObject
!

dropDownLines: rhs
	"Set the 'DropDownLines' property of the receiver to the <sdword> value of the argument."

	self put_DropDownLines: rhs
!

enabled
	"Answer the <varbool> value of the 'Enabled' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Enabled: answer.
	^answer asObject
!

enabled: rhs
	"Set the 'Enabled' property of the receiver to the <varbool> value of the argument."

	self put_Enabled: rhs
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 41 sdword*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DropDownLines: rhs
	"Private - Get the value of the 'DropDownLines' property of the receiver.

		HRESULT __stdcall DropDownLines(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 14 sdword*>
	^self invalidCall!

get_Enabled: rhs
	"Private - Get the value of the 'Enabled' property of the receiver.

		HRESULT __stdcall Enabled(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 16 varbool*>
	^self invalidCall!

get_LargeChange: rhs
	"Private - Get the value of the 'LargeChange' property of the receiver.

		HRESULT __stdcall LargeChange(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_LinkedCell: rhs
	"Private - Get the value of the 'LinkedCell' property of the receiver.

		HRESULT __stdcall LinkedCell(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 20 bstr*>
	^self invalidCall!

get_ListCount: rhs
	"Private - Get the value of the 'ListCount' property of the receiver.

		HRESULT __stdcall ListCount(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 23 sdword*>
	^self invalidCall!

get_ListFillRange: rhs
	"Private - Get the value of the 'ListFillRange' property of the receiver.

		HRESULT __stdcall ListFillRange(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 25 bstr*>
	^self invalidCall!

get_ListIndex: rhs
	"Private - Get the value of the 'ListIndex' property of the receiver.

		HRESULT __stdcall ListIndex(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 27 sdword*>
	^self invalidCall!

get_LockedText: rhs
	"Private - Get the value of the 'LockedText' property of the receiver.

		HRESULT __stdcall LockedText(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 29 varbool*>
	^self invalidCall!

get_Max: rhs
	"Private - Get the value of the 'Max' property of the receiver.

		HRESULT __stdcall Max(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 31 sdword*>
	^self invalidCall!

get_Min: rhs
	"Private - Get the value of the 'Min' property of the receiver.

		HRESULT __stdcall Min(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 33 sdword*>
	^self invalidCall!

get_MultiSelect: rhs
	"Private - Get the value of the 'MultiSelect' property of the receiver.

		HRESULT __stdcall MultiSelect(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 35 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PrintObject: rhs
	"Private - Get the value of the 'PrintObject' property of the receiver.

		HRESULT __stdcall PrintObject(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 37 varbool*>
	^self invalidCall!

get_SmallChange: rhs
	"Private - Get the value of the 'SmallChange' property of the receiver.

		HRESULT __stdcall SmallChange(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 39 sdword*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 43 sdword*>
	^self invalidCall!

largeChange
	"Answer the <sdword> value of the 'LargeChange' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_LargeChange: answer.
	^answer asObject
!

largeChange: rhs
	"Set the 'LargeChange' property of the receiver to the <sdword> value of the argument."

	self put_LargeChange: rhs
!

linkedCell
	"Answer the <bstr> value of the 'LinkedCell' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_LinkedCell: answer.
	^answer asObject
!

linkedCell: rhs
	"Set the 'LinkedCell' property of the receiver to the <bstr> value of the argument."

	self put_LinkedCell: rhs
!

list
	"Answer the <VARIANT> result of invoking the List() method of the COM object.
	Default values are passed for all optional parameters."

	^self list: VARIANT unspecified!

list: index
	"Answer the <VARIANT> result of invoking the List() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		List: index asVariant
		rhs: answer.
	^answer asObject
!

List: index rhs: rhs
	"Private - Invoke the List() method of the COM object.

		HRESULT __stdcall List(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 22 variant variant*>
	^self invalidCall!

listCount
	"Answer the <sdword> value of the 'ListCount' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ListCount: answer.
	^answer asObject
!

listCount: rhs
	"Set the 'ListCount' property of the receiver to the <sdword> value of the argument."

	self put_ListCount: rhs
!

listFillRange
	"Answer the <bstr> value of the 'ListFillRange' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ListFillRange: answer.
	^answer asObject
!

listFillRange: rhs
	"Set the 'ListFillRange' property of the receiver to the <bstr> value of the argument."

	self put_ListFillRange: rhs
!

listIndex
	"Answer the <sdword> value of the 'ListIndex' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ListIndex: answer.
	^answer asObject
!

listIndex: rhs
	"Set the 'ListIndex' property of the receiver to the <sdword> value of the argument."

	self put_ListIndex: rhs
!

lockedText
	"Answer the <varbool> value of the 'LockedText' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_LockedText: answer.
	^answer asObject
!

lockedText: rhs
	"Set the 'LockedText' property of the receiver to the <varbool> value of the argument."

	self put_LockedText: rhs
!

max
	"Answer the <sdword> value of the 'Max' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Max: answer.
	^answer asObject
!

max: rhs
	"Set the 'Max' property of the receiver to the <sdword> value of the argument."

	self put_Max: rhs
!

min
	"Answer the <sdword> value of the 'Min' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Min: answer.
	^answer asObject
!

min: rhs
	"Set the 'Min' property of the receiver to the <sdword> value of the argument."

	self put_Min: rhs
!

multiSelect
	"Answer the <sdword> value of the 'MultiSelect' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MultiSelect: answer.
	^answer asObject
!

multiSelect: rhs
	"Set the 'MultiSelect' property of the receiver to the <sdword> value of the argument."

	self put_MultiSelect: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

printObject
	"Answer the <varbool> value of the 'PrintObject' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PrintObject: answer.
	^answer asObject
!

printObject: rhs
	"Set the 'PrintObject' property of the receiver to the <varbool> value of the argument."

	self put_PrintObject: rhs
!

put__Default: rhs
	"Private - Set the value of the '_Default' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall _Default(
			[in]long RHS);"

	<virtual stdcall: hresult 42 sdword>
	^self invalidCall!

put_DropDownLines: rhs
	"Private - Set the value of the 'DropDownLines' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DropDownLines(
			[in]long RHS);"

	<virtual stdcall: hresult 15 sdword>
	^self invalidCall!

put_Enabled: rhs
	"Private - Set the value of the 'Enabled' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Enabled(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 17 varbool>
	^self invalidCall!

put_LargeChange: rhs
	"Private - Set the value of the 'LargeChange' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall LargeChange(
			[in]long RHS);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

put_LinkedCell: rhs
	"Private - Set the value of the 'LinkedCell' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall LinkedCell(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 21 bstr>
	^self invalidCall!

put_ListCount: rhs
	"Private - Set the value of the 'ListCount' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ListCount(
			[in]long RHS);"

	<virtual stdcall: hresult 24 sdword>
	^self invalidCall!

put_ListFillRange: rhs
	"Private - Set the value of the 'ListFillRange' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ListFillRange(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 26 bstr>
	^self invalidCall!

put_ListIndex: rhs
	"Private - Set the value of the 'ListIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ListIndex(
			[in]long RHS);"

	<virtual stdcall: hresult 28 sdword>
	^self invalidCall!

put_LockedText: rhs
	"Private - Set the value of the 'LockedText' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall LockedText(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 30 varbool>
	^self invalidCall!

put_Max: rhs
	"Private - Set the value of the 'Max' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Max(
			[in]long RHS);"

	<virtual stdcall: hresult 32 sdword>
	^self invalidCall!

put_Min: rhs
	"Private - Set the value of the 'Min' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Min(
			[in]long RHS);"

	<virtual stdcall: hresult 34 sdword>
	^self invalidCall!

put_MultiSelect: rhs
	"Private - Set the value of the 'MultiSelect' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MultiSelect(
			[in]long RHS);"

	<virtual stdcall: hresult 36 sdword>
	^self invalidCall!

put_PrintObject: rhs
	"Private - Set the value of the 'PrintObject' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PrintObject(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 38 varbool>
	^self invalidCall!

put_SmallChange: rhs
	"Private - Set the value of the 'SmallChange' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SmallChange(
			[in]long RHS);"

	<virtual stdcall: hresult 40 sdword>
	^self invalidCall!

put_Value: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Value(
			[in]long RHS);"

	<virtual stdcall: hresult 44 sdword>
	^self invalidCall!

removeAllItems
	"Invoke the RemoveAllItems() method of the COM object."

	^self RemoveAllItems
!

RemoveAllItems
	"Private - Invoke the RemoveAllItems() method of the COM object.

		HRESULT __stdcall RemoveAllItems();"

	<virtual stdcall: hresult 12>
	^self invalidCall!

removeItem: index
	"Invoke the RemoveItem() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 removeItem: index
		 count: VARIANT unspecified!

removeItem: index count: count
	"Invoke the RemoveItem() method of the COM object."

	^self
		RemoveItem: index
		count: count asVariant
!

RemoveItem: index count: count
	"Private - Invoke the RemoveItem() method of the COM object.

		HRESULT __stdcall RemoveItem(
			[in]long Index,
			[in, optional]VARIANT Count);"

	<virtual stdcall: hresult 13 sdword variant>
	^self invalidCall!

smallChange
	"Answer the <sdword> value of the 'SmallChange' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SmallChange: answer.
	^answer asObject
!

smallChange: rhs
	"Set the 'SmallChange' property of the receiver to the <sdword> value of the argument."

	self put_SmallChange: rhs
!

value
	"Answer the <sdword> value of the 'Value' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Value: answer.
	^answer asObject
!

value: rhs
	"Set the 'Value' property of the receiver to the <sdword> value of the argument."

	self put_Value: rhs
! !
!ExcelIControlFormat categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #addItem:!**auto generated**!methods!public! !
!ExcelIControlFormat categoriesFor: #addItem:index:!**auto generated**!methods!public! !
!ExcelIControlFormat categoriesFor: #AddItem:index:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #dropDownLines!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #dropDownLines:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_DropDownLines:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_LargeChange:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_LinkedCell:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_ListCount:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_ListFillRange:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_ListIndex:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_LockedText:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_Max:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_Min:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_MultiSelect:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_PrintObject:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_SmallChange:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #largeChange!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #largeChange:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #linkedCell!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #linkedCell:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #list!**auto generated**!methods!public! !
!ExcelIControlFormat categoriesFor: #list:!**auto generated**!methods!public! !
!ExcelIControlFormat categoriesFor: #List:rhs:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #listCount!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #listCount:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #listFillRange!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #listFillRange:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #listIndex!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #listIndex:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #lockedText!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #lockedText:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #max!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #max:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #min!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #min:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #multiSelect!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #multiSelect:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #put__Default:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_DropDownLines:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_LargeChange:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_LinkedCell:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_ListCount:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_ListFillRange:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_ListIndex:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_LockedText:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_Max:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_Min:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_MultiSelect:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_PrintObject:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_SmallChange:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #put_Value:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #removeAllItems!**auto generated**!methods!public! !
!ExcelIControlFormat categoriesFor: #RemoveAllItems!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #removeItem:!**auto generated**!methods!public! !
!ExcelIControlFormat categoriesFor: #removeItem:count:!**auto generated**!methods!public! !
!ExcelIControlFormat categoriesFor: #RemoveItem:count:!**auto generated**!COM Interfaces-IControlFormat!private! !
!ExcelIControlFormat categoriesFor: #smallChange!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #smallChange:!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIControlFormat categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelIControlFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IControlFormat'
		ExcelIControlFormat defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #AddItem:index:
			argumentTypes: 'bstr variant';
		defineFunction: #RemoveAllItems;
		defineFunction: #RemoveItem:count:
			argumentTypes: 'sdword variant';
		defineFunction: #get_DropDownLines:
			argumentTypes: 'sdword*';
		defineFunction: #put_DropDownLines:
			argumentTypes: 'sdword';
		defineFunction: #get_Enabled:
			argumentTypes: 'varbool*';
		defineFunction: #put_Enabled:
			argumentTypes: 'varbool';
		defineFunction: #get_LargeChange:
			argumentTypes: 'sdword*';
		defineFunction: #put_LargeChange:
			argumentTypes: 'sdword';
		defineFunction: #get_LinkedCell:
			argumentTypes: 'bstr*';
		defineFunction: #put_LinkedCell:
			argumentTypes: 'bstr';
		defineFunction: #List:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get_ListCount:
			argumentTypes: 'sdword*';
		defineFunction: #put_ListCount:
			argumentTypes: 'sdword';
		defineFunction: #get_ListFillRange:
			argumentTypes: 'bstr*';
		defineFunction: #put_ListFillRange:
			argumentTypes: 'bstr';
		defineFunction: #get_ListIndex:
			argumentTypes: 'sdword*';
		defineFunction: #put_ListIndex:
			argumentTypes: 'sdword';
		defineFunction: #get_LockedText:
			argumentTypes: 'varbool*';
		defineFunction: #put_LockedText:
			argumentTypes: 'varbool';
		defineFunction: #get_Max:
			argumentTypes: 'sdword*';
		defineFunction: #put_Max:
			argumentTypes: 'sdword';
		defineFunction: #get_Min:
			argumentTypes: 'sdword*';
		defineFunction: #put_Min:
			argumentTypes: 'sdword';
		defineFunction: #get_MultiSelect:
			argumentTypes: 'sdword*';
		defineFunction: #put_MultiSelect:
			argumentTypes: 'sdword';
		defineFunction: #get_PrintObject:
			argumentTypes: 'varbool*';
		defineFunction: #put_PrintObject:
			argumentTypes: 'varbool';
		defineFunction: #get_SmallChange:
			argumentTypes: 'sdword*';
		defineFunction: #put_SmallChange:
			argumentTypes: 'sdword';
		defineFunction: #get__Default:
			argumentTypes: 'sdword*';
		defineFunction: #put__Default:
			argumentTypes: 'sdword';
		defineFunction: #get_Value:
			argumentTypes: 'sdword*';
		defineFunction: #put_Value:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIControlFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIControlFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIControlFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

