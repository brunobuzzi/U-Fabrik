"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSpinner
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSpinner guid: (IID fromString: '{0002088D-0000-0000-C000-000000000046}')!
ExcelSpinner comment: '<ExcelSpinner> is a wrapper class generated for the dispatch interface ''Excel.Spinner'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002088D-0000-0000-C000-000000000046), 
	helpcontext(0x0002004d), 
	hidden
]
dispinterface Spinner {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000267), propget, helpcontext(0x00010267)]
		Range* BottomRightCell();
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
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
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
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
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
[id(0x0000026c), propget, helpcontext(0x0001026c)]
		Range* TopLeftCell();
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
[id(0000000000), propget, helpcontext(0x00010000)]
		long _Default();
[id(0000000000), propput, helpcontext(0x00010000)]
		void _Default(
			[in]long arg1);
[id(0x00000462), propget, helpcontext(0x00010462)]
		VARIANT_BOOL Display3DShading();
[id(0x00000462), propput, helpcontext(0x00010462)]
		void Display3DShading(
			[in]VARIANT_BOOL arg1);
[id(0x00000422), propget, helpcontext(0x00010422)]
		BSTR LinkedCell();
[id(0x00000422), propput, helpcontext(0x00010422)]
		void LinkedCell(
			[in]BSTR arg1);
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
[id(0x0000034c), propget, helpcontext(0x0001034c)]
		long SmallChange();
[id(0x0000034c), propput, helpcontext(0x0001034c)]
		void SmallChange(
			[in]long arg1);
[id(0x00000006), propget, helpcontext(0x00010006)]
		long Value();
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in]long arg1);
};
'!
!ExcelSpinner categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSpinner methodsFor!

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

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

bottomRightCell
	"Answer the <ExcelRange> value of the 'BottomRightCell' property of the receiver.
		Range* BottomRightCell"

	^ExcelRange attachInterface: (self getPropertyId: 615)
!

bringToFront
	"Answer the <VARIANT> result of invoking the BringToFront() method of the COM object."

	^(self invokeId: 602)
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

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
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

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
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

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object.
	Default values are passed for all optional parameters."

	^self select: VARIANT unspecified!

select: replace
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235 with: replace)
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

topLeftCell
	"Answer the <ExcelRange> value of the 'TopLeftCell' property of the receiver.
		Range* TopLeftCell"

	^ExcelRange attachInterface: (self getPropertyId: 620)
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
!ExcelSpinner categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #bottomRightCell!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelSpinner categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelSpinner categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelSpinner categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelSpinner categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelSpinner categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelSpinner categoriesFor: #display3DShading!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #display3DShading:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelSpinner categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #height!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #index!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #left!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #linkedCell!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #linkedCell:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #max!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #max:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #min!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #min:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #name!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #select!**auto generated**!methods!public! !
!ExcelSpinner categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelSpinner categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelSpinner categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #smallChange!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #smallChange:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #top!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #topLeftCell!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #value!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #width!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelSpinner categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelSpinner class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSpinner initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSpinner class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

