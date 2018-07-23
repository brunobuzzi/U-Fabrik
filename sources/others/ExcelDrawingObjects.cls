"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelDrawingObjects
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDrawingObjects guid: (IID fromString: '{0002086F-0000-0000-C000-000000000046}')!
ExcelDrawingObjects comment: '<ExcelDrawingObjects> is a wrapper class generated for the dispatch interface ''Excel.DrawingObjects'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002086F-0000-0000-C000-000000000046), 
	helpcontext(0x0002002f), 
	hidden
]
dispinterface DrawingObjects {
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
[id(0x0000034e), propget, helpcontext(0x0001034e)]
		VARIANT Accelerator();
[id(0x0000034e), propput, helpcontext(0x0001034e)]
		void Accelerator(
			[in]VARIANT arg1);
[id(0x0001001c), hidden, restricted]
		void _Dummy28();
[id(0x00000427), propget, helpcontext(0x00010427)]
		VARIANT_BOOL AddIndent();
[id(0x00000427), propput, helpcontext(0x00010427)]
		void AddIndent(
			[in]VARIANT_BOOL arg1);
[id(0x00000353), helpcontext(0x00010353)]
		VARIANT AddItem(
			[in]VARIANT Text,
			[in, optional]VARIANT Index);
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
[id(0x0000035a), propget, helpcontext(0x0001035a)]
		VARIANT_BOOL CancelButton();
[id(0x0000035a), propput, helpcontext(0x0001035a)]
		void CancelButton(
			[in]VARIANT_BOOL arg1);
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
[id(0000000000), propget, helpcontext(0x00010000)]
		long _Default();
[id(0000000000), propput, helpcontext(0x00010000)]
		void _Default(
			[in]long arg1);
[id(0x00000359), propget, helpcontext(0x00010359)]
		VARIANT_BOOL DefaultButton();
[id(0x00000359), propput, helpcontext(0x00010359)]
		void DefaultButton(
			[in]VARIANT_BOOL arg1);
[id(0x0000035b), propget, helpcontext(0x0001035b)]
		VARIANT_BOOL DismissButton();
[id(0x0000035b), propput, helpcontext(0x0001035b)]
		void DismissButton(
			[in]VARIANT_BOOL arg1);
[id(0x00000462), propget, helpcontext(0x00010462)]
		VARIANT_BOOL Display3DShading();
[id(0x00000462), propput, helpcontext(0x00010462)]
		void Display3DShading(
			[in]VARIANT_BOOL arg1);
[id(0x0000039a), propget, helpcontext(0x0001039a)]
		VARIANT_BOOL DisplayVerticalScrollBar();
[id(0x0000039a), propput, helpcontext(0x0001039a)]
		void DisplayVerticalScrollBar(
			[in]VARIANT_BOOL arg1);
[id(0x00000350), propget, helpcontext(0x00010350)]
		long DropDownLines();
[id(0x00000350), propput, helpcontext(0x00010350)]
		void DropDownLines(
			[in]long arg1);
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x0001002f), hidden, restricted]
		void _Dummy47();
[id(0x0000035c), propget, helpcontext(0x0001035c)]
		VARIANT_BOOL HelpButton();
[id(0x0000035c), propput, helpcontext(0x0001035c)]
		void HelpButton(
			[in]VARIANT_BOOL arg1);
[id(0x00000088), propget, helpcontext(0x00010088)]
		VARIANT HorizontalAlignment();
[id(0x00000088), propput, helpcontext(0x00010088)]
		void HorizontalAlignment(
			[in]VARIANT arg1);
[id(0x00000356), propget, helpcontext(0x00010356)]
		long InputType();
[id(0x00000356), propput, helpcontext(0x00010356)]
		void InputType(
			[in]long arg1);
[id(0x00000081), propget, helpcontext(0x00010081)]
		Interior* Interior();
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
[id(0x00010036), hidden, restricted]
		void _Dummy54();
[id(0x0000035d), helpcontext(0x0001035d)]
		VARIANT List(
			[in, optional]VARIANT Index);
[id(0x00010038), hidden, restricted]
		void _Dummy56();
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
[id(0x00000357), propget, helpcontext(0x00010357)]
		VARIANT_BOOL MultiLine();
[id(0x00000357), propput, helpcontext(0x00010357)]
		void MultiLine(
			[in]VARIANT_BOOL arg1);
[id(0x00000020), propget, helpcontext(0x00010020)]
		VARIANT_BOOL MultiSelect();
[id(0x00000020), propput, helpcontext(0x00010020)]
		void MultiSelect(
			[in]VARIANT_BOOL arg1);
[id(0x00000086), propget, helpcontext(0x00010086)]
		VARIANT Orientation();
[id(0x00000086), propput, helpcontext(0x00010086)]
		void Orientation(
			[in]VARIANT arg1);
[id(0x00000461), propget, helpcontext(0x00010461)]
		VARIANT PhoneticAccelerator();
