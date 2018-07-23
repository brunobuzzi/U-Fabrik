"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelGroupObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelGroupObject guid: (IID fromString: '{00020898-0000-0000-C000-000000000046}')!
ExcelGroupObject comment: '<ExcelGroupObject> is a wrapper class generated for the dispatch interface ''Excel.GroupObject'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020898-0000-0000-C000-000000000046), 
	helpcontext(0x00020058), 
	hidden
]
dispinterface GroupObject {
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
[id(0x0001001b), hidden, restricted]
		void _Dummy27();
[id(0x0001001c), hidden, restricted]
		void _Dummy28();
[id(0x00000427), propget, helpcontext(0x00010427)]
		VARIANT_BOOL AddIndent();
[id(0x00000427), propput, helpcontext(0x00010427)]
		void AddIndent(
			[in]VARIANT_BOOL arg1);
[id(0x0001001e), hidden, restricted]
		void _Dummy30();
[id(0x00000263), propget, helpcontext(0x00010263)]
		VARIANT ArrowHeadLength();
[id(0x00000263), propput, helpcontext(0x00010263)]
		void ArrowHeadLength(
			[in]VARIANT arg1);
[id(0x00000264), propget, helpcontext(0x00010264)]
		VARIANT ArrowHeadStyle();
[id(0x00000264), propput, helpcontext(0x00010264)]
		void ArrowHeadStyle(
			[in]VARIANT arg1);
[id(0x00000265), propget, helpcontext(0x00010265)]
		VARIANT ArrowHeadWidth();
[id(0x00000265), propput, helpcontext(0x00010265)]
		void ArrowHeadWidth(
			[in]VARIANT arg1);
[id(0x00000266), propget, helpcontext(0x00010266)]
		VARIANT_BOOL AutoSize();
[id(0x00000266), propput, helpcontext(0x00010266)]
		void AutoSize(
			[in]VARIANT_BOOL arg1);
[id(0x00000080), propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00010024), hidden, restricted]
		void _Dummy36();
[id(0x00010025), hidden, restricted]
		void _Dummy37();
[id(0x00010026), hidden, restricted]
		void _Dummy38();
[id(0x000001f9), helpcontext(0x000101f9)]
		VARIANT CheckSpelling(
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in, optional]VARIANT AlwaysSuggest,
			[in, optional]VARIANT SpellLang);
[id(0000000000), propget, helpcontext(0x00010000)]
		long _Default();
[id(0000000000), propput, helpcontext(0x00010000)]
		void _Default(
			[in]long arg1);
[id(0x00010029), hidden, restricted]
		void _Dummy41();
[id(0x0001002a), hidden, restricted]
		void _Dummy42();
[id(0x0001002b), hidden, restricted]
		void _Dummy43();
[id(0x0001002c), hidden, restricted]
		void _Dummy44();
[id(0x0001002d), hidden, restricted]
		void _Dummy45();
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x0001002f), hidden, restricted]
		void _Dummy47();
[id(0x00010030), hidden, restricted]
		void _Dummy48();
[id(0x00000088), propget, helpcontext(0x00010088)]
		VARIANT HorizontalAlignment();
[id(0x00000088), propput, helpcontext(0x00010088)]
		void HorizontalAlignment(
			[in]VARIANT arg1);
[id(0x00010032), hidden, restricted]
		void _Dummy50();
[id(0x00000081), propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x00010034), hidden, restricted]
		void _Dummy52();
[id(0x00010035), hidden, restricted]
		void _Dummy53();
[id(0x00010036), hidden, restricted]
		void _Dummy54();
[id(0x00010037), hidden, restricted]
		void _Dummy55();
[id(0x00010038), hidden, restricted]
		void _Dummy56();
[id(0x00010039), hidden, restricted]
		void _Dummy57();
[id(0x0001003a), hidden, restricted]
		void _Dummy58();
[id(0x0001003b), hidden, restricted]
		void _Dummy59();
[id(0x0001003c), hidden, restricted]
		void _Dummy60();
[id(0x0001003d), hidden, restricted]
		void _Dummy61();
[id(0x0001003e), hidden, restricted]
		void _Dummy62();
[id(0x0001003f), hidden, restricted]
		void _Dummy63();
[id(0x00000086), propget, helpcontext(0x00010086)]
		VARIANT Orientation();
[id(0x00000086), propput, helpcontext(0x00010086)]
		void Orientation(
			[in]VARIANT arg1);
[id(0x00010041), hidden, restricted]
		void _Dummy65();
[id(0x00010042), hidden, restricted]
		void _Dummy66();
[id(0x00010043), hidden, restricted]
		void _Dummy67();
[id(0x00010044), hidden, restricted]
		void _Dummy68();
[id(0x0000026b), propget, helpcontext(0x0001026b)]
		VARIANT_BOOL RoundedCorners();
[id(0x0000026b), propput, helpcontext(0x0001026b)]
		void RoundedCorners(
			[in]VARIANT_BOOL arg1);
[id(0x00010046), hidden, restricted]
		void _Dummy70();
