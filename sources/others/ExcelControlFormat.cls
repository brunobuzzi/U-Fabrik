"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelControlFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelControlFormat guid: (IID fromString: '{00024440-0000-0000-C000-000000000046}')!
ExcelControlFormat comment: '<ExcelControlFormat> is a wrapper class generated for the dispatch interface ''Excel.ControlFormat'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024440-0000-0000-C000-000000000046), 
	helpcontext(0x000200d6)
]
dispinterface ControlFormat {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000353), helpcontext(0x00010353)]
		void AddItem(
			[in]BSTR Text,
			[in, optional]VARIANT Index);
[id(0x00000355), helpcontext(0x00010355)]
		void RemoveAllItems();
[id(0x00000354), helpcontext(0x00010354)]
		void RemoveItem(
			[in]long Index,
			[in, optional]VARIANT Count);
[id(0x00000350), propget, helpcontext(0x00010350)]
		long DropDownLines();
[id(0x00000350), propput, helpcontext(0x00010350)]
		void DropDownLines(
			[in]long arg1);
[id(0x00000258), propget, helpcontext(0x00010258)]
		VARIANT_BOOL Enabled();
[id(0x00000258), propput, helpcontext(0x00010258)]
		void Enabled(
			[in]VARIANT_BOOL arg1);
[id(0x0000034d), propget, helpcontext(0x0001034d)]
		long LargeChange();
[id(0x0000034d), propput, helpcontext(0x0001034d)]
		void LargeChange(
			[in]long arg1);
[id(0x00000422), propget, helpcontext(0x00010422)]
		BSTR LinkedCell();
[id(0x00000422), propput, helpcontext(0x00010422)]
		void LinkedCell(
			[in]BSTR arg1);
[id(0x0000035d), helpcontext(0x0001035d)]
		VARIANT List(
			[in, optional]VARIANT Index);
[id(0x00000351), propget, helpcontext(0x00010351)]
		long ListCount();
[id(0x00000351), propput, helpcontext(0x00010351)]
		void ListCount(
			[in]long arg1);
[id(0x0000034f), propget, helpcontext(0x0001034f)]
		BSTR ListFillRange();
[id(0x0000034f), propput, helpcontext(0x0001034f)]
		void ListFillRange(
			[in]BSTR arg1);
[id(0x00000352), propget, helpcontext(0x00010352)]
		long ListIndex();
[id(0x00000352), propput, helpcontext(0x00010352)]
		void ListIndex(
			[in]long arg1);
[id(0x00000268), propget, helpcontext(0x00010268)]
		VARIANT_BOOL LockedText();
[id(0x00000268), propput, helpcontext(0x00010268)]
		void LockedText(
			[in]VARIANT_BOOL arg1);
[id(0x0000034a), propget, helpcontext(0x0001034a)]
		long Max();
[id(0x0000034a), propput, helpcontext(0x0001034a)]
		void Max(
			[in]long arg1);
[id(0x0000034b), propget, helpcontext(0x0001034b)]
		long Min();
[id(0x0000034b), propput, helpcontext(0x0001034b)]
		void Min(
			[in]long arg1);
[id(0x00000020), propget, helpcontext(0x00010020)]
		long MultiSelect();
[id(0x00000020), propput, helpcontext(0x00010020)]
		void MultiSelect(
			[in]long arg1);
[id(0x0000026a), propget, helpcontext(0x0001026a)]
		VARIANT_BOOL PrintObject();
[id(0x0000026a), propput, helpcontext(0x0001026a)]
		void PrintObject(
			[in]VARIANT_BOOL arg1);
[id(0x0000034c), propget, helpcontext(0x0001034c)]
		long SmallChange();
[id(0x0000034c), propput, helpcontext(0x0001034c)]
		void SmallChange(
			[in]long arg1);
[id(0000000000), propget, helpcontext(0x00010000)]
		long _Default();
[id(0000000000), propput, helpcontext(0x00010000)]
		void _Default(
			[in]long arg1);
[id(0x00000006), propget, helpcontext(0x00010006)]
		long Value();
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in]long arg1);
};
'!
!ExcelControlFormat categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelControlFormat methodsFor!

_default
	"Answer the <sdword> value of the '_Default' property of the receiver.
		long _Default"

	^(self getPropertyId: 0)
!

_default: arg1
	"Set the '_Default' property of the receiver to the <sdword> value of the argument.
		void _Default"

	self setPropertyId: 0 value: arg1
!

addItem: text
	"Invoke the AddItem() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 addItem: text
		 index: VARIANT unspecified!

addItem: text index: index
	"Invoke the AddItem() method of the COM object."

	(self invokeId: 851 with: text with: index)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

dropDownLines
	"Answer the <sdword> value of the 'DropDownLines' property of the receiver.
		long DropDownLines"

	^(self getPropertyId: 848)
!

dropDownLines: arg1
	"Set the 'DropDownLines' property of the receiver to the <sdword> value of the argument.
		void DropDownLines"

	self setPropertyId: 848 value: arg1
!

enabled
	"Answer the <varbool> value of the 'Enabled' property of the receiver.
		VARIANT_BOOL Enabled"

	^(self getPropertyId: 600)
!

enabled: arg1
	"Set the 'Enabled' property of the receiver to the <varbool> value of the argument.
		void Enabled"

	self setPropertyId: 600 value: arg1
!

largeChange
	"Answer the <sdword> value of the 'LargeChange' property of the receiver.
		long LargeChange"

	^(self getPropertyId: 845)
!

