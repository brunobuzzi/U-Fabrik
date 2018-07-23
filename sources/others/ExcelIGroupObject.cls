"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIGroupObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIGroupObject guid: (IID fromString: '{00020898-0001-0000-C000-000000000046}')!
ExcelIGroupObject comment: '<ExcelIGroupObject> is a wrapper class for the COM interface ''Excel.IGroupObject'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020898-0001-0000-C000-000000000046), 
	helpcontext(0x00020058), 
	hidden
]
interface IGroupObject : IDispatch
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
	[id(0x00000267), propget, helpcontext(0x00010267)]
	HRESULT __stdcall BottomRightCell(
		[out, retval]Range** RHS);
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
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
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
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
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
	[id(0x0000026c), propget, helpcontext(0x0001026c)]
	HRESULT __stdcall TopLeftCell(
		[out, retval]Range** RHS);
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
	[id(0x0001001b), hidden, restricted]
	void __stdcall _Dummy27();
	[id(0x0001001c), hidden, restricted]
	void __stdcall _Dummy28();
	[id(0x00000427), propget, helpcontext(0x00010427)]
	HRESULT __stdcall AddIndent(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000427), propput, helpcontext(0x00010427)]
	HRESULT __stdcall AddIndent(
		[in]VARIANT_BOOL RHS);
	[id(0x0001001e), hidden, restricted]
	void __stdcall _Dummy30();
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
	[id(0x00010024), hidden, restricted]
	void __stdcall _Dummy36();
	[id(0x00010025), hidden, restricted]
	void __stdcall _Dummy37();
	[id(0x00010026), hidden, restricted]
	void __stdcall _Dummy38();
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
	[id(0x00010029), hidden, restricted]
	void __stdcall _Dummy41();
	[id(0x0001002a), hidden, restricted]
	void __stdcall _Dummy42();
	[id(0x0001002b), hidden, restricted]
	void __stdcall _Dummy43();
	[id(0x0001002c), hidden, restricted]
	void __stdcall _Dummy44();
	[id(0x0001002d), hidden, restricted]
	void __stdcall _Dummy45();
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x0001002f), hidden, restricted]
	void __stdcall _Dummy47();
	[id(0x00010030), hidden, restricted]
	void __stdcall _Dummy48();
	[id(0x00000088), propget, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[out, retval]VARIANT* RHS);
	[id(0x00000088), propput, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[in]VARIANT RHS);
	[id(0x00010032), hidden, restricted]
	void __stdcall _Dummy50();
	[id(0x00000081), propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x00010034), hidden, restricted]
	void __stdcall _Dummy52();
	[id(0x00010035), hidden, restricted]
	void __stdcall _Dummy53();
	[id(0x00010036), hidden, restricted]
	void __stdcall _Dummy54();
	[id(0x00010037), hidden, restricted]
	void __stdcall _Dummy55();
	[id(0x00010038), hidden, restricted]
	void __stdcall _Dummy56();
	[id(0x00010039), hidden, restricted]
	void __stdcall _Dummy57();
	[id(0x0001003a), hidden, restricted]
	void __stdcall _Dummy58();
	[id(0x0001003b), hidden, restricted]
	void __stdcall _Dummy59();
	[id(0x0001003c), hidden, restricted]
	void __stdcall _Dummy60();
	[id(0x0001003d), hidden, restricted]
	void __stdcall _Dummy61();
	[id(0x0001003e), hidden, restricted]
	void __stdcall _Dummy62();
	[id(0x0001003f), hidden, restricted]
	void __stdcall _Dummy63();
	[id(0x00000086), propget, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[out, retval]VARIANT* RHS);
	[id(0x00000086), propput, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[in]VARIANT RHS);
	[id(0x00010041), hidden, restricted]
	void __stdcall _Dummy65();
	[id(0x00010042), hidden, restricted]
	void __stdcall _Dummy66();
	[id(0x00010043), hidden, restricted]
	void __stdcall _Dummy67();
	[id(0x00010044), hidden, restricted]
	void __stdcall _Dummy68();
	[id(0x0000026b), propget, helpcontext(0x0001026b)]
	HRESULT __stdcall RoundedCorners(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000026b), propput, helpcontext(0x0001026b)]
	HRESULT __stdcall RoundedCorners(
		[in]VARIANT_BOOL RHS);
	[id(0x00010046), hidden, restricted]
	void __stdcall _Dummy70();
	[id(0x00000067), propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000067), propput, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[in]VARIANT_BOOL RHS);
	[id(0x00010048), hidden, restricted]
	void __stdcall _Dummy72();
	[id(0x00010049), hidden, restricted]
	void __stdcall _Dummy73();
	[id(0x000000f4), helpcontext(0x000100f4)]
	HRESULT __stdcall Ungroup(
		[out, retval]IDispatch** RHS);
	[id(0x0001004b), hidden, restricted]
	void __stdcall _Dummy75();
	[id(0x00000089), propget, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[out, retval]VARIANT* RHS);
	[id(0x00000089), propput, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[in]VARIANT RHS);
	[id(0x0001004d), hidden, restricted]
	void __stdcall _Dummy77();
	[id(0x000003cf), propget, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[out, retval]long* RHS);
	[id(0x000003cf), propput, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[in]long RHS);
};
'!
!ExcelIGroupObject categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIGroupObject methodsFor!

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

