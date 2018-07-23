"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelDropDowns
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDropDowns guid: (IID fromString: '{0002088C-0000-0000-C000-000000000046}')!
ExcelDropDowns comment: '<ExcelDropDowns> is a wrapper class generated for the dispatch interface ''Excel.DropDowns'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002088C-0000-0000-C000-000000000046), 
	helpcontext(0x0002004c), 
	hidden
]
dispinterface DropDowns {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00010003), hidden, restricted]
		void _Dummy3();
[id(0x0000025a), helpcontext(0x0001025a)]
		VARIANT BringToFront();
[id(0x00000227), helpcontext(0x00010227)]
		VARIANT Copy();
[id(0x000000d5), helpcontext(0x000100d5)]
		VARIANT CopyPicture(
			[in, defaultvalue(2)]XlPictureAppearance Appearance,
			[in, defaultvalue(-4147)]XlCopyPictureFormat Format);
[id(0x00000235), helpcontext(0x00010235)]
		VARIANT Cut();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x0000040f), helpcontext(0x0001040f)]
		IDispatch* Duplicate();
[id(0x00000258), propget, helpcontext(0x00010258)]
		VARIANT_BOOL Enabled();
[id(0x00000258), propput, helpcontext(0x00010258)]
		void Enabled(
			[in]VARIANT_BOOL arg1);
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		double Height();
[id(0x0000007b), propput, helpcontext(0x0001007b)]
		void Height(
			[in]double arg1);
[id(0x0001000c), hidden, restricted]
		void _Dummy12();
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		double Left();
[id(0x0000007f), propput, helpcontext(0x0001007f)]
		void Left(
			[in]double arg1);
[id(0x0000010d), propget, helpcontext(0x0001010d)]
		VARIANT_BOOL Locked();
[id(0x0000010d), propput, helpcontext(0x0001010d)]
		void Locked(
			[in]VARIANT_BOOL arg1);
[id(0x0001000f), hidden, restricted]
		void _Dummy15();
[id(0x00000254), hidden, propget, helpcontext(0x00010254)]
		BSTR OnAction();
[id(0x00000254), hidden, propput, helpcontext(0x00010254)]
		void OnAction(
			[in]BSTR arg1);
[id(0x00000269), propget, helpcontext(0x00010269)]
		VARIANT Placement();
[id(0x00000269), propput, helpcontext(0x00010269)]
		void Placement(
			[in]VARIANT arg1);
[id(0x0000026a), propget, helpcontext(0x0001026a)]
		VARIANT_BOOL PrintObject();
[id(0x0000026a), propput, helpcontext(0x0001026a)]
		void PrintObject(
			[in]VARIANT_BOOL arg1);
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select(
			[in, optional]VARIANT Replace);
[id(0x0000025d), helpcontext(0x0001025d)]
		VARIANT SendToBack();
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		double Top();
[id(0x0000007e), propput, helpcontext(0x0001007e)]
		void Top(
			[in]double arg1);
[id(0x00010016), hidden, restricted]
		void _Dummy22();
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		VARIANT_BOOL Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]VARIANT_BOOL arg1);
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		double Width();
[id(0x0000007a), propput, helpcontext(0x0001007a)]
		void Width(
			[in]double arg1);
[id(0x0000026e), propget, helpcontext(0x0001026e)]
		long ZOrder();
[id(0x000005f8), propget, helpcontext(0x000105f8)]
		ShapeRange* ShapeRange();
[id(0x00000353), helpcontext(0x00010353)]
		VARIANT AddItem(
			[in]VARIANT Text,
			[in, optional]VARIANT Index);
[id(0x00000462), propget, helpcontext(0x00010462)]
		VARIANT_BOOL Display3DShading();
[id(0x00000462), propput, helpcontext(0x00010462)]
		void Display3DShading(
			[in]VARIANT_BOOL arg1);
[id(0000000000), propget, helpcontext(0x00010000)]
		long _Default();
[id(0000000000), propput, helpcontext(0x00010000)]
		void _Default(
			[in]long arg1);
[id(0x00000422), propget, helpcontext(0x00010422)]
		BSTR LinkedCell();
[id(0x00000422), propput, helpcontext(0x00010422)]
		void LinkedCell(
			[in]BSTR arg1);
[id(0x0001001f), hidden, restricted]
		void _Dummy31();
[id(0x0000035d), propget, helpcontext(0x0001035d)]
		VARIANT List(
			[in, optional]VARIANT Index);
[id(0x0000035d), propput, helpcontext(0x0001035d)]
		void List(
			[in, optional]VARIANT Index,
			[in]VARIANT arg2);
[id(0x00010021), hidden, restricted]
		void _Dummy33();
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
[id(0x00010024), hidden, restricted]
		void _Dummy36();
[id(0x00000355), helpcontext(0x00010355)]
		VARIANT RemoveAllItems();
[id(0x00000354), helpcontext(0x00010354)]
		VARIANT RemoveItem(
			[in]long Index,
			[in, optional]VARIANT Count);
[id(0x00000463), propget, helpcontext(0x00010463)]
		VARIANT Selected(
			[in, optional]VARIANT Index);