[id(0x00000461), propput, helpcontext(0x00010461)]
		void PhoneticAccelerator(
			[in]VARIANT arg1);
[id(0x00000355), helpcontext(0x00010355)]
		VARIANT RemoveAllItems();
[id(0x00000354), helpcontext(0x00010354)]
		VARIANT RemoveItem(
			[in]long Index,
			[in, optional]VARIANT Count);
[id(0x0000025c), helpcontext(0x0001025c)]
		VARIANT Reshape(
			[in]long Vertex,
			[in]VARIANT Insert,
			[in, optional]VARIANT Left,
			[in, optional]VARIANT Top);
[id(0x0000026b), propget, helpcontext(0x0001026b)]
		VARIANT_BOOL RoundedCorners();
[id(0x0000026b), propput, helpcontext(0x0001026b)]
		void RoundedCorners(
			[in]VARIANT_BOOL arg1);
[id(0x00000463), helpcontext(0x00010463)]
		VARIANT Selected(
			[in, optional]VARIANT Index);
[id(0x00000067), propget, helpcontext(0x00010067)]
		VARIANT_BOOL Shadow();
[id(0x00000067), propput, helpcontext(0x00010067)]
		void Shadow(
			[in]VARIANT_BOOL arg1);
[id(0x0000034c), propget, helpcontext(0x0001034c)]
		long SmallChange();
[id(0x0000034c), propput, helpcontext(0x0001034c)]
		void SmallChange(
			[in]long arg1);
[id(0x0000008a), propget, helpcontext(0x0001008a)]
		BSTR Text();
[id(0x0000008a), propput, helpcontext(0x0001008a)]
		void Text(
			[in]BSTR arg1);
[id(0x000000f4), helpcontext(0x000100f4)]
		IDispatch* Ungroup();
[id(0x00000006), propget, helpcontext(0x00010006)]
		long Value();
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in]long arg1);
[id(0x00000089), propget, helpcontext(0x00010089)]
		VARIANT VerticalAlignment();
[id(0x00000089), propput, helpcontext(0x00010089)]
		void VerticalAlignment(
			[in]VARIANT arg1);
[id(0x0000026d), helpcontext(0x0001026d)]
		VARIANT Vertices(
			[in, optional]VARIANT Index1,
			[in, optional]VARIANT Index2);
[id(0x000003cf), propget, helpcontext(0x000103cf)]
		long ReadingOrder();
[id(0x000003cf), propput, helpcontext(0x000103cf)]
		void ReadingOrder(
			[in]long arg1);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), helpcontext(0x000100aa)]
		IDispatch* Item(
			[in]VARIANT Index);
[id(0x0000002e), helpcontext(0x0001002e)]
		GroupObject* Group();
[id(0x00000358), helpcontext(0x00010358)]
		VARIANT LinkCombo(
			[in, optional]VARIANT Link);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelDrawingObjects categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelDrawingObjects methodsFor!

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

_dummy28
	"Invoke the _Dummy28() method of the COM object."

	(self invokeId: 65564)
!

_dummy3
	"Invoke the _Dummy3() method of the COM object."

	(self invokeId: 65539)
!

_dummy47
	"Invoke the _Dummy47() method of the COM object."

	(self invokeId: 65583)
!

_dummy54
	"Invoke the _Dummy54() method of the COM object."

	(self invokeId: 65590)
!

_dummy56
	"Invoke the _Dummy56() method of the COM object."

	(self invokeId: 65592)
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

bringToFront
	"Answer the <VARIANT> result of invoking the BringToFront() method of the COM object."

	^(self invokeId: 602)
!

cancelButton
	"Answer the <varbool> value of the 'CancelButton' property of the receiver.
		VARIANT_BOOL CancelButton"

	^(self getPropertyId: 858)
!

cancelButton: arg1
	"Set the 'CancelButton' property of the receiver to the <varbool> value of the argument.
		void CancelButton"

	self setPropertyId: 858 value: arg1
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

defaultButton
	"Answer the <varbool> value of the 'DefaultButton' property of the receiver.
		VARIANT_BOOL DefaultButton"

	^(self getPropertyId: 857)
!

defaultButton: arg1
	"Set the 'DefaultButton' property of the receiver to the <varbool> value of the argument.
		void DefaultButton"

	self setPropertyId: 857 value: arg1
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

dismissButton
	"Answer the <varbool> value of the 'DismissButton' property of the receiver.
		VARIANT_BOOL DismissButton"

	^(self getPropertyId: 859)
!

dismissButton: arg1
	"Set the 'DismissButton' property of the receiver to the <varbool> value of the argument.
		void DismissButton"

	self setPropertyId: 859 value: arg1
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

displayVerticalScrollBar
	"Answer the <varbool> value of the 'DisplayVerticalScrollBar' property of the receiver.
		VARIANT_BOOL DisplayVerticalScrollBar"

	^(self getPropertyId: 922)
!