_dummy27
	"Answer the <VOID> result of invoking the _Dummy27() method of the COM object."

	self _Dummy27
!

_Dummy27
	"Private - Invoke the _Dummy27() method of the COM object.

		void __stdcall _Dummy27();"

	<virtual stdcall: void 46>
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

_dummy30
	"Answer the <VOID> result of invoking the _Dummy30() method of the COM object."

	self _Dummy30
!

_Dummy30
	"Private - Invoke the _Dummy30() method of the COM object.

		void __stdcall _Dummy30();"

	<virtual stdcall: void 50>
	^self invalidCall!

_dummy36
	"Answer the <VOID> result of invoking the _Dummy36() method of the COM object."

	self _Dummy36
!

_Dummy36
	"Private - Invoke the _Dummy36() method of the COM object.

		void __stdcall _Dummy36();"

	<virtual stdcall: void 60>
	^self invalidCall!

_dummy37
	"Answer the <VOID> result of invoking the _Dummy37() method of the COM object."

	self _Dummy37
!

_Dummy37
	"Private - Invoke the _Dummy37() method of the COM object.

		void __stdcall _Dummy37();"

	<virtual stdcall: void 61>
	^self invalidCall!

_dummy38
	"Answer the <VOID> result of invoking the _Dummy38() method of the COM object."

	self _Dummy38
!

_Dummy38
	"Private - Invoke the _Dummy38() method of the COM object.

		void __stdcall _Dummy38();"

	<virtual stdcall: void 62>
	^self invalidCall!

_dummy41
	"Answer the <VOID> result of invoking the _Dummy41() method of the COM object."

	self _Dummy41
!

_Dummy41
	"Private - Invoke the _Dummy41() method of the COM object.

		void __stdcall _Dummy41();"

	<virtual stdcall: void 66>
	^self invalidCall!

_dummy42
	"Answer the <VOID> result of invoking the _Dummy42() method of the COM object."

	self _Dummy42
!

_Dummy42
	"Private - Invoke the _Dummy42() method of the COM object.

		void __stdcall _Dummy42();"

	<virtual stdcall: void 67>
	^self invalidCall!

_dummy43
	"Answer the <VOID> result of invoking the _Dummy43() method of the COM object."

	self _Dummy43
!

_Dummy43
	"Private - Invoke the _Dummy43() method of the COM object.

		void __stdcall _Dummy43();"

	<virtual stdcall: void 68>
	^self invalidCall!

_dummy44
	"Answer the <VOID> result of invoking the _Dummy44() method of the COM object."

	self _Dummy44
