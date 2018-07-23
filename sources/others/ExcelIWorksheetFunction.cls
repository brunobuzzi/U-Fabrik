"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIWorksheetFunction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIWorksheetFunction guid: (IID fromString: '{00020845-0001-0000-C000-000000000046}')!
ExcelIWorksheetFunction comment: '<ExcelIWorksheetFunction> is a wrapper class for the COM interface ''Excel.IWorksheetFunction'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020845-0001-0000-C000-000000000046), 
	helpcontext(0x00020005), 
	hidden
]
interface IWorksheetFunction : IDispatch
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
	[id(0x000000a9), hidden, helpcontext(0x000100a9)]
	HRESULT __stdcall _WSFunction(
		[in, optional]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]VARIANT* RHS);
	[id(0x00004000), helpcontext(0x00014000)]
	HRESULT __stdcall Count(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x00004002), helpcontext(0x00014002)]
	HRESULT __stdcall IsNA(
		[in]VARIANT Arg1,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00004003), helpcontext(0x00014003)]
	HRESULT __stdcall IsError(
		[in]VARIANT Arg1,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00004004), helpcontext(0x00014004)]
	HRESULT __stdcall Sum(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x00004005), helpcontext(0x00014005)]
	HRESULT __stdcall Average(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x00004006), helpcontext(0x00014006)]
	HRESULT __stdcall Min(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x00004007), helpcontext(0x00014007)]
	HRESULT __stdcall Max(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x0000400b), helpcontext(0x0001400b)]
	HRESULT __stdcall Npv(
		[in]double Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x0000400c), helpcontext(0x0001400c)]
	HRESULT __stdcall StDev(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x0000400d), helpcontext(0x0001400d)]
	HRESULT __stdcall Dollar(
		[in]double Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x0000400e), helpcontext(0x0001400e)]
	HRESULT __stdcall Fixed(
		[in]double Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]BSTR* RHS);
	[id(0x00004013), helpcontext(0x00014013)]
	HRESULT __stdcall Pi(
		[out, retval]double* RHS);
	[id(0x00004016), helpcontext(0x00014016)]
	HRESULT __stdcall Ln(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x00004017), helpcontext(0x00014017)]
	HRESULT __stdcall Log10(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x0000401b), helpcontext(0x0001401b)]
	HRESULT __stdcall Round(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x0000401c), helpcontext(0x0001401c)]
	HRESULT __stdcall Lookup(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]VARIANT* RHS);
	[id(0x0000401d), helpcontext(0x0001401d)]
	HRESULT __stdcall Index(
		[in]VARIANT Arg1,
		[in]double Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]VARIANT* RHS);
	[id(0x0000401e), helpcontext(0x0001401e)]
	HRESULT __stdcall Rept(
		[in]BSTR Arg1,
		[in]double Arg2,
		[out, retval]BSTR* RHS);
	[id(0x00004024), helpcontext(0x00014024)]
	HRESULT __stdcall And(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00004025), helpcontext(0x00014025)]
	HRESULT __stdcall Or(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00004028), helpcontext(0x00014028)]
	HRESULT __stdcall DCount(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x00004029), helpcontext(0x00014029)]
	HRESULT __stdcall DSum(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x0000402a), helpcontext(0x0001402a)]
	HRESULT __stdcall DAverage(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x0000402b), helpcontext(0x0001402b)]
	HRESULT __stdcall DMin(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x0000402c), helpcontext(0x0001402c)]
	HRESULT __stdcall DMax(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x0000402d), helpcontext(0x0001402d)]
	HRESULT __stdcall DStDev(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x0000402e), helpcontext(0x0001402e)]
	HRESULT __stdcall Var(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x0000402f), helpcontext(0x0001402f)]
	HRESULT __stdcall DVar(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x00004030), helpcontext(0x00014030)]
	HRESULT __stdcall Text(
		[in]VARIANT Arg1,
		[in]BSTR Arg2,
		[out, retval]BSTR* RHS);
	[id(0x00004031), helpcontext(0x00014031)]
	HRESULT __stdcall LinEst(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]VARIANT* RHS);
	[id(0x00004032), helpcontext(0x00014032)]
	HRESULT __stdcall Trend(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]VARIANT* RHS);
	[id(0x00004033), helpcontext(0x00014033)]
	HRESULT __stdcall LogEst(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]VARIANT* RHS);
	[id(0x00004034), helpcontext(0x00014034)]
	HRESULT __stdcall Growth(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]VARIANT* RHS);
	[id(0x00004038), helpcontext(0x00014038)]
	HRESULT __stdcall Pv(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x00004039), helpcontext(0x00014039)]
	HRESULT __stdcall Fv(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x0000403a), helpcontext(0x0001403a)]
	HRESULT __stdcall NPer(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x0000403b), helpcontext(0x0001403b)]
	HRESULT __stdcall Pmt(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x0000403c), helpcontext(0x0001403c)]
	HRESULT __stdcall Rate(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[out, retval]double* RHS);
	[id(0x0000403d), helpcontext(0x0001403d)]
	HRESULT __stdcall MIrr(
		[in]VARIANT Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x0000403e), helpcontext(0x0001403e)]
	HRESULT __stdcall Irr(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x00004040), helpcontext(0x00014040)]
	HRESULT __stdcall Match(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x00004046), helpcontext(0x00014046)]
	HRESULT __stdcall Weekday(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x00004052), helpcontext(0x00014052)]
	HRESULT __stdcall Search(
		[in]BSTR Arg1,
		[in]BSTR Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x00004053), helpcontext(0x00014053)]
	HRESULT __stdcall Transpose(
		[in]VARIANT Arg1,
		[out, retval]VARIANT* RHS);
	[id(0x00004061), helpcontext(0x00014061)]
	HRESULT __stdcall Atan2(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x00004062), helpcontext(0x00014062)]
	HRESULT __stdcall Asin(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x00004063), helpcontext(0x00014063)]
	HRESULT __stdcall Acos(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x00004064), helpcontext(0x00014064)]
	HRESULT __stdcall Choose(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]VARIANT* RHS);
	[id(0x00004065), helpcontext(0x00014065)]
	HRESULT __stdcall HLookup(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]VARIANT* RHS);
	[id(0x00004066), helpcontext(0x00014066)]
	HRESULT __stdcall VLookup(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]VARIANT* RHS);
	[id(0x0000406d), helpcontext(0x0001406d)]
	HRESULT __stdcall Log(
		[in]double Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x00004072), helpcontext(0x00014072)]
	HRESULT __stdcall Proper(
		[in]BSTR Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004076), helpcontext(0x00014076)]
	HRESULT __stdcall Trim(
		[in]BSTR Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004077), helpcontext(0x00014077)]
	HRESULT __stdcall Replace(
		[in]BSTR Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]BSTR Arg4,
		[out, retval]BSTR* RHS);
	[id(0x00004078), helpcontext(0x00014078)]
	HRESULT __stdcall Substitute(
		[in]BSTR Arg1,
		[in]BSTR Arg2,
		[in]BSTR Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]BSTR* RHS);
	[id(0x0000407c), helpcontext(0x0001407c)]
	HRESULT __stdcall Find(
		[in]BSTR Arg1,
		[in]BSTR Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x0000407e), helpcontext(0x0001407e)]
	HRESULT __stdcall IsErr(
		[in]VARIANT Arg1,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000407f), helpcontext(0x0001407f)]
	HRESULT __stdcall IsText(
		[in]VARIANT Arg1,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00004080), helpcontext(0x00014080)]
	HRESULT __stdcall IsNumber(
		[in]VARIANT Arg1,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000408e), helpcontext(0x0001408e)]
	HRESULT __stdcall Sln(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x0000408f), helpcontext(0x0001408f)]
	HRESULT __stdcall Syd(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]double Arg4,
		[out, retval]double* RHS);
	[id(0x00004090), helpcontext(0x00014090)]
	HRESULT __stdcall Ddb(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]double Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x000040a2), helpcontext(0x000140a2)]
	HRESULT __stdcall Clean(
		[in]BSTR Arg1,
		[out, retval]BSTR* RHS);
	[id(0x000040a3), helpcontext(0x000140a3)]
	HRESULT __stdcall MDeterm(
		[in]VARIANT Arg1,
		[out, retval]double* RHS);
	[id(0x000040a4), helpcontext(0x000140a4)]
	HRESULT __stdcall MInverse(
		[in]VARIANT Arg1,
		[out, retval]VARIANT* RHS);
	[id(0x000040a5), helpcontext(0x000140a5)]
	HRESULT __stdcall MMult(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]VARIANT* RHS);
	[id(0x000040a7), helpcontext(0x000140a7)]
	HRESULT __stdcall Ipmt(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]double Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[out, retval]double* RHS);
	[id(0x000040a8), helpcontext(0x000140a8)]
	HRESULT __stdcall Ppmt(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]double Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[out, retval]double* RHS);
	[id(0x000040a9), helpcontext(0x000140a9)]
	HRESULT __stdcall CountA(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x000040b7), helpcontext(0x000140b7)]
	HRESULT __stdcall Product(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x000040b8), helpcontext(0x000140b8)]
	HRESULT __stdcall Fact(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x000040bd), helpcontext(0x000140bd)]
	HRESULT __stdcall DProduct(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000040be), helpcontext(0x000140be)]
	HRESULT __stdcall IsNonText(
		[in]VARIANT Arg1,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000040c1), helpcontext(0x000140c1)]
	HRESULT __stdcall StDevP(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x000040c2), helpcontext(0x000140c2)]
	HRESULT __stdcall VarP(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x000040c3), helpcontext(0x000140c3)]
	HRESULT __stdcall DStDevP(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000040c4), helpcontext(0x000140c4)]
	HRESULT __stdcall DVarP(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000040c6), helpcontext(0x000140c6)]
	HRESULT __stdcall IsLogical(
		[in]VARIANT Arg1,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000040c7), helpcontext(0x000140c7)]
	HRESULT __stdcall DCountA(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000040cc), helpcontext(0x000140cc)]
	HRESULT __stdcall USDollar(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]BSTR* RHS);
	[id(0x000040cd), helpcontext(0x000140cd)]
	HRESULT __stdcall FindB(
		[in]BSTR Arg1,
		[in]BSTR Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000040ce), helpcontext(0x000140ce)]
	HRESULT __stdcall SearchB(
		[in]BSTR Arg1,
		[in]BSTR Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000040cf), helpcontext(0x000140cf)]
	HRESULT __stdcall ReplaceB(
		[in]BSTR Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]BSTR Arg4,
		[out, retval]BSTR* RHS);
	[id(0x000040d4), helpcontext(0x000140d4)]
	HRESULT __stdcall RoundUp(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x000040d5), helpcontext(0x000140d5)]
	HRESULT __stdcall RoundDown(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x000040d8), helpcontext(0x000140d8)]
	HRESULT __stdcall Rank(
		[in]double Arg1,
		[in]Range* Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000040dc), helpcontext(0x000140dc)]
	HRESULT __stdcall Days360(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000040de), helpcontext(0x000140de)]
	HRESULT __stdcall Vdb(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]double Arg4,
		[in]double Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[out, retval]double* RHS);
	[id(0x000040e3), helpcontext(0x000140e3)]
	HRESULT __stdcall Median(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x000040e4), helpcontext(0x000140e4)]
	HRESULT __stdcall SumProduct(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x000040e5), helpcontext(0x000140e5)]
	HRESULT __stdcall Sinh(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x000040e6), helpcontext(0x000140e6)]
	HRESULT __stdcall Cosh(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x000040e7), helpcontext(0x000140e7)]
	HRESULT __stdcall Tanh(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x000040e8), helpcontext(0x000140e8)]
	HRESULT __stdcall Asinh(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x000040e9), helpcontext(0x000140e9)]
	HRESULT __stdcall Acosh(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x000040ea), helpcontext(0x000140ea)]
	HRESULT __stdcall Atanh(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x000040eb), helpcontext(0x000140eb)]
	HRESULT __stdcall DGet(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]VARIANT* RHS);
	[id(0x000040f7), helpcontext(0x000140f7)]
	HRESULT __stdcall Db(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]double Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x000040fc), helpcontext(0x000140fc)]
	HRESULT __stdcall Frequency(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]VARIANT* RHS);
	[id(0x0000410d), helpcontext(0x0001410d)]
	HRESULT __stdcall AveDev(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x0000410e), helpcontext(0x0001410e)]
	HRESULT __stdcall BetaDist(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x0000410f), helpcontext(0x0001410f)]
	HRESULT __stdcall GammaLn(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x00004110), helpcontext(0x00014110)]
	HRESULT __stdcall BetaInv(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x00004111), helpcontext(0x00014111)]
	HRESULT __stdcall BinomDist(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]VARIANT_BOOL Arg4,
		[out, retval]double* RHS);
	[id(0x00004112), helpcontext(0x00014112)]
	HRESULT __stdcall ChiDist(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x00004113), helpcontext(0x00014113)]
	HRESULT __stdcall ChiInv(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x00004114), helpcontext(0x00014114)]
	HRESULT __stdcall Combin(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x00004115), helpcontext(0x00014115)]
	HRESULT __stdcall Confidence(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x00004116), helpcontext(0x00014116)]
	HRESULT __stdcall CritBinom(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x00004117), helpcontext(0x00014117)]
	HRESULT __stdcall Even(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x00004118), helpcontext(0x00014118)]
	HRESULT __stdcall ExponDist(
		[in]double Arg1,
		[in]double Arg2,
		[in]VARIANT_BOOL Arg3,
		[out, retval]double* RHS);
	[id(0x00004119), helpcontext(0x00014119)]
	HRESULT __stdcall FDist(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x0000411a), helpcontext(0x0001411a)]
	HRESULT __stdcall FInv(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x0000411b), helpcontext(0x0001411b)]
	HRESULT __stdcall Fisher(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x0000411c), helpcontext(0x0001411c)]
	HRESULT __stdcall FisherInv(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x0000411d), helpcontext(0x0001411d)]
	HRESULT __stdcall Floor(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x0000411e), helpcontext(0x0001411e)]
	HRESULT __stdcall GammaDist(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]VARIANT_BOOL Arg4,
		[out, retval]double* RHS);
	[id(0x0000411f), helpcontext(0x0001411f)]
	HRESULT __stdcall GammaInv(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x00004120), helpcontext(0x00014120)]
	HRESULT __stdcall Ceiling(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x00004121), helpcontext(0x00014121)]
	HRESULT __stdcall HypGeomDist(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]double Arg4,
		[out, retval]double* RHS);
	[id(0x00004122), helpcontext(0x00014122)]
	HRESULT __stdcall LogNormDist(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x00004123), helpcontext(0x00014123)]
	HRESULT __stdcall LogInv(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x00004124), helpcontext(0x00014124)]
	HRESULT __stdcall NegBinomDist(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x00004125), helpcontext(0x00014125)]
	HRESULT __stdcall NormDist(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]VARIANT_BOOL Arg4,
		[out, retval]double* RHS);
	[id(0x00004126), helpcontext(0x00014126)]
	HRESULT __stdcall NormSDist(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x00004127), helpcontext(0x00014127)]
	HRESULT __stdcall NormInv(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x00004128), helpcontext(0x00014128)]
	HRESULT __stdcall NormSInv(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x00004129), helpcontext(0x00014129)]
	HRESULT __stdcall Standardize(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x0000412a), helpcontext(0x0001412a)]
	HRESULT __stdcall Odd(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x0000412b), helpcontext(0x0001412b)]
	HRESULT __stdcall Permut(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x0000412c), helpcontext(0x0001412c)]
	HRESULT __stdcall Poisson(
		[in]double Arg1,
		[in]double Arg2,
		[in]VARIANT_BOOL Arg3,
		[out, retval]double* RHS);
	[id(0x0000412d), helpcontext(0x0001412d)]
	HRESULT __stdcall TDist(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[out, retval]double* RHS);
	[id(0x0000412e), helpcontext(0x0001412e)]
	HRESULT __stdcall Weibull(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]VARIANT_BOOL Arg4,
		[out, retval]double* RHS);
	[id(0x0000412f), helpcontext(0x0001412f)]
	HRESULT __stdcall SumXMY2(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x00004130), helpcontext(0x00014130)]
	HRESULT __stdcall SumX2MY2(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x00004131), helpcontext(0x00014131)]
	HRESULT __stdcall SumX2PY2(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x00004132), helpcontext(0x00014132)]
	HRESULT __stdcall ChiTest(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x00004133), helpcontext(0x00014133)]
	HRESULT __stdcall Correl(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x00004134), helpcontext(0x00014134)]
	HRESULT __stdcall Covar(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x00004135), helpcontext(0x00014135)]
	HRESULT __stdcall Forecast(
		[in]double Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x00004136), helpcontext(0x00014136)]
	HRESULT __stdcall FTest(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x00004137), helpcontext(0x00014137)]
	HRESULT __stdcall Intercept(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x00004138), helpcontext(0x00014138)]
	HRESULT __stdcall Pearson(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x00004139), helpcontext(0x00014139)]
	HRESULT __stdcall RSq(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x0000413a), helpcontext(0x0001413a)]
	HRESULT __stdcall StEyx(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x0000413b), helpcontext(0x0001413b)]
	HRESULT __stdcall Slope(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x0000413c), helpcontext(0x0001413c)]
	HRESULT __stdcall TTest(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]double Arg3,
		[in]double Arg4,
		[out, retval]double* RHS);
	[id(0x0000413d), helpcontext(0x0001413d)]
	HRESULT __stdcall Prob(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]double Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]double* RHS);
	[id(0x0000413e), helpcontext(0x0001413e)]
	HRESULT __stdcall DevSq(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x0000413f), helpcontext(0x0001413f)]
	HRESULT __stdcall GeoMean(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x00004140), helpcontext(0x00014140)]
	HRESULT __stdcall HarMean(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x00004141), helpcontext(0x00014141)]
	HRESULT __stdcall SumSq(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x00004142), helpcontext(0x00014142)]
	HRESULT __stdcall Kurt(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x00004143), helpcontext(0x00014143)]
	HRESULT __stdcall Skew(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x00004144), helpcontext(0x00014144)]
	HRESULT __stdcall ZTest(
		[in]VARIANT Arg1,
		[in]double Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x00004145), helpcontext(0x00014145)]
	HRESULT __stdcall Large(
		[in]VARIANT Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x00004146), helpcontext(0x00014146)]
	HRESULT __stdcall Small(
		[in]VARIANT Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x00004147), helpcontext(0x00014147)]
	HRESULT __stdcall Quartile(
		[in]VARIANT Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x00004148), helpcontext(0x00014148)]
	HRESULT __stdcall Percentile(
		[in]VARIANT Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x00004149), helpcontext(0x00014149)]
	HRESULT __stdcall PercentRank(
		[in]VARIANT Arg1,
		[in]double Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x0000414a), helpcontext(0x0001414a)]
	HRESULT __stdcall Mode(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x0000414b), helpcontext(0x0001414b)]
	HRESULT __stdcall TrimMean(
		[in]VARIANT Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x0000414c), helpcontext(0x0001414c)]
	HRESULT __stdcall TInv(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x00004151), helpcontext(0x00014151)]
	HRESULT __stdcall Power(
		[in]double Arg1,
		[in]double Arg2,
		[out, retval]double* RHS);
	[id(0x00004156), helpcontext(0x00014156)]
	HRESULT __stdcall Radians(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x00004157), helpcontext(0x00014157)]
	HRESULT __stdcall Degrees(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x00004158), helpcontext(0x00014158)]
	HRESULT __stdcall Subtotal(
		[in]double Arg1,
		[in]Range* Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x00004159), helpcontext(0x00014159)]
	HRESULT __stdcall SumIf(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x0000415a), helpcontext(0x0001415a)]
	HRESULT __stdcall CountIf(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x0000415b), helpcontext(0x0001415b)]
	HRESULT __stdcall CountBlank(
		[in]Range* Arg1,
		[out, retval]double* RHS);
	[id(0x0000415e), helpcontext(0x0001415e)]
	HRESULT __stdcall Ispmt(
		[in]double Arg1,
		[in]double Arg2,
		[in]double Arg3,
		[in]double Arg4,
		[out, retval]double* RHS);
	[id(0x00004162), helpcontext(0x00014162)]
	HRESULT __stdcall Roman(
		[in]double Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x000040d6), helpcontext(0x000140d6)]
	HRESULT __stdcall Asc(
		[in]BSTR Arg1,
		[out, retval]BSTR* RHS);
	[id(0x000040d7), helpcontext(0x000140d7)]
	HRESULT __stdcall Dbcs(
		[in]BSTR Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004168), helpcontext(0x00014168)]
	HRESULT __stdcall Phonetic(
		[in]Range* Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004170), helpcontext(0x00014170)]
	HRESULT __stdcall BahtText(
		[in]double Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004171), hidden, helpcontext(0x00014171)]
	HRESULT __stdcall ThaiDayOfWeek(
		[in]double Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004172), hidden, helpcontext(0x00014172)]
	HRESULT __stdcall ThaiDigit(
		[in]BSTR Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004173), hidden, helpcontext(0x00014173)]
	HRESULT __stdcall ThaiMonthOfYear(
		[in]double Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004174), hidden, helpcontext(0x00014174)]
	HRESULT __stdcall ThaiNumSound(
		[in]double Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004175), hidden, helpcontext(0x00014175)]
	HRESULT __stdcall ThaiNumString(
		[in]double Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004176), hidden, helpcontext(0x00014176)]
	HRESULT __stdcall ThaiStringLength(
		[in]BSTR Arg1,
		[out, retval]double* RHS);
	[id(0x00004177), hidden, helpcontext(0x00014177)]
	HRESULT __stdcall IsThaiDigit(
		[in]BSTR Arg1,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00004178), hidden, helpcontext(0x00014178)]
	HRESULT __stdcall RoundBahtDown(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x00004179), hidden, helpcontext(0x00014179)]
	HRESULT __stdcall RoundBahtUp(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x0000417a), hidden, helpcontext(0x0001417a)]
	HRESULT __stdcall ThaiYear(
		[in]double Arg1,
		[out, retval]double* RHS);
	[id(0x0000417b), helpcontext(0x0001417b)]
	HRESULT __stdcall RTD(
		[in]VARIANT progID,
		[in]VARIANT server,
		[in]VARIANT topic1,
		[in, optional]VARIANT topic2,
		[in, optional]VARIANT topic3,
		[in, optional]VARIANT topic4,
		[in, optional]VARIANT topic5,
		[in, optional]VARIANT topic6,
		[in, optional]VARIANT topic7,
		[in, optional]VARIANT topic8,
		[in, optional]VARIANT topic9,
		[in, optional]VARIANT topic10,
		[in, optional]VARIANT topic11,
		[in, optional]VARIANT topic12,
		[in, optional]VARIANT topic13,
		[in, optional]VARIANT topic14,
		[in, optional]VARIANT topic15,
		[in, optional]VARIANT topic16,
		[in, optional]VARIANT topic17,
		[in, optional]VARIANT topic18,
		[in, optional]VARIANT topic19,
		[in, optional]VARIANT topic20,
		[in, optional]VARIANT topic21,
		[in, optional]VARIANT topic22,
		[in, optional]VARIANT topic23,
		[in, optional]VARIANT topic24,
		[in, optional]VARIANT topic25,
		[in, optional]VARIANT topic26,
		[in, optional]VARIANT topic27,
		[in, optional]VARIANT topic28,
		[out, retval]VARIANT* RHS);
	[id(0x00004180), helpcontext(0x00014180)]
	HRESULT __stdcall Hex2Bin(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x00004181), helpcontext(0x00014181)]
	HRESULT __stdcall Hex2Dec(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004182), helpcontext(0x00014182)]
	HRESULT __stdcall Hex2Oct(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x00004183), helpcontext(0x00014183)]
	HRESULT __stdcall Dec2Bin(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x00004184), helpcontext(0x00014184)]
	HRESULT __stdcall Dec2Hex(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x00004185), helpcontext(0x00014185)]
	HRESULT __stdcall Dec2Oct(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x00004186), helpcontext(0x00014186)]
	HRESULT __stdcall Oct2Bin(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x00004187), helpcontext(0x00014187)]
	HRESULT __stdcall Oct2Hex(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x00004188), helpcontext(0x00014188)]
	HRESULT __stdcall Oct2Dec(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004189), helpcontext(0x00014189)]
	HRESULT __stdcall Bin2Dec(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x0000418a), helpcontext(0x0001418a)]
	HRESULT __stdcall Bin2Oct(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x0000418b), helpcontext(0x0001418b)]
	HRESULT __stdcall Bin2Hex(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x0000418c), helpcontext(0x0001418c)]
	HRESULT __stdcall ImSub(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x0000418d), helpcontext(0x0001418d)]
	HRESULT __stdcall ImDiv(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x0000418e), helpcontext(0x0001418e)]
	HRESULT __stdcall ImPower(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]BSTR* RHS);
	[id(0x0000418f), helpcontext(0x0001418f)]
	HRESULT __stdcall ImAbs(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004190), helpcontext(0x00014190)]
	HRESULT __stdcall ImSqrt(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004191), helpcontext(0x00014191)]
	HRESULT __stdcall ImLn(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004192), helpcontext(0x00014192)]
	HRESULT __stdcall ImLog2(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004193), helpcontext(0x00014193)]
	HRESULT __stdcall ImLog10(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004194), helpcontext(0x00014194)]
	HRESULT __stdcall ImSin(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004195), helpcontext(0x00014195)]
	HRESULT __stdcall ImCos(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004196), helpcontext(0x00014196)]
	HRESULT __stdcall ImExp(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004197), helpcontext(0x00014197)]
	HRESULT __stdcall ImArgument(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004198), helpcontext(0x00014198)]
	HRESULT __stdcall ImConjugate(
		[in]VARIANT Arg1,
		[out, retval]BSTR* RHS);
	[id(0x00004199), helpcontext(0x00014199)]
	HRESULT __stdcall Imaginary(
		[in]VARIANT Arg1,
		[out, retval]double* RHS);
	[id(0x0000419a), helpcontext(0x0001419a)]
	HRESULT __stdcall ImReal(
		[in]VARIANT Arg1,
		[out, retval]double* RHS);
	[id(0x0000419b), helpcontext(0x0001419b)]
	HRESULT __stdcall Complex(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]BSTR* RHS);
	[id(0x0000419c), helpcontext(0x0001419c)]
	HRESULT __stdcall ImSum(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]BSTR* RHS);
	[id(0x0000419d), helpcontext(0x0001419d)]
	HRESULT __stdcall ImProduct(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]BSTR* RHS);
	[id(0x0000419e), helpcontext(0x0001419e)]
	HRESULT __stdcall SeriesSum(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[out, retval]double* RHS);
	[id(0x0000419f), helpcontext(0x0001419f)]
	HRESULT __stdcall FactDouble(
		[in]VARIANT Arg1,
		[out, retval]double* RHS);
	[id(0x000041a0), helpcontext(0x000141a0)]
	HRESULT __stdcall SqrtPi(
		[in]VARIANT Arg1,
		[out, retval]double* RHS);
	[id(0x000041a1), helpcontext(0x000141a1)]
	HRESULT __stdcall Quotient(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041a2), helpcontext(0x000141a2)]
	HRESULT __stdcall Delta(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041a3), helpcontext(0x000141a3)]
	HRESULT __stdcall GeStep(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041a4), helpcontext(0x000141a4)]
	HRESULT __stdcall IsEven(
		[in]VARIANT Arg1,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000041a5), helpcontext(0x000141a5)]
	HRESULT __stdcall IsOdd(
		[in]VARIANT Arg1,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000041a6), helpcontext(0x000141a6)]
	HRESULT __stdcall MRound(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041a7), helpcontext(0x000141a7)]
	HRESULT __stdcall Erf(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041a8), helpcontext(0x000141a8)]
	HRESULT __stdcall ErfC(
		[in]VARIANT Arg1,
		[out, retval]double* RHS);
	[id(0x000041a9), helpcontext(0x000141a9)]
	HRESULT __stdcall BesselJ(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041aa), helpcontext(0x000141aa)]
	HRESULT __stdcall BesselK(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041ab), helpcontext(0x000141ab)]
	HRESULT __stdcall BesselY(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041ac), helpcontext(0x000141ac)]
	HRESULT __stdcall BesselI(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041ad), helpcontext(0x000141ad)]
	HRESULT __stdcall Xirr(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000041ae), helpcontext(0x000141ae)]
	HRESULT __stdcall Xnpv(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041af), helpcontext(0x000141af)]
	HRESULT __stdcall PriceMat(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[out, retval]double* RHS);
	[id(0x000041b0), helpcontext(0x000141b0)]
	HRESULT __stdcall YieldMat(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[out, retval]double* RHS);
	[id(0x000041b1), helpcontext(0x000141b1)]
	HRESULT __stdcall IntRate(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x000041b2), helpcontext(0x000141b2)]
	HRESULT __stdcall Received(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x000041b3), helpcontext(0x000141b3)]
	HRESULT __stdcall Disc(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x000041b4), helpcontext(0x000141b4)]
	HRESULT __stdcall PriceDisc(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x000041b5), helpcontext(0x000141b5)]
	HRESULT __stdcall YieldDisc(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x000041b6), helpcontext(0x000141b6)]
	HRESULT __stdcall TBillEq(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000041b7), helpcontext(0x000141b7)]
	HRESULT __stdcall TBillPrice(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000041b8), helpcontext(0x000141b8)]
	HRESULT __stdcall TBillYield(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000041b9), helpcontext(0x000141b9)]
	HRESULT __stdcall Price(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[out, retval]double* RHS);
	[id(0x000041bb), helpcontext(0x000141bb)]
	HRESULT __stdcall DollarDe(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041bc), helpcontext(0x000141bc)]
	HRESULT __stdcall DollarFr(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041bd), helpcontext(0x000141bd)]
	HRESULT __stdcall Nominal(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041be), helpcontext(0x000141be)]
	HRESULT __stdcall Effect(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041bf), helpcontext(0x000141bf)]
	HRESULT __stdcall CumPrinc(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in]VARIANT Arg6,
		[out, retval]double* RHS);
	[id(0x000041c0), helpcontext(0x000141c0)]
	HRESULT __stdcall CumIPmt(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in]VARIANT Arg6,
		[out, retval]double* RHS);
	[id(0x000041c1), helpcontext(0x000141c1)]
	HRESULT __stdcall EDate(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041c2), helpcontext(0x000141c2)]
	HRESULT __stdcall EoMonth(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041c3), helpcontext(0x000141c3)]
	HRESULT __stdcall YearFrac(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000041c4), helpcontext(0x000141c4)]
	HRESULT __stdcall CoupDayBs(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]double* RHS);
	[id(0x000041c5), helpcontext(0x000141c5)]
	HRESULT __stdcall CoupDays(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]double* RHS);
	[id(0x000041c6), helpcontext(0x000141c6)]
	HRESULT __stdcall CoupDaysNc(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]double* RHS);
	[id(0x000041c7), helpcontext(0x000141c7)]
	HRESULT __stdcall CoupNcd(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]double* RHS);
	[id(0x000041c8), helpcontext(0x000141c8)]
	HRESULT __stdcall CoupNum(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]double* RHS);
	[id(0x000041c9), helpcontext(0x000141c9)]
	HRESULT __stdcall CoupPcd(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]double* RHS);
	[id(0x000041ca), helpcontext(0x000141ca)]
	HRESULT __stdcall Duration(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[out, retval]double* RHS);
	[id(0x000041cb), helpcontext(0x000141cb)]
	HRESULT __stdcall MDuration(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[out, retval]double* RHS);
	[id(0x000041cc), helpcontext(0x000141cc)]
	HRESULT __stdcall OddLPrice(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in]VARIANT Arg6,
		[in]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[out, retval]double* RHS);
	[id(0x000041cd), helpcontext(0x000141cd)]
	HRESULT __stdcall OddLYield(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in]VARIANT Arg6,
		[in]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[out, retval]double* RHS);
	[id(0x000041ce), helpcontext(0x000141ce)]
	HRESULT __stdcall OddFPrice(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in]VARIANT Arg6,
		[in]VARIANT Arg7,
		[in]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[out, retval]double* RHS);
	[id(0x000041cf), helpcontext(0x000141cf)]
	HRESULT __stdcall OddFYield(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in]VARIANT Arg6,
		[in]VARIANT Arg7,
		[in]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[out, retval]double* RHS);
	[id(0x000041d0), helpcontext(0x000141d0)]
	HRESULT __stdcall RandBetween(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041d1), helpcontext(0x000141d1)]
	HRESULT __stdcall WeekNum(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041d2), helpcontext(0x000141d2)]
	HRESULT __stdcall AmorDegrc(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[out, retval]double* RHS);
	[id(0x000041d3), helpcontext(0x000141d3)]
	HRESULT __stdcall AmorLinc(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[out, retval]double* RHS);
	[id(0x000041d4), helpcontext(0x000141d4)]
	HRESULT __stdcall Convert(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000041d5), helpcontext(0x000141d5)]
	HRESULT __stdcall AccrInt(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in]VARIANT Arg5,
		[in]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[out, retval]double* RHS);
	[id(0x000041d6), helpcontext(0x000141d6)]
	HRESULT __stdcall AccrIntM(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in]VARIANT Arg3,
		[in]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[out, retval]double* RHS);
	[id(0x000041d7), helpcontext(0x000141d7)]
	HRESULT __stdcall WorkDay(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000041d8), helpcontext(0x000141d8)]
	HRESULT __stdcall NetworkDays(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000041d9), helpcontext(0x000141d9)]
	HRESULT __stdcall Gcd(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x000041da), helpcontext(0x000141da)]
	HRESULT __stdcall MultiNomial(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x000041db), helpcontext(0x000141db)]
	HRESULT __stdcall Lcm(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x000041dc), helpcontext(0x000141dc)]
	HRESULT __stdcall FVSchedule(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]double* RHS);
	[id(0x000041e2), helpcontext(0x000141e2)]
	HRESULT __stdcall SumIfs(
		[in]Range* Arg1,
		[in]Range* Arg2,
		[in]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[out, retval]double* RHS);
	[id(0x000041e1), helpcontext(0x000141e1)]
	HRESULT __stdcall CountIfs(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]double* RHS);
	[id(0x000041e3), helpcontext(0x000141e3)]
	HRESULT __stdcall AverageIf(
		[in]Range* Arg1,
		[in]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[out, retval]double* RHS);
	[id(0x000041e4), helpcontext(0x000141e4)]
	HRESULT __stdcall AverageIfs(
		[in]Range* Arg1,
		[in]Range* Arg2,
		[in]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[out, retval]double* RHS);
	[id(0x000041e0), helpcontext(0x000141e0)]
	HRESULT __stdcall IfError(
		[in]VARIANT Arg1,
		[in]VARIANT Arg2,
		[out, retval]VARIANT* RHS);
};
'!
!ExcelIWorksheetFunction categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIWorksheetFunction methodsFor!

