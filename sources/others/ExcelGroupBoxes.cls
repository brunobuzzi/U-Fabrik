"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelGroupBoxes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelGroupBoxes guid: (IID fromString: '{0002088A-0000-0000-C000-000000000046}')!
ExcelGroupBoxes comment: '<ExcelGroupBoxes> is a wrapper class generated for the dispatch interface ''Excel.GroupBoxes'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002088A-0000-0000-C000-000000000046), 
	helpcontext(0x0002004a), 
	hidden
]
dispinterface GroupBoxes {
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
[id(0x0000008b), propget, helpcontext(0x0001008b)]
		BSTR Caption();
[id(0x0000008b), propput, helpcontext(0x0001008b)]
		void Caption(
			[in]BSTR arg1);
[id(0x0000025b), propget, helpcontext(0x0001025b)]
		Characters* Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length);
[id(0x000001f9), helpcontext(0x000101f9)]
		VARIANT CheckSpelling(
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in, optional]VARIANT AlwaysSuggest,
			[in, optional]VARIANT SpellLang);
[id(0x00000268), propget, helpcontext(0x00010268)]
		VARIANT_BOOL LockedText();
[id(0x00000268), propput, helpcontext(0x00010268)]
		void LockedText(
			[in]VARIANT_BOOL arg1);
[id(0x0000008a), propget, helpcontext(0x0001008a)]
		BSTR Text();
[id(0x0000008a), propput, helpcontext(0x0001008a)]
		void Text(
			[in]BSTR arg1);
[id(0x0000034e), propget, helpcontext(0x0001034e)]
		VARIANT Accelerator();
[id(0x0000034e), propput, helpcontext(0x0001034e)]
		void Accelerator(
			[in]VARIANT arg1);
[id(0x00000462), propget, helpcontext(0x00010462)]
		VARIANT_BOOL Display3DShading();
[id(0x00000462), propput, helpcontext(0x00010462)]
		void Display3DShading(
			[in]VARIANT_BOOL arg1);
[id(0x00000461), propget, helpcontext(0x00010461)]
		VARIANT PhoneticAccelerator();
[id(0x00000461), propput, helpcontext(0x00010461)]
		void PhoneticAccelerator(
			[in]VARIANT arg1);
[id(0x000000b5), helpcontext(0x000100b5)]
		GroupBox* Add(
			[in]double Left,
			[in]double Top,
			[in]double Width,
			[in]double Height);
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
!ExcelGroupBoxes categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelGroupBoxes methodsFor!

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

accelerator
	"Answer the <variant> value of the 'Accelerator' property of the receiver.
		VARIANT Accelerator"

	^(self getPropertyId: 846)
!

accelerator: arg1
	"Set the 'Accelerator' property of the receiver to the <variant> value of the argument.
		void Accelerator"

	self setPropertyId: 846 value: arg1
!

add: left top: top width: width height: height
	"Answer the <ExcelGroupBox> result of invoking the Add() method of the COM object."

	^ExcelGroupBox attachInterface: (self invokeId: 181 withArguments:
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

checkSpelling
	"Answer the <VARIANT> result of invoking the CheckSpelling() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 checkSpelling: VARIANT unspecified
		 ignoreUppercase: VARIANT unspecified
		 alwaysSuggest: VARIANT unspecified
		 spellLang: VARIANT unspecified!

checkSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang
	"Answer the <VARIANT> result of invoking the CheckSpelling() method of the COM object."

	^(self invokeId: 505 withArguments:
			((Array new: 4)
				basicAt: 1 put: customDictionary;
				basicAt: 2 put: ignoreUppercase;
				basicAt: 3 put: alwaysSuggest;
				basicAt: 4 put: spellLang;
				yourself))
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

phoneticAccelerator
	"Answer the <variant> value of the 'PhoneticAccelerator' property of the receiver.
		VARIANT PhoneticAccelerator"

	^(self getPropertyId: 1121)
!

phoneticAccelerator: arg1
	"Set the 'PhoneticAccelerator' property of the receiver to the <variant> value of the argument.
		void PhoneticAccelerator"

	self setPropertyId: 1121 value: arg1
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
!ExcelGroupBoxes categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #_dummy15!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #accelerator!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #accelerator:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #add:top:width:height:!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #application!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #count!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #display3DShading!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #display3DShading:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #group!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #height!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelGroupBoxes categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #left!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #lockedText!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #lockedText:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #phoneticAccelerator!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #phoneticAccelerator:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #select!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelGroupBoxes categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #text!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #top!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #width!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelGroupBoxes categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelGroupBoxes class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelGroupBoxes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelGroupBoxes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