!

_Dummy44
	"Private - Invoke the _Dummy44() method of the COM object.

		void __stdcall _Dummy44();"

	<virtual stdcall: void 69>
	^self invalidCall!

_dummy45
	"Answer the <VOID> result of invoking the _Dummy45() method of the COM object."

	self _Dummy45
!

_Dummy45
	"Private - Invoke the _Dummy45() method of the COM object.

		void __stdcall _Dummy45();"

	<virtual stdcall: void 70>
	^self invalidCall!

_dummy47
	"Answer the <VOID> result of invoking the _Dummy47() method of the COM object."

	self _Dummy47
!

_Dummy47
	"Private - Invoke the _Dummy47() method of the COM object.

		void __stdcall _Dummy47();"

	<virtual stdcall: void 72>
	^self invalidCall!

_dummy48
	"Answer the <VOID> result of invoking the _Dummy48() method of the COM object."

	self _Dummy48
!

_Dummy48
	"Private - Invoke the _Dummy48() method of the COM object.

		void __stdcall _Dummy48();"

	<virtual stdcall: void 73>
	^self invalidCall!

_dummy50
	"Answer the <VOID> result of invoking the _Dummy50() method of the COM object."

	self _Dummy50
!

_Dummy50
	"Private - Invoke the _Dummy50() method of the COM object.

		void __stdcall _Dummy50();"

	<virtual stdcall: void 76>
	^self invalidCall!

_dummy52
	"Answer the <VOID> result of invoking the _Dummy52() method of the COM object."

	self _Dummy52
!

_Dummy52
	"Private - Invoke the _Dummy52() method of the COM object.

		void __stdcall _Dummy52();"

	<virtual stdcall: void 78>
	^self invalidCall!

_dummy53
	"Answer the <VOID> result of invoking the _Dummy53() method of the COM object."

	self _Dummy53
!

_Dummy53
	"Private - Invoke the _Dummy53() method of the COM object.

		void __stdcall _Dummy53();"

	<virtual stdcall: void 79>
	^self invalidCall!

_dummy54
	"Answer the <VOID> result of invoking the _Dummy54() method of the COM object."

	self _Dummy54
!

_Dummy54
	"Private - Invoke the _Dummy54() method of the COM object.

		void __stdcall _Dummy54();"

	<virtual stdcall: void 80>
	^self invalidCall!

_dummy55
	"Answer the <VOID> result of invoking the _Dummy55() method of the COM object."

	self _Dummy55
!

_Dummy55
	"Private - Invoke the _Dummy55() method of the COM object.

		void __stdcall _Dummy55();"

	<virtual stdcall: void 81>
	^self invalidCall!

_dummy56
	"Answer the <VOID> result of invoking the _Dummy56() method of the COM object."

	self _Dummy56
!

_Dummy56
	"Private - Invoke the _Dummy56() method of the COM object.

		void __stdcall _Dummy56();"

	<virtual stdcall: void 82>
	^self invalidCall!

_dummy57
	"Answer the <VOID> result of invoking the _Dummy57() method of the COM object."

	self _Dummy57
!

_Dummy57
	"Private - Invoke the _Dummy57() method of the COM object.

		void __stdcall _Dummy57();"

	<virtual stdcall: void 83>
	^self invalidCall!

_dummy58
	"Answer the <VOID> result of invoking the _Dummy58() method of the COM object."

	self _Dummy58
!

_Dummy58
	"Private - Invoke the _Dummy58() method of the COM object.

		void __stdcall _Dummy58();"

	<virtual stdcall: void 84>
	^self invalidCall!

_dummy59
	"Answer the <VOID> result of invoking the _Dummy59() method of the COM object."

	self _Dummy59
!

_Dummy59
	"Private - Invoke the _Dummy59() method of the COM object.

		void __stdcall _Dummy59();"

	<virtual stdcall: void 85>
	^self invalidCall!