[id(0x00000463), propput, helpcontext(0x00010463)]
		void Selected(
			[in, optional]VARIANT Index,
			[in]VARIANT arg2);
[id(0x00000006), propget, helpcontext(0x00010006)]
		long Value();
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in]long arg1);
[id(0x0000008b), propget, helpcontext(0x0001008b)]
		BSTR Caption();
[id(0x0000008b), propput, helpcontext(0x0001008b)]
		void Caption(
			[in]BSTR arg1);
[id(0x0000025b), propget, helpcontext(0x0001025b)]
		Characters* Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length);
[id(0x00000350), propget, helpcontext(0x00010350)]
		long DropDownLines();
[id(0x00000350), propput, helpcontext(0x00010350)]
		void DropDownLines(
			[in]long arg1);
[id(0x0000008a), propget, helpcontext(0x0001008a)]
		BSTR Text();
[id(0x0000008a), propput, helpcontext(0x0001008a)]
		void Text(
			[in]BSTR arg1);
[id(0x000000b5), helpcontext(0x000100b5)]
		DropDown* Add(
			[in]double Left,
			[in]double Top,
			[in]double Width,
			[in]double Height,
			[in, optional]VARIANT Editable);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x0000002e), helpcontext(0x0001002e)]
		GroupObject* Group();
[id(0x000000aa), helpcontext(0x000100aa)]
		IDispatch* Item(
			[in]VARIANT Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelDropDowns categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelDropDowns methodsFor!

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

_dummy12
	"Invoke the _Dummy12() method of the COM object."

	(self invokeId: 65548)
!

_dummy15
	"Invoke the _Dummy15() method of the COM object."

	(self invokeId: 65551)
!

_dummy22
	"Invoke the _Dummy22() method of the COM object."

	(self invokeId: 65558)
!

_dummy3
	"Invoke the _Dummy3() method of the COM object."

	(self invokeId: 65539)
!

_dummy31
	"Invoke the _Dummy31() method of the COM object."

	(self invokeId: 65567)
!

_dummy33
	"Invoke the _Dummy33() method of the COM object."

	(self invokeId: 65569)
!

_dummy36
	"Invoke the _Dummy36() method of the COM object."

	(self invokeId: 65572)
!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	!

add: left top: top width: width height: height
	"Answer the <ExcelDropDown> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: left
		 top: top
		 width: width
		 height: height
		 editable: VARIANT unspecified!

add: left top: top width: width height: height editable: editable
	"Answer the <ExcelDropDown> result of invoking the Add() method of the COM object."

	^ExcelDropDown attachInterface: (self invokeId: 181 withArguments:
			((Array new: 5)
				basicAt: 1 put: left;
				basicAt: 2 put: top;
				basicAt: 3 put: width;
				basicAt: 4 put: height;
				basicAt: 5 put: editable;
				yourself))
!

addItem: text
	"Answer the <VARIANT> result of invoking the AddItem() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addItem: text
		 index: VARIANT unspecified!

addItem: text index: index
	"Answer the <VARIANT> result of invoking the AddItem() method of the COM object."

	^(self invokeId: 851 with: text with: index)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

bringToFront
	"Answer the <VARIANT> result of invoking the BringToFront() method of the COM object."

	^(self invokeId: 602)
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver.
		BSTR Caption"

	^(self getPropertyId: 139)
!

caption: arg1
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument.
		void Caption"

	self setPropertyId: 139 value: arg1
!

characters
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver.
		Characters* Characters"

	^self
		 characters: VARIANT unspecified
		 length: VARIANT unspecified!

characters: start length: length
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver.
		Characters* Characters"

	^ExcelCharacters attachInterface: (self getPropertyId: 603
		 withArguments: ((Array new: 2)
				basicAt: 1 put: start;
				basicAt: 2 put: length;
				yourself)
		)
!

copy
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object."

	^(self invokeId: 551)
!

copyPicture
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copyPicture: 2
		 format: -4147!

copyPicture: appearance format: format
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object."

	^(self invokeId: 213 with: appearance with: format)
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver.
		long Count"

	^(self getPropertyId: 118)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

cut
	"Answer the <VARIANT> result of invoking the Cut() method of the COM object."

	^(self invokeId: 565)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

display3DShading
	"Answer the <varbool> value of the 'Display3DShading' property of the receiver.
		VARIANT_BOOL Display3DShading"

	^(self getPropertyId: 1122)
!

display3DShading: arg1
	"Set the 'Display3DShading' property of the receiver to the <varbool> value of the argument.
		void Display3DShading"

	self setPropertyId: 1122 value: arg1
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

duplicate
	"Answer the <IDispatch> result of invoking the Duplicate() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 1039)
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

group
	"Answer the <ExcelGroupObject> result of invoking the Group() method of the COM object."

	^ExcelGroupObject attachInterface: (self invokeId: 46)
!

height
	"Answer the <double> value of the 'Height' property of the receiver.
		double Height"

	^(self getPropertyId: 123)
!

height: arg1
	"Set the 'Height' property of the receiver to the <double> value of the argument.
		void Height"

	self setPropertyId: 123 value: arg1
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <IDispatch> result of invoking the Item() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 170 with: index)
!