displayVerticalScrollBar: arg1
	"Set the 'DisplayVerticalScrollBar' property of the receiver to the <varbool> value of the argument.
		void DisplayVerticalScrollBar"

	self setPropertyId: 922 value: arg1
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

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
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

helpButton
	"Answer the <varbool> value of the 'HelpButton' property of the receiver.
		VARIANT_BOOL HelpButton"

	^(self getPropertyId: 860)
!

helpButton: arg1
	"Set the 'HelpButton' property of the receiver to the <varbool> value of the argument.
		void HelpButton"

	self setPropertyId: 860 value: arg1
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

inputType
	"Answer the <sdword> value of the 'InputType' property of the receiver.
		long InputType"

	^(self getPropertyId: 854)
!

inputType: arg1
	"Set the 'InputType' property of the receiver to the <sdword> value of the argument.
		void InputType"

	self setPropertyId: 854 value: arg1
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

linkCombo
	"Answer the <VARIANT> result of invoking the LinkCombo() method of the COM object.
	Default values are passed for all optional parameters."

	^self linkCombo: VARIANT unspecified!

linkCombo: link
	"Answer the <VARIANT> result of invoking the LinkCombo() method of the COM object."

	^(self invokeId: 856 with: link)
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

multiLine
	"Answer the <varbool> value of the 'MultiLine' property of the receiver.
		VARIANT_BOOL MultiLine"

	^(self getPropertyId: 855)
!

multiLine: arg1
	"Set the 'MultiLine' property of the receiver to the <varbool> value of the argument.
		void MultiLine"

	self setPropertyId: 855 value: arg1
!

multiSelect
	"Answer the <varbool> value of the 'MultiSelect' property of the receiver.
		VARIANT_BOOL MultiSelect"

	^(self getPropertyId: 32)
!

multiSelect: arg1
	"Set the 'MultiSelect' property of the receiver to the <varbool> value of the argument.
		void MultiSelect"

	self setPropertyId: 32 value: arg1
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

reshape: vertex insert: insert
	"Answer the <VARIANT> result of invoking the Reshape() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 reshape: vertex
		 insert: insert
		 left: VARIANT unspecified
		 top: VARIANT unspecified!

reshape: vertex insert: insert left: left top: top
	"Answer the <VARIANT> result of invoking the Reshape() method of the COM object."

	^(self invokeId: 604 withArguments:
			((Array new: 4)
				basicAt: 1 put: vertex;
				basicAt: 2 put: insert;
				basicAt: 3 put: left;
				basicAt: 4 put: top;
				yourself))
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

selected
	"Answer the <VARIANT> result of invoking the Selected() method of the COM object.
	Default values are passed for all optional parameters."

	^self selected: VARIANT unspecified!

selected: index
	"Answer the <VARIANT> result of invoking the Selected() method of the COM object."

	^(self invokeId: 1123 with: index)
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

ungroup
	"Answer the <IDispatch> result of invoking the Ungroup() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 244)
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

vertices
	"Answer the <VARIANT> result of invoking the Vertices() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 vertices: VARIANT unspecified
		 index2: VARIANT unspecified!

vertices: index1 index2: index2
	"Answer the <VARIANT> result of invoking the Vertices() method of the COM object."

	^(self invokeId: 621 with: index1 with: index2)
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
!ExcelDrawingObjects categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #_dummy15!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #_dummy28!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #_dummy47!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #_dummy54!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #_dummy56!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #accelerator!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #accelerator:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #addIndent!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #addIndent:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #addItem:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #addItem:index:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #application!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #arrowHeadLength!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #arrowHeadLength:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #arrowHeadStyle!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #arrowHeadStyle:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #arrowHeadWidth!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #arrowHeadWidth:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #autoSize!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #autoSize:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #border!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #cancelButton!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #cancelButton:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #count!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #defaultButton!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #defaultButton:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #dismissButton!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #dismissButton:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #display3DShading!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #display3DShading:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #displayVerticalScrollBar!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #displayVerticalScrollBar:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #dropDownLines!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #dropDownLines:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #font!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #group!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #height!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #helpButton!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #helpButton:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #inputType!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #inputType:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelDrawingObjects categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #largeChange!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #largeChange:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #left!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #linkCombo!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #linkCombo:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #linkedCell!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #linkedCell:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #list!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #list:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #listFillRange!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #listFillRange:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #listIndex!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #listIndex:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #lockedText!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #lockedText:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #max!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #max:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #min!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #min:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #multiLine!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #multiLine:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #multiSelect!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #multiSelect:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #phoneticAccelerator!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #phoneticAccelerator:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #removeAllItems!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #removeItem:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #removeItem:count:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #reshape:insert:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #reshape:insert:left:top:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #roundedCorners!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #roundedCorners:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #select!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #selected!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #selected:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #smallChange!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #smallChange:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #text!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #top!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #ungroup!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #value!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #vertices!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #vertices:index2:!**auto generated**!methods!public! !
!ExcelDrawingObjects categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #width!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelDrawingObjects categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelDrawingObjects class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDrawingObjects initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDrawingObjects class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