_dummy60
	"Answer the <VOID> result of invoking the _Dummy60() method of the COM object."

	self _Dummy60
!

_Dummy60
	"Private - Invoke the _Dummy60() method of the COM object.

		void __stdcall _Dummy60();"

	<virtual stdcall: void 86>
	^self invalidCall!

_dummy61
	"Answer the <VOID> result of invoking the _Dummy61() method of the COM object."

	self _Dummy61
!

_Dummy61
	"Private - Invoke the _Dummy61() method of the COM object.

		void __stdcall _Dummy61();"

	<virtual stdcall: void 87>
	^self invalidCall!

_dummy62
	"Answer the <VOID> result of invoking the _Dummy62() method of the COM object."

	self _Dummy62
!

_Dummy62
	"Private - Invoke the _Dummy62() method of the COM object.

		void __stdcall _Dummy62();"

	<virtual stdcall: void 88>
	^self invalidCall!

_dummy63
	"Answer the <VOID> result of invoking the _Dummy63() method of the COM object."

	self _Dummy63
!

_Dummy63
	"Private - Invoke the _Dummy63() method of the COM object.

		void __stdcall _Dummy63();"

	<virtual stdcall: void 89>
	^self invalidCall!

_dummy65
	"Answer the <VOID> result of invoking the _Dummy65() method of the COM object."

	self _Dummy65
!

_Dummy65
	"Private - Invoke the _Dummy65() method of the COM object.

		void __stdcall _Dummy65();"

	<virtual stdcall: void 92>
	^self invalidCall!

_dummy66
	"Answer the <VOID> result of invoking the _Dummy66() method of the COM object."

	self _Dummy66
!

_Dummy66
	"Private - Invoke the _Dummy66() method of the COM object.

		void __stdcall _Dummy66();"

	<virtual stdcall: void 93>
	^self invalidCall!

_dummy67
	"Answer the <VOID> result of invoking the _Dummy67() method of the COM object."

	self _Dummy67
!

_Dummy67
	"Private - Invoke the _Dummy67() method of the COM object.

		void __stdcall _Dummy67();"

	<virtual stdcall: void 94>
	^self invalidCall!

_dummy68
	"Answer the <VOID> result of invoking the _Dummy68() method of the COM object."

	self _Dummy68
!

_Dummy68
	"Private - Invoke the _Dummy68() method of the COM object.

		void __stdcall _Dummy68();"

	<virtual stdcall: void 95>
	^self invalidCall!

_dummy70
	"Answer the <VOID> result of invoking the _Dummy70() method of the COM object."

	self _Dummy70
!

_Dummy70
	"Private - Invoke the _Dummy70() method of the COM object.

		void __stdcall _Dummy70();"

	<virtual stdcall: void 98>
	^self invalidCall!

_dummy72
	"Answer the <VOID> result of invoking the _Dummy72() method of the COM object."

	self _Dummy72
!

_Dummy72
	"Private - Invoke the _Dummy72() method of the COM object.

		void __stdcall _Dummy72();"

	<virtual stdcall: void 101>
	^self invalidCall!

_dummy73
	"Answer the <VOID> result of invoking the _Dummy73() method of the COM object."

	self _Dummy73
!

_Dummy73
	"Private - Invoke the _Dummy73() method of the COM object.

		void __stdcall _Dummy73();"

	<virtual stdcall: void 102>
	^self invalidCall!

_dummy75
	"Answer the <VOID> result of invoking the _Dummy75() method of the COM object."

	self _Dummy75
!

_Dummy75
	"Private - Invoke the _Dummy75() method of the COM object.

		void __stdcall _Dummy75();"

	<virtual stdcall: void 104>
	^self invalidCall!

_dummy77
	"Answer the <VOID> result of invoking the _Dummy77() method of the COM object."

	self _Dummy77
!

_Dummy77
	"Private - Invoke the _Dummy77() method of the COM object.

		void __stdcall _Dummy77();"

	<virtual stdcall: void 107>
	^self invalidCall!

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

