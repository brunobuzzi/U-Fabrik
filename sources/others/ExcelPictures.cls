"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPictures
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPictures guid: (IID fromString: '{000208A7-0000-0000-C000-000000000046}')!
ExcelPictures comment: '<ExcelPictures> is a wrapper class generated for the dispatch interface ''Excel.Pictures'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208A7-0000-0000-C000-000000000046), 
	helpcontext(0x00020067), 
	hidden
]
dispinterface Pictures {
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
[id(0x00000080), propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000081), propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x00000067), propget, helpcontext(0x00010067)]
		VARIANT_BOOL Shadow();
[id(0x00000067), propput, helpcontext(0x00010067)]
		void Shadow(
			[in]VARIANT_BOOL arg1);
[id(0x00000105), propget, helpcontext(0x00010105)]
		BSTR Formula();
[id(0x00000105), propput, helpcontext(0x00010105)]
		void Formula(
			[in]BSTR arg1);
[id(0x000000b5), helpcontext(0x000100b5)]
		Picture* Add(
			[in]double Left,
			[in]double Top,
			[in]double Width,
			[in]double Height);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x0000002e), helpcontext(0x0001002e)]
		GroupObject* Group();
[id(0x000000fc), helpcontext(0x000100fc)]
		Picture* Insert(
			[in]BSTR Filename,
			[in, optional]VARIANT Converter);
[id(0x000000aa), helpcontext(0x000100aa)]
		IDispatch* Item(
			[in]VARIANT Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000d3), helpcontext(0x000100d3)]
		Picture* Paste(
			[in, optional]VARIANT Link);
};
'!
!ExcelPictures categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPictures methodsFor!

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

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	!

add: left top: top width: width height: height
	"Answer the <ExcelPicture> result of invoking the Add() method of the COM object."

	^ExcelPicture attachInterface: (self invokeId: 181 withArguments:
			((Array new: 4)
				basicAt: 1 put: left;
				basicAt: 2 put: top;
				basicAt: 3 put: width;
				basicAt: 4 put: height;
				yourself))
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
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

formula
	"Answer the <bstr> value of the 'Formula' property of the receiver.
		BSTR Formula"

	^(self getPropertyId: 261)
!

formula: arg1
	"Set the 'Formula' property of the receiver to the <bstr> value of the argument.
		void Formula"

	self setPropertyId: 261 value: arg1
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

insert: filename
	"Answer the <ExcelPicture> result of invoking the Insert() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 insert: filename
		 converter: VARIANT unspecified!

insert: filename converter: converter
	"Answer the <ExcelPicture> result of invoking the Insert() method of the COM object."

	^ExcelPicture attachInterface: (self invokeId: 252 with: filename with: converter)
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
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

paste
	"Answer the <ExcelPicture> result of invoking the Paste() method of the COM object.
	Default values are passed for all optional parameters."

	^self paste: VARIANT unspecified!

paste: link
	"Answer the <ExcelPicture> result of invoking the Paste() method of the COM object."

	^ExcelPicture attachInterface: (self invokeId: 211 with: link)
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

shadow
	"Answer the <varbool> value of the 'Shadow' property of the receiver.
		VARIANT_BOOL Shadow"

	^(self getPropertyId: 103)
!

shadow: arg1
	"Set the 'Shadow' property of the receiver to the <varbool> value of the argument.
		void Shadow"

	self setPropertyId: 103 value: arg1
!

shapeRange
	"Answer the <ExcelShapeRange> value of the 'ShapeRange' property of the receiver.
		ShapeRange* ShapeRange"

	^ExcelShapeRange attachInterface: (self getPropertyId: 1528)
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
!ExcelPictures categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #_dummy15!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #add:top:width:height:!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #border!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #group!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #height!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #insert:!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #insert:converter:!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPictures categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #left!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #paste!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #paste:!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #select!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelPictures categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #top!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #width!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelPictures categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelPictures class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPictures initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPictures class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