_wsFunction
	"Answer the <VARIANT> result of invoking the _WSFunction() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _wsFunction: VARIANT unspecified
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

_wsFunction: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <VARIANT> result of invoking the _WSFunction() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		_WSFunction: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

_WSFunction: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the _WSFunction() method of the COM object.

		HRESULT __stdcall _WSFunction(
			[in, optional]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

accrInt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the AccrInt() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 accrInt: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: arg6
		 arg7: VARIANT unspecified!

accrInt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7
	"Answer the <DOUBLE> result of invoking the AccrInt() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		AccrInt: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		rhs: answer.
	^answer asObject
!

AccrInt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 rhs: rhs
	"Private - Invoke the AccrInt() method of the COM object.

		HRESULT __stdcall AccrInt(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 283 variant variant variant variant variant variant variant double*>
	^self invalidCall!

accrIntM: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the AccrIntM() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 accrIntM: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: VARIANT unspecified!

accrIntM: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the AccrIntM() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		AccrIntM: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

AccrIntM: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the AccrIntM() method of the COM object.

		HRESULT __stdcall AccrIntM(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 284 variant variant variant variant variant double*>
	^self invalidCall!

acos: arg1
	"Answer the <DOUBLE> result of invoking the Acos() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Acos: arg1
		rhs: answer.
	^answer asObject
!

Acos: arg1 rhs: rhs
	"Private - Invoke the Acos() method of the COM object.

		HRESULT __stdcall Acos(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 58 double double*>
	^self invalidCall!

acosh: arg1
	"Answer the <DOUBLE> result of invoking the Acosh() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Acosh: arg1
		rhs: answer.
	^answer asObject
!

Acosh: arg1 rhs: rhs
	"Private - Invoke the Acosh() method of the COM object.

		HRESULT __stdcall Acosh(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 106 double double*>
	^self invalidCall!

amorDegrc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the AmorDegrc() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 amorDegrc: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: arg6
		 arg7: VARIANT unspecified!

amorDegrc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7
	"Answer the <DOUBLE> result of invoking the AmorDegrc() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		AmorDegrc: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		rhs: answer.
	^answer asObject
!

AmorDegrc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 rhs: rhs
	"Private - Invoke the AmorDegrc() method of the COM object.

		HRESULT __stdcall AmorDegrc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 280 variant variant variant variant variant variant variant double*>
	^self invalidCall!

amorLinc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the AmorLinc() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 amorLinc: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: arg6
		 arg7: VARIANT unspecified!

amorLinc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7
	"Answer the <DOUBLE> result of invoking the AmorLinc() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		AmorLinc: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		rhs: answer.
	^answer asObject
!

AmorLinc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 rhs: rhs
	"Private - Invoke the AmorLinc() method of the COM object.

		HRESULT __stdcall AmorLinc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 281 variant variant variant variant variant variant variant double*>
	^self invalidCall!

and: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <VARIANT_BOOL> result of invoking the And() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		And: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

And: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the And() method of the COM object.

		HRESULT __stdcall And(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 30 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant varbool*>
	^self invalidCall!

and_: arg1
	"Answer the <VARIANT_BOOL> result of invoking the And() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 and: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

asc: arg1
	"Answer the <BSTR> result of invoking the Asc() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Asc: arg1
		rhs: answer.
	^answer asObject
!

Asc: arg1 rhs: rhs
	"Private - Invoke the Asc() method of the COM object.

		HRESULT __stdcall Asc(
			[in]BSTR Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 184 bstr bstr*>
	^self invalidCall!

asin: arg1
	"Answer the <DOUBLE> result of invoking the Asin() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Asin: arg1
		rhs: answer.
	^answer asObject
!

Asin: arg1 rhs: rhs
	"Private - Invoke the Asin() method of the COM object.

		HRESULT __stdcall Asin(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 57 double double*>
	^self invalidCall!

asinh: arg1
	"Answer the <DOUBLE> result of invoking the Asinh() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Asinh: arg1
		rhs: answer.
	^answer asObject
!

Asinh: arg1 rhs: rhs
	"Private - Invoke the Asinh() method of the COM object.

		HRESULT __stdcall Asinh(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 105 double double*>
	^self invalidCall!

atan2: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Atan2() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Atan2: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Atan2: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Atan2() method of the COM object.

		HRESULT __stdcall Atan2(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 56 double double double*>
	^self invalidCall!

atanh: arg1
	"Answer the <DOUBLE> result of invoking the Atanh() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Atanh: arg1
		rhs: answer.
	^answer asObject
!

Atanh: arg1 rhs: rhs
	"Private - Invoke the Atanh() method of the COM object.

		HRESULT __stdcall Atanh(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 107 double double*>
	^self invalidCall!

aveDev: arg1
	"Answer the <DOUBLE> result of invoking the AveDev() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 aveDev: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

aveDev: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the AveDev() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		AveDev: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

AveDev: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the AveDev() method of the COM object.

		HRESULT __stdcall AveDev(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 111 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

average: arg1
	"Answer the <DOUBLE> result of invoking the Average() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 average: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

average: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Average() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Average: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Average: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Average() method of the COM object.

		HRESULT __stdcall Average(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 16 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

averageIf: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the AverageIf() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 averageIf: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

averageIf: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the AverageIf() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		AverageIf: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

AverageIf: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the AverageIf() method of the COM object.

		HRESULT __stdcall AverageIf(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 293 ExcelRange* variant variant double*>
	^self invalidCall!

averageIfs: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the AverageIfs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 averageIfs: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified!

averageIfs: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29
	"Answer the <DOUBLE> result of invoking the AverageIfs() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		AverageIfs: arg1
		arg2: arg2
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		rhs: answer.
	^answer asObject
!

AverageIfs: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 rhs: rhs
	"Private - Invoke the AverageIfs() method of the COM object.

		HRESULT __stdcall AverageIfs(
			[in]Range* Arg1,
			[in]Range* Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 294 ExcelRange* ExcelRange* variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

bahtText: arg1
	"Answer the <BSTR> result of invoking the BahtText() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		BahtText: arg1
		rhs: answer.
	^answer asObject
!

BahtText: arg1 rhs: rhs
	"Private - Invoke the BahtText() method of the COM object.

		HRESULT __stdcall BahtText(
			[in]double Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 187 double bstr*>
	^self invalidCall!

besselI: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the BesselI() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		BesselI: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

BesselI: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the BesselI() method of the COM object.

		HRESULT __stdcall BesselI(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 243 variant variant double*>
	^self invalidCall!

besselJ: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the BesselJ() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		BesselJ: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

BesselJ: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the BesselJ() method of the COM object.

		HRESULT __stdcall BesselJ(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 240 variant variant double*>
	^self invalidCall!

besselK: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the BesselK() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		BesselK: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

BesselK: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the BesselK() method of the COM object.

		HRESULT __stdcall BesselK(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 241 variant variant double*>
	^self invalidCall!

besselY: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the BesselY() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		BesselY: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

BesselY: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the BesselY() method of the COM object.

		HRESULT __stdcall BesselY(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 242 variant variant double*>
	^self invalidCall!

betaDist: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the BetaDist() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 betaDist: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified!

betaDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the BetaDist() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		BetaDist: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

BetaDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the BetaDist() method of the COM object.

		HRESULT __stdcall BetaDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 112 double double double variant variant double*>
	^self invalidCall!

betaInv: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the BetaInv() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 betaInv: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified!

betaInv: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the BetaInv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		BetaInv: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

BetaInv: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the BetaInv() method of the COM object.

		HRESULT __stdcall BetaInv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 114 double double double variant variant double*>
	^self invalidCall!

bin2Dec: arg1
	"Answer the <BSTR> result of invoking the Bin2Dec() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Bin2Dec: arg1 asVariant
		rhs: answer.
	^answer asObject
!

Bin2Dec: arg1 rhs: rhs
	"Private - Invoke the Bin2Dec() method of the COM object.

		HRESULT __stdcall Bin2Dec(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 208 variant bstr*>
	^self invalidCall!

bin2Hex: arg1
	"Answer the <BSTR> result of invoking the Bin2Hex() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 bin2Hex: arg1
		 arg2: VARIANT unspecified!

bin2Hex: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Bin2Hex() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Bin2Hex: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Bin2Hex: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Bin2Hex() method of the COM object.

		HRESULT __stdcall Bin2Hex(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 210 variant variant bstr*>
	^self invalidCall!

bin2Oct: arg1
	"Answer the <BSTR> result of invoking the Bin2Oct() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 bin2Oct: arg1
		 arg2: VARIANT unspecified!

bin2Oct: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Bin2Oct() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Bin2Oct: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Bin2Oct: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Bin2Oct() method of the COM object.

		HRESULT __stdcall Bin2Oct(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 209 variant variant bstr*>
	^self invalidCall!

binomDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the BinomDist() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		BinomDist: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		rhs: answer.
	^answer asObject
!

BinomDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the BinomDist() method of the COM object.

		HRESULT __stdcall BinomDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]VARIANT_BOOL Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 115 double double double varbool double*>
	^self invalidCall!

ceiling: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Ceiling() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Ceiling: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Ceiling: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Ceiling() method of the COM object.

		HRESULT __stdcall Ceiling(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 130 double double double*>
	^self invalidCall!

chiDist: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the ChiDist() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		ChiDist: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

ChiDist: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the ChiDist() method of the COM object.

		HRESULT __stdcall ChiDist(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 116 double double double*>
	^self invalidCall!

chiInv: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the ChiInv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		ChiInv: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

ChiInv: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the ChiInv() method of the COM object.

		HRESULT __stdcall ChiInv(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 117 double double double*>
	^self invalidCall!

chiTest: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the ChiTest() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		ChiTest: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

ChiTest: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the ChiTest() method of the COM object.

		HRESULT __stdcall ChiTest(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 148 variant variant double*>
	^self invalidCall!

choose: arg1 arg2: arg2
	"Answer the <VARIANT> result of invoking the Choose() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 choose: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

choose: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <VARIANT> result of invoking the Choose() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Choose: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Choose: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Choose() method of the COM object.

		HRESULT __stdcall Choose(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 59 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

clean: arg1
	"Answer the <BSTR> result of invoking the Clean() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Clean: arg1
		rhs: answer.
	^answer asObject
!

Clean: arg1 rhs: rhs
	"Private - Invoke the Clean() method of the COM object.

		HRESULT __stdcall Clean(
			[in]BSTR Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 74 bstr bstr*>
	^self invalidCall!

combin: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Combin() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Combin: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Combin: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Combin() method of the COM object.

		HRESULT __stdcall Combin(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 118 double double double*>
	^self invalidCall!

complex: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Complex() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 complex: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

complex: arg1 arg2: arg2 arg3: arg3
	"Answer the <BSTR> result of invoking the Complex() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Complex: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

Complex: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Complex() method of the COM object.

		HRESULT __stdcall Complex(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 226 variant variant variant bstr*>
	^self invalidCall!

confidence: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Confidence() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Confidence: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

Confidence: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Confidence() method of the COM object.

		HRESULT __stdcall Confidence(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 119 double double double double*>
	^self invalidCall!

convert: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Convert() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Convert: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

Convert: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Convert() method of the COM object.

		HRESULT __stdcall Convert(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 282 variant variant variant double*>
	^self invalidCall!

correl: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Correl() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Correl: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Correl: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Correl() method of the COM object.

		HRESULT __stdcall Correl(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 149 variant variant double*>
	^self invalidCall!

cosh: arg1
	"Answer the <DOUBLE> result of invoking the Cosh() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Cosh: arg1
		rhs: answer.
	^answer asObject
!

Cosh: arg1 rhs: rhs
	"Private - Invoke the Cosh() method of the COM object.

		HRESULT __stdcall Cosh(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 103 double double*>
	^self invalidCall!

count: arg1
	"Answer the <DOUBLE> result of invoking the Count() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 count: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

count: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Count() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Count: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Count: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Count() method of the COM object.

		HRESULT __stdcall Count(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 12 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

countA: arg1
	"Answer the <DOUBLE> result of invoking the CountA() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 countA: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

countA: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the CountA() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CountA: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

CountA: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the CountA() method of the COM object.

		HRESULT __stdcall CountA(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 80 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

countBlank: arg1
	"Answer the <DOUBLE> result of invoking the CountBlank() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CountBlank: arg1
		rhs: answer.
	^answer asObject
!

CountBlank: arg1 rhs: rhs
	"Private - Invoke the CountBlank() method of the COM object.

		HRESULT __stdcall CountBlank(
			[in]Range* Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 181 ExcelRange* double*>
	^self invalidCall!

countIf: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the CountIf() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CountIf: arg1
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

CountIf: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the CountIf() method of the COM object.

		HRESULT __stdcall CountIf(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 180 ExcelRange* variant double*>
	^self invalidCall!

countIfs: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the CountIfs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 countIfs: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

countIfs: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the CountIfs() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CountIfs: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

CountIfs: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the CountIfs() method of the COM object.

		HRESULT __stdcall CountIfs(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 292 ExcelRange* variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

coupDayBs: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the CoupDayBs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 coupDayBs: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified!

coupDayBs: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the CoupDayBs() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CoupDayBs: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

CoupDayBs: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the CoupDayBs() method of the COM object.

		HRESULT __stdcall CoupDayBs(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 266 variant variant variant variant double*>
	^self invalidCall!

coupDays: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the CoupDays() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 coupDays: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified!

coupDays: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the CoupDays() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CoupDays: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

CoupDays: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the CoupDays() method of the COM object.

		HRESULT __stdcall CoupDays(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 267 variant variant variant variant double*>
	^self invalidCall!

coupDaysNc: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the CoupDaysNc() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 coupDaysNc: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified!

coupDaysNc: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the CoupDaysNc() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CoupDaysNc: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

CoupDaysNc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the CoupDaysNc() method of the COM object.

		HRESULT __stdcall CoupDaysNc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 268 variant variant variant variant double*>
	^self invalidCall!

coupNcd: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the CoupNcd() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 coupNcd: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified!

coupNcd: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the CoupNcd() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CoupNcd: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

CoupNcd: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the CoupNcd() method of the COM object.

		HRESULT __stdcall CoupNcd(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 269 variant variant variant variant double*>
	^self invalidCall!

coupNum: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the CoupNum() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 coupNum: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified!

coupNum: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the CoupNum() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CoupNum: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

CoupNum: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the CoupNum() method of the COM object.

		HRESULT __stdcall CoupNum(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 270 variant variant variant variant double*>
	^self invalidCall!

coupPcd: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the CoupPcd() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 coupPcd: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified!

coupPcd: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the CoupPcd() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CoupPcd: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

CoupPcd: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the CoupPcd() method of the COM object.

		HRESULT __stdcall CoupPcd(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 271 variant variant variant variant double*>
	^self invalidCall!

covar: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Covar() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Covar: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Covar: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Covar() method of the COM object.

		HRESULT __stdcall Covar(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 150 variant variant double*>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

critBinom: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the CritBinom() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CritBinom: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

CritBinom: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the CritBinom() method of the COM object.

		HRESULT __stdcall CritBinom(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 120 double double double double*>
	^self invalidCall!

cumIPmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the CumIPmt() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CumIPmt: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		rhs: answer.
	^answer asObject
!

CumIPmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 rhs: rhs
	"Private - Invoke the CumIPmt() method of the COM object.

		HRESULT __stdcall CumIPmt(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 262 variant variant variant variant variant variant double*>
	^self invalidCall!

cumPrinc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the CumPrinc() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CumPrinc: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		rhs: answer.
	^answer asObject
!

CumPrinc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 rhs: rhs
	"Private - Invoke the CumPrinc() method of the COM object.

		HRESULT __stdcall CumPrinc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 261 variant variant variant variant variant variant double*>
	^self invalidCall!

dAverage: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DAverage() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DAverage: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

DAverage: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the DAverage() method of the COM object.

		HRESULT __stdcall DAverage(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 34 ExcelRange* variant variant double*>
	^self invalidCall!

days360: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Days360() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 days360: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

days360: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Days360() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Days360: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

Days360: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Days360() method of the COM object.

		HRESULT __stdcall Days360(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 98 variant variant variant double*>
	^self invalidCall!

db: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Db() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 db: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: VARIANT unspecified!

db: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the Db() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Db: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

Db: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the Db() method of the COM object.

		HRESULT __stdcall Db(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 109 double double double double variant double*>
	^self invalidCall!

dbcs: arg1
	"Answer the <BSTR> result of invoking the Dbcs() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Dbcs: arg1
		rhs: answer.
	^answer asObject
!

Dbcs: arg1 rhs: rhs
	"Private - Invoke the Dbcs() method of the COM object.

		HRESULT __stdcall Dbcs(
			[in]BSTR Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 185 bstr bstr*>
	^self invalidCall!

dCount: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DCount() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DCount: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

DCount: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the DCount() method of the COM object.

		HRESULT __stdcall DCount(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 32 ExcelRange* variant variant double*>
	^self invalidCall!

dCountA: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DCountA() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DCountA: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

DCountA: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the DCountA() method of the COM object.

		HRESULT __stdcall DCountA(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 90 ExcelRange* variant variant double*>
	^self invalidCall!

ddb: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Ddb() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 ddb: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: VARIANT unspecified!

ddb: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the Ddb() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Ddb: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

Ddb: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the Ddb() method of the COM object.

		HRESULT __stdcall Ddb(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 73 double double double double variant double*>
	^self invalidCall!

dec2Bin: arg1
	"Answer the <BSTR> result of invoking the Dec2Bin() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dec2Bin: arg1
		 arg2: VARIANT unspecified!

dec2Bin: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Dec2Bin() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Dec2Bin: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Dec2Bin: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Dec2Bin() method of the COM object.

		HRESULT __stdcall Dec2Bin(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 202 variant variant bstr*>
	^self invalidCall!

dec2Hex: arg1
	"Answer the <BSTR> result of invoking the Dec2Hex() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dec2Hex: arg1
		 arg2: VARIANT unspecified!

dec2Hex: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Dec2Hex() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Dec2Hex: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Dec2Hex: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Dec2Hex() method of the COM object.

		HRESULT __stdcall Dec2Hex(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 203 variant variant bstr*>
	^self invalidCall!

dec2Oct: arg1
	"Answer the <BSTR> result of invoking the Dec2Oct() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dec2Oct: arg1
		 arg2: VARIANT unspecified!

dec2Oct: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Dec2Oct() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Dec2Oct: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Dec2Oct: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Dec2Oct() method of the COM object.

		HRESULT __stdcall Dec2Oct(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 204 variant variant bstr*>
	^self invalidCall!

degrees: arg1
	"Answer the <DOUBLE> result of invoking the Degrees() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Degrees: arg1
		rhs: answer.
	^answer asObject
!

Degrees: arg1 rhs: rhs
	"Private - Invoke the Degrees() method of the COM object.

		HRESULT __stdcall Degrees(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 177 double double*>
	^self invalidCall!

delta: arg1
	"Answer the <DOUBLE> result of invoking the Delta() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 delta: arg1
		 arg2: VARIANT unspecified!

delta: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Delta() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Delta: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Delta: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Delta() method of the COM object.

		HRESULT __stdcall Delta(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 233 variant variant double*>
	^self invalidCall!

devSq: arg1
	"Answer the <DOUBLE> result of invoking the DevSq() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 devSq: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

devSq: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the DevSq() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DevSq: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

DevSq: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the DevSq() method of the COM object.

		HRESULT __stdcall DevSq(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 160 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

dGet: arg1 arg2: arg2 arg3: arg3
	"Answer the <VARIANT> result of invoking the DGet() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		DGet: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

DGet: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the DGet() method of the COM object.

		HRESULT __stdcall DGet(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 108 ExcelRange* variant variant variant*>
	^self invalidCall!

disc: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Disc() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 disc: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: VARIANT unspecified!

disc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the Disc() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Disc: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

Disc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the Disc() method of the COM object.

		HRESULT __stdcall Disc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 250 variant variant variant variant variant double*>
	^self invalidCall!

dMax: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DMax() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DMax: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

DMax: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the DMax() method of the COM object.

		HRESULT __stdcall DMax(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 36 ExcelRange* variant variant double*>
	^self invalidCall!

dMin: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DMin() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DMin: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

DMin: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the DMin() method of the COM object.

		HRESULT __stdcall DMin(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 35 ExcelRange* variant variant double*>
	^self invalidCall!

dollar: arg1
	"Answer the <BSTR> result of invoking the Dollar() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dollar: arg1
		 arg2: VARIANT unspecified!

dollar: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Dollar() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Dollar: arg1
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Dollar: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Dollar() method of the COM object.

		HRESULT __stdcall Dollar(
			[in]double Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 21 double variant bstr*>
	^self invalidCall!

dollarDe: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the DollarDe() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DollarDe: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

DollarDe: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the DollarDe() method of the COM object.

		HRESULT __stdcall DollarDe(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 257 variant variant double*>
	^self invalidCall!

dollarFr: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the DollarFr() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DollarFr: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

DollarFr: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the DollarFr() method of the COM object.

		HRESULT __stdcall DollarFr(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 258 variant variant double*>
	^self invalidCall!

dProduct: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DProduct() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DProduct: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

DProduct: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the DProduct() method of the COM object.

		HRESULT __stdcall DProduct(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 83 ExcelRange* variant variant double*>
	^self invalidCall!

dStDev: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DStDev() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DStDev: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

DStDev: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the DStDev() method of the COM object.

		HRESULT __stdcall DStDev(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 37 ExcelRange* variant variant double*>
	^self invalidCall!

dStDevP: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DStDevP() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DStDevP: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

DStDevP: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the DStDevP() method of the COM object.

		HRESULT __stdcall DStDevP(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 87 ExcelRange* variant variant double*>
	^self invalidCall!

dSum: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DSum() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DSum: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

DSum: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the DSum() method of the COM object.

		HRESULT __stdcall DSum(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 33 ExcelRange* variant variant double*>
	^self invalidCall!

duration: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the Duration() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 duration: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: VARIANT unspecified!

duration: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the Duration() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Duration: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		rhs: answer.
	^answer asObject
!

Duration: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 rhs: rhs
	"Private - Invoke the Duration() method of the COM object.

		HRESULT __stdcall Duration(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 272 variant variant variant variant variant variant double*>
	^self invalidCall!

dVar: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DVar() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DVar: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

DVar: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the DVar() method of the COM object.

		HRESULT __stdcall DVar(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 39 ExcelRange* variant variant double*>
	^self invalidCall!

dVarP: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DVarP() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		DVarP: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

DVarP: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the DVarP() method of the COM object.

		HRESULT __stdcall DVarP(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 88 ExcelRange* variant variant double*>
	^self invalidCall!

eDate: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the EDate() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		EDate: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

EDate: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the EDate() method of the COM object.

		HRESULT __stdcall EDate(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 263 variant variant double*>
	^self invalidCall!

effect: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Effect() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Effect: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Effect: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Effect() method of the COM object.

		HRESULT __stdcall Effect(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 260 variant variant double*>
	^self invalidCall!

eoMonth: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the EoMonth() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		EoMonth: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

EoMonth: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the EoMonth() method of the COM object.

		HRESULT __stdcall EoMonth(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 264 variant variant double*>
	^self invalidCall!

erf: arg1
	"Answer the <DOUBLE> result of invoking the Erf() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 erf: arg1
		 arg2: VARIANT unspecified!

erf: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Erf() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Erf: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Erf: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Erf() method of the COM object.

		HRESULT __stdcall Erf(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 238 variant variant double*>
	^self invalidCall!

erfC: arg1
	"Answer the <DOUBLE> result of invoking the ErfC() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		ErfC: arg1 asVariant
		rhs: answer.
	^answer asObject
!

ErfC: arg1 rhs: rhs
	"Private - Invoke the ErfC() method of the COM object.

		HRESULT __stdcall ErfC(
			[in]VARIANT Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 239 variant double*>
	^self invalidCall!

even: arg1
	"Answer the <DOUBLE> result of invoking the Even() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Even: arg1
		rhs: answer.
	^answer asObject
!

Even: arg1 rhs: rhs
	"Private - Invoke the Even() method of the COM object.

		HRESULT __stdcall Even(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 121 double double*>
	^self invalidCall!

exponDist: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the ExponDist() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		ExponDist: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

ExponDist: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the ExponDist() method of the COM object.

		HRESULT __stdcall ExponDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]VARIANT_BOOL Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 122 double double varbool double*>
	^self invalidCall!

fact: arg1
	"Answer the <DOUBLE> result of invoking the Fact() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Fact: arg1
		rhs: answer.
	^answer asObject
!

Fact: arg1 rhs: rhs
	"Private - Invoke the Fact() method of the COM object.

		HRESULT __stdcall Fact(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 82 double double*>
	^self invalidCall!

factDouble: arg1
	"Answer the <DOUBLE> result of invoking the FactDouble() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		FactDouble: arg1 asVariant
		rhs: answer.
	^answer asObject
!

FactDouble: arg1 rhs: rhs
	"Private - Invoke the FactDouble() method of the COM object.

		HRESULT __stdcall FactDouble(
			[in]VARIANT Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 230 variant double*>
	^self invalidCall!

fDist: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the FDist() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		FDist: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

FDist: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the FDist() method of the COM object.

		HRESULT __stdcall FDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 123 double double double double*>
	^self invalidCall!

find: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Find() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 find: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

find: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Find() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Find: arg1
		arg2: arg2
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

Find: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Find() method of the COM object.

		HRESULT __stdcall Find(
			[in]BSTR Arg1,
			[in]BSTR Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 67 bstr bstr variant double*>
	^self invalidCall!

findB: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the FindB() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 findB: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

findB: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the FindB() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		FindB: arg1
		arg2: arg2
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

FindB: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the FindB() method of the COM object.

		HRESULT __stdcall FindB(
			[in]BSTR Arg1,
			[in]BSTR Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 92 bstr bstr variant double*>
	^self invalidCall!

fInv: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the FInv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		FInv: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

FInv: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the FInv() method of the COM object.

		HRESULT __stdcall FInv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 124 double double double double*>
	^self invalidCall!

fisher: arg1
	"Answer the <DOUBLE> result of invoking the Fisher() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Fisher: arg1
		rhs: answer.
	^answer asObject
!

Fisher: arg1 rhs: rhs
	"Private - Invoke the Fisher() method of the COM object.

		HRESULT __stdcall Fisher(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 125 double double*>
	^self invalidCall!

fisherInv: arg1
	"Answer the <DOUBLE> result of invoking the FisherInv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		FisherInv: arg1
		rhs: answer.
	^answer asObject
!

FisherInv: arg1 rhs: rhs
	"Private - Invoke the FisherInv() method of the COM object.

		HRESULT __stdcall FisherInv(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 126 double double*>
	^self invalidCall!

fixed: arg1
	"Answer the <BSTR> result of invoking the Fixed() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 fixed: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified!

fixed: arg1 arg2: arg2 arg3: arg3
	"Answer the <BSTR> result of invoking the Fixed() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Fixed: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

Fixed: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Fixed() method of the COM object.

		HRESULT __stdcall Fixed(
			[in]double Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 22 double variant variant bstr*>
	^self invalidCall!

floor: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Floor() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Floor: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Floor: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Floor() method of the COM object.

		HRESULT __stdcall Floor(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 127 double double double*>
	^self invalidCall!

forecast: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Forecast() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Forecast: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

Forecast: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Forecast() method of the COM object.

		HRESULT __stdcall Forecast(
			[in]double Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 151 double variant variant double*>
	^self invalidCall!

frequency: arg1 arg2: arg2
	"Answer the <VARIANT> result of invoking the Frequency() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Frequency: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Frequency: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Frequency() method of the COM object.

		HRESULT __stdcall Frequency(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 110 variant variant variant*>
	^self invalidCall!

fTest: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the FTest() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		FTest: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

FTest: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the FTest() method of the COM object.

		HRESULT __stdcall FTest(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 152 variant variant double*>
	^self invalidCall!

fv: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Fv() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 fv: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified!

fv: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the Fv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Fv: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

Fv: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the Fv() method of the COM object.

		HRESULT __stdcall Fv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 46 double double double variant variant double*>
	^self invalidCall!

fvSchedule: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the FVSchedule() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		FVSchedule: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

FVSchedule: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the FVSchedule() method of the COM object.

		HRESULT __stdcall FVSchedule(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 290 variant variant double*>
	^self invalidCall!

gammaDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the GammaDist() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		GammaDist: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		rhs: answer.
	^answer asObject
!

GammaDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the GammaDist() method of the COM object.

		HRESULT __stdcall GammaDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]VARIANT_BOOL Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 128 double double double varbool double*>
	^self invalidCall!

gammaInv: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the GammaInv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		GammaInv: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

GammaInv: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the GammaInv() method of the COM object.

		HRESULT __stdcall GammaInv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 129 double double double double*>
	^self invalidCall!

gammaLn: arg1
	"Answer the <DOUBLE> result of invoking the GammaLn() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		GammaLn: arg1
		rhs: answer.
	^answer asObject
!

GammaLn: arg1 rhs: rhs
	"Private - Invoke the GammaLn() method of the COM object.

		HRESULT __stdcall GammaLn(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 113 double double*>
	^self invalidCall!

gcd: arg1
	"Answer the <DOUBLE> result of invoking the Gcd() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 gcd: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

gcd: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Gcd() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Gcd: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Gcd: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Gcd() method of the COM object.

		HRESULT __stdcall Gcd(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 287 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

geoMean: arg1
	"Answer the <DOUBLE> result of invoking the GeoMean() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 geoMean: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

geoMean: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the GeoMean() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		GeoMean: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

GeoMean: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the GeoMean() method of the COM object.

		HRESULT __stdcall GeoMean(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 161 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

geStep: arg1
	"Answer the <DOUBLE> result of invoking the GeStep() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 geStep: arg1
		 arg2: VARIANT unspecified!

geStep: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the GeStep() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		GeStep: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

GeStep: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the GeStep() method of the COM object.

		HRESULT __stdcall GeStep(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 234 variant variant double*>
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

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

growth: arg1
	"Answer the <VARIANT> result of invoking the Growth() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 growth: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified!

growth: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <VARIANT> result of invoking the Growth() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Growth: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

Growth: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the Growth() method of the COM object.

		HRESULT __stdcall Growth(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 44 variant variant variant variant variant*>
	^self invalidCall!

harMean: arg1
	"Answer the <DOUBLE> result of invoking the HarMean() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 harMean: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

harMean: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the HarMean() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		HarMean: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

HarMean: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the HarMean() method of the COM object.

		HRESULT __stdcall HarMean(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 162 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

hex2Bin: arg1
	"Answer the <BSTR> result of invoking the Hex2Bin() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 hex2Bin: arg1
		 arg2: VARIANT unspecified!

hex2Bin: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Hex2Bin() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Hex2Bin: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Hex2Bin: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Hex2Bin() method of the COM object.

		HRESULT __stdcall Hex2Bin(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 199 variant variant bstr*>
	^self invalidCall!

hex2Dec: arg1
	"Answer the <BSTR> result of invoking the Hex2Dec() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Hex2Dec: arg1 asVariant
		rhs: answer.
	^answer asObject
!

Hex2Dec: arg1 rhs: rhs
	"Private - Invoke the Hex2Dec() method of the COM object.

		HRESULT __stdcall Hex2Dec(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 200 variant bstr*>
	^self invalidCall!

hex2Oct: arg1
	"Answer the <BSTR> result of invoking the Hex2Oct() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 hex2Oct: arg1
		 arg2: VARIANT unspecified!

hex2Oct: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Hex2Oct() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Hex2Oct: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Hex2Oct: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Hex2Oct() method of the COM object.

		HRESULT __stdcall Hex2Oct(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 201 variant variant bstr*>
	^self invalidCall!

hLookup: arg1 arg2: arg2 arg3: arg3
	"Answer the <VARIANT> result of invoking the HLookup() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 hLookup: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified!

hLookup: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <VARIANT> result of invoking the HLookup() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		HLookup: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

HLookup: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the HLookup() method of the COM object.

		HRESULT __stdcall HLookup(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 60 variant variant variant variant variant*>
	^self invalidCall!

hypGeomDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the HypGeomDist() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		HypGeomDist: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		rhs: answer.
	^answer asObject
!

HypGeomDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the HypGeomDist() method of the COM object.

		HRESULT __stdcall HypGeomDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 131 double double double double double*>
	^self invalidCall!

ifError: arg1 arg2: arg2
	"Answer the <VARIANT> result of invoking the IfError() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		IfError: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

IfError: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the IfError() method of the COM object.

		HRESULT __stdcall IfError(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 295 variant variant variant*>
	^self invalidCall!

imAbs: arg1
	"Answer the <BSTR> result of invoking the ImAbs() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImAbs: arg1 asVariant
		rhs: answer.
	^answer asObject
!

ImAbs: arg1 rhs: rhs
	"Private - Invoke the ImAbs() method of the COM object.

		HRESULT __stdcall ImAbs(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 214 variant bstr*>
	^self invalidCall!

imaginary: arg1
	"Answer the <DOUBLE> result of invoking the Imaginary() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Imaginary: arg1 asVariant
		rhs: answer.
	^answer asObject
!

Imaginary: arg1 rhs: rhs
	"Private - Invoke the Imaginary() method of the COM object.

		HRESULT __stdcall Imaginary(
			[in]VARIANT Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 224 variant double*>
	^self invalidCall!

imArgument: arg1
	"Answer the <BSTR> result of invoking the ImArgument() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImArgument: arg1 asVariant
		rhs: answer.
	^answer asObject
!

ImArgument: arg1 rhs: rhs
	"Private - Invoke the ImArgument() method of the COM object.

		HRESULT __stdcall ImArgument(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 222 variant bstr*>
	^self invalidCall!

imConjugate: arg1
	"Answer the <BSTR> result of invoking the ImConjugate() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImConjugate: arg1 asVariant
		rhs: answer.
	^answer asObject
!

ImConjugate: arg1 rhs: rhs
	"Private - Invoke the ImConjugate() method of the COM object.

		HRESULT __stdcall ImConjugate(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 223 variant bstr*>
	^self invalidCall!

imCos: arg1
	"Answer the <BSTR> result of invoking the ImCos() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImCos: arg1 asVariant
		rhs: answer.
	^answer asObject
!

ImCos: arg1 rhs: rhs
	"Private - Invoke the ImCos() method of the COM object.

		HRESULT __stdcall ImCos(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 220 variant bstr*>
	^self invalidCall!

imDiv: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the ImDiv() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImDiv: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

ImDiv: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the ImDiv() method of the COM object.

		HRESULT __stdcall ImDiv(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 212 variant variant bstr*>
	^self invalidCall!

imExp: arg1
	"Answer the <BSTR> result of invoking the ImExp() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImExp: arg1 asVariant
		rhs: answer.
	^answer asObject
!

ImExp: arg1 rhs: rhs
	"Private - Invoke the ImExp() method of the COM object.

		HRESULT __stdcall ImExp(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 221 variant bstr*>
	^self invalidCall!

imLn: arg1
	"Answer the <BSTR> result of invoking the ImLn() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImLn: arg1 asVariant
		rhs: answer.
	^answer asObject
!

ImLn: arg1 rhs: rhs
	"Private - Invoke the ImLn() method of the COM object.

		HRESULT __stdcall ImLn(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 216 variant bstr*>
	^self invalidCall!

imLog10: arg1
	"Answer the <BSTR> result of invoking the ImLog10() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImLog10: arg1 asVariant
		rhs: answer.
	^answer asObject
!

ImLog10: arg1 rhs: rhs
	"Private - Invoke the ImLog10() method of the COM object.

		HRESULT __stdcall ImLog10(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 218 variant bstr*>
	^self invalidCall!

imLog2: arg1
	"Answer the <BSTR> result of invoking the ImLog2() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImLog2: arg1 asVariant
		rhs: answer.
	^answer asObject
!

ImLog2: arg1 rhs: rhs
	"Private - Invoke the ImLog2() method of the COM object.

		HRESULT __stdcall ImLog2(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 217 variant bstr*>
	^self invalidCall!

imPower: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the ImPower() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImPower: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

ImPower: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the ImPower() method of the COM object.

		HRESULT __stdcall ImPower(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 213 variant variant bstr*>
	^self invalidCall!

imProduct: arg1
	"Answer the <BSTR> result of invoking the ImProduct() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 imProduct: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

imProduct: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <BSTR> result of invoking the ImProduct() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImProduct: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

ImProduct: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the ImProduct() method of the COM object.

		HRESULT __stdcall ImProduct(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 228 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant bstr*>
	^self invalidCall!

imReal: arg1
	"Answer the <DOUBLE> result of invoking the ImReal() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		ImReal: arg1 asVariant
		rhs: answer.
	^answer asObject
!

ImReal: arg1 rhs: rhs
	"Private - Invoke the ImReal() method of the COM object.

		HRESULT __stdcall ImReal(
			[in]VARIANT Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 225 variant double*>
	^self invalidCall!

imSin: arg1
	"Answer the <BSTR> result of invoking the ImSin() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImSin: arg1 asVariant
		rhs: answer.
	^answer asObject
!

ImSin: arg1 rhs: rhs
	"Private - Invoke the ImSin() method of the COM object.

		HRESULT __stdcall ImSin(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 219 variant bstr*>
	^self invalidCall!

imSqrt: arg1
	"Answer the <BSTR> result of invoking the ImSqrt() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImSqrt: arg1 asVariant
		rhs: answer.
	^answer asObject
!

ImSqrt: arg1 rhs: rhs
	"Private - Invoke the ImSqrt() method of the COM object.

		HRESULT __stdcall ImSqrt(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 215 variant bstr*>
	^self invalidCall!

imSub: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the ImSub() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImSub: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

ImSub: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the ImSub() method of the COM object.

		HRESULT __stdcall ImSub(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 211 variant variant bstr*>
	^self invalidCall!

imSum: arg1
	"Answer the <BSTR> result of invoking the ImSum() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 imSum: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

imSum: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <BSTR> result of invoking the ImSum() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ImSum: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

ImSum: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the ImSum() method of the COM object.

		HRESULT __stdcall ImSum(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 227 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant bstr*>
	^self invalidCall!

index: arg1 arg2: arg2
	"Answer the <VARIANT> result of invoking the Index() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 index: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified!

index: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <VARIANT> result of invoking the Index() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Index: arg1 asVariant
		arg2: arg2
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

Index: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the Index() method of the COM object.

		HRESULT __stdcall Index(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 28 variant double variant variant variant*>
	^self invalidCall!

intercept: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Intercept() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Intercept: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Intercept: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Intercept() method of the COM object.

		HRESULT __stdcall Intercept(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 153 variant variant double*>
	^self invalidCall!

intRate: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the IntRate() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 intRate: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: VARIANT unspecified!

intRate: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the IntRate() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		IntRate: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

IntRate: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the IntRate() method of the COM object.

		HRESULT __stdcall IntRate(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 248 variant variant variant variant variant double*>
	^self invalidCall!

ipmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Ipmt() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 ipmt: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified!

ipmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the Ipmt() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Ipmt: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		rhs: answer.
	^answer asObject
!

Ipmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 rhs: rhs
	"Private - Invoke the Ipmt() method of the COM object.

		HRESULT __stdcall Ipmt(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 78 double double double double variant variant double*>
	^self invalidCall!

irr: arg1
	"Answer the <DOUBLE> result of invoking the Irr() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 irr: arg1
		 arg2: VARIANT unspecified!

irr: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Irr() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Irr: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Irr: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Irr() method of the COM object.

		HRESULT __stdcall Irr(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 51 variant variant double*>
	^self invalidCall!

isErr: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsErr() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		IsErr: arg1 asVariant
		rhs: answer.
	^answer asObject
!

IsErr: arg1 rhs: rhs
	"Private - Invoke the IsErr() method of the COM object.

		HRESULT __stdcall IsErr(
			[in]VARIANT Arg1,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 68 variant varbool*>
	^self invalidCall!

isError: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsError() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		IsError: arg1 asVariant
		rhs: answer.
	^answer asObject
!

IsError: arg1 rhs: rhs
	"Private - Invoke the IsError() method of the COM object.

		HRESULT __stdcall IsError(
			[in]VARIANT Arg1,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 14 variant varbool*>
	^self invalidCall!

isEven: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsEven() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		IsEven: arg1 asVariant
		rhs: answer.
	^answer asObject
!

IsEven: arg1 rhs: rhs
	"Private - Invoke the IsEven() method of the COM object.

		HRESULT __stdcall IsEven(
			[in]VARIANT Arg1,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 235 variant varbool*>
	^self invalidCall!

isLogical: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsLogical() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		IsLogical: arg1 asVariant
		rhs: answer.
	^answer asObject
!

IsLogical: arg1 rhs: rhs
	"Private - Invoke the IsLogical() method of the COM object.

		HRESULT __stdcall IsLogical(
			[in]VARIANT Arg1,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 89 variant varbool*>
	^self invalidCall!

isNA: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsNA() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		IsNA: arg1 asVariant
		rhs: answer.
	^answer asObject
!

IsNA: arg1 rhs: rhs
	"Private - Invoke the IsNA() method of the COM object.

		HRESULT __stdcall IsNA(
			[in]VARIANT Arg1,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 variant varbool*>
	^self invalidCall!

isNonText: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsNonText() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		IsNonText: arg1 asVariant
		rhs: answer.
	^answer asObject
!

IsNonText: arg1 rhs: rhs
	"Private - Invoke the IsNonText() method of the COM object.

		HRESULT __stdcall IsNonText(
			[in]VARIANT Arg1,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 84 variant varbool*>
	^self invalidCall!

isNumber: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsNumber() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		IsNumber: arg1 asVariant
		rhs: answer.
	^answer asObject
!

IsNumber: arg1 rhs: rhs
	"Private - Invoke the IsNumber() method of the COM object.

		HRESULT __stdcall IsNumber(
			[in]VARIANT Arg1,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 70 variant varbool*>
	^self invalidCall!

isOdd: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsOdd() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		IsOdd: arg1 asVariant
		rhs: answer.
	^answer asObject
!

IsOdd: arg1 rhs: rhs
	"Private - Invoke the IsOdd() method of the COM object.

		HRESULT __stdcall IsOdd(
			[in]VARIANT Arg1,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 236 variant varbool*>
	^self invalidCall!

ispmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Ispmt() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Ispmt: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		rhs: answer.
	^answer asObject
!

Ispmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the Ispmt() method of the COM object.

		HRESULT __stdcall Ispmt(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 182 double double double double double*>
	^self invalidCall!

isText: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsText() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		IsText: arg1 asVariant
		rhs: answer.
	^answer asObject
!

IsText: arg1 rhs: rhs
	"Private - Invoke the IsText() method of the COM object.

		HRESULT __stdcall IsText(
			[in]VARIANT Arg1,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 69 variant varbool*>
	^self invalidCall!

isThaiDigit: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsThaiDigit() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		IsThaiDigit: arg1
		rhs: answer.
	^answer asObject
!

IsThaiDigit: arg1 rhs: rhs
	"Private - Invoke the IsThaiDigit() method of the COM object.

		HRESULT __stdcall IsThaiDigit(
			[in]BSTR Arg1,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 194 bstr varbool*>
	^self invalidCall!

kurt: arg1
	"Answer the <DOUBLE> result of invoking the Kurt() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 kurt: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

kurt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Kurt() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Kurt: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Kurt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Kurt() method of the COM object.

		HRESULT __stdcall Kurt(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 164 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

large: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Large() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Large: arg1 asVariant
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Large: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Large() method of the COM object.

		HRESULT __stdcall Large(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 167 variant double double*>
	^self invalidCall!

lcm: arg1
	"Answer the <DOUBLE> result of invoking the Lcm() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 lcm: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

lcm: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Lcm() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Lcm: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Lcm: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Lcm() method of the COM object.

		HRESULT __stdcall Lcm(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 289 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

linEst: arg1
	"Answer the <VARIANT> result of invoking the LinEst() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 linEst: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified!

linEst: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <VARIANT> result of invoking the LinEst() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		LinEst: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

LinEst: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the LinEst() method of the COM object.

		HRESULT __stdcall LinEst(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 41 variant variant variant variant variant*>
	^self invalidCall!

ln: arg1
	"Answer the <DOUBLE> result of invoking the Ln() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Ln: arg1
		rhs: answer.
	^answer asObject
!

Ln: arg1 rhs: rhs
	"Private - Invoke the Ln() method of the COM object.

		HRESULT __stdcall Ln(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 24 double double*>
	^self invalidCall!

log: arg1
	"Answer the <DOUBLE> result of invoking the Log() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 log: arg1
		 arg2: VARIANT unspecified!

log: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Log() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Log: arg1
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Log: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Log() method of the COM object.

		HRESULT __stdcall Log(
			[in]double Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 62 double variant double*>
	^self invalidCall!

log10: arg1
	"Answer the <DOUBLE> result of invoking the Log10() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Log10: arg1
		rhs: answer.
	^answer asObject
!

Log10: arg1 rhs: rhs
	"Private - Invoke the Log10() method of the COM object.

		HRESULT __stdcall Log10(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 25 double double*>
	^self invalidCall!

logEst: arg1
	"Answer the <VARIANT> result of invoking the LogEst() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 logEst: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified!

logEst: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <VARIANT> result of invoking the LogEst() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		LogEst: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

LogEst: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the LogEst() method of the COM object.

		HRESULT __stdcall LogEst(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 43 variant variant variant variant variant*>
	^self invalidCall!

logInv: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the LogInv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		LogInv: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

LogInv: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the LogInv() method of the COM object.

		HRESULT __stdcall LogInv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 133 double double double double*>
	^self invalidCall!

logNormDist: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the LogNormDist() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		LogNormDist: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

LogNormDist: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the LogNormDist() method of the COM object.

		HRESULT __stdcall LogNormDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 132 double double double double*>
	^self invalidCall!

lookup: arg1 arg2: arg2
	"Answer the <VARIANT> result of invoking the Lookup() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 lookup: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

lookup: arg1 arg2: arg2 arg3: arg3
	"Answer the <VARIANT> result of invoking the Lookup() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Lookup: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

Lookup: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Lookup() method of the COM object.

		HRESULT __stdcall Lookup(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 27 variant variant variant variant*>
	^self invalidCall!

match: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Match() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 match: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

match: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Match() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Match: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

Match: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Match() method of the COM object.

		HRESULT __stdcall Match(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 52 variant variant variant double*>
	^self invalidCall!

max: arg1
	"Answer the <DOUBLE> result of invoking the Max() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 max: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

max: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Max() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Max: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Max: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Max() method of the COM object.

		HRESULT __stdcall Max(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 18 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

mDeterm: arg1
	"Answer the <DOUBLE> result of invoking the MDeterm() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		MDeterm: arg1 asVariant
		rhs: answer.
	^answer asObject
!

MDeterm: arg1 rhs: rhs
	"Private - Invoke the MDeterm() method of the COM object.

		HRESULT __stdcall MDeterm(
			[in]VARIANT Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 75 variant double*>
	^self invalidCall!

mDuration: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the MDuration() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 mDuration: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: VARIANT unspecified!

mDuration: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the MDuration() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		MDuration: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		rhs: answer.
	^answer asObject
!

MDuration: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 rhs: rhs
	"Private - Invoke the MDuration() method of the COM object.

		HRESULT __stdcall MDuration(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 273 variant variant variant variant variant variant double*>
	^self invalidCall!

median: arg1
	"Answer the <DOUBLE> result of invoking the Median() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 median: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

median: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Median() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Median: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Median: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Median() method of the COM object.

		HRESULT __stdcall Median(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 100 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

min: arg1
	"Answer the <DOUBLE> result of invoking the Min() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 min: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

min: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Min() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Min: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Min: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Min() method of the COM object.

		HRESULT __stdcall Min(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 17 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

mInverse: arg1
	"Answer the <VARIANT> result of invoking the MInverse() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		MInverse: arg1 asVariant
		rhs: answer.
	^answer asObject
!

MInverse: arg1 rhs: rhs
	"Private - Invoke the MInverse() method of the COM object.

		HRESULT __stdcall MInverse(
			[in]VARIANT Arg1,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 76 variant variant*>
	^self invalidCall!

mIrr: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the MIrr() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		MIrr: arg1 asVariant
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

MIrr: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the MIrr() method of the COM object.

		HRESULT __stdcall MIrr(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 50 variant double double double*>
	^self invalidCall!

mMult: arg1 arg2: arg2
	"Answer the <VARIANT> result of invoking the MMult() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		MMult: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

MMult: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the MMult() method of the COM object.

		HRESULT __stdcall MMult(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 77 variant variant variant*>
	^self invalidCall!

mode: arg1
	"Answer the <DOUBLE> result of invoking the Mode() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 mode: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

mode: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Mode() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Mode: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Mode: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Mode() method of the COM object.

		HRESULT __stdcall Mode(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 172 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

mRound: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the MRound() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		MRound: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

MRound: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the MRound() method of the COM object.

		HRESULT __stdcall MRound(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 237 variant variant double*>
	^self invalidCall!

multiNomial: arg1
	"Answer the <DOUBLE> result of invoking the MultiNomial() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 multiNomial: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

multiNomial: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the MultiNomial() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		MultiNomial: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

MultiNomial: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the MultiNomial() method of the COM object.

		HRESULT __stdcall MultiNomial(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 288 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

negBinomDist: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the NegBinomDist() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		NegBinomDist: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

NegBinomDist: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the NegBinomDist() method of the COM object.

		HRESULT __stdcall NegBinomDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 134 double double double double*>
	^self invalidCall!

networkDays: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the NetworkDays() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 networkDays: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

networkDays: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the NetworkDays() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		NetworkDays: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

NetworkDays: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the NetworkDays() method of the COM object.

		HRESULT __stdcall NetworkDays(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 286 variant variant variant double*>
	^self invalidCall!

nominal: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Nominal() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Nominal: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Nominal: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Nominal() method of the COM object.

		HRESULT __stdcall Nominal(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 259 variant variant double*>
	^self invalidCall!

normDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the NormDist() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		NormDist: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		rhs: answer.
	^answer asObject
!

NormDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the NormDist() method of the COM object.

		HRESULT __stdcall NormDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]VARIANT_BOOL Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 135 double double double varbool double*>
	^self invalidCall!

normInv: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the NormInv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		NormInv: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

NormInv: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the NormInv() method of the COM object.

		HRESULT __stdcall NormInv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 137 double double double double*>
	^self invalidCall!

normSDist: arg1
	"Answer the <DOUBLE> result of invoking the NormSDist() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		NormSDist: arg1
		rhs: answer.
	^answer asObject
!

NormSDist: arg1 rhs: rhs
	"Private - Invoke the NormSDist() method of the COM object.

		HRESULT __stdcall NormSDist(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 136 double double*>
	^self invalidCall!

normSInv: arg1
	"Answer the <DOUBLE> result of invoking the NormSInv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		NormSInv: arg1
		rhs: answer.
	^answer asObject
!

NormSInv: arg1 rhs: rhs
	"Private - Invoke the NormSInv() method of the COM object.

		HRESULT __stdcall NormSInv(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 138 double double*>
	^self invalidCall!

nPer: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the NPer() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 nPer: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified!

nPer: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the NPer() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		NPer: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

NPer: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the NPer() method of the COM object.

		HRESULT __stdcall NPer(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 47 double double double variant variant double*>
	^self invalidCall!

npv: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Npv() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 npv: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

npv: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Npv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Npv: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Npv: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Npv() method of the COM object.

		HRESULT __stdcall Npv(
			[in]double Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 19 double variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

oct2Bin: arg1
	"Answer the <BSTR> result of invoking the Oct2Bin() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 oct2Bin: arg1
		 arg2: VARIANT unspecified!

oct2Bin: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Oct2Bin() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Oct2Bin: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Oct2Bin: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Oct2Bin() method of the COM object.

		HRESULT __stdcall Oct2Bin(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 205 variant variant bstr*>
	^self invalidCall!

oct2Dec: arg1
	"Answer the <BSTR> result of invoking the Oct2Dec() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Oct2Dec: arg1 asVariant
		rhs: answer.
	^answer asObject
!

Oct2Dec: arg1 rhs: rhs
	"Private - Invoke the Oct2Dec() method of the COM object.

		HRESULT __stdcall Oct2Dec(
			[in]VARIANT Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 207 variant bstr*>
	^self invalidCall!

oct2Hex: arg1
	"Answer the <BSTR> result of invoking the Oct2Hex() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 oct2Hex: arg1
		 arg2: VARIANT unspecified!

oct2Hex: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Oct2Hex() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Oct2Hex: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Oct2Hex: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Oct2Hex() method of the COM object.

		HRESULT __stdcall Oct2Hex(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 206 variant variant bstr*>
	^self invalidCall!

odd: arg1
	"Answer the <DOUBLE> result of invoking the Odd() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Odd: arg1
		rhs: answer.
	^answer asObject
!

Odd: arg1 rhs: rhs
	"Private - Invoke the Odd() method of the COM object.

		HRESULT __stdcall Odd(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 140 double double*>
	^self invalidCall!

oddFPrice: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8
	"Answer the <DOUBLE> result of invoking the OddFPrice() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 oddFPrice: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: arg6
		 arg7: arg7
		 arg8: arg8
		 arg9: VARIANT unspecified!

oddFPrice: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9
	"Answer the <DOUBLE> result of invoking the OddFPrice() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		OddFPrice: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		rhs: answer.
	^answer asObject
!

OddFPrice: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 rhs: rhs
	"Private - Invoke the OddFPrice() method of the COM object.

		HRESULT __stdcall OddFPrice(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in]VARIANT Arg7,
			[in]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 276 variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

oddFYield: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8
	"Answer the <DOUBLE> result of invoking the OddFYield() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 oddFYield: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: arg6
		 arg7: arg7
		 arg8: arg8
		 arg9: VARIANT unspecified!

oddFYield: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9
	"Answer the <DOUBLE> result of invoking the OddFYield() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		OddFYield: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		rhs: answer.
	^answer asObject
!

OddFYield: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 rhs: rhs
	"Private - Invoke the OddFYield() method of the COM object.

		HRESULT __stdcall OddFYield(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in]VARIANT Arg7,
			[in]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 277 variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

oddLPrice: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7
	"Answer the <DOUBLE> result of invoking the OddLPrice() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 oddLPrice: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: arg6
		 arg7: arg7
		 arg8: VARIANT unspecified!

oddLPrice: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8
	"Answer the <DOUBLE> result of invoking the OddLPrice() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		OddLPrice: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		rhs: answer.
	^answer asObject
!

OddLPrice: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 rhs: rhs
	"Private - Invoke the OddLPrice() method of the COM object.

		HRESULT __stdcall OddLPrice(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 274 variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

oddLYield: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7
	"Answer the <DOUBLE> result of invoking the OddLYield() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 oddLYield: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: arg6
		 arg7: arg7
		 arg8: VARIANT unspecified!

oddLYield: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8
	"Answer the <DOUBLE> result of invoking the OddLYield() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		OddLYield: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		rhs: answer.
	^answer asObject
!

OddLYield: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 rhs: rhs
	"Private - Invoke the OddLYield() method of the COM object.

		HRESULT __stdcall OddLYield(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 275 variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

or: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <VARIANT_BOOL> result of invoking the Or() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		Or: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Or: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Or() method of the COM object.

		HRESULT __stdcall Or(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 31 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant varbool*>
	^self invalidCall!

or_: arg1
	"Answer the <VARIANT_BOOL> result of invoking the Or() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 or: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pearson: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Pearson() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Pearson: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Pearson: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Pearson() method of the COM object.

		HRESULT __stdcall Pearson(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 154 variant variant double*>
	^self invalidCall!

percentile: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Percentile() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Percentile: arg1 asVariant
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Percentile: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Percentile() method of the COM object.

		HRESULT __stdcall Percentile(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 170 variant double double*>
	^self invalidCall!

percentRank: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the PercentRank() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 percentRank: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

percentRank: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the PercentRank() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		PercentRank: arg1 asVariant
		arg2: arg2
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

PercentRank: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the PercentRank() method of the COM object.

		HRESULT __stdcall PercentRank(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 171 variant double variant double*>
	^self invalidCall!

permut: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Permut() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Permut: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Permut: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Permut() method of the COM object.

		HRESULT __stdcall Permut(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 141 double double double*>
	^self invalidCall!

phonetic: arg1
	"Answer the <BSTR> result of invoking the Phonetic() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Phonetic: arg1
		rhs: answer.
	^answer asObject
!

Phonetic: arg1 rhs: rhs
	"Private - Invoke the Phonetic() method of the COM object.

		HRESULT __stdcall Phonetic(
			[in]Range* Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 186 ExcelRange* bstr*>
	^self invalidCall!

pi
	"Answer the <DOUBLE> result of invoking the Pi() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self Pi: answer.
	^answer asObject
!

Pi: rhs
	"Private - Invoke the Pi() method of the COM object.

		HRESULT __stdcall Pi(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 23 double*>
	^self invalidCall!

pmt: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Pmt() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 pmt: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified!

pmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the Pmt() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Pmt: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

Pmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the Pmt() method of the COM object.

		HRESULT __stdcall Pmt(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 48 double double double variant variant double*>
	^self invalidCall!

poisson: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Poisson() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Poisson: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

Poisson: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Poisson() method of the COM object.

		HRESULT __stdcall Poisson(
			[in]double Arg1,
			[in]double Arg2,
			[in]VARIANT_BOOL Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 142 double double varbool double*>
	^self invalidCall!

power: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Power() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Power: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Power: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Power() method of the COM object.

		HRESULT __stdcall Power(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 175 double double double*>
	^self invalidCall!

ppmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Ppmt() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 ppmt: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified!

ppmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the Ppmt() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Ppmt: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		rhs: answer.
	^answer asObject
!

Ppmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 rhs: rhs
	"Private - Invoke the Ppmt() method of the COM object.

		HRESULT __stdcall Ppmt(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 79 double double double double variant variant double*>
	^self invalidCall!

price: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the Price() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 price: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: arg6
		 arg7: VARIANT unspecified!

price: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7
	"Answer the <DOUBLE> result of invoking the Price() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Price: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		rhs: answer.
	^answer asObject
!

Price: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 rhs: rhs
	"Private - Invoke the Price() method of the COM object.

		HRESULT __stdcall Price(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 256 variant variant variant variant variant variant variant double*>
	^self invalidCall!

priceDisc: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the PriceDisc() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 priceDisc: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: VARIANT unspecified!

priceDisc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the PriceDisc() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		PriceDisc: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

PriceDisc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the PriceDisc() method of the COM object.

		HRESULT __stdcall PriceDisc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 251 variant variant variant variant variant double*>
	^self invalidCall!

priceMat: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the PriceMat() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 priceMat: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: VARIANT unspecified!

priceMat: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the PriceMat() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		PriceMat: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		rhs: answer.
	^answer asObject
!

PriceMat: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 rhs: rhs
	"Private - Invoke the PriceMat() method of the COM object.

		HRESULT __stdcall PriceMat(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 246 variant variant variant variant variant variant double*>
	^self invalidCall!

prob: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Prob() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 prob: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified!

prob: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Prob() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Prob: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

Prob: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the Prob() method of the COM object.

		HRESULT __stdcall Prob(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 159 variant variant double variant double*>
	^self invalidCall!

product: arg1
	"Answer the <DOUBLE> result of invoking the Product() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 product: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

product: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Product() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Product: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Product: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Product() method of the COM object.

		HRESULT __stdcall Product(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 81 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

proper: arg1
	"Answer the <BSTR> result of invoking the Proper() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Proper: arg1
		rhs: answer.
	^answer asObject
!

Proper: arg1 rhs: rhs
	"Private - Invoke the Proper() method of the COM object.

		HRESULT __stdcall Proper(
			[in]BSTR Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 63 bstr bstr*>
	^self invalidCall!

pv: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Pv() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 pv: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified!

pv: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the Pv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Pv: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

Pv: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the Pv() method of the COM object.

		HRESULT __stdcall Pv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 45 double double double variant variant double*>
	^self invalidCall!

quartile: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Quartile() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Quartile: arg1 asVariant
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Quartile: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Quartile() method of the COM object.

		HRESULT __stdcall Quartile(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 169 variant double double*>
	^self invalidCall!

quotient: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Quotient() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Quotient: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Quotient: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Quotient() method of the COM object.

		HRESULT __stdcall Quotient(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 232 variant variant double*>
	^self invalidCall!

radians: arg1
	"Answer the <DOUBLE> result of invoking the Radians() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Radians: arg1
		rhs: answer.
	^answer asObject
!

Radians: arg1 rhs: rhs
	"Private - Invoke the Radians() method of the COM object.

		HRESULT __stdcall Radians(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 176 double double*>
	^self invalidCall!

randBetween: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the RandBetween() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		RandBetween: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

RandBetween: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the RandBetween() method of the COM object.

		HRESULT __stdcall RandBetween(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 278 variant variant double*>
	^self invalidCall!

rank: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Rank() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 rank: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

rank: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Rank() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Rank: arg1
		arg2: arg2
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

Rank: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Rank() method of the COM object.

		HRESULT __stdcall Rank(
			[in]double Arg1,
			[in]Range* Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 97 double ExcelRange* variant double*>
	^self invalidCall!

rate: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Rate() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 rate: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified!

rate: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the Rate() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Rate: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		rhs: answer.
	^answer asObject
!

Rate: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 rhs: rhs
	"Private - Invoke the Rate() method of the COM object.

		HRESULT __stdcall Rate(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 49 double double double variant variant variant double*>
	^self invalidCall!

received: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Received() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 received: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: VARIANT unspecified!

received: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the Received() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Received: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

Received: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the Received() method of the COM object.

		HRESULT __stdcall Received(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 249 variant variant variant variant variant double*>
	^self invalidCall!

replace: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <BSTR> result of invoking the Replace() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Replace: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		rhs: answer.
	^answer asObject
!

Replace: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the Replace() method of the COM object.

		HRESULT __stdcall Replace(
			[in]BSTR Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]BSTR Arg4,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 65 bstr double double bstr bstr*>
	^self invalidCall!

replaceB: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <BSTR> result of invoking the ReplaceB() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ReplaceB: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		rhs: answer.
	^answer asObject
!

ReplaceB: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the ReplaceB() method of the COM object.

		HRESULT __stdcall ReplaceB(
			[in]BSTR Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]BSTR Arg4,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 94 bstr double double bstr bstr*>
	^self invalidCall!

rept: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Rept() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Rept: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Rept: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Rept() method of the COM object.

		HRESULT __stdcall Rept(
			[in]BSTR Arg1,
			[in]double Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 29 bstr double bstr*>
	^self invalidCall!

roman: arg1
	"Answer the <BSTR> result of invoking the Roman() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 roman: arg1
		 arg2: VARIANT unspecified!

roman: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Roman() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Roman: arg1
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Roman: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Roman() method of the COM object.

		HRESULT __stdcall Roman(
			[in]double Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 183 double variant bstr*>
	^self invalidCall!

round: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Round() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Round: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Round: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Round() method of the COM object.

		HRESULT __stdcall Round(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 26 double double double*>
	^self invalidCall!

roundBahtDown: arg1
	"Answer the <DOUBLE> result of invoking the RoundBahtDown() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		RoundBahtDown: arg1
		rhs: answer.
	^answer asObject
!

RoundBahtDown: arg1 rhs: rhs
	"Private - Invoke the RoundBahtDown() method of the COM object.

		HRESULT __stdcall RoundBahtDown(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 195 double double*>
	^self invalidCall!

roundBahtUp: arg1
	"Answer the <DOUBLE> result of invoking the RoundBahtUp() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		RoundBahtUp: arg1
		rhs: answer.
	^answer asObject
!

RoundBahtUp: arg1 rhs: rhs
	"Private - Invoke the RoundBahtUp() method of the COM object.

		HRESULT __stdcall RoundBahtUp(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 196 double double*>
	^self invalidCall!

roundDown: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the RoundDown() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		RoundDown: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

RoundDown: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the RoundDown() method of the COM object.

		HRESULT __stdcall RoundDown(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 96 double double double*>
	^self invalidCall!

roundUp: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the RoundUp() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		RoundUp: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

RoundUp: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the RoundUp() method of the COM object.

		HRESULT __stdcall RoundUp(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 95 double double double*>
	^self invalidCall!

rSq: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the RSq() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		RSq: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

RSq: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the RSq() method of the COM object.

		HRESULT __stdcall RSq(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 155 variant variant double*>
	^self invalidCall!

rtd: progID server: server topic1: topic1
	"Answer the <VARIANT> result of invoking the RTD() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 rtd: progID
		 server: server
		 topic1: topic1
		 topic2: VARIANT unspecified
		 topic3: VARIANT unspecified
		 topic4: VARIANT unspecified
		 topic5: VARIANT unspecified
		 topic6: VARIANT unspecified
		 topic7: VARIANT unspecified
		 topic8: VARIANT unspecified
		 topic9: VARIANT unspecified
		 topic10: VARIANT unspecified
		 topic11: VARIANT unspecified
		 topic12: VARIANT unspecified
		 topic13: VARIANT unspecified
		 topic14: VARIANT unspecified
		 topic15: VARIANT unspecified
		 topic16: VARIANT unspecified
		 topic17: VARIANT unspecified
		 topic18: VARIANT unspecified
		 topic19: VARIANT unspecified
		 topic20: VARIANT unspecified
		 topic21: VARIANT unspecified
		 topic22: VARIANT unspecified
		 topic23: VARIANT unspecified
		 topic24: VARIANT unspecified
		 topic25: VARIANT unspecified
		 topic26: VARIANT unspecified
		 topic27: VARIANT unspecified
		 topic28: VARIANT unspecified!

rtd: progID server: server topic1: topic1 topic2: topic2 topic3: topic3 topic4: topic4 topic5: topic5 topic6: topic6 topic7: topic7 topic8: topic8 topic9: topic9 topic10: topic10 topic11: topic11 topic12: topic12 topic13: topic13 topic14: topic14 topic15: topic15 topic16: topic16 topic17: topic17 topic18: topic18 topic19: topic19 topic20: topic20 topic21: topic21 topic22: topic22 topic23: topic23 topic24: topic24 topic25: topic25 topic26: topic26 topic27: topic27 topic28: topic28
	"Answer the <VARIANT> result of invoking the RTD() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		RTD: progID asVariant
		server: server asVariant
		topic1: topic1 asVariant
		topic2: topic2 asVariant
		topic3: topic3 asVariant
		topic4: topic4 asVariant
		topic5: topic5 asVariant
		topic6: topic6 asVariant
		topic7: topic7 asVariant
		topic8: topic8 asVariant
		topic9: topic9 asVariant
		topic10: topic10 asVariant
		topic11: topic11 asVariant
		topic12: topic12 asVariant
		topic13: topic13 asVariant
		topic14: topic14 asVariant
		topic15: topic15 asVariant
		topic16: topic16 asVariant
		topic17: topic17 asVariant
		topic18: topic18 asVariant
		topic19: topic19 asVariant
		topic20: topic20 asVariant
		topic21: topic21 asVariant
		topic22: topic22 asVariant
		topic23: topic23 asVariant
		topic24: topic24 asVariant
		topic25: topic25 asVariant
		topic26: topic26 asVariant
		topic27: topic27 asVariant
		topic28: topic28 asVariant
		rhs: answer.
	^answer asObject
!

RTD: progID server: server topic1: topic1 topic2: topic2 topic3: topic3 topic4: topic4 topic5: topic5 topic6: topic6 topic7: topic7 topic8: topic8 topic9: topic9 topic10: topic10 topic11: topic11 topic12: topic12 topic13: topic13 topic14: topic14 topic15: topic15 topic16: topic16 topic17: topic17 topic18: topic18 topic19: topic19 topic20: topic20 topic21: topic21 topic22: topic22 topic23: topic23 topic24: topic24 topic25: topic25 topic26: topic26 topic27: topic27 topic28: topic28 rhs: rhs
	"Private - Invoke the RTD() method of the COM object.

		HRESULT __stdcall RTD(
			[in]VARIANT progID,
			[in]VARIANT server,
			[in]VARIANT topic1,
			[in, optional]VARIANT topic2,
			[in, optional]VARIANT topic3,
			[in, optional]VARIANT topic4,
			[in, optional]VARIANT topic5,
			[in, optional]VARIANT topic6,
			[in, optional]VARIANT topic7,
			[in, optional]VARIANT topic8,
			[in, optional]VARIANT topic9,
			[in, optional]VARIANT topic10,
			[in, optional]VARIANT topic11,
			[in, optional]VARIANT topic12,
			[in, optional]VARIANT topic13,
			[in, optional]VARIANT topic14,
			[in, optional]VARIANT topic15,
			[in, optional]VARIANT topic16,
			[in, optional]VARIANT topic17,
			[in, optional]VARIANT topic18,
			[in, optional]VARIANT topic19,
			[in, optional]VARIANT topic20,
			[in, optional]VARIANT topic21,
			[in, optional]VARIANT topic22,
			[in, optional]VARIANT topic23,
			[in, optional]VARIANT topic24,
			[in, optional]VARIANT topic25,
			[in, optional]VARIANT topic26,
			[in, optional]VARIANT topic27,
			[in, optional]VARIANT topic28,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 198 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

search: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Search() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 search: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

search: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Search() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Search: arg1
		arg2: arg2
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

Search: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Search() method of the COM object.

		HRESULT __stdcall Search(
			[in]BSTR Arg1,
			[in]BSTR Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 54 bstr bstr variant double*>
	^self invalidCall!

searchB: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the SearchB() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 searchB: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

searchB: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the SearchB() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		SearchB: arg1
		arg2: arg2
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

SearchB: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the SearchB() method of the COM object.

		HRESULT __stdcall SearchB(
			[in]BSTR Arg1,
			[in]BSTR Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 93 bstr bstr variant double*>
	^self invalidCall!

seriesSum: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the SeriesSum() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		SeriesSum: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

SeriesSum: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the SeriesSum() method of the COM object.

		HRESULT __stdcall SeriesSum(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 229 variant variant variant variant double*>
	^self invalidCall!

sinh: arg1
	"Answer the <DOUBLE> result of invoking the Sinh() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Sinh: arg1
		rhs: answer.
	^answer asObject
!

Sinh: arg1 rhs: rhs
	"Private - Invoke the Sinh() method of the COM object.

		HRESULT __stdcall Sinh(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 102 double double*>
	^self invalidCall!

skew: arg1
	"Answer the <DOUBLE> result of invoking the Skew() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 skew: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

skew: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Skew() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Skew: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Skew: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Skew() method of the COM object.

		HRESULT __stdcall Skew(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 165 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

sln: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Sln() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Sln: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

Sln: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Sln() method of the COM object.

		HRESULT __stdcall Sln(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 71 double double double double*>
	^self invalidCall!

slope: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Slope() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Slope: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Slope: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Slope() method of the COM object.

		HRESULT __stdcall Slope(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 157 variant variant double*>
	^self invalidCall!

small: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Small() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Small: arg1 asVariant
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Small: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Small() method of the COM object.

		HRESULT __stdcall Small(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 168 variant double double*>
	^self invalidCall!

sqrtPi: arg1
	"Answer the <DOUBLE> result of invoking the SqrtPi() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		SqrtPi: arg1 asVariant
		rhs: answer.
	^answer asObject
!

SqrtPi: arg1 rhs: rhs
	"Private - Invoke the SqrtPi() method of the COM object.

		HRESULT __stdcall SqrtPi(
			[in]VARIANT Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 231 variant double*>
	^self invalidCall!

standardize: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Standardize() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Standardize: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

Standardize: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Standardize() method of the COM object.

		HRESULT __stdcall Standardize(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 139 double double double double*>
	^self invalidCall!

stDev: arg1
	"Answer the <DOUBLE> result of invoking the StDev() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 stDev: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

stDev: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the StDev() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		StDev: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

StDev: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the StDev() method of the COM object.

		HRESULT __stdcall StDev(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 20 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

stDevP: arg1
	"Answer the <DOUBLE> result of invoking the StDevP() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 stDevP: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

stDevP: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the StDevP() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		StDevP: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

StDevP: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the StDevP() method of the COM object.

		HRESULT __stdcall StDevP(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 85 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

stEyx: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the StEyx() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		StEyx: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

StEyx: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the StEyx() method of the COM object.

		HRESULT __stdcall StEyx(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 156 variant variant double*>
	^self invalidCall!

substitute: arg1 arg2: arg2 arg3: arg3
	"Answer the <BSTR> result of invoking the Substitute() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 substitute: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified!

substitute: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <BSTR> result of invoking the Substitute() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Substitute: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

Substitute: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the Substitute() method of the COM object.

		HRESULT __stdcall Substitute(
			[in]BSTR Arg1,
			[in]BSTR Arg2,
			[in]BSTR Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 66 bstr bstr bstr variant bstr*>
	^self invalidCall!

subtotal: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Subtotal() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 subtotal: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

subtotal: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Subtotal() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Subtotal: arg1
		arg2: arg2
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Subtotal: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Subtotal() method of the COM object.

		HRESULT __stdcall Subtotal(
			[in]double Arg1,
			[in]Range* Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 178 double ExcelRange* variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

sum: arg1
	"Answer the <DOUBLE> result of invoking the Sum() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sum: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

sum: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Sum() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Sum: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Sum: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Sum() method of the COM object.

		HRESULT __stdcall Sum(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 15 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

sumIf: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the SumIf() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sumIf: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

sumIf: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the SumIf() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		SumIf: arg1
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

SumIf: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the SumIf() method of the COM object.

		HRESULT __stdcall SumIf(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 179 ExcelRange* variant variant double*>
	^self invalidCall!

sumIfs: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the SumIfs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sumIfs: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified!

sumIfs: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29
	"Answer the <DOUBLE> result of invoking the SumIfs() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		SumIfs: arg1
		arg2: arg2
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		rhs: answer.
	^answer asObject
!

SumIfs: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 rhs: rhs
	"Private - Invoke the SumIfs() method of the COM object.

		HRESULT __stdcall SumIfs(
			[in]Range* Arg1,
			[in]Range* Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 291 ExcelRange* ExcelRange* variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

sumProduct: arg1
	"Answer the <DOUBLE> result of invoking the SumProduct() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sumProduct: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

sumProduct: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the SumProduct() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		SumProduct: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

SumProduct: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the SumProduct() method of the COM object.

		HRESULT __stdcall SumProduct(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 101 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

sumSq: arg1
	"Answer the <DOUBLE> result of invoking the SumSq() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sumSq: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

sumSq: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the SumSq() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		SumSq: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

SumSq: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the SumSq() method of the COM object.

		HRESULT __stdcall SumSq(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 163 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

sumX2MY2: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the SumX2MY2() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		SumX2MY2: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

SumX2MY2: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the SumX2MY2() method of the COM object.

		HRESULT __stdcall SumX2MY2(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 146 variant variant double*>
	^self invalidCall!

sumX2PY2: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the SumX2PY2() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		SumX2PY2: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

SumX2PY2: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the SumX2PY2() method of the COM object.

		HRESULT __stdcall SumX2PY2(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 147 variant variant double*>
	^self invalidCall!

sumXMY2: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the SumXMY2() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		SumXMY2: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

SumXMY2: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the SumXMY2() method of the COM object.

		HRESULT __stdcall SumXMY2(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 145 variant variant double*>
	^self invalidCall!

syd: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Syd() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Syd: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		rhs: answer.
	^answer asObject
!

Syd: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the Syd() method of the COM object.

		HRESULT __stdcall Syd(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 72 double double double double double*>
	^self invalidCall!

tanh: arg1
	"Answer the <DOUBLE> result of invoking the Tanh() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Tanh: arg1
		rhs: answer.
	^answer asObject
!

Tanh: arg1 rhs: rhs
	"Private - Invoke the Tanh() method of the COM object.

		HRESULT __stdcall Tanh(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 104 double double*>
	^self invalidCall!

tBillEq: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the TBillEq() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 tBillEq: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

tBillEq: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the TBillEq() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		TBillEq: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

TBillEq: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the TBillEq() method of the COM object.

		HRESULT __stdcall TBillEq(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 253 variant variant variant double*>
	^self invalidCall!

tBillPrice: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the TBillPrice() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 tBillPrice: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

tBillPrice: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the TBillPrice() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		TBillPrice: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

TBillPrice: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the TBillPrice() method of the COM object.

		HRESULT __stdcall TBillPrice(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 254 variant variant variant double*>
	^self invalidCall!

tBillYield: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the TBillYield() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 tBillYield: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

tBillYield: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the TBillYield() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		TBillYield: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

TBillYield: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the TBillYield() method of the COM object.

		HRESULT __stdcall TBillYield(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 255 variant variant variant double*>
	^self invalidCall!

tDist: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the TDist() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		TDist: arg1
		arg2: arg2
		arg3: arg3
		rhs: answer.
	^answer asObject
!

TDist: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the TDist() method of the COM object.

		HRESULT __stdcall TDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 143 double double double double*>
	^self invalidCall!

text: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Text() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Text: arg1 asVariant
		arg2: arg2
		rhs: answer.
	^answer asObject
!

Text: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Text() method of the COM object.

		HRESULT __stdcall Text(
			[in]VARIANT Arg1,
			[in]BSTR Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 40 variant bstr bstr*>
	^self invalidCall!

thaiDayOfWeek: arg1
	"Answer the <BSTR> result of invoking the ThaiDayOfWeek() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ThaiDayOfWeek: arg1
		rhs: answer.
	^answer asObject
!

ThaiDayOfWeek: arg1 rhs: rhs
	"Private - Invoke the ThaiDayOfWeek() method of the COM object.

		HRESULT __stdcall ThaiDayOfWeek(
			[in]double Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 188 double bstr*>
	^self invalidCall!

thaiDigit: arg1
	"Answer the <BSTR> result of invoking the ThaiDigit() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ThaiDigit: arg1
		rhs: answer.
	^answer asObject
!

ThaiDigit: arg1 rhs: rhs
	"Private - Invoke the ThaiDigit() method of the COM object.

		HRESULT __stdcall ThaiDigit(
			[in]BSTR Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 189 bstr bstr*>
	^self invalidCall!

thaiMonthOfYear: arg1
	"Answer the <BSTR> result of invoking the ThaiMonthOfYear() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ThaiMonthOfYear: arg1
		rhs: answer.
	^answer asObject
!

ThaiMonthOfYear: arg1 rhs: rhs
	"Private - Invoke the ThaiMonthOfYear() method of the COM object.

		HRESULT __stdcall ThaiMonthOfYear(
			[in]double Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 190 double bstr*>
	^self invalidCall!

thaiNumSound: arg1
	"Answer the <BSTR> result of invoking the ThaiNumSound() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ThaiNumSound: arg1
		rhs: answer.
	^answer asObject
!

ThaiNumSound: arg1 rhs: rhs
	"Private - Invoke the ThaiNumSound() method of the COM object.

		HRESULT __stdcall ThaiNumSound(
			[in]double Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 191 double bstr*>
	^self invalidCall!

thaiNumString: arg1
	"Answer the <BSTR> result of invoking the ThaiNumString() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		ThaiNumString: arg1
		rhs: answer.
	^answer asObject
!

ThaiNumString: arg1 rhs: rhs
	"Private - Invoke the ThaiNumString() method of the COM object.

		HRESULT __stdcall ThaiNumString(
			[in]double Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 192 double bstr*>
	^self invalidCall!

thaiStringLength: arg1
	"Answer the <DOUBLE> result of invoking the ThaiStringLength() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		ThaiStringLength: arg1
		rhs: answer.
	^answer asObject
!

ThaiStringLength: arg1 rhs: rhs
	"Private - Invoke the ThaiStringLength() method of the COM object.

		HRESULT __stdcall ThaiStringLength(
			[in]BSTR Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 193 bstr double*>
	^self invalidCall!

thaiYear: arg1
	"Answer the <DOUBLE> result of invoking the ThaiYear() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		ThaiYear: arg1
		rhs: answer.
	^answer asObject
!

ThaiYear: arg1 rhs: rhs
	"Private - Invoke the ThaiYear() method of the COM object.

		HRESULT __stdcall ThaiYear(
			[in]double Arg1,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 197 double double*>
	^self invalidCall!

tInv: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the TInv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		TInv: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

TInv: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the TInv() method of the COM object.

		HRESULT __stdcall TInv(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 174 double double double*>
	^self invalidCall!

transpose: arg1
	"Answer the <VARIANT> result of invoking the Transpose() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Transpose: arg1 asVariant
		rhs: answer.
	^answer asObject
!

Transpose: arg1 rhs: rhs
	"Private - Invoke the Transpose() method of the COM object.

		HRESULT __stdcall Transpose(
			[in]VARIANT Arg1,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 55 variant variant*>
	^self invalidCall!

trend: arg1
	"Answer the <VARIANT> result of invoking the Trend() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 trend: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified!

trend: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <VARIANT> result of invoking the Trend() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Trend: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

Trend: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the Trend() method of the COM object.

		HRESULT __stdcall Trend(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 42 variant variant variant variant variant*>
	^self invalidCall!

trim: arg1
	"Answer the <BSTR> result of invoking the Trim() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Trim: arg1
		rhs: answer.
	^answer asObject
!

Trim: arg1 rhs: rhs
	"Private - Invoke the Trim() method of the COM object.

		HRESULT __stdcall Trim(
			[in]BSTR Arg1,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 64 bstr bstr*>
	^self invalidCall!

trimMean: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the TrimMean() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		TrimMean: arg1 asVariant
		arg2: arg2
		rhs: answer.
	^answer asObject
!

TrimMean: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the TrimMean() method of the COM object.

		HRESULT __stdcall TrimMean(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 173 variant double double*>
	^self invalidCall!

tTest: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the TTest() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		TTest: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3
		arg4: arg4
		rhs: answer.
	^answer asObject
!

TTest: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the TTest() method of the COM object.

		HRESULT __stdcall TTest(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 158 variant variant double double double*>
	^self invalidCall!

usDollar: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the USDollar() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		USDollar: arg1
		arg2: arg2
		rhs: answer.
	^answer asObject
!

USDollar: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the USDollar() method of the COM object.

		HRESULT __stdcall USDollar(
			[in]double Arg1,
			[in]double Arg2,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 91 double double bstr*>
	^self invalidCall!

var: arg1
	"Answer the <DOUBLE> result of invoking the Var() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 var: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

var: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the Var() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Var: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Var: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Var() method of the COM object.

		HRESULT __stdcall Var(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 38 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

varP: arg1
	"Answer the <DOUBLE> result of invoking the VarP() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 varP: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

varP: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <DOUBLE> result of invoking the VarP() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		VarP: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

VarP: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the VarP() method of the COM object.

		HRESULT __stdcall VarP(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 86 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*>
	^self invalidCall!

vdb: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the Vdb() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 vdb: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified!

vdb: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7
	"Answer the <DOUBLE> result of invoking the Vdb() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Vdb: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		arg5: arg5
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		rhs: answer.
	^answer asObject
!

Vdb: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 rhs: rhs
	"Private - Invoke the Vdb() method of the COM object.

		HRESULT __stdcall Vdb(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[in]double Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 99 double double double double double variant variant double*>
	^self invalidCall!

vLookup: arg1 arg2: arg2 arg3: arg3
	"Answer the <VARIANT> result of invoking the VLookup() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 vLookup: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: VARIANT unspecified!

vLookup: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <VARIANT> result of invoking the VLookup() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		VLookup: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

VLookup: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the VLookup() method of the COM object.

		HRESULT __stdcall VLookup(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 61 variant variant variant variant variant*>
	^self invalidCall!

weekday: arg1
	"Answer the <DOUBLE> result of invoking the Weekday() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 weekday: arg1
		 arg2: VARIANT unspecified!

weekday: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Weekday() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Weekday: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Weekday: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Weekday() method of the COM object.

		HRESULT __stdcall Weekday(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 53 variant variant double*>
	^self invalidCall!

weekNum: arg1
	"Answer the <DOUBLE> result of invoking the WeekNum() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 weekNum: arg1
		 arg2: VARIANT unspecified!

weekNum: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the WeekNum() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		WeekNum: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

WeekNum: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the WeekNum() method of the COM object.

		HRESULT __stdcall WeekNum(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 279 variant variant double*>
	^self invalidCall!

weibull: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Weibull() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Weibull: arg1
		arg2: arg2
		arg3: arg3
		arg4: arg4
		rhs: answer.
	^answer asObject
!

Weibull: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the Weibull() method of the COM object.

		HRESULT __stdcall Weibull(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]VARIANT_BOOL Arg4,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 144 double double double varbool double*>
	^self invalidCall!

workDay: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the WorkDay() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 workDay: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

workDay: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the WorkDay() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		WorkDay: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

WorkDay: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the WorkDay() method of the COM object.

		HRESULT __stdcall WorkDay(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 285 variant variant variant double*>
	^self invalidCall!

xirr: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Xirr() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 xirr: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

xirr: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Xirr() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Xirr: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

Xirr: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the Xirr() method of the COM object.

		HRESULT __stdcall Xirr(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 244 variant variant variant double*>
	^self invalidCall!

xnpv: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Xnpv() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		Xnpv: arg1 asVariant
		arg2: arg2 asVariant
		rhs: answer.
	^answer asObject
!

Xnpv: arg1 arg2: arg2 rhs: rhs
	"Private - Invoke the Xnpv() method of the COM object.

		HRESULT __stdcall Xnpv(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 245 variant variant double*>
	^self invalidCall!

yearFrac: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the YearFrac() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 yearFrac: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

yearFrac: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the YearFrac() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		YearFrac: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

YearFrac: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the YearFrac() method of the COM object.

		HRESULT __stdcall YearFrac(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 265 variant variant variant double*>
	^self invalidCall!

yieldDisc: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the YieldDisc() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 yieldDisc: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: VARIANT unspecified!

yieldDisc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the YieldDisc() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		YieldDisc: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		rhs: answer.
	^answer asObject
!

YieldDisc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 rhs: rhs
	"Private - Invoke the YieldDisc() method of the COM object.

		HRESULT __stdcall YieldDisc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 252 variant variant variant variant variant double*>
	^self invalidCall!

yieldMat: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5
	"Answer the <DOUBLE> result of invoking the YieldMat() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 yieldMat: arg1
		 arg2: arg2
		 arg3: arg3
		 arg4: arg4
		 arg5: arg5
		 arg6: VARIANT unspecified!

yieldMat: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the YieldMat() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		YieldMat: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		rhs: answer.
	^answer asObject
!

YieldMat: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 rhs: rhs
	"Private - Invoke the YieldMat() method of the COM object.

		HRESULT __stdcall YieldMat(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 247 variant variant variant variant variant variant double*>
	^self invalidCall!

zTest: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the ZTest() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 zTest: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

zTest: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the ZTest() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		ZTest: arg1 asVariant
		arg2: arg2
		arg3: arg3 asVariant
		rhs: answer.
	^answer asObject
!

ZTest: arg1 arg2: arg2 arg3: arg3 rhs: rhs
	"Private - Invoke the ZTest() method of the COM object.

		HRESULT __stdcall ZTest(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[in, optional]VARIANT Arg3,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 166 variant double variant double*>
	^self invalidCall! !
!ExcelIWorksheetFunction categoriesFor: #_wsFunction!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #_wsFunction:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #_WSFunction:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #accrInt:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #accrInt:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #AccrInt:arg2:arg3:arg4:arg5:arg6:arg7:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #accrIntM:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #accrIntM:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #AccrIntM:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #acos:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Acos:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #acosh:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Acosh:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #amorDegrc:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #amorDegrc:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #AmorDegrc:arg2:arg3:arg4:arg5:arg6:arg7:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #amorLinc:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #amorLinc:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #AmorLinc:arg2:arg3:arg4:arg5:arg6:arg7:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #and:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #And:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #and_:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIWorksheetFunction categoriesFor: #asc:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Asc:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #asin:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Asin:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #asinh:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Asinh:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #atan2:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Atan2:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #atanh:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Atanh:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #aveDev:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #aveDev:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #AveDev:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #average:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #average:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Average:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #averageIf:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #averageIf:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #AverageIf:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #averageIfs:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #averageIfs:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #AverageIfs:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #bahtText:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #BahtText:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #besselI:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #BesselI:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #besselJ:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #BesselJ:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #besselK:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #BesselK:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #besselY:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #BesselY:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #betaDist:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #betaDist:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #BetaDist:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #betaInv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #betaInv:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #BetaInv:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #bin2Dec:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Bin2Dec:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #bin2Hex:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #bin2Hex:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Bin2Hex:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #bin2Oct:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #bin2Oct:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Bin2Oct:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #binomDist:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #BinomDist:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #ceiling:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Ceiling:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #chiDist:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ChiDist:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #chiInv:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ChiInv:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #chiTest:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ChiTest:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #choose:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #choose:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Choose:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #clean:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Clean:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #combin:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Combin:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #complex:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #complex:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Complex:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #confidence:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Confidence:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #convert:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Convert:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #correl:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Correl:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #cosh:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Cosh:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #count:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #count:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Count:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #countA:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #countA:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CountA:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #countBlank:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CountBlank:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #countIf:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CountIf:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #countIfs:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #countIfs:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CountIfs:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #coupDayBs:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #coupDayBs:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CoupDayBs:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #coupDays:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #coupDays:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CoupDays:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #coupDaysNc:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #coupDaysNc:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CoupDaysNc:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #coupNcd:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #coupNcd:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CoupNcd:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #coupNum:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #coupNum:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CoupNum:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #coupPcd:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #coupPcd:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CoupPcd:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #covar:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Covar:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIWorksheetFunction categoriesFor: #critBinom:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CritBinom:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #cumIPmt:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CumIPmt:arg2:arg3:arg4:arg5:arg6:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #cumPrinc:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #CumPrinc:arg2:arg3:arg4:arg5:arg6:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dAverage:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DAverage:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #days360:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #days360:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Days360:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #db:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #db:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Db:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dbcs:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Dbcs:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dCount:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DCount:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dCountA:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DCountA:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #ddb:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ddb:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Ddb:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dec2Bin:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #dec2Bin:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Dec2Bin:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dec2Hex:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #dec2Hex:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Dec2Hex:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dec2Oct:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #dec2Oct:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Dec2Oct:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #degrees:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Degrees:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #delta:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #delta:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Delta:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #devSq:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #devSq:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DevSq:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dGet:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DGet:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #disc:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #disc:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Disc:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dMax:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DMax:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dMin:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DMin:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dollar:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #dollar:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Dollar:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dollarDe:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DollarDe:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dollarFr:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DollarFr:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dProduct:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DProduct:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dStDev:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DStDev:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dStDevP:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DStDevP:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dSum:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DSum:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #duration:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #duration:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Duration:arg2:arg3:arg4:arg5:arg6:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dVar:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DVar:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #dVarP:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #DVarP:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #eDate:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #EDate:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #effect:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Effect:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #eoMonth:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #EoMonth:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #erf:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #erf:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Erf:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #erfC:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ErfC:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #even:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Even:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #exponDist:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ExponDist:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #fact:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Fact:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #factDouble:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #FactDouble:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #fDist:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #FDist:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #find:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #find:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Find:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #findB:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #findB:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #FindB:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #fInv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #FInv:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #fisher:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Fisher:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #fisherInv:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #FisherInv:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #fixed:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #fixed:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Fixed:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #floor:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Floor:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #forecast:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Forecast:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #frequency:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Frequency:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #fTest:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #FTest:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #fv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #fv:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Fv:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #fvSchedule:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #FVSchedule:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #gammaDist:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #GammaDist:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #gammaInv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #GammaInv:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #gammaLn:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #GammaLn:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #gcd:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #gcd:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Gcd:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #geoMean:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #geoMean:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #GeoMean:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #geStep:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #geStep:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #GeStep:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #growth:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #growth:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Growth:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #harMean:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #harMean:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #HarMean:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #hex2Bin:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #hex2Bin:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Hex2Bin:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #hex2Dec:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Hex2Dec:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #hex2Oct:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #hex2Oct:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Hex2Oct:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #hLookup:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #hLookup:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #HLookup:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #hypGeomDist:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #HypGeomDist:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #ifError:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #IfError:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imAbs:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImAbs:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imaginary:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Imaginary:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imArgument:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImArgument:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imConjugate:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImConjugate:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imCos:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImCos:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imDiv:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImDiv:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imExp:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImExp:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imLn:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImLn:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imLog10:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImLog10:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imLog2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImLog2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imPower:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImPower:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imProduct:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #imProduct:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImProduct:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imReal:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImReal:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imSin:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImSin:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imSqrt:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImSqrt:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imSub:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImSub:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #imSum:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #imSum:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ImSum:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #index:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #index:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Index:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #intercept:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Intercept:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #intRate:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #intRate:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #IntRate:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #ipmt:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ipmt:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Ipmt:arg2:arg3:arg4:arg5:arg6:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #irr:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #irr:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Irr:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #isErr:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #IsErr:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #isError:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #IsError:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #isEven:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #IsEven:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #isLogical:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #IsLogical:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #isNA:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #IsNA:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #isNonText:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #IsNonText:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #isNumber:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #IsNumber:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #isOdd:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #IsOdd:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #ispmt:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Ispmt:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #isText:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #IsText:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #isThaiDigit:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #IsThaiDigit:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #kurt:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #kurt:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Kurt:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #large:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Large:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #lcm:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #lcm:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Lcm:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #linEst:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #linEst:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #LinEst:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #ln:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Ln:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #log:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #log:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Log:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #log10:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Log10:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #logEst:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #logEst:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #LogEst:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #logInv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #LogInv:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #logNormDist:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #LogNormDist:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #lookup:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #lookup:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Lookup:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #match:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #match:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Match:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #max:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #max:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Max:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #mDeterm:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #MDeterm:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #mDuration:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #mDuration:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #MDuration:arg2:arg3:arg4:arg5:arg6:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #median:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #median:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Median:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #min:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #min:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Min:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #mInverse:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #MInverse:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #mIrr:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #MIrr:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #mMult:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #MMult:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #mode:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #mode:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Mode:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #mRound:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #MRound:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #multiNomial:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #multiNomial:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #MultiNomial:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #negBinomDist:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #NegBinomDist:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #networkDays:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #networkDays:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #NetworkDays:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #nominal:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Nominal:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #normDist:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #NormDist:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #normInv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #NormInv:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #normSDist:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #NormSDist:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #normSInv:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #NormSInv:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #nPer:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #nPer:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #NPer:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #npv:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #npv:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Npv:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #oct2Bin:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #oct2Bin:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Oct2Bin:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #oct2Dec:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Oct2Dec:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #oct2Hex:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #oct2Hex:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Oct2Hex:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #odd:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Odd:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #oddFPrice:arg2:arg3:arg4:arg5:arg6:arg7:arg8:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #oddFPrice:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #OddFPrice:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #oddFYield:arg2:arg3:arg4:arg5:arg6:arg7:arg8:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #oddFYield:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #OddFYield:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #oddLPrice:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #oddLPrice:arg2:arg3:arg4:arg5:arg6:arg7:arg8:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #OddLPrice:arg2:arg3:arg4:arg5:arg6:arg7:arg8:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #oddLYield:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #oddLYield:arg2:arg3:arg4:arg5:arg6:arg7:arg8:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #OddLYield:arg2:arg3:arg4:arg5:arg6:arg7:arg8:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #or:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Or:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #or_:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIWorksheetFunction categoriesFor: #pearson:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Pearson:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #percentile:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Percentile:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #percentRank:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #percentRank:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #PercentRank:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #permut:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Permut:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #phonetic:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Phonetic:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #pi!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Pi:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #pmt:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #pmt:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Pmt:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #poisson:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Poisson:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #power:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Power:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #ppmt:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ppmt:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Ppmt:arg2:arg3:arg4:arg5:arg6:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #price:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #price:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Price:arg2:arg3:arg4:arg5:arg6:arg7:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #priceDisc:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #priceDisc:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #PriceDisc:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #priceMat:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #priceMat:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #PriceMat:arg2:arg3:arg4:arg5:arg6:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #prob:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #prob:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Prob:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #product:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #product:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Product:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #proper:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Proper:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #pv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #pv:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Pv:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #quartile:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Quartile:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #quotient:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Quotient:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #radians:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Radians:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #randBetween:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #RandBetween:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #rank:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #rank:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Rank:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #rate:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #rate:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Rate:arg2:arg3:arg4:arg5:arg6:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #received:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #received:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Received:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #replace:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Replace:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #replaceB:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ReplaceB:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #rept:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Rept:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #roman:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #roman:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Roman:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #round:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Round:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #roundBahtDown:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #RoundBahtDown:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #roundBahtUp:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #RoundBahtUp:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #roundDown:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #RoundDown:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #roundUp:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #RoundUp:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #rSq:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #RSq:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #rtd:server:topic1:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #rtd:server:topic1:topic2:topic3:topic4:topic5:topic6:topic7:topic8:topic9:topic10:topic11:topic12:topic13:topic14:topic15:topic16:topic17:topic18:topic19:topic20:topic21:topic22:topic23:topic24:topic25:topic26:topic27:topic28:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #RTD:server:topic1:topic2:topic3:topic4:topic5:topic6:topic7:topic8:topic9:topic10:topic11:topic12:topic13:topic14:topic15:topic16:topic17:topic18:topic19:topic20:topic21:topic22:topic23:topic24:topic25:topic26:topic27:topic28:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #search:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #search:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Search:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #searchB:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #searchB:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #SearchB:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #seriesSum:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #SeriesSum:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #sinh:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Sinh:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #skew:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #skew:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Skew:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #sln:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Sln:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #slope:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Slope:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #small:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Small:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #sqrtPi:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #SqrtPi:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #standardize:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Standardize:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #stDev:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #stDev:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #StDev:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #stDevP:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #stDevP:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #StDevP:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #stEyx:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #StEyx:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #substitute:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #substitute:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Substitute:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #subtotal:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #subtotal:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Subtotal:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #sum:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #sum:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Sum:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #sumIf:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #sumIf:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #SumIf:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #sumIfs:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #sumIfs:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #SumIfs:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #sumProduct:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #sumProduct:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #SumProduct:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #sumSq:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #sumSq:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #SumSq:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #sumX2MY2:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #SumX2MY2:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #sumX2PY2:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #SumX2PY2:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #sumXMY2:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #SumXMY2:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #syd:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Syd:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #tanh:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Tanh:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #tBillEq:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #tBillEq:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #TBillEq:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #tBillPrice:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #tBillPrice:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #TBillPrice:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #tBillYield:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #tBillYield:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #TBillYield:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #tDist:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #TDist:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #text:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Text:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #thaiDayOfWeek:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ThaiDayOfWeek:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #thaiDigit:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ThaiDigit:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #thaiMonthOfYear:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ThaiMonthOfYear:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #thaiNumSound:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ThaiNumSound:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #thaiNumString:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ThaiNumString:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #thaiStringLength:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ThaiStringLength:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #thaiYear:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ThaiYear:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #tInv:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #TInv:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #transpose:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Transpose:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #trend:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #trend:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Trend:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #trim:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Trim:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #trimMean:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #TrimMean:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #tTest:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #TTest:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #usDollar:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #USDollar:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #var:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #var:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Var:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #varP:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #varP:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #VarP:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #vdb:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #vdb:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Vdb:arg2:arg3:arg4:arg5:arg6:arg7:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #vLookup:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #vLookup:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #VLookup:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #weekday:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #weekday:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Weekday:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #weekNum:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #weekNum:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #WeekNum:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #weibull:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Weibull:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #workDay:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #workDay:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #WorkDay:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #xirr:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #xirr:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Xirr:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #xnpv:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #Xnpv:arg2:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #yearFrac:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #yearFrac:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #YearFrac:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #yieldDisc:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #yieldDisc:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #YieldDisc:arg2:arg3:arg4:arg5:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #yieldMat:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #yieldMat:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #YieldMat:arg2:arg3:arg4:arg5:arg6:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !
!ExcelIWorksheetFunction categoriesFor: #zTest:arg2:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #zTest:arg2:arg3:!**auto generated**!methods!public! !
!ExcelIWorksheetFunction categoriesFor: #ZTest:arg2:arg3:rhs:!**auto generated**!COM Interfaces-IWorksheetFunction!private! !

!ExcelIWorksheetFunction class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IWorksheetFunction'
		ExcelIWorksheetFunction defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #_WSFunction:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*';
		defineFunction: #Count:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #IsNA:rhs:
			argumentTypes: 'variant varbool*';
		defineFunction: #IsError:rhs:
			argumentTypes: 'variant varbool*';
		defineFunction: #Sum:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #Average:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #Min:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #Max:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #Npv:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'double variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #StDev:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #Dollar:arg2:rhs:
			argumentTypes: 'double variant bstr*';
		defineFunction: #Fixed:arg2:arg3:rhs:
			argumentTypes: 'double variant variant bstr*';
		defineFunction: #Pi:
			argumentTypes: 'double*';
		defineFunction: #Ln:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Log10:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Round:arg2:rhs:
			argumentTypes: 'double double double*';
		defineFunction: #Lookup:arg2:arg3:rhs:
			argumentTypes: 'variant variant variant variant*';
		defineFunction: #Index:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant double variant variant variant*';
		defineFunction: #Rept:arg2:rhs:
			argumentTypes: 'bstr double bstr*';
		defineFunction: #And:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant varbool*';
		defineFunction: #Or:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant varbool*';
		defineFunction: #DCount:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #DSum:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #DAverage:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #DMin:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #DMax:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #DStDev:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #Var:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #DVar:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #Text:arg2:rhs:
			argumentTypes: 'variant bstr bstr*';
		defineFunction: #LinEst:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #Trend:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #LogEst:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #Growth:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #Pv:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'double double double variant variant double*';
		defineFunction: #Fv:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'double double double variant variant double*';
		defineFunction: #NPer:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'double double double variant variant double*';
		defineFunction: #Pmt:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'double double double variant variant double*';
		defineFunction: #Rate:arg2:arg3:arg4:arg5:arg6:rhs:
			argumentTypes: 'double double double variant variant variant double*';
		defineFunction: #MIrr:arg2:arg3:rhs:
			argumentTypes: 'variant double double double*';
		defineFunction: #Irr:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Match:arg2:arg3:rhs:
			argumentTypes: 'variant variant variant double*';
		defineFunction: #Weekday:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Search:arg2:arg3:rhs:
			argumentTypes: 'bstr bstr variant double*';
		defineFunction: #Transpose:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #Atan2:arg2:rhs:
			argumentTypes: 'double double double*';
		defineFunction: #Asin:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Acos:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Choose:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*';
		defineFunction: #HLookup:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #VLookup:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #Log:arg2:rhs:
			argumentTypes: 'double variant double*';
		defineFunction: #Proper:rhs:
			argumentTypes: 'bstr bstr*';
		defineFunction: #Trim:rhs:
			argumentTypes: 'bstr bstr*';
		defineFunction: #Replace:arg2:arg3:arg4:rhs:
			argumentTypes: 'bstr double double bstr bstr*';
		defineFunction: #Substitute:arg2:arg3:arg4:rhs:
			argumentTypes: 'bstr bstr bstr variant bstr*';
		defineFunction: #Find:arg2:arg3:rhs:
			argumentTypes: 'bstr bstr variant double*';
		defineFunction: #IsErr:rhs:
			argumentTypes: 'variant varbool*';
		defineFunction: #IsText:rhs:
			argumentTypes: 'variant varbool*';
		defineFunction: #IsNumber:rhs:
			argumentTypes: 'variant varbool*';
		defineFunction: #Sln:arg2:arg3:rhs:
			argumentTypes: 'double double double double*';
		defineFunction: #Syd:arg2:arg3:arg4:rhs:
			argumentTypes: 'double double double double double*';
		defineFunction: #Ddb:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'double double double double variant double*';
		defineFunction: #Clean:rhs:
			argumentTypes: 'bstr bstr*';
		defineFunction: #MDeterm:rhs:
			argumentTypes: 'variant double*';
		defineFunction: #MInverse:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #MMult:arg2:rhs:
			argumentTypes: 'variant variant variant*';
		defineFunction: #Ipmt:arg2:arg3:arg4:arg5:arg6:rhs:
			argumentTypes: 'double double double double variant variant double*';
		defineFunction: #Ppmt:arg2:arg3:arg4:arg5:arg6:rhs:
			argumentTypes: 'double double double double variant variant double*';
		defineFunction: #CountA:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #Product:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #Fact:rhs:
			argumentTypes: 'double double*';
		defineFunction: #DProduct:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #IsNonText:rhs:
			argumentTypes: 'variant varbool*';
		defineFunction: #StDevP:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #VarP:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #DStDevP:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #DVarP:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #IsLogical:rhs:
			argumentTypes: 'variant varbool*';
		defineFunction: #DCountA:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #USDollar:arg2:rhs:
			argumentTypes: 'double double bstr*';
		defineFunction: #FindB:arg2:arg3:rhs:
			argumentTypes: 'bstr bstr variant double*';
		defineFunction: #SearchB:arg2:arg3:rhs:
			argumentTypes: 'bstr bstr variant double*';
		defineFunction: #ReplaceB:arg2:arg3:arg4:rhs:
			argumentTypes: 'bstr double double bstr bstr*';
		defineFunction: #RoundUp:arg2:rhs:
			argumentTypes: 'double double double*';
		defineFunction: #RoundDown:arg2:rhs:
			argumentTypes: 'double double double*';
		defineFunction: #Rank:arg2:arg3:rhs:
			argumentTypes: 'double ExcelRange* variant double*';
		defineFunction: #Days360:arg2:arg3:rhs:
			argumentTypes: 'variant variant variant double*';
		defineFunction: #Vdb:arg2:arg3:arg4:arg5:arg6:arg7:rhs:
			argumentTypes: 'double double double double double variant variant double*';
		defineFunction: #Median:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #SumProduct:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #Sinh:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Cosh:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Tanh:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Asinh:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Acosh:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Atanh:rhs:
			argumentTypes: 'double double*';
		defineFunction: #DGet:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant variant*';
		defineFunction: #Db:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'double double double double variant double*';
		defineFunction: #Frequency:arg2:rhs:
			argumentTypes: 'variant variant variant*';
		defineFunction: #AveDev:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #BetaDist:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'double double double variant variant double*';
		defineFunction: #GammaLn:rhs:
			argumentTypes: 'double double*';
		defineFunction: #BetaInv:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'double double double variant variant double*';
		defineFunction: #BinomDist:arg2:arg3:arg4:rhs:
			argumentTypes: 'double double double varbool double*';
		defineFunction: #ChiDist:arg2:rhs:
			argumentTypes: 'double double double*';
		defineFunction: #ChiInv:arg2:rhs:
			argumentTypes: 'double double double*';
		defineFunction: #Combin:arg2:rhs:
			argumentTypes: 'double double double*';
		defineFunction: #Confidence:arg2:arg3:rhs:
			argumentTypes: 'double double double double*';
		defineFunction: #CritBinom:arg2:arg3:rhs:
			argumentTypes: 'double double double double*';
		defineFunction: #Even:rhs:
			argumentTypes: 'double double*';
		defineFunction: #ExponDist:arg2:arg3:rhs:
			argumentTypes: 'double double varbool double*';
		defineFunction: #FDist:arg2:arg3:rhs:
			argumentTypes: 'double double double double*';
		defineFunction: #FInv:arg2:arg3:rhs:
			argumentTypes: 'double double double double*';
		defineFunction: #Fisher:rhs:
			argumentTypes: 'double double*';
		defineFunction: #FisherInv:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Floor:arg2:rhs:
			argumentTypes: 'double double double*';
		defineFunction: #GammaDist:arg2:arg3:arg4:rhs:
			argumentTypes: 'double double double varbool double*';
		defineFunction: #GammaInv:arg2:arg3:rhs:
			argumentTypes: 'double double double double*';
		defineFunction: #Ceiling:arg2:rhs:
			argumentTypes: 'double double double*';
		defineFunction: #HypGeomDist:arg2:arg3:arg4:rhs:
			argumentTypes: 'double double double double double*';
		defineFunction: #LogNormDist:arg2:arg3:rhs:
			argumentTypes: 'double double double double*';
		defineFunction: #LogInv:arg2:arg3:rhs:
			argumentTypes: 'double double double double*';
		defineFunction: #NegBinomDist:arg2:arg3:rhs:
			argumentTypes: 'double double double double*';
		defineFunction: #NormDist:arg2:arg3:arg4:rhs:
			argumentTypes: 'double double double varbool double*';
		defineFunction: #NormSDist:rhs:
			argumentTypes: 'double double*';
		defineFunction: #NormInv:arg2:arg3:rhs:
			argumentTypes: 'double double double double*';
		defineFunction: #NormSInv:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Standardize:arg2:arg3:rhs:
			argumentTypes: 'double double double double*';
		defineFunction: #Odd:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Permut:arg2:rhs:
			argumentTypes: 'double double double*';
		defineFunction: #Poisson:arg2:arg3:rhs:
			argumentTypes: 'double double varbool double*';
		defineFunction: #TDist:arg2:arg3:rhs:
			argumentTypes: 'double double double double*';
		defineFunction: #Weibull:arg2:arg3:arg4:rhs:
			argumentTypes: 'double double double varbool double*';
		defineFunction: #SumXMY2:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #SumX2MY2:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #SumX2PY2:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #ChiTest:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Correl:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Covar:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Forecast:arg2:arg3:rhs:
			argumentTypes: 'double variant variant double*';
		defineFunction: #FTest:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Intercept:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Pearson:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #RSq:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #StEyx:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Slope:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #TTest:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant double double double*';
		defineFunction: #Prob:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant double variant double*';
		defineFunction: #DevSq:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #GeoMean:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #HarMean:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #SumSq:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #Kurt:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #Skew:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #ZTest:arg2:arg3:rhs:
			argumentTypes: 'variant double variant double*';
		defineFunction: #Large:arg2:rhs:
			argumentTypes: 'variant double double*';
		defineFunction: #Small:arg2:rhs:
			argumentTypes: 'variant double double*';
		defineFunction: #Quartile:arg2:rhs:
			argumentTypes: 'variant double double*';
		defineFunction: #Percentile:arg2:rhs:
			argumentTypes: 'variant double double*';
		defineFunction: #PercentRank:arg2:arg3:rhs:
			argumentTypes: 'variant double variant double*';
		defineFunction: #Mode:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #TrimMean:arg2:rhs:
			argumentTypes: 'variant double double*';
		defineFunction: #TInv:arg2:rhs:
			argumentTypes: 'double double double*';
		defineFunction: #Power:arg2:rhs:
			argumentTypes: 'double double double*';
		defineFunction: #Radians:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Degrees:rhs:
			argumentTypes: 'double double*';
		defineFunction: #Subtotal:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'double ExcelRange* variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #SumIf:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #CountIf:arg2:rhs:
			argumentTypes: 'ExcelRange* variant double*';
		defineFunction: #CountBlank:rhs:
			argumentTypes: 'ExcelRange* double*';
		defineFunction: #Ispmt:arg2:arg3:arg4:rhs:
			argumentTypes: 'double double double double double*';
		defineFunction: #Roman:arg2:rhs:
			argumentTypes: 'double variant bstr*';
		defineFunction: #Asc:rhs:
			argumentTypes: 'bstr bstr*';
		defineFunction: #Dbcs:rhs:
			argumentTypes: 'bstr bstr*';
		defineFunction: #Phonetic:rhs:
			argumentTypes: 'ExcelRange* bstr*';
		defineFunction: #BahtText:rhs:
			argumentTypes: 'double bstr*';
		defineFunction: #ThaiDayOfWeek:rhs:
			argumentTypes: 'double bstr*';
		defineFunction: #ThaiDigit:rhs:
			argumentTypes: 'bstr bstr*';
		defineFunction: #ThaiMonthOfYear:rhs:
			argumentTypes: 'double bstr*';
		defineFunction: #ThaiNumSound:rhs:
			argumentTypes: 'double bstr*';
		defineFunction: #ThaiNumString:rhs:
			argumentTypes: 'double bstr*';
		defineFunction: #ThaiStringLength:rhs:
			argumentTypes: 'bstr double*';
		defineFunction: #IsThaiDigit:rhs:
			argumentTypes: 'bstr varbool*';
		defineFunction: #RoundBahtDown:rhs:
			argumentTypes: 'double double*';
		defineFunction: #RoundBahtUp:rhs:
			argumentTypes: 'double double*';
		defineFunction: #ThaiYear:rhs:
			argumentTypes: 'double double*';
		defineFunction: #RTD:server:topic1:topic2:topic3:topic4:topic5:topic6:topic7:topic8:topic9:topic10:topic11:topic12:topic13:topic14:topic15:topic16:topic17:topic18:topic19:topic20:topic21:topic22:topic23:topic24:topic25:topic26:topic27:topic28:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*';
		defineFunction: #Hex2Bin:arg2:rhs:
			argumentTypes: 'variant variant bstr*';
		defineFunction: #Hex2Dec:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #Hex2Oct:arg2:rhs:
			argumentTypes: 'variant variant bstr*';
		defineFunction: #Dec2Bin:arg2:rhs:
			argumentTypes: 'variant variant bstr*';
		defineFunction: #Dec2Hex:arg2:rhs:
			argumentTypes: 'variant variant bstr*';
		defineFunction: #Dec2Oct:arg2:rhs:
			argumentTypes: 'variant variant bstr*';
		defineFunction: #Oct2Bin:arg2:rhs:
			argumentTypes: 'variant variant bstr*';
		defineFunction: #Oct2Hex:arg2:rhs:
			argumentTypes: 'variant variant bstr*';
		defineFunction: #Oct2Dec:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #Bin2Dec:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #Bin2Oct:arg2:rhs:
			argumentTypes: 'variant variant bstr*';
		defineFunction: #Bin2Hex:arg2:rhs:
			argumentTypes: 'variant variant bstr*';
		defineFunction: #ImSub:arg2:rhs:
			argumentTypes: 'variant variant bstr*';
		defineFunction: #ImDiv:arg2:rhs:
			argumentTypes: 'variant variant bstr*';
		defineFunction: #ImPower:arg2:rhs:
			argumentTypes: 'variant variant bstr*';
		defineFunction: #ImAbs:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #ImSqrt:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #ImLn:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #ImLog2:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #ImLog10:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #ImSin:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #ImCos:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #ImExp:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #ImArgument:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #ImConjugate:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #Imaginary:rhs:
			argumentTypes: 'variant double*';
		defineFunction: #ImReal:rhs:
			argumentTypes: 'variant double*';
		defineFunction: #Complex:arg2:arg3:rhs:
			argumentTypes: 'variant variant variant bstr*';
		defineFunction: #ImSum:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant bstr*';
		defineFunction: #ImProduct:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant bstr*';
		defineFunction: #SeriesSum:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant double*';
		defineFunction: #FactDouble:rhs:
			argumentTypes: 'variant double*';
		defineFunction: #SqrtPi:rhs:
			argumentTypes: 'variant double*';
		defineFunction: #Quotient:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Delta:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #GeStep:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #IsEven:rhs:
			argumentTypes: 'variant varbool*';
		defineFunction: #IsOdd:rhs:
			argumentTypes: 'variant varbool*';
		defineFunction: #MRound:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Erf:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #ErfC:rhs:
			argumentTypes: 'variant double*';
		defineFunction: #BesselJ:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #BesselK:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #BesselY:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #BesselI:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Xirr:arg2:arg3:rhs:
			argumentTypes: 'variant variant variant double*';
		defineFunction: #Xnpv:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #PriceMat:arg2:arg3:arg4:arg5:arg6:rhs:
			argumentTypes: 'variant variant variant variant variant variant double*';
		defineFunction: #YieldMat:arg2:arg3:arg4:arg5:arg6:rhs:
			argumentTypes: 'variant variant variant variant variant variant double*';
		defineFunction: #IntRate:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'variant variant variant variant variant double*';
		defineFunction: #Received:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'variant variant variant variant variant double*';
		defineFunction: #Disc:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'variant variant variant variant variant double*';
		defineFunction: #PriceDisc:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'variant variant variant variant variant double*';
		defineFunction: #YieldDisc:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'variant variant variant variant variant double*';
		defineFunction: #TBillEq:arg2:arg3:rhs:
			argumentTypes: 'variant variant variant double*';
		defineFunction: #TBillPrice:arg2:arg3:rhs:
			argumentTypes: 'variant variant variant double*';
		defineFunction: #TBillYield:arg2:arg3:rhs:
			argumentTypes: 'variant variant variant double*';
		defineFunction: #Price:arg2:arg3:arg4:arg5:arg6:arg7:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant double*';
		defineFunction: #DollarDe:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #DollarFr:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Nominal:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #Effect:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #CumPrinc:arg2:arg3:arg4:arg5:arg6:rhs:
			argumentTypes: 'variant variant variant variant variant variant double*';
		defineFunction: #CumIPmt:arg2:arg3:arg4:arg5:arg6:rhs:
			argumentTypes: 'variant variant variant variant variant variant double*';
		defineFunction: #EDate:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #EoMonth:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #YearFrac:arg2:arg3:rhs:
			argumentTypes: 'variant variant variant double*';
		defineFunction: #CoupDayBs:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant double*';
		defineFunction: #CoupDays:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant double*';
		defineFunction: #CoupDaysNc:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant double*';
		defineFunction: #CoupNcd:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant double*';
		defineFunction: #CoupNum:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant double*';
		defineFunction: #CoupPcd:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant double*';
		defineFunction: #Duration:arg2:arg3:arg4:arg5:arg6:rhs:
			argumentTypes: 'variant variant variant variant variant variant double*';
		defineFunction: #MDuration:arg2:arg3:arg4:arg5:arg6:rhs:
			argumentTypes: 'variant variant variant variant variant variant double*';
		defineFunction: #OddLPrice:arg2:arg3:arg4:arg5:arg6:arg7:arg8:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant double*';
		defineFunction: #OddLYield:arg2:arg3:arg4:arg5:arg6:arg7:arg8:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant double*';
		defineFunction: #OddFPrice:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #OddFYield:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #RandBetween:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #WeekNum:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #AmorDegrc:arg2:arg3:arg4:arg5:arg6:arg7:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant double*';
		defineFunction: #AmorLinc:arg2:arg3:arg4:arg5:arg6:arg7:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant double*';
		defineFunction: #Convert:arg2:arg3:rhs:
			argumentTypes: 'variant variant variant double*';
		defineFunction: #AccrInt:arg2:arg3:arg4:arg5:arg6:arg7:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant double*';
		defineFunction: #AccrIntM:arg2:arg3:arg4:arg5:rhs:
			argumentTypes: 'variant variant variant variant variant double*';
		defineFunction: #WorkDay:arg2:arg3:rhs:
			argumentTypes: 'variant variant variant double*';
		defineFunction: #NetworkDays:arg2:arg3:rhs:
			argumentTypes: 'variant variant variant double*';
		defineFunction: #Gcd:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #MultiNomial:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #Lcm:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #FVSchedule:arg2:rhs:
			argumentTypes: 'variant variant double*';
		defineFunction: #SumIfs:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:rhs:
			argumentTypes: 'ExcelRange* ExcelRange* variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #CountIfs:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'ExcelRange* variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #AverageIf:arg2:arg3:rhs:
			argumentTypes: 'ExcelRange* variant variant double*';
		defineFunction: #AverageIfs:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:rhs:
			argumentTypes: 'ExcelRange* ExcelRange* variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant double*';
		defineFunction: #IfError:arg2:rhs:
			argumentTypes: 'variant variant variant*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIWorksheetFunction initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIWorksheetFunction class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIWorksheetFunction class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