largeChange: arg1
	"Set the 'LargeChange' property of the receiver to the <sdword> value of the argument.
		void LargeChange"

	self setPropertyId: 845 value: arg1
!

linkedCell
	"Answer the <bstr> value of the 'LinkedCell' property of the receiver.
		BSTR LinkedCell"

	^(self getPropertyId: 1058)
!

linkedCell: arg1
	"Set the 'LinkedCell' property of the receiver to the <bstr> value of the argument.
		void LinkedCell"

	self setPropertyId: 1058 value: arg1
!

list
	"Answer the <VARIANT> result of invoking the List() method of the COM object.
	Default values are passed for all optional parameters."

	^self list: VARIANT unspecified!

list: index
	"Answer the <VARIANT> result of invoking the List() method of the COM object."

	^(self invokeId: 861 with: index)
!

listCount
	"Answer the <sdword> value of the 'ListCount' property of the receiver.
		long ListCount"

	^(self getPropertyId: 849)
!

listCount: arg1
	"Set the 'ListCount' property of the receiver to the <sdword> value of the argument.
		void ListCount"

	self setPropertyId: 849 value: arg1
!

listFillRange
	"Answer the <bstr> value of the 'ListFillRange' property of the receiver.
		BSTR ListFillRange"

	^(self getPropertyId: 847)
!

listFillRange: arg1
	"Set the 'ListFillRange' property of the receiver to the <bstr> value of the argument.
		void ListFillRange"

	self setPropertyId: 847 value: arg1
!

listIndex
	"Answer the <sdword> value of the 'ListIndex' property of the receiver.
		long ListIndex"

	^(self getPropertyId: 850)
!

listIndex: arg1
	"Set the 'ListIndex' property of the receiver to the <sdword> value of the argument.
		void ListIndex"

	self setPropertyId: 850 value: arg1
!

lockedText
	"Answer the <varbool> value of the 'LockedText' property of the receiver.
		VARIANT_BOOL LockedText"

	^(self getPropertyId: 616)
!

lockedText: arg1
	"Set the 'LockedText' property of the receiver to the <varbool> value of the argument.
		void LockedText"

	self setPropertyId: 616 value: arg1
!

max
	"Answer the <sdword> value of the 'Max' property of the receiver.
		long Max"

	^(self getPropertyId: 842)
!

max: arg1
	"Set the 'Max' property of the receiver to the <sdword> value of the argument.
		void Max"

	self setPropertyId: 842 value: arg1
!

min
	"Answer the <sdword> value of the 'Min' property of the receiver.
		long Min"

	^(self getPropertyId: 843)
!

min: arg1
	"Set the 'Min' property of the receiver to the <sdword> value of the argument.
		void Min"

	self setPropertyId: 843 value: arg1
!

multiSelect
	"Answer the <sdword> value of the 'MultiSelect' property of the receiver.
		long MultiSelect"

	^(self getPropertyId: 32)
!

multiSelect: arg1
	"Set the 'MultiSelect' property of the receiver to the <sdword> value of the argument.
		void MultiSelect"

	self setPropertyId: 32 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

printObject
	"Answer the <varbool> value of the 'PrintObject' property of the receiver.
		VARIANT_BOOL PrintObject"

	^(self getPropertyId: 618)
!

printObject: arg1
	"Set the 'PrintObject' property of the receiver to the <varbool> value of the argument.
		void PrintObject"

	self setPropertyId: 618 value: arg1
!

removeAllItems
	"Invoke the RemoveAllItems() method of the COM object."

	(self invokeId: 853)
!

removeItem: index
	"Invoke the RemoveItem() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 removeItem: index
		 count: VARIANT unspecified!

removeItem: index count: count
	"Invoke the RemoveItem() method of the COM object."

	(self invokeId: 852 with: index with: count)
!

smallChange
	"Answer the <sdword> value of the 'SmallChange' property of the receiver.
		long SmallChange"

	^(self getPropertyId: 844)
!

smallChange: arg1
	"Set the 'SmallChange' property of the receiver to the <sdword> value of the argument.
		void SmallChange"

	self setPropertyId: 844 value: arg1
!

value
	"Answer the <sdword> value of the 'Value' property of the receiver.
		long Value"

	^(self getPropertyId: 6)
!

value: arg1
	"Set the 'Value' property of the receiver to the <sdword> value of the argument.
		void Value"

	self setPropertyId: 6 value: arg1
! !
!ExcelControlFormat categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #addItem:!**auto generated**!methods!public! !
!ExcelControlFormat categoriesFor: #addItem:index:!**auto generated**!methods!public! !
!ExcelControlFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #dropDownLines!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #dropDownLines:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #largeChange!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #largeChange:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #linkedCell!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #linkedCell:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #list!**auto generated**!methods!public! !
!ExcelControlFormat categoriesFor: #list:!**auto generated**!methods!public! !
!ExcelControlFormat categoriesFor: #listCount!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #listCount:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #listFillRange!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #listFillRange:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #listIndex!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #listIndex:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #lockedText!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #lockedText:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #max!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #max:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #min!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #min:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #multiSelect!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #multiSelect:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #removeAllItems!**auto generated**!methods!public! !
!ExcelControlFormat categoriesFor: #removeItem:!**auto generated**!methods!public! !
!ExcelControlFormat categoriesFor: #removeItem:count:!**auto generated**!methods!public! !
!ExcelControlFormat categoriesFor: #smallChange!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #smallChange:!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #value!**auto generated**!properties!public! !
!ExcelControlFormat categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelControlFormat class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelControlFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelControlFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