[id(0x00000067), propget, helpcontext(0x00010067)]
		VARIANT_BOOL Shadow();
[id(0x00000067), propput, helpcontext(0x00010067)]
		void Shadow(
			[in]VARIANT_BOOL arg1);
[id(0x00010048), hidden, restricted]
		void _Dummy72();
[id(0x00010049), hidden, restricted]
		void _Dummy73();
[id(0x000000f4), helpcontext(0x000100f4)]
		IDispatch* Ungroup();
[id(0x0001004b), hidden, restricted]
		void _Dummy75();
[id(0x00000089), propget, helpcontext(0x00010089)]
		VARIANT VerticalAlignment();
[id(0x00000089), propput, helpcontext(0x00010089)]
		void VerticalAlignment(
			[in]VARIANT arg1);
[id(0x0001004d), hidden, restricted]
		void _Dummy77();
[id(0x000003cf), propget, helpcontext(0x000103cf)]
		long ReadingOrder();
[id(0x000003cf), propput, helpcontext(0x000103cf)]
		void ReadingOrder(
			[in]long arg1);
};
'!
!ExcelGroupObject categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelGroupObject methodsFor!

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

_dummy27
	"Invoke the _Dummy27() method of the COM object."

	(self invokeId: 65563)
!

_dummy28
	"Invoke the _Dummy28() method of the COM object."

	(self invokeId: 65564)
!

_dummy30
	"Invoke the _Dummy30() method of the COM object."

	(self invokeId: 65566)
!

_dummy36
	"Invoke the _Dummy36() method of the COM object."

	(self invokeId: 65572)
!

_dummy37
	"Invoke the _Dummy37() method of the COM object."

	(self invokeId: 65573)
!

_dummy38
	"Invoke the _Dummy38() method of the COM object."

	(self invokeId: 65574)
!

_dummy41
	"Invoke the _Dummy41() method of the COM object."

	(self invokeId: 65577)
!

_dummy42
	"Invoke the _Dummy42() method of the COM object."

	(self invokeId: 65578)
!

_dummy43
	"Invoke the _Dummy43() method of the COM object."

	(self invokeId: 65579)
!

_dummy44
	"Invoke the _Dummy44() method of the COM object."

	(self invokeId: 65580)
!

_dummy45
	"Invoke the _Dummy45() method of the COM object."

	(self invokeId: 65581)
!

_dummy47
	"Invoke the _Dummy47() method of the COM object."

	(self invokeId: 65583)
!

_dummy48
	"Invoke the _Dummy48() method of the COM object."

	(self invokeId: 65584)
!

_dummy50
	"Invoke the _Dummy50() method of the COM object."

	(self invokeId: 65586)
!

_dummy52
	"Invoke the _Dummy52() method of the COM object."

	(self invokeId: 65588)
!

_dummy53
	"Invoke the _Dummy53() method of the COM object."

	(self invokeId: 65589)
!

_dummy54
	"Invoke the _Dummy54() method of the COM object."

	(self invokeId: 65590)
!

_dummy55
	"Invoke the _Dummy55() method of the COM object."

	(self invokeId: 65591)
!

_dummy56
	"Invoke the _Dummy56() method of the COM object."

	(self invokeId: 65592)
!

_dummy57
	"Invoke the _Dummy57() method of the COM object."

	(self invokeId: 65593)
!

_dummy58
	"Invoke the _Dummy58() method of the COM object."

	(self invokeId: 65594)
!

_dummy59
	"Invoke the _Dummy59() method of the COM object."

	(self invokeId: 65595)
!

_dummy60
	"Invoke the _Dummy60() method of the COM object."

	(self invokeId: 65596)
!

_dummy61
	"Invoke the _Dummy61() method of the COM object."

	(self invokeId: 65597)
!

_dummy62
	"Invoke the _Dummy62() method of the COM object."

	(self invokeId: 65598)
!

_dummy63
	"Invoke the _Dummy63() method of the COM object."

	(self invokeId: 65599)
!

_dummy65
	"Invoke the _Dummy65() method of the COM object."

	(self invokeId: 65601)
!

_dummy66
	"Invoke the _Dummy66() method of the COM object."

	(self invokeId: 65602)
!

_dummy67
	"Invoke the _Dummy67() method of the COM object."

	(self invokeId: 65603)
!

_dummy68
	"Invoke the _Dummy68() method of the COM object."

	(self invokeId: 65604)
!

_dummy70
	"Invoke the _Dummy70() method of the COM object."

	(self invokeId: 65606)
!

_dummy72
	"Invoke the _Dummy72() method of the COM object."

	(self invokeId: 65608)
!

_dummy73
	"Invoke the _Dummy73() method of the COM object."

	(self invokeId: 65609)
!

_dummy75
	"Invoke the _Dummy75() method of the COM object."

	(self invokeId: 65611)
!

_dummy77
	"Invoke the _Dummy77() method of the COM object."

	(self invokeId: 65613)
!

addIndent
	"Answer the <varbool> value of the 'AddIndent' property of the receiver.
		VARIANT_BOOL AddIndent"

	^(self getPropertyId: 1063)
!