left
	"Answer the <double> value of the 'Left' property of the receiver.
		double Left"

	^(self getPropertyId: 127)
!

left: arg1
	"Set the 'Left' property of the receiver to the <double> value of the argument.
		void Left"

	self setPropertyId: 127 value: arg1
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
	"Answer the <variant> value of the 'List' property of the receiver.
		VARIANT List"

	^self list: VARIANT unspecified!

list: index
	"Answer the <variant> value of the 'List' property of the receiver.
		VARIANT List"

	^(self getPropertyId: 861 item: index)
!

list: index _: arg2
	"Set the 'List' property of the receiver to the <variant> value of the argument.
		void List"

	self setPropertyId: 861 item: index value: arg2
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

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver.
		VARIANT_BOOL Locked"

	^(self getPropertyId: 269)
!

locked: arg1
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument.
		void Locked"

	self setPropertyId: 269 value: arg1
!

onAction
	"Answer the <bstr> value of the 'OnAction' property of the receiver.
		BSTR OnAction"

	^(self getPropertyId: 596)
!

onAction: arg1
	"Set the 'OnAction' property of the receiver to the <bstr> value of the argument.
		void OnAction"

	self setPropertyId: 596 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

placement
	"Answer the <variant> value of the 'Placement' property of the receiver.
		VARIANT Placement"

	^(self getPropertyId: 617)
!

placement: arg1
	"Set the 'Placement' property of the receiver to the <variant> value of the argument.
		void Placement"

	self setPropertyId: 617 value: arg1
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
	"Answer the <VARIANT> result of invoking the RemoveAllItems() method of the COM object."

	^(self invokeId: 853)
!

removeItem: index
	"Answer the <VARIANT> result of invoking the RemoveItem() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 removeItem: index
		 count: VARIANT unspecified!

removeItem: index count: count
	"Answer the <VARIANT> result of invoking the RemoveItem() method of the COM object."

	^(self invokeId: 852 with: index with: count)
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object.
	Default values are passed for all optional parameters."

	^self select: VARIANT unspecified!

select: replace
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235 with: replace)
!

selected
	"Answer the <variant> value of the 'Selected' property of the receiver.
		VARIANT Selected"

	^self selected: VARIANT unspecified!

selected: index
	"Answer the <variant> value of the 'Selected' property of the receiver.
		VARIANT Selected"

	^(self getPropertyId: 1123 item: index)
!

selected: index _: arg2
	"Set the 'Selected' property of the receiver to the <variant> value of the argument.
		void Selected"

	self setPropertyId: 1123 item: index value: arg2
!

sendToBack
	"Answer the <VARIANT> result of invoking the SendToBack() method of the COM object."

	^(self invokeId: 605)
!

shapeRange
	"Answer the <ExcelShapeRange> value of the 'ShapeRange' property of the receiver.
		ShapeRange* ShapeRange"

	^ExcelShapeRange attachInterface: (self getPropertyId: 1528)
!

text
	"Answer the <bstr> value of the 'Text' property of the receiver.
		BSTR Text"

	^(self getPropertyId: 138)
!

text: arg1
	"Set the 'Text' property of the receiver to the <bstr> value of the argument.
		void Text"

	self setPropertyId: 138 value: arg1
!

top
	"Answer the <double> value of the 'Top' property of the receiver.
		double Top"

	^(self getPropertyId: 126)
!

top: arg1
	"Set the 'Top' property of the receiver to the <double> value of the argument.
		void Top"

	self setPropertyId: 126 value: arg1
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
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver.
		VARIANT_BOOL Visible"

	^(self getPropertyId: 558)
!

visible: arg1
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument.
		void Visible"

	self setPropertyId: 558 value: arg1
!

width
	"Answer the <double> value of the 'Width' property of the receiver.
		double Width"

	^(self getPropertyId: 122)
!

width: arg1
	"Set the 'Width' property of the receiver to the <double> value of the argument.
		void Width"

	self setPropertyId: 122 value: arg1
!

zOrder
	"Answer the <sdword> value of the 'ZOrder' property of the receiver.
		long ZOrder"

	^(self getPropertyId: 622)
! !
!ExcelDropDowns categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #_dummy15!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #_dummy31!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #_dummy33!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #_dummy36!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #add:top:width:height:!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #add:top:width:height:editable:!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #addItem:!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #addItem:index:!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #application!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #count!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #display3DShading!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #display3DShading:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #dropDownLines!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #dropDownLines:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #group!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #height!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelDropDowns categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #left!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #linkedCell!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #linkedCell:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #list!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #list:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #list:_:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #listFillRange!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #listFillRange:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #listIndex!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #listIndex:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #removeAllItems!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #removeItem:!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #removeItem:count:!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #select!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #selected!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #selected:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #selected:_:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelDropDowns categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #text!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #top!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #value!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #width!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelDropDowns categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelDropDowns class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDropDowns initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDropDowns class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

