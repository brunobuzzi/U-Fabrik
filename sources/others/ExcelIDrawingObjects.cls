"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIDrawingObjects
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIDrawingObjects guid: (IID fromString: '{0002086F-0001-0000-C000-000000000046}')!
ExcelIDrawingObjects comment: '<ExcelIDrawingObjects> is a wrapper class for the COM interface ''Excel.IDrawingObjects'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002086F-0001-0000-C000-000000000046), 
	helpcontext(0x0002002f), 
	hidden
]
interface IDrawingObjects : IDispatch
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
	[id(0x00010003), hidden, restricted]
	void __stdcall _Dummy3();
	[id(0x0000025a), helpcontext(0x0001025a)]
	HRESULT __stdcall BringToFront(
		[out, retval]VARIANT* RHS);
	[id(0x00000227), helpcontext(0x00010227)]
	HRESULT __stdcall Copy(
		[out, retval]VARIANT* RHS);
	[id(0x000000d5), helpcontext(0x000100d5)]
	HRESULT __stdcall CopyPicture(
		[in, defaultvalue(2)]XlPictureAppearance Appearance,
		[in, defaultvalue(-4147)]XlCopyPictureFormat Format,
		[out, retval]VARIANT* RHS);
	[id(0x00000235), helpcontext(0x00010235)]
	HRESULT __stdcall Cut(
		[out, retval]VARIANT* RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x0000040f), helpcontext(0x0001040f)]
	HRESULT __stdcall Duplicate(
		[out, retval]IDispatch** RHS);
	[id(0x00000258), propget, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000258), propput, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[in]VARIANT_BOOL RHS);
	[id(0x0000007b), propget, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[out, retval]double* RHS);
	[id(0x0000007b), propput, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[in]double RHS);
	[id(0x0001000c), hidden, restricted]
	void __stdcall _Dummy12();
	[id(0x0000007f), propget, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[out, retval]double* RHS);
	[id(0x0000007f), propput, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[in]double RHS);
	[id(0x0000010d), propget, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000010d), propput, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[in]VARIANT_BOOL RHS);
	[id(0x0001000f), hidden, restricted]
	void __stdcall _Dummy15();
	[id(0x00000254), hidden, propget, helpcontext(0x00010254)]
	HRESULT __stdcall OnAction(
		[out, retval]BSTR* RHS);
	[id(0x00000254), hidden, propput, helpcontext(0x00010254)]
	HRESULT __stdcall OnAction(
		[in]BSTR RHS);
	[id(0x00000269), propget, helpcontext(0x00010269)]
	HRESULT __stdcall Placement(
		[out, retval]VARIANT* RHS);
	[id(0x00000269), propput, helpcontext(0x00010269)]
	HRESULT __stdcall Placement(
		[in]VARIANT RHS);
	[id(0x0000026a), propget, helpcontext(0x0001026a)]
	HRESULT __stdcall PrintObject(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000026a), propput, helpcontext(0x0001026a)]
	HRESULT __stdcall PrintObject(
		[in]VARIANT_BOOL RHS);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[in, optional]VARIANT Replace,
		[out, retval]VARIANT* RHS);
	[id(0x0000025d), helpcontext(0x0001025d)]
	HRESULT __stdcall SendToBack(
		[out, retval]VARIANT* RHS);
	[id(0x0000007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[out, retval]double* RHS);
	[id(0x0000007e), propput, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[in]double RHS);
	[id(0x00010016), hidden, restricted]
	void __stdcall _Dummy22();
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]VARIANT_BOOL RHS);
	[id(0x0000007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[out, retval]double* RHS);
	[id(0x0000007a), propput, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[in]double RHS);
	[id(0x0000026e), propget, helpcontext(0x0001026e)]
	HRESULT __stdcall ZOrder(
		[out, retval]long* RHS);
	[id(0x000005f8), propget, helpcontext(0x000105f8)]
	HRESULT __stdcall ShapeRange(
		[out, retval]ShapeRange** RHS);
	[id(0x0000034e), propget, helpcontext(0x0001034e)]
	HRESULT __stdcall Accelerator(
		[out, retval]VARIANT* RHS);
	[id(0x0000034e), propput, helpcontext(0x0001034e)]
	HRESULT __stdcall Accelerator(
		[in]VARIANT RHS);
	[id(0x0001001c), hidden, restricted]
	void __stdcall _Dummy28();
	[id(0x00000427), propget, helpcontext(0x00010427)]
	HRESULT __stdcall AddIndent(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000427), propput, helpcontext(0x00010427)]
	HRESULT __stdcall AddIndent(
		[in]VARIANT_BOOL RHS);
	[id(0x00000353), helpcontext(0x00010353)]
	HRESULT __stdcall AddItem(
		[in]VARIANT Text,
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x00000263), propget, helpcontext(0x00010263)]
	HRESULT __stdcall ArrowHeadLength(
		[out, retval]VARIANT* RHS);
	[id(0x00000263), propput, helpcontext(0x00010263)]
	HRESULT __stdcall ArrowHeadLength(
		[in]VARIANT RHS);
	[id(0x00000264), propget, helpcontext(0x00010264)]
	HRESULT __stdcall ArrowHeadStyle(
		[out, retval]VARIANT* RHS);
	[id(0x00000264), propput, helpcontext(0x00010264)]
	HRESULT __stdcall ArrowHeadStyle(
		[in]VARIANT RHS);
	[id(0x00000265), propget, helpcontext(0x00010265)]
	HRESULT __stdcall ArrowHeadWidth(
		[out, retval]VARIANT* RHS);
	[id(0x00000265), propput, helpcontext(0x00010265)]
	HRESULT __stdcall ArrowHeadWidth(
		[in]VARIANT RHS);
	[id(0x00000266), propget, helpcontext(0x00010266)]
	HRESULT __stdcall AutoSize(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000266), propput, helpcontext(0x00010266)]
	HRESULT __stdcall AutoSize(
		[in]VARIANT_BOOL RHS);
	[id(0x00000080), propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x0000035a), propget, helpcontext(0x0001035a)]
	HRESULT __stdcall CancelButton(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000035a), propput, helpcontext(0x0001035a)]
	HRESULT __stdcall CancelButton(
		[in]VARIANT_BOOL RHS);
	[id(0x0000008b), propget, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[out, retval]BSTR* RHS);
	[id(0x0000008b), propput, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[in]BSTR RHS);
	[id(0x0000025b), propget, helpcontext(0x0001025b)]
	HRESULT __stdcall Characters(
		[in, optional]VARIANT Start,
		[in, optional]VARIANT Length,
		[out, retval]Characters** RHS);
	[id(0x000001f9), helpcontext(0x000101f9)]
	HRESULT __stdcall CheckSpelling(
		[in, optional]VARIANT CustomDictionary,
		[in, optional]VARIANT IgnoreUppercase,
		[in, optional]VARIANT AlwaysSuggest,
		[in, optional]VARIANT SpellLang,
		[out, retval]VARIANT* RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]long* RHS);
	[id(0000000000), propput, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]long RHS);
	[id(0x00000359), propget, helpcontext(0x00010359)]
	HRESULT __stdcall DefaultButton(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000359), propput, helpcontext(0x00010359)]
	HRESULT __stdcall DefaultButton(
		[in]VARIANT_BOOL RHS);
	[id(0x0000035b), propget, helpcontext(0x0001035b)]
	HRESULT __stdcall DismissButton(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000035b), propput, helpcontext(0x0001035b)]
	HRESULT __stdcall DismissButton(
		[in]VARIANT_BOOL RHS);
	[id(0x00000462), propget, helpcontext(0x00010462)]
	HRESULT __stdcall Display3DShading(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000462), propput, helpcontext(0x00010462)]
	HRESULT __stdcall Display3DShading(
		[in]VARIANT_BOOL RHS);
	[id(0x0000039a), propget, helpcontext(0x0001039a)]
	HRESULT __stdcall DisplayVerticalScrollBar(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000039a), propput, helpcontext(0x0001039a)]
	HRESULT __stdcall DisplayVerticalScrollBar(
		[in]VARIANT_BOOL RHS);
	[id(0x00000350), propget, helpcontext(0x00010350)]
	HRESULT __stdcall DropDownLines(
		[out, retval]long* RHS);
	[id(0x00000350), propput, helpcontext(0x00010350)]
	HRESULT __stdcall DropDownLines(
		[in]long RHS);
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x0001002f), hidden, restricted]
	void __stdcall _Dummy47();
	[id(0x0000035c), propget, helpcontext(0x0001035c)]
	HRESULT __stdcall HelpButton(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000035c), propput, helpcontext(0x0001035c)]
	HRESULT __stdcall HelpButton(
		[in]VARIANT_BOOL RHS);
	[id(0x00000088), propget, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[out, retval]VARIANT* RHS);
	[id(0x00000088), propput, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[in]VARIANT RHS);
	[id(0x00000356), propget, helpcontext(0x00010356)]
	HRESULT __stdcall InputType(
		[out, retval]long* RHS);
	[id(0x00000356), propput, helpcontext(0x00010356)]
	HRESULT __stdcall InputType(
		[in]long RHS);
	[id(0x00000081), propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
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
	[id(0x00010036), hidden, restricted]
	void __stdcall _Dummy54();
	[id(0x0000035d), helpcontext(0x0001035d)]
	HRESULT __stdcall List(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x00010038), hidden, restricted]
	void __stdcall _Dummy56();
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
	[id(0x00000357), propget, helpcontext(0x00010357)]
	HRESULT __stdcall MultiLine(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000357), propput, helpcontext(0x00010357)]
	HRESULT __stdcall MultiLine(
		[in]VARIANT_BOOL RHS);
	[id(0x00000020), propget, helpcontext(0x00010020)]
	HRESULT __stdcall MultiSelect(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000020), propput, helpcontext(0x00010020)]
	HRESULT __stdcall MultiSelect(
		[in]VARIANT_BOOL RHS);
	[id(0x00000086), propget, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[out, retval]VARIANT* RHS);
	[id(0x00000086), propput, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[in]VARIANT RHS);
	[id(0x00000461), propget, helpcontext(0x00010461)]
	HRESULT __stdcall PhoneticAccelerator(
		[out, retval]VARIANT* RHS);
	[id(0x00000461), propput, helpcontext(0x00010461)]
	HRESULT __stdcall PhoneticAccelerator(
		[in]VARIANT RHS);
	[id(0x00000355), helpcontext(0x00010355)]
	HRESULT __stdcall RemoveAllItems(
		[out, retval]VARIANT* RHS);
	[id(0x00000354), helpcontext(0x00010354)]
	HRESULT __stdcall RemoveItem(
		[in]long Index,
		[in, optional]VARIANT Count,
		[out, retval]VARIANT* RHS);
	[id(0x0000025c), helpcontext(0x0001025c)]
	HRESULT __stdcall Reshape(
		[in]long Vertex,
		[in]VARIANT Insert,
		[in, optional]VARIANT Left,
		[in, optional]VARIANT Top,
		[out, retval]VARIANT* RHS);
	[id(0x0000026b), propget, helpcontext(0x0001026b)]
	HRESULT __stdcall RoundedCorners(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000026b), propput, helpcontext(0x0001026b)]
	HRESULT __stdcall RoundedCorners(
		[in]VARIANT_BOOL RHS);
	[id(0x00000463), helpcontext(0x00010463)]
	HRESULT __stdcall Selected(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x00000067), propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000067), propput, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[in]VARIANT_BOOL RHS);
	[id(0x0000034c), propget, helpcontext(0x0001034c)]
	HRESULT __stdcall SmallChange(
		[out, retval]long* RHS);
	[id(0x0000034c), propput, helpcontext(0x0001034c)]
	HRESULT __stdcall SmallChange(
		[in]long RHS);
	[id(0x0000008a), propget, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[out, retval]BSTR* RHS);
	[id(0x0000008a), propput, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[in]BSTR RHS);
	[id(0x000000f4), helpcontext(0x000100f4)]
	HRESULT __stdcall Ungroup(
		[out, retval]IDispatch** RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]long* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]long RHS);
	[id(0x00000089), propget, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[out, retval]VARIANT* RHS);
	[id(0x00000089), propput, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[in]VARIANT RHS);
	[id(0x0000026d), helpcontext(0x0001026d)]
	HRESULT __stdcall Vertices(
		[in, optional]VARIANT Index1,
		[in, optional]VARIANT Index2,
		[out, retval]VARIANT* RHS);
	[id(0x000003cf), propget, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[out, retval]long* RHS);
	[id(0x000003cf), propput, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[in]long RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x0000002e), helpcontext(0x0001002e)]
	HRESULT __stdcall Group(
		[out, retval]GroupObject** RHS);
	[id(0x00000358), helpcontext(0x00010358)]
	HRESULT __stdcall LinkCombo(
		[in, optional]VARIANT Link,
		[out, retval]VARIANT* RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIDrawingObjects categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIDrawingObjects methodsFor!

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

_dummy12
	"Answer the <VOID> result of invoking the _Dummy12() method of the COM object."

	self _Dummy12
!

_Dummy12
	"Private - Invoke the _Dummy12() method of the COM object.

		void __stdcall _Dummy12();"

	<virtual stdcall: void 22>
	^self invalidCall!

_dummy15
	"Answer the <VOID> result of invoking the _Dummy15() method of the COM object."

	self _Dummy15
!

_Dummy15
	"Private - Invoke the _Dummy15() method of the COM object.

		void __stdcall _Dummy15();"

	<virtual stdcall: void 27>
	^self invalidCall!

_dummy22
	"Answer the <VOID> result of invoking the _Dummy22() method of the COM object."

	self _Dummy22
!

_Dummy22
	"Private - Invoke the _Dummy22() method of the COM object.

		void __stdcall _Dummy22();"

	<virtual stdcall: void 38>
	^self invalidCall!

_dummy28
	"Answer the <VOID> result of invoking the _Dummy28() method of the COM object."

	self _Dummy28
!

_Dummy28
	"Private - Invoke the _Dummy28() method of the COM object.

		void __stdcall _Dummy28();"

	<virtual stdcall: void 47>
	^self invalidCall!

_dummy3
	"Answer the <VOID> result of invoking the _Dummy3() method of the COM object."

	self _Dummy3
!

_Dummy3
	"Private - Invoke the _Dummy3() method of the COM object.

		void __stdcall _Dummy3();"

	<virtual stdcall: void 11>
	^self invalidCall!

_dummy47
	"Answer the <VOID> result of invoking the _Dummy47() method of the COM object."

	self _Dummy47
!

_Dummy47
	"Private - Invoke the _Dummy47() method of the COM object.

		void __stdcall _Dummy47();"

	<virtual stdcall: void 79>
	^self invalidCall!

_dummy54
	"Answer the <VOID> result of invoking the _Dummy54() method of the COM object."

	self _Dummy54
!

_Dummy54
	"Private - Invoke the _Dummy54() method of the COM object.

		void __stdcall _Dummy54();"

	<virtual stdcall: void 91>
	^self invalidCall!

_dummy56
	"Answer the <VOID> result of invoking the _Dummy56() method of the COM object."

	self _Dummy56
!

_Dummy56
	"Private - Invoke the _Dummy56() method of the COM object.

		void __stdcall _Dummy56();"

	<virtual stdcall: void 93>
	^self invalidCall!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	| answer |
	answer := IUnknown newPointer.
	self _NewEnum: answer.
	^answer asObject
!

_NewEnum: rhs
	"Private - Invoke the _NewEnum() method of the COM object.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 136 IUnknown**>
	^self invalidCall!

accelerator
	"Answer the <variant> value of the 'Accelerator' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Accelerator: answer.
	^answer asObject
!

accelerator: rhs
	"Set the 'Accelerator' property of the receiver to the <variant> value of the argument."

	self put_Accelerator: rhs asVariant
!

addIndent
	"Answer the <varbool> value of the 'AddIndent' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AddIndent: answer.
	^answer asObject
!

addIndent: rhs
	"Set the 'AddIndent' property of the receiver to the <varbool> value of the argument."

	self put_AddIndent: rhs
!

addItem: text
	"Answer the <VARIANT> result of invoking the AddItem() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addItem: text
		 index: VARIANT unspecified!

addItem: text index: index
	"Answer the <VARIANT> result of invoking the AddItem() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		AddItem: text asVariant
		index: index asVariant
		rhs: answer.
	^answer asObject
!

AddItem: text index: index rhs: rhs
	"Private - Invoke the AddItem() method of the COM object.

		HRESULT __stdcall AddItem(
			[in]VARIANT Text,
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 50 variant variant variant*>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

arrowHeadLength
	"Answer the <variant> value of the 'ArrowHeadLength' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ArrowHeadLength: answer.
	^answer asObject
!

arrowHeadLength: rhs
	"Set the 'ArrowHeadLength' property of the receiver to the <variant> value of the argument."

	self put_ArrowHeadLength: rhs asVariant
!

arrowHeadStyle
	"Answer the <variant> value of the 'ArrowHeadStyle' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ArrowHeadStyle: answer.
	^answer asObject
!

arrowHeadStyle: rhs
	"Set the 'ArrowHeadStyle' property of the receiver to the <variant> value of the argument."

	self put_ArrowHeadStyle: rhs asVariant
!

arrowHeadWidth
	"Answer the <variant> value of the 'ArrowHeadWidth' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ArrowHeadWidth: answer.
	^answer asObject
!

arrowHeadWidth: rhs
	"Set the 'ArrowHeadWidth' property of the receiver to the <variant> value of the argument."

	self put_ArrowHeadWidth: rhs asVariant
!

autoSize
	"Answer the <varbool> value of the 'AutoSize' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoSize: answer.
	^answer asObject
!

autoSize: rhs
	"Set the 'AutoSize' property of the receiver to the <varbool> value of the argument."

	self put_AutoSize: rhs
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self get_Border: answer.
	^answer asObject
!

bringToFront
	"Answer the <VARIANT> result of invoking the BringToFront() method of the COM object."

	| answer |
	answer := VARIANT new.
	self BringToFront: answer.
	^answer asObject
!

BringToFront: rhs
	"Private - Invoke the BringToFront() method of the COM object.

		HRESULT __stdcall BringToFront(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall!

cancelButton
	"Answer the <varbool> value of the 'CancelButton' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_CancelButton: answer.
	^answer asObject
!

cancelButton: rhs
	"Set the 'CancelButton' property of the receiver to the <varbool> value of the argument."

	self put_CancelButton: rhs
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Caption: answer.
	^answer asObject
!

caption: rhs
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument."

	self put_Caption: rhs
!

characters
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver."

	^self
		 characters: VARIANT unspecified
		 length: VARIANT unspecified!

characters: start length: length
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver."

	| answer |
	answer := ExcelCharacters newPointer.
	self
		get_Characters: start asVariant
		length: length asVariant
		rhs: answer.
	^answer asObject
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

	| answer |
	answer := VARIANT new.
	self
		CheckSpelling: customDictionary asVariant
		ignoreUppercase: ignoreUppercase asVariant
		alwaysSuggest: alwaysSuggest asVariant
		spellLang: spellLang asVariant
		rhs: answer.
	^answer asObject
!

CheckSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang rhs: rhs
	"Private - Invoke the CheckSpelling() method of the COM object.

		HRESULT __stdcall CheckSpelling(
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in, optional]VARIANT AlwaysSuggest,
			[in, optional]VARIANT SpellLang,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 65 variant variant variant variant variant*>
	^self invalidCall!

copy
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Copy: answer.
	^answer asObject
!

Copy: rhs
	"Private - Invoke the Copy() method of the COM object.

		HRESULT __stdcall Copy(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

copyPicture
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copyPicture: 2
		 format: -4147!

copyPicture: appearance format: format
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		CopyPicture: appearance
		format: format
		rhs: answer.
	^answer asObject
!

CopyPicture: appearance format: format rhs: rhs
	"Private - Invoke the CopyPicture() method of the COM object.

		HRESULT __stdcall CopyPicture(
			[in, defaultvalue(2)]XlPictureAppearance Appearance,
			[in, defaultvalue(-4147)]XlCopyPictureFormat Format,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 14 sdword sdword variant*>
	^self invalidCall!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

cut
	"Answer the <VARIANT> result of invoking the Cut() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Cut: answer.
	^answer asObject
!

Cut: rhs
	"Private - Invoke the Cut() method of the COM object.

		HRESULT __stdcall Cut(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant*>
	^self invalidCall!

defaultButton
	"Answer the <varbool> value of the 'DefaultButton' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DefaultButton: answer.
	^answer asObject
!

defaultButton: rhs
	"Set the 'DefaultButton' property of the receiver to the <varbool> value of the argument."

	self put_DefaultButton: rhs
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Delete: answer.
	^answer asObject
!

Delete: rhs
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 16 variant*>
	^self invalidCall!

dismissButton
	"Answer the <varbool> value of the 'DismissButton' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DismissButton: answer.
	^answer asObject
!

dismissButton: rhs
	"Set the 'DismissButton' property of the receiver to the <varbool> value of the argument."

	self put_DismissButton: rhs
!

display3DShading
	"Answer the <varbool> value of the 'Display3DShading' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Display3DShading: answer.
	^answer asObject
!

display3DShading: rhs
	"Set the 'Display3DShading' property of the receiver to the <varbool> value of the argument."

	self put_Display3DShading: rhs
!

displayVerticalScrollBar
	"Answer the <varbool> value of the 'DisplayVerticalScrollBar' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayVerticalScrollBar: answer.
	^answer asObject
!

displayVerticalScrollBar: rhs
	"Set the 'DisplayVerticalScrollBar' property of the receiver to the <varbool> value of the argument."

	self put_DisplayVerticalScrollBar: rhs
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

duplicate
	"Answer the <IDispatch> result of invoking the Duplicate() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self Duplicate: answer.
	^answer asObject
!

Duplicate: rhs
	"Private - Invoke the Duplicate() method of the COM object.

		HRESULT __stdcall Duplicate(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 17 IDispatch**>
	^self invalidCall!

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

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
	^answer asObject
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 66 sdword*>
	^self invalidCall!

get_Accelerator: rhs
	"Private - Get the value of the 'Accelerator' property of the receiver.

		HRESULT __stdcall Accelerator(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 45 variant*>
	^self invalidCall!

get_AddIndent: rhs
	"Private - Get the value of the 'AddIndent' property of the receiver.

		HRESULT __stdcall AddIndent(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 48 varbool*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_ArrowHeadLength: rhs
	"Private - Get the value of the 'ArrowHeadLength' property of the receiver.

		HRESULT __stdcall ArrowHeadLength(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 51 variant*>
	^self invalidCall!

get_ArrowHeadStyle: rhs
	"Private - Get the value of the 'ArrowHeadStyle' property of the receiver.

		HRESULT __stdcall ArrowHeadStyle(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 53 variant*>
	^self invalidCall!

get_ArrowHeadWidth: rhs
	"Private - Get the value of the 'ArrowHeadWidth' property of the receiver.

		HRESULT __stdcall ArrowHeadWidth(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 55 variant*>
	^self invalidCall!

get_AutoSize: rhs
	"Private - Get the value of the 'AutoSize' property of the receiver.

		HRESULT __stdcall AutoSize(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 57 varbool*>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 59 ExcelBorder**>
	^self invalidCall!

get_CancelButton: rhs
	"Private - Get the value of the 'CancelButton' property of the receiver.

		HRESULT __stdcall CancelButton(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 60 varbool*>
	^self invalidCall!

get_Caption: rhs
	"Private - Get the value of the 'Caption' property of the receiver.

		HRESULT __stdcall Caption(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 62 bstr*>
	^self invalidCall!

get_Characters: start length: length rhs: rhs
	"Private - Get the value of the 'Characters' property of the receiver.

		HRESULT __stdcall Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length,
			[out, retval]Characters** RHS);"

	<virtual stdcall: hresult 64 variant variant ExcelCharacters**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 132 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DefaultButton: rhs
	"Private - Get the value of the 'DefaultButton' property of the receiver.

		HRESULT __stdcall DefaultButton(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 68 varbool*>
	^self invalidCall!

get_DismissButton: rhs
	"Private - Get the value of the 'DismissButton' property of the receiver.

		HRESULT __stdcall DismissButton(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 70 varbool*>
	^self invalidCall!

get_Display3DShading: rhs
	"Private - Get the value of the 'Display3DShading' property of the receiver.

		HRESULT __stdcall Display3DShading(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 72 varbool*>
	^self invalidCall!

get_DisplayVerticalScrollBar: rhs
	"Private - Get the value of the 'DisplayVerticalScrollBar' property of the receiver.

		HRESULT __stdcall DisplayVerticalScrollBar(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 74 varbool*>
	^self invalidCall!

get_DropDownLines: rhs
	"Private - Get the value of the 'DropDownLines' property of the receiver.

		HRESULT __stdcall DropDownLines(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 76 sdword*>
	^self invalidCall!

get_Enabled: rhs
	"Private - Get the value of the 'Enabled' property of the receiver.

		HRESULT __stdcall Enabled(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 18 varbool*>
	^self invalidCall!

get_Font: rhs
	"Private - Get the value of the 'Font' property of the receiver.

		HRESULT __stdcall Font(
			[out, retval]Font** RHS);"

	<virtual stdcall: hresult 78 ExcelFont**>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 20 double*>
	^self invalidCall!

get_HelpButton: rhs
	"Private - Get the value of the 'HelpButton' property of the receiver.

		HRESULT __stdcall HelpButton(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 80 varbool*>
	^self invalidCall!

get_HorizontalAlignment: rhs
	"Private - Get the value of the 'HorizontalAlignment' property of the receiver.

		HRESULT __stdcall HorizontalAlignment(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 82 variant*>
	^self invalidCall!

get_InputType: rhs
	"Private - Get the value of the 'InputType' property of the receiver.

		HRESULT __stdcall InputType(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 84 sdword*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 86 ExcelInterior**>
	^self invalidCall!

get_LargeChange: rhs
	"Private - Get the value of the 'LargeChange' property of the receiver.

		HRESULT __stdcall LargeChange(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 87 sdword*>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 23 double*>
	^self invalidCall!

get_LinkedCell: rhs
	"Private - Get the value of the 'LinkedCell' property of the receiver.

		HRESULT __stdcall LinkedCell(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 89 bstr*>
	^self invalidCall!

get_ListFillRange: rhs
	"Private - Get the value of the 'ListFillRange' property of the receiver.

		HRESULT __stdcall ListFillRange(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 94 bstr*>
	^self invalidCall!

get_ListIndex: rhs
	"Private - Get the value of the 'ListIndex' property of the receiver.

		HRESULT __stdcall ListIndex(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 96 sdword*>
	^self invalidCall!

get_Locked: rhs
	"Private - Get the value of the 'Locked' property of the receiver.

		HRESULT __stdcall Locked(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_LockedText: rhs
	"Private - Get the value of the 'LockedText' property of the receiver.

		HRESULT __stdcall LockedText(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 98 varbool*>
	^self invalidCall!

get_Max: rhs
	"Private - Get the value of the 'Max' property of the receiver.

		HRESULT __stdcall Max(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 100 sdword*>
	^self invalidCall!

get_Min: rhs
	"Private - Get the value of the 'Min' property of the receiver.

		HRESULT __stdcall Min(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 102 sdword*>
	^self invalidCall!

get_MultiLine: rhs
	"Private - Get the value of the 'MultiLine' property of the receiver.

		HRESULT __stdcall MultiLine(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 104 varbool*>
	^self invalidCall!

get_MultiSelect: rhs
	"Private - Get the value of the 'MultiSelect' property of the receiver.

		HRESULT __stdcall MultiSelect(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 106 varbool*>
	^self invalidCall!

get_OnAction: rhs
	"Private - Get the value of the 'OnAction' property of the receiver.

		HRESULT __stdcall OnAction(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 28 bstr*>
	^self invalidCall!

get_Orientation: rhs
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 108 variant*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PhoneticAccelerator: rhs
	"Private - Get the value of the 'PhoneticAccelerator' property of the receiver.

		HRESULT __stdcall PhoneticAccelerator(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 110 variant*>
	^self invalidCall!

get_Placement: rhs
	"Private - Get the value of the 'Placement' property of the receiver.

		HRESULT __stdcall Placement(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 30 variant*>
	^self invalidCall!

get_PrintObject: rhs
	"Private - Get the value of the 'PrintObject' property of the receiver.

		HRESULT __stdcall PrintObject(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 32 varbool*>
	^self invalidCall!

get_ReadingOrder: rhs
	"Private - Get the value of the 'ReadingOrder' property of the receiver.

		HRESULT __stdcall ReadingOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 130 sdword*>
	^self invalidCall!

get_RoundedCorners: rhs
	"Private - Get the value of the 'RoundedCorners' property of the receiver.

		HRESULT __stdcall RoundedCorners(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 115 varbool*>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 118 varbool*>
	^self invalidCall!

get_ShapeRange: rhs
	"Private - Get the value of the 'ShapeRange' property of the receiver.

		HRESULT __stdcall ShapeRange(
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 44 ExcelShapeRange**>
	^self invalidCall!

get_SmallChange: rhs
	"Private - Get the value of the 'SmallChange' property of the receiver.

		HRESULT __stdcall SmallChange(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 120 sdword*>
	^self invalidCall!

get_Text: rhs
	"Private - Get the value of the 'Text' property of the receiver.

		HRESULT __stdcall Text(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 122 bstr*>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 36 double*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 125 sdword*>
	^self invalidCall!

get_VerticalAlignment: rhs
	"Private - Get the value of the 'VerticalAlignment' property of the receiver.

		HRESULT __stdcall VerticalAlignment(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 127 variant*>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 39 varbool*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 41 double*>
	^self invalidCall!

get_ZOrder: rhs
	"Private - Get the value of the 'ZOrder' property of the receiver.

		HRESULT __stdcall ZOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 43 sdword*>
	^self invalidCall!

group
	"Answer the <ExcelGroupObject> result of invoking the Group() method of the COM object."

	| answer |
	answer := ExcelGroupObject newPointer.
	self Group: answer.
	^answer asObject
!

Group: rhs
	"Private - Invoke the Group() method of the COM object.

		HRESULT __stdcall Group(
			[out, retval]GroupObject** RHS);"

	<virtual stdcall: hresult 134 ExcelGroupObject**>
	^self invalidCall!

height
	"Answer the <double> value of the 'Height' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Height: answer.
	^answer asObject
!

height: rhs
	"Set the 'Height' property of the receiver to the <double> value of the argument."

	self put_Height: rhs
!

helpButton
	"Answer the <varbool> value of the 'HelpButton' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HelpButton: answer.
	^answer asObject
!

helpButton: rhs
	"Set the 'HelpButton' property of the receiver to the <varbool> value of the argument."

	self put_HelpButton: rhs
!

horizontalAlignment
	"Answer the <variant> value of the 'HorizontalAlignment' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_HorizontalAlignment: answer.
	^answer asObject
!

horizontalAlignment: rhs
	"Set the 'HorizontalAlignment' property of the receiver to the <variant> value of the argument."

	self put_HorizontalAlignment: rhs asVariant
!

inputType
	"Answer the <sdword> value of the 'InputType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_InputType: answer.
	^answer asObject
!

inputType: rhs
	"Set the 'InputType' property of the receiver to the <sdword> value of the argument."

	self put_InputType: rhs
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <IDispatch> result of invoking the Item() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 133 variant IDispatch**>
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

left
	"Answer the <double> value of the 'Left' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Left: answer.
	^answer asObject
!

left: rhs
	"Set the 'Left' property of the receiver to the <double> value of the argument."

	self put_Left: rhs
!

linkCombo
	"Answer the <VARIANT> result of invoking the LinkCombo() method of the COM object.
	Default values are passed for all optional parameters."

	^self linkCombo: VARIANT unspecified!

linkCombo: link
	"Answer the <VARIANT> result of invoking the LinkCombo() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		LinkCombo: link asVariant
		rhs: answer.
	^answer asObject
!

LinkCombo: link rhs: rhs
	"Private - Invoke the LinkCombo() method of the COM object.

		HRESULT __stdcall LinkCombo(
			[in, optional]VARIANT Link,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 135 variant variant*>
	^self invalidCall!

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

	<virtual stdcall: hresult 92 variant variant*>
	^self invalidCall!

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

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Locked: answer.
	^answer asObject
!

locked: rhs
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument."

	self put_Locked: rhs
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

multiLine
	"Answer the <varbool> value of the 'MultiLine' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_MultiLine: answer.
	^answer asObject
!

multiLine: rhs
	"Set the 'MultiLine' property of the receiver to the <varbool> value of the argument."

	self put_MultiLine: rhs
!

multiSelect
	"Answer the <varbool> value of the 'MultiSelect' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_MultiSelect: answer.
	^answer asObject
!

multiSelect: rhs
	"Set the 'MultiSelect' property of the receiver to the <varbool> value of the argument."

	self put_MultiSelect: rhs
!

onAction
	"Answer the <bstr> value of the 'OnAction' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_OnAction: answer.
	^answer asObject
!

onAction: rhs
	"Set the 'OnAction' property of the receiver to the <bstr> value of the argument."

	self put_OnAction: rhs
!

orientation
	"Answer the <variant> value of the 'Orientation' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Orientation: answer.
	^answer asObject
!

orientation: rhs
	"Set the 'Orientation' property of the receiver to the <variant> value of the argument."

	self put_Orientation: rhs asVariant
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

phoneticAccelerator
	"Answer the <variant> value of the 'PhoneticAccelerator' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_PhoneticAccelerator: answer.
	^answer asObject
!

phoneticAccelerator: rhs
	"Set the 'PhoneticAccelerator' property of the receiver to the <variant> value of the argument."

	self put_PhoneticAccelerator: rhs asVariant
!

placement
	"Answer the <variant> value of the 'Placement' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Placement: answer.
	^answer asObject
!

placement: rhs
	"Set the 'Placement' property of the receiver to the <variant> value of the argument."

	self put_Placement: rhs asVariant
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

	<virtual stdcall: hresult 67 sdword>
	^self invalidCall!

put_Accelerator: rhs
	"Private - Set the value of the 'Accelerator' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Accelerator(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 46 variant>
	^self invalidCall!

put_AddIndent: rhs
	"Private - Set the value of the 'AddIndent' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AddIndent(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 49 varbool>
	^self invalidCall!

put_ArrowHeadLength: rhs
	"Private - Set the value of the 'ArrowHeadLength' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ArrowHeadLength(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 52 variant>
	^self invalidCall!

put_ArrowHeadStyle: rhs
	"Private - Set the value of the 'ArrowHeadStyle' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ArrowHeadStyle(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 54 variant>
	^self invalidCall!

put_ArrowHeadWidth: rhs
	"Private - Set the value of the 'ArrowHeadWidth' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ArrowHeadWidth(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 56 variant>
	^self invalidCall!

put_AutoSize: rhs
	"Private - Set the value of the 'AutoSize' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoSize(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 58 varbool>
	^self invalidCall!

put_CancelButton: rhs
	"Private - Set the value of the 'CancelButton' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall CancelButton(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 61 varbool>
	^self invalidCall!

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Caption(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 63 bstr>
	^self invalidCall!

put_DefaultButton: rhs
	"Private - Set the value of the 'DefaultButton' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DefaultButton(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 69 varbool>
	^self invalidCall!

put_DismissButton: rhs
	"Private - Set the value of the 'DismissButton' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DismissButton(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 71 varbool>
	^self invalidCall!

put_Display3DShading: rhs
	"Private - Set the value of the 'Display3DShading' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Display3DShading(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 73 varbool>
	^self invalidCall!

put_DisplayVerticalScrollBar: rhs
	"Private - Set the value of the 'DisplayVerticalScrollBar' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayVerticalScrollBar(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 75 varbool>
	^self invalidCall!

put_DropDownLines: rhs
	"Private - Set the value of the 'DropDownLines' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DropDownLines(
			[in]long RHS);"

	<virtual stdcall: hresult 77 sdword>
	^self invalidCall!

put_Enabled: rhs
	"Private - Set the value of the 'Enabled' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Enabled(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 19 varbool>
	^self invalidCall!

put_Height: rhs
	"Private - Set the value of the 'Height' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Height(
			[in]double RHS);"

	<virtual stdcall: hresult 21 double>
	^self invalidCall!

put_HelpButton: rhs
	"Private - Set the value of the 'HelpButton' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HelpButton(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 81 varbool>
	^self invalidCall!

put_HorizontalAlignment: rhs
	"Private - Set the value of the 'HorizontalAlignment' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall HorizontalAlignment(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 83 variant>
	^self invalidCall!

put_InputType: rhs
	"Private - Set the value of the 'InputType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall InputType(
			[in]long RHS);"

	<virtual stdcall: hresult 85 sdword>
	^self invalidCall!

put_LargeChange: rhs
	"Private - Set the value of the 'LargeChange' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall LargeChange(
			[in]long RHS);"

	<virtual stdcall: hresult 88 sdword>
	^self invalidCall!

put_Left: rhs
	"Private - Set the value of the 'Left' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Left(
			[in]double RHS);"

	<virtual stdcall: hresult 24 double>
	^self invalidCall!

put_LinkedCell: rhs
	"Private - Set the value of the 'LinkedCell' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall LinkedCell(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 90 bstr>
	^self invalidCall!

put_ListFillRange: rhs
	"Private - Set the value of the 'ListFillRange' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ListFillRange(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 95 bstr>
	^self invalidCall!

put_ListIndex: rhs
	"Private - Set the value of the 'ListIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ListIndex(
			[in]long RHS);"

	<virtual stdcall: hresult 97 sdword>
	^self invalidCall!

put_Locked: rhs
	"Private - Set the value of the 'Locked' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Locked(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_LockedText: rhs
	"Private - Set the value of the 'LockedText' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall LockedText(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 99 varbool>
	^self invalidCall!

put_Max: rhs
	"Private - Set the value of the 'Max' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Max(
			[in]long RHS);"

	<virtual stdcall: hresult 101 sdword>
	^self invalidCall!

put_Min: rhs
	"Private - Set the value of the 'Min' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Min(
			[in]long RHS);"

	<virtual stdcall: hresult 103 sdword>
	^self invalidCall!

put_MultiLine: rhs
	"Private - Set the value of the 'MultiLine' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MultiLine(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 105 varbool>
	^self invalidCall!

put_MultiSelect: rhs
	"Private - Set the value of the 'MultiSelect' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MultiSelect(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 107 varbool>
	^self invalidCall!

put_OnAction: rhs
	"Private - Set the value of the 'OnAction' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnAction(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 29 bstr>
	^self invalidCall!

put_Orientation: rhs
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Orientation(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 109 variant>
	^self invalidCall!

put_PhoneticAccelerator: rhs
	"Private - Set the value of the 'PhoneticAccelerator' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall PhoneticAccelerator(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 111 variant>
	^self invalidCall!

put_Placement: rhs
	"Private - Set the value of the 'Placement' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Placement(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 31 variant>
	^self invalidCall!

put_PrintObject: rhs
	"Private - Set the value of the 'PrintObject' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PrintObject(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 33 varbool>
	^self invalidCall!

put_ReadingOrder: rhs
	"Private - Set the value of the 'ReadingOrder' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ReadingOrder(
			[in]long RHS);"

	<virtual stdcall: hresult 131 sdword>
	^self invalidCall!

put_RoundedCorners: rhs
	"Private - Set the value of the 'RoundedCorners' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RoundedCorners(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 116 varbool>
	^self invalidCall!

put_Shadow: rhs
	"Private - Set the value of the 'Shadow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Shadow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 119 varbool>
	^self invalidCall!

put_SmallChange: rhs
	"Private - Set the value of the 'SmallChange' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SmallChange(
			[in]long RHS);"

	<virtual stdcall: hresult 121 sdword>
	^self invalidCall!

put_Text: rhs
	"Private - Set the value of the 'Text' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Text(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 123 bstr>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Top(
			[in]double RHS);"

	<virtual stdcall: hresult 37 double>
	^self invalidCall!

put_Value: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Value(
			[in]long RHS);"

	<virtual stdcall: hresult 126 sdword>
	^self invalidCall!

put_VerticalAlignment: rhs
	"Private - Set the value of the 'VerticalAlignment' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall VerticalAlignment(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 128 variant>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Visible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 40 varbool>
	^self invalidCall!

put_Width: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Width(
			[in]double RHS);"

	<virtual stdcall: hresult 42 double>
	^self invalidCall!

readingOrder
	"Answer the <sdword> value of the 'ReadingOrder' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ReadingOrder: answer.
	^answer asObject
!

readingOrder: rhs
	"Set the 'ReadingOrder' property of the receiver to the <sdword> value of the argument."

	self put_ReadingOrder: rhs
!

removeAllItems
	"Answer the <VARIANT> result of invoking the RemoveAllItems() method of the COM object."

	| answer |
	answer := VARIANT new.
	self RemoveAllItems: answer.
	^answer asObject
!

RemoveAllItems: rhs
	"Private - Invoke the RemoveAllItems() method of the COM object.

		HRESULT __stdcall RemoveAllItems(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 112 variant*>
	^self invalidCall!

removeItem: index
	"Answer the <VARIANT> result of invoking the RemoveItem() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 removeItem: index
		 count: VARIANT unspecified!

removeItem: index count: count
	"Answer the <VARIANT> result of invoking the RemoveItem() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		RemoveItem: index
		count: count asVariant
		rhs: answer.
	^answer asObject
!

RemoveItem: index count: count rhs: rhs
	"Private - Invoke the RemoveItem() method of the COM object.

		HRESULT __stdcall RemoveItem(
			[in]long Index,
			[in, optional]VARIANT Count,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 113 sdword variant variant*>
	^self invalidCall!

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

	| answer |
	answer := VARIANT new.
	self
		Reshape: vertex
		insert: insert asVariant
		left: left asVariant
		top: top asVariant
		rhs: answer.
	^answer asObject
!

Reshape: vertex insert: insert left: left top: top rhs: rhs
	"Private - Invoke the Reshape() method of the COM object.

		HRESULT __stdcall Reshape(
			[in]long Vertex,
			[in]VARIANT Insert,
			[in, optional]VARIANT Left,
			[in, optional]VARIANT Top,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 114 sdword variant variant variant variant*>
	^self invalidCall!

roundedCorners
	"Answer the <varbool> value of the 'RoundedCorners' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_RoundedCorners: answer.
	^answer asObject
!

roundedCorners: rhs
	"Set the 'RoundedCorners' property of the receiver to the <varbool> value of the argument."

	self put_RoundedCorners: rhs
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object.
	Default values are passed for all optional parameters."

	^self select: VARIANT unspecified!

select: replace
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Select: replace asVariant
		rhs: answer.
	^answer asObject
!

Select: replace rhs: rhs
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select(
			[in, optional]VARIANT Replace,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 34 variant variant*>
	^self invalidCall!

selected
	"Answer the <VARIANT> result of invoking the Selected() method of the COM object.
	Default values are passed for all optional parameters."

	^self selected: VARIANT unspecified!

selected: index
	"Answer the <VARIANT> result of invoking the Selected() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Selected: index asVariant
		rhs: answer.
	^answer asObject
!

Selected: index rhs: rhs
	"Private - Invoke the Selected() method of the COM object.

		HRESULT __stdcall Selected(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 117 variant variant*>
	^self invalidCall!

sendToBack
	"Answer the <VARIANT> result of invoking the SendToBack() method of the COM object."

	| answer |
	answer := VARIANT new.
	self SendToBack: answer.
	^answer asObject
!

SendToBack: rhs
	"Private - Invoke the SendToBack() method of the COM object.

		HRESULT __stdcall SendToBack(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 35 variant*>
	^self invalidCall!

shadow
	"Answer the <varbool> value of the 'Shadow' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Shadow: answer.
	^answer asObject
!

shadow: rhs
	"Set the 'Shadow' property of the receiver to the <varbool> value of the argument."

	self put_Shadow: rhs
!

shapeRange
	"Answer the <ExcelShapeRange> value of the 'ShapeRange' property of the receiver."

	| answer |
	answer := ExcelShapeRange newPointer.
	self get_ShapeRange: answer.
	^answer asObject
!

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

text
	"Answer the <bstr> value of the 'Text' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Text: answer.
	^answer asObject
!

text: rhs
	"Set the 'Text' property of the receiver to the <bstr> value of the argument."

	self put_Text: rhs
!

top
	"Answer the <double> value of the 'Top' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Top: answer.
	^answer asObject
!

top: rhs
	"Set the 'Top' property of the receiver to the <double> value of the argument."

	self put_Top: rhs
!

ungroup
	"Answer the <IDispatch> result of invoking the Ungroup() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self Ungroup: answer.
	^answer asObject
!

Ungroup: rhs
	"Private - Invoke the Ungroup() method of the COM object.

		HRESULT __stdcall Ungroup(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 124 IDispatch**>
	^self invalidCall!

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
!

verticalAlignment
	"Answer the <variant> value of the 'VerticalAlignment' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_VerticalAlignment: answer.
	^answer asObject
!

verticalAlignment: rhs
	"Set the 'VerticalAlignment' property of the receiver to the <variant> value of the argument."

	self put_VerticalAlignment: rhs asVariant
!

vertices
	"Answer the <VARIANT> result of invoking the Vertices() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 vertices: VARIANT unspecified
		 index2: VARIANT unspecified!

vertices: index1 index2: index2
	"Answer the <VARIANT> result of invoking the Vertices() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Vertices: index1 asVariant
		index2: index2 asVariant
		rhs: answer.
	^answer asObject
!

Vertices: index1 index2: index2 rhs: rhs
	"Private - Invoke the Vertices() method of the COM object.

		HRESULT __stdcall Vertices(
			[in, optional]VARIANT Index1,
			[in, optional]VARIANT Index2,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 129 variant variant variant*>
	^self invalidCall!

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

width
	"Answer the <double> value of the 'Width' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Width: answer.
	^answer asObject
!

width: rhs
	"Set the 'Width' property of the receiver to the <double> value of the argument."

	self put_Width: rhs
!

zOrder
	"Answer the <sdword> value of the 'ZOrder' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ZOrder: answer.
	^answer asObject
! !
!ExcelIDrawingObjects categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #_Dummy12!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #_dummy15!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #_Dummy15!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #_Dummy22!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #_dummy28!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #_Dummy28!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #_Dummy3!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #_dummy47!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #_Dummy47!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #_dummy54!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #_Dummy54!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #_dummy56!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #_Dummy56!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #accelerator!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #accelerator:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #addIndent!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #addIndent:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #addItem:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #addItem:index:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #AddItem:index:rhs:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #arrowHeadLength!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #arrowHeadLength:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #arrowHeadStyle!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #arrowHeadStyle:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #arrowHeadWidth!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #arrowHeadWidth:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #autoSize!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #autoSize:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #border!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #BringToFront:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #cancelButton!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #cancelButton:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:rhs:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #Copy:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #Cut:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #defaultButton!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #defaultButton:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #Delete:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #dismissButton!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #dismissButton:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #display3DShading!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #display3DShading:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #displayVerticalScrollBar!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #displayVerticalScrollBar:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #dropDownLines!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #dropDownLines:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #Duplicate:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #font!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Accelerator:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_AddIndent:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_ArrowHeadLength:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_ArrowHeadStyle:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_ArrowHeadWidth:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_AutoSize:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Border:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_CancelButton:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Characters:length:rhs:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_DefaultButton:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_DismissButton:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Display3DShading:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_DisplayVerticalScrollBar:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_DropDownLines:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Font:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_HelpButton:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_HorizontalAlignment:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_InputType:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_LargeChange:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_LinkedCell:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_ListFillRange:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_ListIndex:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_LockedText:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Max:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Min:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_MultiLine:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_MultiSelect:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_PhoneticAccelerator:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Placement:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_PrintObject:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_ReadingOrder:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_RoundedCorners:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_ShapeRange:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_SmallChange:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Text:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_VerticalAlignment:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #get_ZOrder:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #group!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #Group:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #helpButton!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #helpButton:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #inputType!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #inputType:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIDrawingObjects categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #largeChange!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #largeChange:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #linkCombo!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #linkCombo:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #LinkCombo:rhs:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #linkedCell!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #linkedCell:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #list!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #list:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #List:rhs:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #listFillRange!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #listFillRange:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #listIndex!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #listIndex:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #lockedText!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #lockedText:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #max!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #max:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #min!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #min:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #multiLine!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #multiLine:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #multiSelect!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #multiSelect:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #phoneticAccelerator!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #phoneticAccelerator:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #put__Default:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Accelerator:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_AddIndent:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_ArrowHeadLength:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_ArrowHeadStyle:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_ArrowHeadWidth:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_AutoSize:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_CancelButton:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_DefaultButton:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_DismissButton:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Display3DShading:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_DisplayVerticalScrollBar:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_DropDownLines:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_HelpButton:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_HorizontalAlignment:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_InputType:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_LargeChange:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_LinkedCell:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_ListFillRange:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_ListIndex:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_LockedText:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Max:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Min:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_MultiLine:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_MultiSelect:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_PhoneticAccelerator:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Placement:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_PrintObject:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_ReadingOrder:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_RoundedCorners:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Shadow:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_SmallChange:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Text:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Value:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_VerticalAlignment:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #removeAllItems!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #RemoveAllItems:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #removeItem:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #removeItem:count:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #RemoveItem:count:rhs:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #reshape:insert:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #reshape:insert:left:top:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #Reshape:insert:left:top:rhs:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #roundedCorners!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #roundedCorners:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #Select:rhs:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #selected!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #selected:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #Selected:rhs:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #SendToBack:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #smallChange!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #smallChange:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #text!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #ungroup!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #Ungroup:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #vertices!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #vertices:index2:!**auto generated**!methods!public! !
!ExcelIDrawingObjects categoriesFor: #Vertices:index2:rhs:!**auto generated**!COM Interfaces-IDrawingObjects!private! !
!ExcelIDrawingObjects categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelIDrawingObjects categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelIDrawingObjects class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IDrawingObjects'
		ExcelIDrawingObjects defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #_Dummy3
			returnType: 'void';
		defineFunction: #BringToFront:
			argumentTypes: 'variant*';
		defineFunction: #Copy:
			argumentTypes: 'variant*';
		defineFunction: #CopyPicture:format:rhs:
			argumentTypes: 'sdword sdword variant*';
		defineFunction: #Cut:
			argumentTypes: 'variant*';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #Duplicate:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Enabled:
			argumentTypes: 'varbool*';
		defineFunction: #put_Enabled:
			argumentTypes: 'varbool';
		defineFunction: #get_Height:
			argumentTypes: 'double*';
		defineFunction: #put_Height:
			argumentTypes: 'double';
		defineFunction: #_Dummy12
			returnType: 'void';
		defineFunction: #get_Left:
			argumentTypes: 'double*';
		defineFunction: #put_Left:
			argumentTypes: 'double';
		defineFunction: #get_Locked:
			argumentTypes: 'varbool*';
		defineFunction: #put_Locked:
			argumentTypes: 'varbool';
		defineFunction: #_Dummy15
			returnType: 'void';
		defineFunction: #get_OnAction:
			argumentTypes: 'bstr*';
		defineFunction: #put_OnAction:
			argumentTypes: 'bstr';
		defineFunction: #get_Placement:
			argumentTypes: 'variant*';
		defineFunction: #put_Placement:
			argumentTypes: 'variant';
		defineFunction: #get_PrintObject:
			argumentTypes: 'varbool*';
		defineFunction: #put_PrintObject:
			argumentTypes: 'varbool';
		defineFunction: #Select:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #SendToBack:
			argumentTypes: 'variant*';
		defineFunction: #get_Top:
			argumentTypes: 'double*';
		defineFunction: #put_Top:
			argumentTypes: 'double';
		defineFunction: #_Dummy22
			returnType: 'void';
		defineFunction: #get_Visible:
			argumentTypes: 'varbool*';
		defineFunction: #put_Visible:
			argumentTypes: 'varbool';
		defineFunction: #get_Width:
			argumentTypes: 'double*';
		defineFunction: #put_Width:
			argumentTypes: 'double';
		defineFunction: #get_ZOrder:
			argumentTypes: 'sdword*';
		defineFunction: #get_ShapeRange:
			argumentTypes: 'ExcelShapeRange**';
		defineFunction: #get_Accelerator:
			argumentTypes: 'variant*';
		defineFunction: #put_Accelerator:
			argumentTypes: 'variant';
		defineFunction: #_Dummy28
			returnType: 'void';
		defineFunction: #get_AddIndent:
			argumentTypes: 'varbool*';
		defineFunction: #put_AddIndent:
			argumentTypes: 'varbool';
		defineFunction: #AddItem:index:rhs:
			argumentTypes: 'variant variant variant*';
		defineFunction: #get_ArrowHeadLength:
			argumentTypes: 'variant*';
		defineFunction: #put_ArrowHeadLength:
			argumentTypes: 'variant';
		defineFunction: #get_ArrowHeadStyle:
			argumentTypes: 'variant*';
		defineFunction: #put_ArrowHeadStyle:
			argumentTypes: 'variant';
		defineFunction: #get_ArrowHeadWidth:
			argumentTypes: 'variant*';
		defineFunction: #put_ArrowHeadWidth:
			argumentTypes: 'variant';
		defineFunction: #get_AutoSize:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoSize:
			argumentTypes: 'varbool';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #get_CancelButton:
			argumentTypes: 'varbool*';
		defineFunction: #put_CancelButton:
			argumentTypes: 'varbool';
		defineFunction: #get_Caption:
			argumentTypes: 'bstr*';
		defineFunction: #put_Caption:
			argumentTypes: 'bstr';
		defineFunction: #get_Characters:length:rhs:
			argumentTypes: 'variant variant ExcelCharacters**';
		defineFunction: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #get__Default:
			argumentTypes: 'sdword*';
		defineFunction: #put__Default:
			argumentTypes: 'sdword';
		defineFunction: #get_DefaultButton:
			argumentTypes: 'varbool*';
		defineFunction: #put_DefaultButton:
			argumentTypes: 'varbool';
		defineFunction: #get_DismissButton:
			argumentTypes: 'varbool*';
		defineFunction: #put_DismissButton:
			argumentTypes: 'varbool';
		defineFunction: #get_Display3DShading:
			argumentTypes: 'varbool*';
		defineFunction: #put_Display3DShading:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayVerticalScrollBar:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayVerticalScrollBar:
			argumentTypes: 'varbool';
		defineFunction: #get_DropDownLines:
			argumentTypes: 'sdword*';
		defineFunction: #put_DropDownLines:
			argumentTypes: 'sdword';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #_Dummy47
			returnType: 'void';
		defineFunction: #get_HelpButton:
			argumentTypes: 'varbool*';
		defineFunction: #put_HelpButton:
			argumentTypes: 'varbool';
		defineFunction: #get_HorizontalAlignment:
			argumentTypes: 'variant*';
		defineFunction: #put_HorizontalAlignment:
			argumentTypes: 'variant';
		defineFunction: #get_InputType:
			argumentTypes: 'sdword*';
		defineFunction: #put_InputType:
			argumentTypes: 'sdword';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_LargeChange:
			argumentTypes: 'sdword*';
		defineFunction: #put_LargeChange:
			argumentTypes: 'sdword';
		defineFunction: #get_LinkedCell:
			argumentTypes: 'bstr*';
		defineFunction: #put_LinkedCell:
			argumentTypes: 'bstr';
		defineFunction: #_Dummy54
			returnType: 'void';
		defineFunction: #List:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #_Dummy56
			returnType: 'void';
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
		defineFunction: #get_MultiLine:
			argumentTypes: 'varbool*';
		defineFunction: #put_MultiLine:
			argumentTypes: 'varbool';
		defineFunction: #get_MultiSelect:
			argumentTypes: 'varbool*';
		defineFunction: #put_MultiSelect:
			argumentTypes: 'varbool';
		defineFunction: #get_Orientation:
			argumentTypes: 'variant*';
		defineFunction: #put_Orientation:
			argumentTypes: 'variant';
		defineFunction: #get_PhoneticAccelerator:
			argumentTypes: 'variant*';
		defineFunction: #put_PhoneticAccelerator:
			argumentTypes: 'variant';
		defineFunction: #RemoveAllItems:
			argumentTypes: 'variant*';
		defineFunction: #RemoveItem:count:rhs:
			argumentTypes: 'sdword variant variant*';
		defineFunction: #Reshape:insert:left:top:rhs:
			argumentTypes: 'sdword variant variant variant variant*';
		defineFunction: #get_RoundedCorners:
			argumentTypes: 'varbool*';
		defineFunction: #put_RoundedCorners:
			argumentTypes: 'varbool';
		defineFunction: #Selected:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get_Shadow:
			argumentTypes: 'varbool*';
		defineFunction: #put_Shadow:
			argumentTypes: 'varbool';
		defineFunction: #get_SmallChange:
			argumentTypes: 'sdword*';
		defineFunction: #put_SmallChange:
			argumentTypes: 'sdword';
		defineFunction: #get_Text:
			argumentTypes: 'bstr*';
		defineFunction: #put_Text:
			argumentTypes: 'bstr';
		defineFunction: #Ungroup:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Value:
			argumentTypes: 'sdword*';
		defineFunction: #put_Value:
			argumentTypes: 'sdword';
		defineFunction: #get_VerticalAlignment:
			argumentTypes: 'variant*';
		defineFunction: #put_VerticalAlignment:
			argumentTypes: 'variant';
		defineFunction: #Vertices:index2:rhs:
			argumentTypes: 'variant variant variant*';
		defineFunction: #get_ReadingOrder:
			argumentTypes: 'sdword*';
		defineFunction: #put_ReadingOrder:
			argumentTypes: 'sdword';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #Group:
			argumentTypes: 'ExcelGroupObject**';
		defineFunction: #LinkCombo:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIDrawingObjects initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIDrawingObjects class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIDrawingObjects class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