addIndent: arg1
	"Set the 'AddIndent' property of the receiver to the <varbool> value of the argument.
		void AddIndent"

	self setPropertyId: 1063 value: arg1
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

arrowHeadLength
	"Answer the <variant> value of the 'ArrowHeadLength' property of the receiver.
		VARIANT ArrowHeadLength"

	^(self getPropertyId: 611)
!

arrowHeadLength: arg1
	"Set the 'ArrowHeadLength' property of the receiver to the <variant> value of the argument.
		void ArrowHeadLength"

	self setPropertyId: 611 value: arg1
!

arrowHeadStyle
	"Answer the <variant> value of the 'ArrowHeadStyle' property of the receiver.
		VARIANT ArrowHeadStyle"

	^(self getPropertyId: 612)
!

arrowHeadStyle: arg1
	"Set the 'ArrowHeadStyle' property of the receiver to the <variant> value of the argument.
		void ArrowHeadStyle"

	self setPropertyId: 612 value: arg1
!

arrowHeadWidth
	"Answer the <variant> value of the 'ArrowHeadWidth' property of the receiver.
		VARIANT ArrowHeadWidth"

	^(self getPropertyId: 613)
!

arrowHeadWidth: arg1
	"Set the 'ArrowHeadWidth' property of the receiver to the <variant> value of the argument.
		void ArrowHeadWidth"

	self setPropertyId: 613 value: arg1
!

autoSize
	"Answer the <varbool> value of the 'AutoSize' property of the receiver.
		VARIANT_BOOL AutoSize"

	^(self getPropertyId: 614)
!

autoSize: arg1
	"Set the 'AutoSize' property of the receiver to the <varbool> value of the argument.
		void AutoSize"

	self setPropertyId: 614 value: arg1
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
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

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
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

horizontalAlignment
	"Answer the <variant> value of the 'HorizontalAlignment' property of the receiver.
		VARIANT HorizontalAlignment"

	^(self getPropertyId: 136)
!

horizontalAlignment: arg1
	"Set the 'HorizontalAlignment' property of the receiver to the <variant> value of the argument.
		void HorizontalAlignment"

	self setPropertyId: 136 value: arg1
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
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

orientation
	"Answer the <variant> value of the 'Orientation' property of the receiver.
		VARIANT Orientation"

	^(self getPropertyId: 134)
!

orientation: arg1
	"Set the 'Orientation' property of the receiver to the <variant> value of the argument.
		void Orientation"

	self setPropertyId: 134 value: arg1
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

readingOrder
	"Answer the <sdword> value of the 'ReadingOrder' property of the receiver.
		long ReadingOrder"

	^(self getPropertyId: 975)
!

readingOrder: arg1
	"Set the 'ReadingOrder' property of the receiver to the <sdword> value of the argument.
		void ReadingOrder"

	self setPropertyId: 975 value: arg1
!

roundedCorners
	"Answer the <varbool> value of the 'RoundedCorners' property of the receiver.
		VARIANT_BOOL RoundedCorners"

	^(self getPropertyId: 619)
!

roundedCorners: arg1
	"Set the 'RoundedCorners' property of the receiver to the <varbool> value of the argument.
		void RoundedCorners"

	self setPropertyId: 619 value: arg1
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

topLeftCell
	"Answer the <ExcelRange> value of the 'TopLeftCell' property of the receiver.
		Range* TopLeftCell"

	^ExcelRange attachInterface: (self getPropertyId: 620)
!

ungroup
	"Answer the <IDispatch> result of invoking the Ungroup() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 244)
!

value
	"Answer the <sdword> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
!

value: arg1
	"Set the '_Default' property of the receiver to the <sdword> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: arg1
!

verticalAlignment
	"Answer the <variant> value of the 'VerticalAlignment' property of the receiver.
		VARIANT VerticalAlignment"

	^(self getPropertyId: 137)
!

verticalAlignment: arg1
	"Set the 'VerticalAlignment' property of the receiver to the <variant> value of the argument.
		void VerticalAlignment"

	self setPropertyId: 137 value: arg1
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
!ExcelGroupObject categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #_dummy27!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy28!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy30!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy36!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy37!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy38!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy41!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy42!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy43!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy44!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy45!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy47!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy48!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy50!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy52!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy53!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy54!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy55!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy56!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy57!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy58!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy59!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy60!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy61!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy62!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy63!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy65!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy66!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy67!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy68!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy70!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy72!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy73!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy75!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #_dummy77!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #addIndent!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #addIndent:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #application!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #arrowHeadLength!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #arrowHeadLength:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #arrowHeadStyle!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #arrowHeadStyle:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #arrowHeadWidth!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #arrowHeadWidth:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #autoSize!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #autoSize:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #border!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #bottomRightCell!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #font!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #height!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #index!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #left!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #name!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #roundedCorners!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #roundedCorners:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #select!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #top!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #topLeftCell!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #ungroup!**auto generated**!methods!public! !
!ExcelGroupObject categoriesFor: #value!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #width!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelGroupObject categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelGroupObject class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelGroupObject initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelGroupObject class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