bottomRightCell
	"Answer the <ExcelRange> value of the 'BottomRightCell' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_BottomRightCell: answer.
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

	<virtual stdcall: hresult 63 variant variant variant variant variant*>
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

	<virtual stdcall: hresult 64 sdword*>
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

get_BottomRightCell: rhs
	"Private - Get the value of the 'BottomRightCell' property of the receiver.

		HRESULT __stdcall BottomRightCell(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 11 ExcelRange**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
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

	<virtual stdcall: hresult 71 ExcelFont**>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 20 double*>
	^self invalidCall!

get_HorizontalAlignment: rhs
	"Private - Get the value of the 'HorizontalAlignment' property of the receiver.

		HRESULT __stdcall HorizontalAlignment(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 74 variant*>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 22 sdword*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 77 ExcelInterior**>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 23 double*>
	^self invalidCall!

get_Locked: rhs
	"Private - Get the value of the 'Locked' property of the receiver.

		HRESULT __stdcall Locked(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 27 bstr*>
	^self invalidCall!

get_OnAction: rhs
	"Private - Get the value of the 'OnAction' property of the receiver.

		HRESULT __stdcall OnAction(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 29 bstr*>
	^self invalidCall!

get_Orientation: rhs
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 90 variant*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Placement: rhs
	"Private - Get the value of the 'Placement' property of the receiver.

		HRESULT __stdcall Placement(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 31 variant*>
	^self invalidCall!

get_PrintObject: rhs
	"Private - Get the value of the 'PrintObject' property of the receiver.

		HRESULT __stdcall PrintObject(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 33 varbool*>
	^self invalidCall!

get_ReadingOrder: rhs
	"Private - Get the value of the 'ReadingOrder' property of the receiver.

		HRESULT __stdcall ReadingOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 108 sdword*>
	^self invalidCall!

get_RoundedCorners: rhs
	"Private - Get the value of the 'RoundedCorners' property of the receiver.

		HRESULT __stdcall RoundedCorners(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 96 varbool*>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 99 varbool*>
	^self invalidCall!

get_ShapeRange: rhs
	"Private - Get the value of the 'ShapeRange' property of the receiver.

		HRESULT __stdcall ShapeRange(
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 45 ExcelShapeRange**>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 37 double*>
	^self invalidCall!

get_TopLeftCell: rhs
	"Private - Get the value of the 'TopLeftCell' property of the receiver.

		HRESULT __stdcall TopLeftCell(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 39 ExcelRange**>
	^self invalidCall!

get_VerticalAlignment: rhs
	"Private - Get the value of the 'VerticalAlignment' property of the receiver.

		HRESULT __stdcall VerticalAlignment(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 105 variant*>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 40 varbool*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 42 double*>
	^self invalidCall!

get_ZOrder: rhs
	"Private - Get the value of the 'ZOrder' property of the receiver.

		HRESULT __stdcall ZOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 44 sdword*>
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

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
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

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <bstr> value of the argument."

	self put_Name: rhs
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

	<virtual stdcall: hresult 65 sdword>
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

put_HorizontalAlignment: rhs
	"Private - Set the value of the 'HorizontalAlignment' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall HorizontalAlignment(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 75 variant>
	^self invalidCall!

put_Left: rhs
	"Private - Set the value of the 'Left' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Left(
			[in]double RHS);"

	<virtual stdcall: hresult 24 double>
	^self invalidCall!

put_Locked: rhs
	"Private - Set the value of the 'Locked' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Locked(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 28 bstr>
	^self invalidCall!

put_OnAction: rhs
	"Private - Set the value of the 'OnAction' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnAction(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 30 bstr>
	^self invalidCall!

put_Orientation: rhs
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Orientation(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 91 variant>
	^self invalidCall!

put_Placement: rhs
	"Private - Set the value of the 'Placement' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Placement(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 32 variant>
	^self invalidCall!

put_PrintObject: rhs
	"Private - Set the value of the 'PrintObject' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PrintObject(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 34 varbool>
	^self invalidCall!

put_ReadingOrder: rhs
	"Private - Set the value of the 'ReadingOrder' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ReadingOrder(
			[in]long RHS);"

	<virtual stdcall: hresult 109 sdword>
	^self invalidCall!

put_RoundedCorners: rhs
	"Private - Set the value of the 'RoundedCorners' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RoundedCorners(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 97 varbool>
	^self invalidCall!

put_Shadow: rhs
	"Private - Set the value of the 'Shadow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Shadow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 100 varbool>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Top(
			[in]double RHS);"

	<virtual stdcall: hresult 38 double>
	^self invalidCall!

put_VerticalAlignment: rhs
	"Private - Set the value of the 'VerticalAlignment' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall VerticalAlignment(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 106 variant>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Visible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 41 varbool>
	^self invalidCall!

put_Width: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Width(
			[in]double RHS);"

	<virtual stdcall: hresult 43 double>
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

	<virtual stdcall: hresult 35 variant variant*>
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

	<virtual stdcall: hresult 36 variant*>
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

topLeftCell
	"Answer the <ExcelRange> value of the 'TopLeftCell' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_TopLeftCell: answer.
	^answer asObject
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

	<virtual stdcall: hresult 103 IDispatch**>
	^self invalidCall!

value
	"Answer the <sdword> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
!

value: rhs
	"Set the '_Default' property of the receiver to the <sdword> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: rhs
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
!ExcelIGroupObject categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #_dummy27!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy27!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy28!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy28!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy30!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy30!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy36!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy36!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy37!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy37!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy38!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy38!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy41!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy41!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy42!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy42!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy43!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy43!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy44!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy44!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy45!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy45!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy47!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy47!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy48!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy48!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy50!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy50!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy52!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy52!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy53!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy53!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy54!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy54!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy55!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy55!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy56!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy56!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy57!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy57!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy58!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy58!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy59!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy59!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy60!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy60!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy61!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy61!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy62!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy62!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy63!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy63!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy65!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy65!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy66!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy66!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy67!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy67!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy68!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy68!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy70!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy70!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy72!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy72!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy73!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy73!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy75!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy75!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #_dummy77!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #_Dummy77!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #addIndent!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #addIndent:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #arrowHeadLength!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #arrowHeadLength:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #arrowHeadStyle!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #arrowHeadStyle:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #arrowHeadWidth!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #arrowHeadWidth:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #autoSize!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #autoSize:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #border!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #bottomRightCell!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #BringToFront:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:rhs:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #Copy:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #Cut:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #Delete:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #Duplicate:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #font!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_AddIndent:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_ArrowHeadLength:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_ArrowHeadStyle:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_ArrowHeadWidth:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_AutoSize:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Border:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_BottomRightCell:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Font:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_HorizontalAlignment:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Placement:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_PrintObject:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_ReadingOrder:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_RoundedCorners:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_ShapeRange:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_TopLeftCell:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_VerticalAlignment:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #get_ZOrder:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #put__Default:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_AddIndent:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_ArrowHeadLength:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_ArrowHeadStyle:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_ArrowHeadWidth:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_AutoSize:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_HorizontalAlignment:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_Placement:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_PrintObject:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_ReadingOrder:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_RoundedCorners:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_Shadow:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_VerticalAlignment:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #roundedCorners!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #roundedCorners:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #Select:rhs:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #SendToBack:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #topLeftCell!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #ungroup!**auto generated**!methods!public! !
!ExcelIGroupObject categoriesFor: #Ungroup:!**auto generated**!COM Interfaces-IGroupObject!private! !
!ExcelIGroupObject categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelIGroupObject categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelIGroupObject class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IGroupObject'
		ExcelIGroupObject defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_BottomRightCell:
			argumentTypes: 'ExcelRange**';
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
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_Left:
			argumentTypes: 'double*';
		defineFunction: #put_Left:
			argumentTypes: 'double';
		defineFunction: #get_Locked:
			argumentTypes: 'varbool*';
		defineFunction: #put_Locked:
			argumentTypes: 'varbool';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
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
		defineFunction: #get_TopLeftCell:
			argumentTypes: 'ExcelRange**';
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
		defineFunction: #_Dummy27
			returnType: 'void';
		defineFunction: #_Dummy28
			returnType: 'void';
		defineFunction: #get_AddIndent:
			argumentTypes: 'varbool*';
		defineFunction: #put_AddIndent:
			argumentTypes: 'varbool';
		defineFunction: #_Dummy30
			returnType: 'void';
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
		defineFunction: #_Dummy36
			returnType: 'void';
		defineFunction: #_Dummy37
			returnType: 'void';
		defineFunction: #_Dummy38
			returnType: 'void';
		defineFunction: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #get__Default:
			argumentTypes: 'sdword*';
		defineFunction: #put__Default:
			argumentTypes: 'sdword';
		defineFunction: #_Dummy41
			returnType: 'void';
		defineFunction: #_Dummy42
			returnType: 'void';
		defineFunction: #_Dummy43
			returnType: 'void';
		defineFunction: #_Dummy44
			returnType: 'void';
		defineFunction: #_Dummy45
			returnType: 'void';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #_Dummy47
			returnType: 'void';
		defineFunction: #_Dummy48
			returnType: 'void';
		defineFunction: #get_HorizontalAlignment:
			argumentTypes: 'variant*';
		defineFunction: #put_HorizontalAlignment:
			argumentTypes: 'variant';
		defineFunction: #_Dummy50
			returnType: 'void';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #_Dummy52
			returnType: 'void';
		defineFunction: #_Dummy53
			returnType: 'void';
		defineFunction: #_Dummy54
			returnType: 'void';
		defineFunction: #_Dummy55
			returnType: 'void';
		defineFunction: #_Dummy56
			returnType: 'void';
		defineFunction: #_Dummy57
			returnType: 'void';
		defineFunction: #_Dummy58
			returnType: 'void';
		defineFunction: #_Dummy59
			returnType: 'void';
		defineFunction: #_Dummy60
			returnType: 'void';
		defineFunction: #_Dummy61
			returnType: 'void';
		defineFunction: #_Dummy62
			returnType: 'void';
		defineFunction: #_Dummy63
			returnType: 'void';
		defineFunction: #get_Orientation:
			argumentTypes: 'variant*';
		defineFunction: #put_Orientation:
			argumentTypes: 'variant';
		defineFunction: #_Dummy65
			returnType: 'void';
		defineFunction: #_Dummy66
			returnType: 'void';
		defineFunction: #_Dummy67
			returnType: 'void';
		defineFunction: #_Dummy68
			returnType: 'void';
		defineFunction: #get_RoundedCorners:
			argumentTypes: 'varbool*';
		defineFunction: #put_RoundedCorners:
			argumentTypes: 'varbool';
		defineFunction: #_Dummy70
			returnType: 'void';
		defineFunction: #get_Shadow:
			argumentTypes: 'varbool*';
		defineFunction: #put_Shadow:
			argumentTypes: 'varbool';
		defineFunction: #_Dummy72
			returnType: 'void';
		defineFunction: #_Dummy73
			returnType: 'void';
		defineFunction: #Ungroup:
			argumentTypes: 'IDispatch**';
		defineFunction: #_Dummy75
			returnType: 'void';
		defineFunction: #get_VerticalAlignment:
			argumentTypes: 'variant*';
		defineFunction: #put_VerticalAlignment:
			argumentTypes: 'variant';
		defineFunction: #_Dummy77
			returnType: 'void';
		defineFunction: #get_ReadingOrder:
			argumentTypes: 'sdword*';
		defineFunction: #put_ReadingOrder:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIGroupObject initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIGroupObject class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIGroupObject class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

