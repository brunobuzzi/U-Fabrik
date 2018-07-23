"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelWorksheetFunction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelWorksheetFunction guid: (IID fromString: '{00020845-0000-0000-C000-000000000046}')!
ExcelWorksheetFunction comment: '<ExcelWorksheetFunction> is a wrapper class generated for the dispatch interface ''Excel.WorksheetFunction'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020845-0000-0000-C000-000000000046), 
	helpcontext(0x00020005)
]
dispinterface WorksheetFunction {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000a9), hidden, helpcontext(0x000100a9)]
		VARIANT _WSFunction(
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
			[in, optional]VARIANT Arg30);
[id(0x00004000), helpcontext(0x00014000)]
		double Count(
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
			[in, optional]VARIANT Arg30);
[id(0x00004002), helpcontext(0x00014002)]
		VARIANT_BOOL IsNA(
			[in]VARIANT Arg1);
[id(0x00004003), helpcontext(0x00014003)]
		VARIANT_BOOL IsError(
			[in]VARIANT Arg1);
[id(0x00004004), helpcontext(0x00014004)]
		double Sum(
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
			[in, optional]VARIANT Arg30);
[id(0x00004005), helpcontext(0x00014005)]
		double Average(
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
			[in, optional]VARIANT Arg30);
[id(0x00004006), helpcontext(0x00014006)]
		double Min(
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
			[in, optional]VARIANT Arg30);
[id(0x00004007), helpcontext(0x00014007)]
		double Max(
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
			[in, optional]VARIANT Arg30);
[id(0x0000400b), helpcontext(0x0001400b)]
		double Npv(
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
			[in, optional]VARIANT Arg30);
[id(0x0000400c), helpcontext(0x0001400c)]
		double StDev(
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
			[in, optional]VARIANT Arg30);
[id(0x0000400d), helpcontext(0x0001400d)]
		BSTR Dollar(
			[in]double Arg1,
			[in, optional]VARIANT Arg2);
[id(0x0000400e), helpcontext(0x0001400e)]
		BSTR Fixed(
			[in]double Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x00004013), helpcontext(0x00014013)]
		double Pi();
[id(0x00004016), helpcontext(0x00014016)]
		double Ln(
			[in]double Arg1);
[id(0x00004017), helpcontext(0x00014017)]
		double Log10(
			[in]double Arg1);
[id(0x0000401b), helpcontext(0x0001401b)]
		double Round(
			[in]double Arg1,
			[in]double Arg2);
[id(0x0000401c), helpcontext(0x0001401c)]
		VARIANT Lookup(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x0000401d), helpcontext(0x0001401d)]
		VARIANT Index(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x0000401e), helpcontext(0x0001401e)]
		BSTR Rept(
			[in]BSTR Arg1,
			[in]double Arg2);
[id(0x00004024), helpcontext(0x00014024)]
		VARIANT_BOOL And(
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
			[in, optional]VARIANT Arg30);
[id(0x00004025), helpcontext(0x00014025)]
		VARIANT_BOOL Or(
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
			[in, optional]VARIANT Arg30);
[id(0x00004028), helpcontext(0x00014028)]
		double DCount(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x00004029), helpcontext(0x00014029)]
		double DSum(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x0000402a), helpcontext(0x0001402a)]
		double DAverage(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x0000402b), helpcontext(0x0001402b)]
		double DMin(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x0000402c), helpcontext(0x0001402c)]
		double DMax(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x0000402d), helpcontext(0x0001402d)]
		double DStDev(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x0000402e), helpcontext(0x0001402e)]
		double Var(
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
			[in, optional]VARIANT Arg30);
[id(0x0000402f), helpcontext(0x0001402f)]
		double DVar(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x00004030), helpcontext(0x00014030)]
		BSTR Text(
			[in]VARIANT Arg1,
			[in]BSTR Arg2);
[id(0x00004031), helpcontext(0x00014031)]
		VARIANT LinEst(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x00004032), helpcontext(0x00014032)]
		VARIANT Trend(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x00004033), helpcontext(0x00014033)]
		VARIANT LogEst(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x00004034), helpcontext(0x00014034)]
		VARIANT Growth(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x00004038), helpcontext(0x00014038)]
		double Pv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5);
[id(0x00004039), helpcontext(0x00014039)]
		double Fv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5);
[id(0x0000403a), helpcontext(0x0001403a)]
		double NPer(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5);
[id(0x0000403b), helpcontext(0x0001403b)]
		double Pmt(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5);
[id(0x0000403c), helpcontext(0x0001403c)]
		double Rate(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6);
[id(0x0000403d), helpcontext(0x0001403d)]
		double MIrr(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x0000403e), helpcontext(0x0001403e)]
		double Irr(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x00004040), helpcontext(0x00014040)]
		double Match(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x00004046), helpcontext(0x00014046)]
		double Weekday(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x00004052), helpcontext(0x00014052)]
		double Search(
			[in]BSTR Arg1,
			[in]BSTR Arg2,
			[in, optional]VARIANT Arg3);
[id(0x00004053), helpcontext(0x00014053)]
		VARIANT Transpose(
			[in]VARIANT Arg1);
[id(0x00004061), helpcontext(0x00014061)]
		double Atan2(
			[in]double Arg1,
			[in]double Arg2);
[id(0x00004062), helpcontext(0x00014062)]
		double Asin(
			[in]double Arg1);
[id(0x00004063), helpcontext(0x00014063)]
		double Acos(
			[in]double Arg1);
[id(0x00004064), helpcontext(0x00014064)]
		VARIANT Choose(
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
			[in, optional]VARIANT Arg30);
[id(0x00004065), helpcontext(0x00014065)]
		VARIANT HLookup(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x00004066), helpcontext(0x00014066)]
		VARIANT VLookup(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x0000406d), helpcontext(0x0001406d)]
		double Log(
			[in]double Arg1,
			[in, optional]VARIANT Arg2);
[id(0x00004072), helpcontext(0x00014072)]
		BSTR Proper(
			[in]BSTR Arg1);
[id(0x00004076), helpcontext(0x00014076)]
		BSTR Trim(
			[in]BSTR Arg1);
[id(0x00004077), helpcontext(0x00014077)]
		BSTR Replace(
			[in]BSTR Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]BSTR Arg4);
[id(0x00004078), helpcontext(0x00014078)]
		BSTR Substitute(
			[in]BSTR Arg1,
			[in]BSTR Arg2,
			[in]BSTR Arg3,
			[in, optional]VARIANT Arg4);
[id(0x0000407c), helpcontext(0x0001407c)]
		double Find(
			[in]BSTR Arg1,
			[in]BSTR Arg2,
			[in, optional]VARIANT Arg3);
[id(0x0000407e), helpcontext(0x0001407e)]
		VARIANT_BOOL IsErr(
			[in]VARIANT Arg1);
[id(0x0000407f), helpcontext(0x0001407f)]
		VARIANT_BOOL IsText(
			[in]VARIANT Arg1);
[id(0x00004080), helpcontext(0x00014080)]
		VARIANT_BOOL IsNumber(
			[in]VARIANT Arg1);
[id(0x0000408e), helpcontext(0x0001408e)]
		double Sln(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x0000408f), helpcontext(0x0001408f)]
		double Syd(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4);
[id(0x00004090), helpcontext(0x00014090)]
		double Ddb(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[in, optional]VARIANT Arg5);
[id(0x000040a2), helpcontext(0x000140a2)]
		BSTR Clean(
			[in]BSTR Arg1);
[id(0x000040a3), helpcontext(0x000140a3)]
		double MDeterm(
			[in]VARIANT Arg1);
[id(0x000040a4), helpcontext(0x000140a4)]
		VARIANT MInverse(
			[in]VARIANT Arg1);
[id(0x000040a5), helpcontext(0x000140a5)]
		VARIANT MMult(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000040a7), helpcontext(0x000140a7)]
		double Ipmt(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6);
[id(0x000040a8), helpcontext(0x000140a8)]
		double Ppmt(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6);
[id(0x000040a9), helpcontext(0x000140a9)]
		double CountA(
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
			[in, optional]VARIANT Arg30);
[id(0x000040b7), helpcontext(0x000140b7)]
		double Product(
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
			[in, optional]VARIANT Arg30);
[id(0x000040b8), helpcontext(0x000140b8)]
		double Fact(
			[in]double Arg1);
[id(0x000040bd), helpcontext(0x000140bd)]
		double DProduct(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x000040be), helpcontext(0x000140be)]
		VARIANT_BOOL IsNonText(
			[in]VARIANT Arg1);
[id(0x000040c1), helpcontext(0x000140c1)]
		double StDevP(
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
			[in, optional]VARIANT Arg30);
[id(0x000040c2), helpcontext(0x000140c2)]
		double VarP(
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
			[in, optional]VARIANT Arg30);
[id(0x000040c3), helpcontext(0x000140c3)]
		double DStDevP(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x000040c4), helpcontext(0x000140c4)]
		double DVarP(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x000040c6), helpcontext(0x000140c6)]
		VARIANT_BOOL IsLogical(
			[in]VARIANT Arg1);
[id(0x000040c7), helpcontext(0x000140c7)]
		double DCountA(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x000040cc), helpcontext(0x000140cc)]
		BSTR USDollar(
			[in]double Arg1,
			[in]double Arg2);
[id(0x000040cd), helpcontext(0x000140cd)]
		double FindB(
			[in]BSTR Arg1,
			[in]BSTR Arg2,
			[in, optional]VARIANT Arg3);
[id(0x000040ce), helpcontext(0x000140ce)]
		double SearchB(
			[in]BSTR Arg1,
			[in]BSTR Arg2,
			[in, optional]VARIANT Arg3);
[id(0x000040cf), helpcontext(0x000140cf)]
		BSTR ReplaceB(
			[in]BSTR Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]BSTR Arg4);
[id(0x000040d4), helpcontext(0x000140d4)]
		double RoundUp(
			[in]double Arg1,
			[in]double Arg2);
[id(0x000040d5), helpcontext(0x000140d5)]
		double RoundDown(
			[in]double Arg1,
			[in]double Arg2);
[id(0x000040d8), helpcontext(0x000140d8)]
		double Rank(
			[in]double Arg1,
			[in]Range* Arg2,
			[in, optional]VARIANT Arg3);
[id(0x000040dc), helpcontext(0x000140dc)]
		double Days360(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x000040de), helpcontext(0x000140de)]
		double Vdb(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[in]double Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7);
[id(0x000040e3), helpcontext(0x000140e3)]
		double Median(
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
			[in, optional]VARIANT Arg30);
[id(0x000040e4), helpcontext(0x000140e4)]
		double SumProduct(
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
			[in, optional]VARIANT Arg30);
[id(0x000040e5), helpcontext(0x000140e5)]
		double Sinh(
			[in]double Arg1);
[id(0x000040e6), helpcontext(0x000140e6)]
		double Cosh(
			[in]double Arg1);
[id(0x000040e7), helpcontext(0x000140e7)]
		double Tanh(
			[in]double Arg1);
[id(0x000040e8), helpcontext(0x000140e8)]
		double Asinh(
			[in]double Arg1);
[id(0x000040e9), helpcontext(0x000140e9)]
		double Acosh(
			[in]double Arg1);
[id(0x000040ea), helpcontext(0x000140ea)]
		double Atanh(
			[in]double Arg1);
[id(0x000040eb), helpcontext(0x000140eb)]
		VARIANT DGet(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x000040f7), helpcontext(0x000140f7)]
		double Db(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4,
			[in, optional]VARIANT Arg5);
[id(0x000040fc), helpcontext(0x000140fc)]
		VARIANT Frequency(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x0000410d), helpcontext(0x0001410d)]
		double AveDev(
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
			[in, optional]VARIANT Arg30);
[id(0x0000410e), helpcontext(0x0001410e)]
		double BetaDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5);
[id(0x0000410f), helpcontext(0x0001410f)]
		double GammaLn(
			[in]double Arg1);
[id(0x00004110), helpcontext(0x00014110)]
		double BetaInv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5);
[id(0x00004111), helpcontext(0x00014111)]
		double BinomDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]VARIANT_BOOL Arg4);
[id(0x00004112), helpcontext(0x00014112)]
		double ChiDist(
			[in]double Arg1,
			[in]double Arg2);
[id(0x00004113), helpcontext(0x00014113)]
		double ChiInv(
			[in]double Arg1,
			[in]double Arg2);
[id(0x00004114), helpcontext(0x00014114)]
		double Combin(
			[in]double Arg1,
			[in]double Arg2);
[id(0x00004115), helpcontext(0x00014115)]
		double Confidence(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x00004116), helpcontext(0x00014116)]
		double CritBinom(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x00004117), helpcontext(0x00014117)]
		double Even(
			[in]double Arg1);
[id(0x00004118), helpcontext(0x00014118)]
		double ExponDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]VARIANT_BOOL Arg3);
[id(0x00004119), helpcontext(0x00014119)]
		double FDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x0000411a), helpcontext(0x0001411a)]
		double FInv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x0000411b), helpcontext(0x0001411b)]
		double Fisher(
			[in]double Arg1);
[id(0x0000411c), helpcontext(0x0001411c)]
		double FisherInv(
			[in]double Arg1);
[id(0x0000411d), helpcontext(0x0001411d)]
		double Floor(
			[in]double Arg1,
			[in]double Arg2);
[id(0x0000411e), helpcontext(0x0001411e)]
		double GammaDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]VARIANT_BOOL Arg4);
[id(0x0000411f), helpcontext(0x0001411f)]
		double GammaInv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x00004120), helpcontext(0x00014120)]
		double Ceiling(
			[in]double Arg1,
			[in]double Arg2);
[id(0x00004121), helpcontext(0x00014121)]
		double HypGeomDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4);
[id(0x00004122), helpcontext(0x00014122)]
		double LogNormDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x00004123), helpcontext(0x00014123)]
		double LogInv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x00004124), helpcontext(0x00014124)]
		double NegBinomDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x00004125), helpcontext(0x00014125)]
		double NormDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]VARIANT_BOOL Arg4);
[id(0x00004126), helpcontext(0x00014126)]
		double NormSDist(
			[in]double Arg1);
[id(0x00004127), helpcontext(0x00014127)]
		double NormInv(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x00004128), helpcontext(0x00014128)]
		double NormSInv(
			[in]double Arg1);
[id(0x00004129), helpcontext(0x00014129)]
		double Standardize(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x0000412a), helpcontext(0x0001412a)]
		double Odd(
			[in]double Arg1);
[id(0x0000412b), helpcontext(0x0001412b)]
		double Permut(
			[in]double Arg1,
			[in]double Arg2);
[id(0x0000412c), helpcontext(0x0001412c)]
		double Poisson(
			[in]double Arg1,
			[in]double Arg2,
			[in]VARIANT_BOOL Arg3);
[id(0x0000412d), helpcontext(0x0001412d)]
		double TDist(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3);
[id(0x0000412e), helpcontext(0x0001412e)]
		double Weibull(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]VARIANT_BOOL Arg4);
[id(0x0000412f), helpcontext(0x0001412f)]
		double SumXMY2(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x00004130), helpcontext(0x00014130)]
		double SumX2MY2(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x00004131), helpcontext(0x00014131)]
		double SumX2PY2(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x00004132), helpcontext(0x00014132)]
		double ChiTest(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x00004133), helpcontext(0x00014133)]
		double Correl(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x00004134), helpcontext(0x00014134)]
		double Covar(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x00004135), helpcontext(0x00014135)]
		double Forecast(
			[in]double Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x00004136), helpcontext(0x00014136)]
		double FTest(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x00004137), helpcontext(0x00014137)]
		double Intercept(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x00004138), helpcontext(0x00014138)]
		double Pearson(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x00004139), helpcontext(0x00014139)]
		double RSq(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x0000413a), helpcontext(0x0001413a)]
		double StEyx(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x0000413b), helpcontext(0x0001413b)]
		double Slope(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x0000413c), helpcontext(0x0001413c)]
		double TTest(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]double Arg3,
			[in]double Arg4);
[id(0x0000413d), helpcontext(0x0001413d)]
		double Prob(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]double Arg3,
			[in, optional]VARIANT Arg4);
[id(0x0000413e), helpcontext(0x0001413e)]
		double DevSq(
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
			[in, optional]VARIANT Arg30);
[id(0x0000413f), helpcontext(0x0001413f)]
		double GeoMean(
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
			[in, optional]VARIANT Arg30);
[id(0x00004140), helpcontext(0x00014140)]
		double HarMean(
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
			[in, optional]VARIANT Arg30);
[id(0x00004141), helpcontext(0x00014141)]
		double SumSq(
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
			[in, optional]VARIANT Arg30);
[id(0x00004142), helpcontext(0x00014142)]
		double Kurt(
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
			[in, optional]VARIANT Arg30);
[id(0x00004143), helpcontext(0x00014143)]
		double Skew(
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
			[in, optional]VARIANT Arg30);
[id(0x00004144), helpcontext(0x00014144)]
		double ZTest(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[in, optional]VARIANT Arg3);
[id(0x00004145), helpcontext(0x00014145)]
		double Large(
			[in]VARIANT Arg1,
			[in]double Arg2);
[id(0x00004146), helpcontext(0x00014146)]
		double Small(
			[in]VARIANT Arg1,
			[in]double Arg2);
[id(0x00004147), helpcontext(0x00014147)]
		double Quartile(
			[in]VARIANT Arg1,
			[in]double Arg2);
[id(0x00004148), helpcontext(0x00014148)]
		double Percentile(
			[in]VARIANT Arg1,
			[in]double Arg2);
[id(0x00004149), helpcontext(0x00014149)]
		double PercentRank(
			[in]VARIANT Arg1,
			[in]double Arg2,
			[in, optional]VARIANT Arg3);
[id(0x0000414a), helpcontext(0x0001414a)]
		double Mode(
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
			[in, optional]VARIANT Arg30);
[id(0x0000414b), helpcontext(0x0001414b)]
		double TrimMean(
			[in]VARIANT Arg1,
			[in]double Arg2);
[id(0x0000414c), helpcontext(0x0001414c)]
		double TInv(
			[in]double Arg1,
			[in]double Arg2);
[id(0x00004151), helpcontext(0x00014151)]
		double Power(
			[in]double Arg1,
			[in]double Arg2);
[id(0x00004156), helpcontext(0x00014156)]
		double Radians(
			[in]double Arg1);
[id(0x00004157), helpcontext(0x00014157)]
		double Degrees(
			[in]double Arg1);
[id(0x00004158), helpcontext(0x00014158)]
		double Subtotal(
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
			[in, optional]VARIANT Arg30);
[id(0x00004159), helpcontext(0x00014159)]
		double SumIf(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x0000415a), helpcontext(0x0001415a)]
		double CountIf(
			[in]Range* Arg1,
			[in]VARIANT Arg2);
[id(0x0000415b), helpcontext(0x0001415b)]
		double CountBlank(
			[in]Range* Arg1);
[id(0x0000415e), helpcontext(0x0001415e)]
		double Ispmt(
			[in]double Arg1,
			[in]double Arg2,
			[in]double Arg3,
			[in]double Arg4);
[id(0x00004162), helpcontext(0x00014162)]
		BSTR Roman(
			[in]double Arg1,
			[in, optional]VARIANT Arg2);
[id(0x000040d6), helpcontext(0x000140d6)]
		BSTR Asc(
			[in]BSTR Arg1);
[id(0x000040d7), helpcontext(0x000140d7)]
		BSTR Dbcs(
			[in]BSTR Arg1);
[id(0x00004168), helpcontext(0x00014168)]
		BSTR Phonetic(
			[in]Range* Arg1);
[id(0x00004170), helpcontext(0x00014170)]
		BSTR BahtText(
			[in]double Arg1);
[id(0x00004171), hidden, helpcontext(0x00014171)]
		BSTR ThaiDayOfWeek(
			[in]double Arg1);
[id(0x00004172), hidden, helpcontext(0x00014172)]
		BSTR ThaiDigit(
			[in]BSTR Arg1);
[id(0x00004173), hidden, helpcontext(0x00014173)]
		BSTR ThaiMonthOfYear(
			[in]double Arg1);
[id(0x00004174), hidden, helpcontext(0x00014174)]
		BSTR ThaiNumSound(
			[in]double Arg1);
[id(0x00004175), hidden, helpcontext(0x00014175)]
		BSTR ThaiNumString(
			[in]double Arg1);
[id(0x00004176), hidden, helpcontext(0x00014176)]
		double ThaiStringLength(
			[in]BSTR Arg1);
[id(0x00004177), hidden, helpcontext(0x00014177)]
		VARIANT_BOOL IsThaiDigit(
			[in]BSTR Arg1);
[id(0x00004178), hidden, helpcontext(0x00014178)]
		double RoundBahtDown(
			[in]double Arg1);
[id(0x00004179), hidden, helpcontext(0x00014179)]
		double RoundBahtUp(
			[in]double Arg1);
[id(0x0000417a), hidden, helpcontext(0x0001417a)]
		double ThaiYear(
			[in]double Arg1);
[id(0x0000417b), helpcontext(0x0001417b)]
		VARIANT RTD(
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
			[in, optional]VARIANT topic28);
[id(0x00004180), helpcontext(0x00014180)]
		BSTR Hex2Bin(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x00004181), helpcontext(0x00014181)]
		BSTR Hex2Dec(
			[in]VARIANT Arg1);
[id(0x00004182), helpcontext(0x00014182)]
		BSTR Hex2Oct(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x00004183), helpcontext(0x00014183)]
		BSTR Dec2Bin(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x00004184), helpcontext(0x00014184)]
		BSTR Dec2Hex(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x00004185), helpcontext(0x00014185)]
		BSTR Dec2Oct(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x00004186), helpcontext(0x00014186)]
		BSTR Oct2Bin(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x00004187), helpcontext(0x00014187)]
		BSTR Oct2Hex(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x00004188), helpcontext(0x00014188)]
		BSTR Oct2Dec(
			[in]VARIANT Arg1);
[id(0x00004189), helpcontext(0x00014189)]
		BSTR Bin2Dec(
			[in]VARIANT Arg1);
[id(0x0000418a), helpcontext(0x0001418a)]
		BSTR Bin2Oct(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x0000418b), helpcontext(0x0001418b)]
		BSTR Bin2Hex(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x0000418c), helpcontext(0x0001418c)]
		BSTR ImSub(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x0000418d), helpcontext(0x0001418d)]
		BSTR ImDiv(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x0000418e), helpcontext(0x0001418e)]
		BSTR ImPower(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x0000418f), helpcontext(0x0001418f)]
		BSTR ImAbs(
			[in]VARIANT Arg1);
[id(0x00004190), helpcontext(0x00014190)]
		BSTR ImSqrt(
			[in]VARIANT Arg1);
[id(0x00004191), helpcontext(0x00014191)]
		BSTR ImLn(
			[in]VARIANT Arg1);
[id(0x00004192), helpcontext(0x00014192)]
		BSTR ImLog2(
			[in]VARIANT Arg1);
[id(0x00004193), helpcontext(0x00014193)]
		BSTR ImLog10(
			[in]VARIANT Arg1);
[id(0x00004194), helpcontext(0x00014194)]
		BSTR ImSin(
			[in]VARIANT Arg1);
[id(0x00004195), helpcontext(0x00014195)]
		BSTR ImCos(
			[in]VARIANT Arg1);
[id(0x00004196), helpcontext(0x00014196)]
		BSTR ImExp(
			[in]VARIANT Arg1);
[id(0x00004197), helpcontext(0x00014197)]
		BSTR ImArgument(
			[in]VARIANT Arg1);
[id(0x00004198), helpcontext(0x00014198)]
		BSTR ImConjugate(
			[in]VARIANT Arg1);
[id(0x00004199), helpcontext(0x00014199)]
		double Imaginary(
			[in]VARIANT Arg1);
[id(0x0000419a), helpcontext(0x0001419a)]
		double ImReal(
			[in]VARIANT Arg1);
[id(0x0000419b), helpcontext(0x0001419b)]
		BSTR Complex(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x0000419c), helpcontext(0x0001419c)]
		BSTR ImSum(
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
			[in, optional]VARIANT Arg30);
[id(0x0000419d), helpcontext(0x0001419d)]
		BSTR ImProduct(
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
			[in, optional]VARIANT Arg30);
[id(0x0000419e), helpcontext(0x0001419e)]
		double SeriesSum(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4);
[id(0x0000419f), helpcontext(0x0001419f)]
		double FactDouble(
			[in]VARIANT Arg1);
[id(0x000041a0), helpcontext(0x000141a0)]
		double SqrtPi(
			[in]VARIANT Arg1);
[id(0x000041a1), helpcontext(0x000141a1)]
		double Quotient(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041a2), helpcontext(0x000141a2)]
		double Delta(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x000041a3), helpcontext(0x000141a3)]
		double GeStep(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x000041a4), helpcontext(0x000141a4)]
		VARIANT_BOOL IsEven(
			[in]VARIANT Arg1);
[id(0x000041a5), helpcontext(0x000141a5)]
		VARIANT_BOOL IsOdd(
			[in]VARIANT Arg1);
[id(0x000041a6), helpcontext(0x000141a6)]
		double MRound(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041a7), helpcontext(0x000141a7)]
		double Erf(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x000041a8), helpcontext(0x000141a8)]
		double ErfC(
			[in]VARIANT Arg1);
[id(0x000041a9), helpcontext(0x000141a9)]
		double BesselJ(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041aa), helpcontext(0x000141aa)]
		double BesselK(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041ab), helpcontext(0x000141ab)]
		double BesselY(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041ac), helpcontext(0x000141ac)]
		double BesselI(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041ad), helpcontext(0x000141ad)]
		double Xirr(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x000041ae), helpcontext(0x000141ae)]
		double Xnpv(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041af), helpcontext(0x000141af)]
		double PriceMat(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in, optional]VARIANT Arg6);
[id(0x000041b0), helpcontext(0x000141b0)]
		double YieldMat(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in, optional]VARIANT Arg6);
[id(0x000041b1), helpcontext(0x000141b1)]
		double IntRate(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in, optional]VARIANT Arg5);
[id(0x000041b2), helpcontext(0x000141b2)]
		double Received(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in, optional]VARIANT Arg5);
[id(0x000041b3), helpcontext(0x000141b3)]
		double Disc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in, optional]VARIANT Arg5);
[id(0x000041b4), helpcontext(0x000141b4)]
		double PriceDisc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in, optional]VARIANT Arg5);
[id(0x000041b5), helpcontext(0x000141b5)]
		double YieldDisc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in, optional]VARIANT Arg5);
[id(0x000041b6), helpcontext(0x000141b6)]
		double TBillEq(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x000041b7), helpcontext(0x000141b7)]
		double TBillPrice(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x000041b8), helpcontext(0x000141b8)]
		double TBillYield(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x000041b9), helpcontext(0x000141b9)]
		double Price(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in, optional]VARIANT Arg7);
[id(0x000041bb), helpcontext(0x000141bb)]
		double DollarDe(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041bc), helpcontext(0x000141bc)]
		double DollarFr(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041bd), helpcontext(0x000141bd)]
		double Nominal(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041be), helpcontext(0x000141be)]
		double Effect(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041bf), helpcontext(0x000141bf)]
		double CumPrinc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6);
[id(0x000041c0), helpcontext(0x000141c0)]
		double CumIPmt(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6);
[id(0x000041c1), helpcontext(0x000141c1)]
		double EDate(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041c2), helpcontext(0x000141c2)]
		double EoMonth(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041c3), helpcontext(0x000141c3)]
		double YearFrac(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x000041c4), helpcontext(0x000141c4)]
		double CoupDayBs(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x000041c5), helpcontext(0x000141c5)]
		double CoupDays(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x000041c6), helpcontext(0x000141c6)]
		double CoupDaysNc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x000041c7), helpcontext(0x000141c7)]
		double CoupNcd(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x000041c8), helpcontext(0x000141c8)]
		double CoupNum(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x000041c9), helpcontext(0x000141c9)]
		double CoupPcd(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in, optional]VARIANT Arg4);
[id(0x000041ca), helpcontext(0x000141ca)]
		double Duration(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in, optional]VARIANT Arg6);
[id(0x000041cb), helpcontext(0x000141cb)]
		double MDuration(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in, optional]VARIANT Arg6);
[id(0x000041cc), helpcontext(0x000141cc)]
		double OddLPrice(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in]VARIANT Arg7,
			[in, optional]VARIANT Arg8);
[id(0x000041cd), helpcontext(0x000141cd)]
		double OddLYield(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in]VARIANT Arg7,
			[in, optional]VARIANT Arg8);
[id(0x000041ce), helpcontext(0x000141ce)]
		double OddFPrice(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in]VARIANT Arg7,
			[in]VARIANT Arg8,
			[in, optional]VARIANT Arg9);
[id(0x000041cf), helpcontext(0x000141cf)]
		double OddFYield(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in]VARIANT Arg7,
			[in]VARIANT Arg8,
			[in, optional]VARIANT Arg9);
[id(0x000041d0), helpcontext(0x000141d0)]
		double RandBetween(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041d1), helpcontext(0x000141d1)]
		double WeekNum(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2);
[id(0x000041d2), helpcontext(0x000141d2)]
		double AmorDegrc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in, optional]VARIANT Arg7);
[id(0x000041d3), helpcontext(0x000141d3)]
		double AmorLinc(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in, optional]VARIANT Arg7);
[id(0x000041d4), helpcontext(0x000141d4)]
		double Convert(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3);
[id(0x000041d5), helpcontext(0x000141d5)]
		double AccrInt(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in]VARIANT Arg5,
			[in]VARIANT Arg6,
			[in, optional]VARIANT Arg7);
[id(0x000041d6), helpcontext(0x000141d6)]
		double AccrIntM(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in]VARIANT Arg3,
			[in]VARIANT Arg4,
			[in, optional]VARIANT Arg5);
[id(0x000041d7), helpcontext(0x000141d7)]
		double WorkDay(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x000041d8), helpcontext(0x000141d8)]
		double NetworkDays(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x000041d9), helpcontext(0x000141d9)]
		double Gcd(
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
			[in, optional]VARIANT Arg30);
[id(0x000041da), helpcontext(0x000141da)]
		double MultiNomial(
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
			[in, optional]VARIANT Arg30);
[id(0x000041db), helpcontext(0x000141db)]
		double Lcm(
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
			[in, optional]VARIANT Arg30);
[id(0x000041dc), helpcontext(0x000141dc)]
		double FVSchedule(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
[id(0x000041e2), helpcontext(0x000141e2)]
		double SumIfs(
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
			[in, optional]VARIANT Arg29);
[id(0x000041e1), helpcontext(0x000141e1)]
		double CountIfs(
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
			[in, optional]VARIANT Arg30);
[id(0x000041e3), helpcontext(0x000141e3)]
		double AverageIf(
			[in]Range* Arg1,
			[in]VARIANT Arg2,
			[in, optional]VARIANT Arg3);
[id(0x000041e4), helpcontext(0x000141e4)]
		double AverageIfs(
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
			[in, optional]VARIANT Arg29);
[id(0x000041e0), helpcontext(0x000141e0)]
		VARIANT IfError(
			[in]VARIANT Arg1,
			[in]VARIANT Arg2);
};
'!
!ExcelWorksheetFunction categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelWorksheetFunction methodsFor!

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

	^(self invokeId: 169 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16853 withArguments:
			((Array new: 7)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				yourself))
!

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

	^(self invokeId: 16854 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

acos: arg1
	"Answer the <DOUBLE> result of invoking the Acos() method of the COM object."

	^(self invokeId: 16483 with: arg1)
!

acosh: arg1
	"Answer the <DOUBLE> result of invoking the Acosh() method of the COM object."

	^(self invokeId: 16617 with: arg1)
!

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

	^(self invokeId: 16850 withArguments:
			((Array new: 7)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				yourself))
!

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

	^(self invokeId: 16851 withArguments:
			((Array new: 7)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				yourself))
!

and: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <VARIANT_BOOL> result of invoking the And() method of the COM object."

	^(self invokeId: 16420 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

asc: arg1
	"Answer the <BSTR> result of invoking the Asc() method of the COM object."

	^(self invokeId: 16598 with: arg1)
!

asin: arg1
	"Answer the <DOUBLE> result of invoking the Asin() method of the COM object."

	^(self invokeId: 16482 with: arg1)
!

asinh: arg1
	"Answer the <DOUBLE> result of invoking the Asinh() method of the COM object."

	^(self invokeId: 16616 with: arg1)
!

atan2: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Atan2() method of the COM object."

	^(self invokeId: 16481 with: arg1 with: arg2)
!

atanh: arg1
	"Answer the <DOUBLE> result of invoking the Atanh() method of the COM object."

	^(self invokeId: 16618 with: arg1)
!

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

	^(self invokeId: 16653 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16389 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

averageIf: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the AverageIf() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 averageIf: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

averageIf: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the AverageIf() method of the COM object."

	^(self invokeId: 16867 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

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

	^(self invokeId: 16868 withArguments:
			((Array new: 29)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				yourself))
!

bahtText: arg1
	"Answer the <BSTR> result of invoking the BahtText() method of the COM object."

	^(self invokeId: 16752 with: arg1)
!

besselI: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the BesselI() method of the COM object."

	^(self invokeId: 16812 with: arg1 with: arg2)
!

besselJ: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the BesselJ() method of the COM object."

	^(self invokeId: 16809 with: arg1 with: arg2)
!

besselK: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the BesselK() method of the COM object."

	^(self invokeId: 16810 with: arg1 with: arg2)
!

besselY: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the BesselY() method of the COM object."

	^(self invokeId: 16811 with: arg1 with: arg2)
!

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

	^(self invokeId: 16654 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

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

	^(self invokeId: 16656 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

bin2Dec: arg1
	"Answer the <BSTR> result of invoking the Bin2Dec() method of the COM object."

	^(self invokeId: 16777 with: arg1)
!

bin2Hex: arg1
	"Answer the <BSTR> result of invoking the Bin2Hex() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 bin2Hex: arg1
		 arg2: VARIANT unspecified!

bin2Hex: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Bin2Hex() method of the COM object."

	^(self invokeId: 16779 with: arg1 with: arg2)
!

bin2Oct: arg1
	"Answer the <BSTR> result of invoking the Bin2Oct() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 bin2Oct: arg1
		 arg2: VARIANT unspecified!

bin2Oct: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Bin2Oct() method of the COM object."

	^(self invokeId: 16778 with: arg1 with: arg2)
!

binomDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the BinomDist() method of the COM object."

	^(self invokeId: 16657 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

ceiling: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Ceiling() method of the COM object."

	^(self invokeId: 16672 with: arg1 with: arg2)
!

chiDist: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the ChiDist() method of the COM object."

	^(self invokeId: 16658 with: arg1 with: arg2)
!

chiInv: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the ChiInv() method of the COM object."

	^(self invokeId: 16659 with: arg1 with: arg2)
!

chiTest: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the ChiTest() method of the COM object."

	^(self invokeId: 16690 with: arg1 with: arg2)
!

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

	^(self invokeId: 16484 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

clean: arg1
	"Answer the <BSTR> result of invoking the Clean() method of the COM object."

	^(self invokeId: 16546 with: arg1)
!

combin: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Combin() method of the COM object."

	^(self invokeId: 16660 with: arg1 with: arg2)
!

complex: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Complex() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 complex: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

complex: arg1 arg2: arg2 arg3: arg3
	"Answer the <BSTR> result of invoking the Complex() method of the COM object."

	^(self invokeId: 16795 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

confidence: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Confidence() method of the COM object."

	^(self invokeId: 16661 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

convert: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Convert() method of the COM object."

	^(self invokeId: 16852 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

correl: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Correl() method of the COM object."

	^(self invokeId: 16691 with: arg1 with: arg2)
!

cosh: arg1
	"Answer the <DOUBLE> result of invoking the Cosh() method of the COM object."

	^(self invokeId: 16614 with: arg1)
!

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

	^(self invokeId: 16384 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16553 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

countBlank: arg1
	"Answer the <DOUBLE> result of invoking the CountBlank() method of the COM object."

	^(self invokeId: 16731 with: arg1)
!

countIf: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the CountIf() method of the COM object."

	^(self invokeId: 16730 with: arg1 with: arg2)
!

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

	^(self invokeId: 16865 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16836 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

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

	^(self invokeId: 16837 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

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

	^(self invokeId: 16838 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

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

	^(self invokeId: 16839 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

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

	^(self invokeId: 16840 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

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

	^(self invokeId: 16841 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

covar: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Covar() method of the COM object."

	^(self invokeId: 16692 with: arg1 with: arg2)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

critBinom: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the CritBinom() method of the COM object."

	^(self invokeId: 16662 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

cumIPmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the CumIPmt() method of the COM object."

	^(self invokeId: 16832 withArguments:
			((Array new: 6)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				yourself))
!

cumPrinc: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6
	"Answer the <DOUBLE> result of invoking the CumPrinc() method of the COM object."

	^(self invokeId: 16831 withArguments:
			((Array new: 6)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				yourself))
!

dAverage: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DAverage() method of the COM object."

	^(self invokeId: 16426 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

days360: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Days360() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 days360: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

days360: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Days360() method of the COM object."

	^(self invokeId: 16604 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

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

	^(self invokeId: 16631 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

dbcs: arg1
	"Answer the <BSTR> result of invoking the Dbcs() method of the COM object."

	^(self invokeId: 16599 with: arg1)
!

dCount: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DCount() method of the COM object."

	^(self invokeId: 16424 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

dCountA: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DCountA() method of the COM object."

	^(self invokeId: 16583 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

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

	^(self invokeId: 16528 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

dec2Bin: arg1
	"Answer the <BSTR> result of invoking the Dec2Bin() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dec2Bin: arg1
		 arg2: VARIANT unspecified!

dec2Bin: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Dec2Bin() method of the COM object."

	^(self invokeId: 16771 with: arg1 with: arg2)
!

dec2Hex: arg1
	"Answer the <BSTR> result of invoking the Dec2Hex() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dec2Hex: arg1
		 arg2: VARIANT unspecified!

dec2Hex: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Dec2Hex() method of the COM object."

	^(self invokeId: 16772 with: arg1 with: arg2)
!

dec2Oct: arg1
	"Answer the <BSTR> result of invoking the Dec2Oct() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dec2Oct: arg1
		 arg2: VARIANT unspecified!

dec2Oct: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Dec2Oct() method of the COM object."

	^(self invokeId: 16773 with: arg1 with: arg2)
!

degrees: arg1
	"Answer the <DOUBLE> result of invoking the Degrees() method of the COM object."

	^(self invokeId: 16727 with: arg1)
!

delta: arg1
	"Answer the <DOUBLE> result of invoking the Delta() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 delta: arg1
		 arg2: VARIANT unspecified!

delta: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Delta() method of the COM object."

	^(self invokeId: 16802 with: arg1 with: arg2)
!

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

	^(self invokeId: 16702 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

dGet: arg1 arg2: arg2 arg3: arg3
	"Answer the <VARIANT> result of invoking the DGet() method of the COM object."

	^(self invokeId: 16619 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

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

	^(self invokeId: 16819 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

dMax: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DMax() method of the COM object."

	^(self invokeId: 16428 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

dMin: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DMin() method of the COM object."

	^(self invokeId: 16427 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

dollar: arg1
	"Answer the <BSTR> result of invoking the Dollar() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dollar: arg1
		 arg2: VARIANT unspecified!

dollar: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Dollar() method of the COM object."

	^(self invokeId: 16397 with: arg1 with: arg2)
!

dollarDe: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the DollarDe() method of the COM object."

	^(self invokeId: 16827 with: arg1 with: arg2)
!

dollarFr: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the DollarFr() method of the COM object."

	^(self invokeId: 16828 with: arg1 with: arg2)
!

dProduct: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DProduct() method of the COM object."

	^(self invokeId: 16573 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

dStDev: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DStDev() method of the COM object."

	^(self invokeId: 16429 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

dStDevP: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DStDevP() method of the COM object."

	^(self invokeId: 16579 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

dSum: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DSum() method of the COM object."

	^(self invokeId: 16425 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

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

	^(self invokeId: 16842 withArguments:
			((Array new: 6)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				yourself))
!

dVar: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DVar() method of the COM object."

	^(self invokeId: 16431 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

dVarP: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the DVarP() method of the COM object."

	^(self invokeId: 16580 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

eDate: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the EDate() method of the COM object."

	^(self invokeId: 16833 with: arg1 with: arg2)
!

effect: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Effect() method of the COM object."

	^(self invokeId: 16830 with: arg1 with: arg2)
!

eoMonth: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the EoMonth() method of the COM object."

	^(self invokeId: 16834 with: arg1 with: arg2)
!

erf: arg1
	"Answer the <DOUBLE> result of invoking the Erf() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 erf: arg1
		 arg2: VARIANT unspecified!

erf: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Erf() method of the COM object."

	^(self invokeId: 16807 with: arg1 with: arg2)
!

erfC: arg1
	"Answer the <DOUBLE> result of invoking the ErfC() method of the COM object."

	^(self invokeId: 16808 with: arg1)
!

even: arg1
	"Answer the <DOUBLE> result of invoking the Even() method of the COM object."

	^(self invokeId: 16663 with: arg1)
!

exponDist: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the ExponDist() method of the COM object."

	^(self invokeId: 16664 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

fact: arg1
	"Answer the <DOUBLE> result of invoking the Fact() method of the COM object."

	^(self invokeId: 16568 with: arg1)
!

factDouble: arg1
	"Answer the <DOUBLE> result of invoking the FactDouble() method of the COM object."

	^(self invokeId: 16799 with: arg1)
!

fDist: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the FDist() method of the COM object."

	^(self invokeId: 16665 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

find: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Find() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 find: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

find: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Find() method of the COM object."

	^(self invokeId: 16508 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

findB: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the FindB() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 findB: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

findB: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the FindB() method of the COM object."

	^(self invokeId: 16589 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

fInv: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the FInv() method of the COM object."

	^(self invokeId: 16666 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

fisher: arg1
	"Answer the <DOUBLE> result of invoking the Fisher() method of the COM object."

	^(self invokeId: 16667 with: arg1)
!

fisherInv: arg1
	"Answer the <DOUBLE> result of invoking the FisherInv() method of the COM object."

	^(self invokeId: 16668 with: arg1)
!

fixed: arg1
	"Answer the <BSTR> result of invoking the Fixed() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 fixed: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified!

fixed: arg1 arg2: arg2 arg3: arg3
	"Answer the <BSTR> result of invoking the Fixed() method of the COM object."

	^(self invokeId: 16398 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

floor: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Floor() method of the COM object."

	^(self invokeId: 16669 with: arg1 with: arg2)
!

forecast: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Forecast() method of the COM object."

	^(self invokeId: 16693 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

frequency: arg1 arg2: arg2
	"Answer the <VARIANT> result of invoking the Frequency() method of the COM object."

	^(self invokeId: 16636 with: arg1 with: arg2)
!

fTest: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the FTest() method of the COM object."

	^(self invokeId: 16694 with: arg1 with: arg2)
!

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

	^(self invokeId: 16441 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

fvSchedule: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the FVSchedule() method of the COM object."

	^(self invokeId: 16860 with: arg1 with: arg2)
!

gammaDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the GammaDist() method of the COM object."

	^(self invokeId: 16670 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

gammaInv: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the GammaInv() method of the COM object."

	^(self invokeId: 16671 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

gammaLn: arg1
	"Answer the <DOUBLE> result of invoking the GammaLn() method of the COM object."

	^(self invokeId: 16655 with: arg1)
!

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

	^(self invokeId: 16857 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16703 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

geStep: arg1
	"Answer the <DOUBLE> result of invoking the GeStep() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 geStep: arg1
		 arg2: VARIANT unspecified!

geStep: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the GeStep() method of the COM object."

	^(self invokeId: 16803 with: arg1 with: arg2)
!

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

	^(self invokeId: 16436 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

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

	^(self invokeId: 16704 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

hex2Bin: arg1
	"Answer the <BSTR> result of invoking the Hex2Bin() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 hex2Bin: arg1
		 arg2: VARIANT unspecified!

hex2Bin: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Hex2Bin() method of the COM object."

	^(self invokeId: 16768 with: arg1 with: arg2)
!

hex2Dec: arg1
	"Answer the <BSTR> result of invoking the Hex2Dec() method of the COM object."

	^(self invokeId: 16769 with: arg1)
!

hex2Oct: arg1
	"Answer the <BSTR> result of invoking the Hex2Oct() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 hex2Oct: arg1
		 arg2: VARIANT unspecified!

hex2Oct: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Hex2Oct() method of the COM object."

	^(self invokeId: 16770 with: arg1 with: arg2)
!

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

	^(self invokeId: 16485 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

hypGeomDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the HypGeomDist() method of the COM object."

	^(self invokeId: 16673 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

ifError: arg1 arg2: arg2
	"Answer the <VARIANT> result of invoking the IfError() method of the COM object."

	^(self invokeId: 16864 with: arg1 with: arg2)
!

imAbs: arg1
	"Answer the <BSTR> result of invoking the ImAbs() method of the COM object."

	^(self invokeId: 16783 with: arg1)
!

imaginary: arg1
	"Answer the <DOUBLE> result of invoking the Imaginary() method of the COM object."

	^(self invokeId: 16793 with: arg1)
!

imArgument: arg1
	"Answer the <BSTR> result of invoking the ImArgument() method of the COM object."

	^(self invokeId: 16791 with: arg1)
!

imConjugate: arg1
	"Answer the <BSTR> result of invoking the ImConjugate() method of the COM object."

	^(self invokeId: 16792 with: arg1)
!

imCos: arg1
	"Answer the <BSTR> result of invoking the ImCos() method of the COM object."

	^(self invokeId: 16789 with: arg1)
!

imDiv: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the ImDiv() method of the COM object."

	^(self invokeId: 16781 with: arg1 with: arg2)
!

imExp: arg1
	"Answer the <BSTR> result of invoking the ImExp() method of the COM object."

	^(self invokeId: 16790 with: arg1)
!

imLn: arg1
	"Answer the <BSTR> result of invoking the ImLn() method of the COM object."

	^(self invokeId: 16785 with: arg1)
!

imLog10: arg1
	"Answer the <BSTR> result of invoking the ImLog10() method of the COM object."

	^(self invokeId: 16787 with: arg1)
!

imLog2: arg1
	"Answer the <BSTR> result of invoking the ImLog2() method of the COM object."

	^(self invokeId: 16786 with: arg1)
!

imPower: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the ImPower() method of the COM object."

	^(self invokeId: 16782 with: arg1 with: arg2)
!

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

	^(self invokeId: 16797 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

imReal: arg1
	"Answer the <DOUBLE> result of invoking the ImReal() method of the COM object."

	^(self invokeId: 16794 with: arg1)
!

imSin: arg1
	"Answer the <BSTR> result of invoking the ImSin() method of the COM object."

	^(self invokeId: 16788 with: arg1)
!

imSqrt: arg1
	"Answer the <BSTR> result of invoking the ImSqrt() method of the COM object."

	^(self invokeId: 16784 with: arg1)
!

imSub: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the ImSub() method of the COM object."

	^(self invokeId: 16780 with: arg1 with: arg2)
!

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

	^(self invokeId: 16796 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16413 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

intercept: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Intercept() method of the COM object."

	^(self invokeId: 16695 with: arg1 with: arg2)
!

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

	^(self invokeId: 16817 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

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

	^(self invokeId: 16551 withArguments:
			((Array new: 6)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				yourself))
!

irr: arg1
	"Answer the <DOUBLE> result of invoking the Irr() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 irr: arg1
		 arg2: VARIANT unspecified!

irr: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Irr() method of the COM object."

	^(self invokeId: 16446 with: arg1 with: arg2)
!

isErr: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsErr() method of the COM object."

	^(self invokeId: 16510 with: arg1)
!

isError: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsError() method of the COM object."

	^(self invokeId: 16387 with: arg1)
!

isEven: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsEven() method of the COM object."

	^(self invokeId: 16804 with: arg1)
!

isLogical: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsLogical() method of the COM object."

	^(self invokeId: 16582 with: arg1)
!

isNA: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsNA() method of the COM object."

	^(self invokeId: 16386 with: arg1)
!

isNonText: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsNonText() method of the COM object."

	^(self invokeId: 16574 with: arg1)
!

isNumber: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsNumber() method of the COM object."

	^(self invokeId: 16512 with: arg1)
!

isOdd: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsOdd() method of the COM object."

	^(self invokeId: 16805 with: arg1)
!

ispmt: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Ispmt() method of the COM object."

	^(self invokeId: 16734 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

isText: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsText() method of the COM object."

	^(self invokeId: 16511 with: arg1)
!

isThaiDigit: arg1
	"Answer the <VARIANT_BOOL> result of invoking the IsThaiDigit() method of the COM object."

	^(self invokeId: 16759 with: arg1)
!

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

	^(self invokeId: 16706 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

large: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Large() method of the COM object."

	^(self invokeId: 16709 with: arg1 with: arg2)
!

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

	^(self invokeId: 16859 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16433 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

ln: arg1
	"Answer the <DOUBLE> result of invoking the Ln() method of the COM object."

	^(self invokeId: 16406 with: arg1)
!

log: arg1
	"Answer the <DOUBLE> result of invoking the Log() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 log: arg1
		 arg2: VARIANT unspecified!

log: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Log() method of the COM object."

	^(self invokeId: 16493 with: arg1 with: arg2)
!

log10: arg1
	"Answer the <DOUBLE> result of invoking the Log10() method of the COM object."

	^(self invokeId: 16407 with: arg1)
!

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

	^(self invokeId: 16435 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

logInv: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the LogInv() method of the COM object."

	^(self invokeId: 16675 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

logNormDist: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the LogNormDist() method of the COM object."

	^(self invokeId: 16674 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

lookup: arg1 arg2: arg2
	"Answer the <VARIANT> result of invoking the Lookup() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 lookup: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

lookup: arg1 arg2: arg2 arg3: arg3
	"Answer the <VARIANT> result of invoking the Lookup() method of the COM object."

	^(self invokeId: 16412 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

match: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Match() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 match: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

match: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Match() method of the COM object."

	^(self invokeId: 16448 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

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

	^(self invokeId: 16391 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

mDeterm: arg1
	"Answer the <DOUBLE> result of invoking the MDeterm() method of the COM object."

	^(self invokeId: 16547 with: arg1)
!

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

	^(self invokeId: 16843 withArguments:
			((Array new: 6)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				yourself))
!

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

	^(self invokeId: 16611 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16390 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

mInverse: arg1
	"Answer the <VARIANT> result of invoking the MInverse() method of the COM object."

	^(self invokeId: 16548 with: arg1)
!

mIrr: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the MIrr() method of the COM object."

	^(self invokeId: 16445 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

mMult: arg1 arg2: arg2
	"Answer the <VARIANT> result of invoking the MMult() method of the COM object."

	^(self invokeId: 16549 with: arg1 with: arg2)
!

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

	^(self invokeId: 16714 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

mRound: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the MRound() method of the COM object."

	^(self invokeId: 16806 with: arg1 with: arg2)
!

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

	^(self invokeId: 16858 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

negBinomDist: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the NegBinomDist() method of the COM object."

	^(self invokeId: 16676 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

networkDays: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the NetworkDays() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 networkDays: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

networkDays: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the NetworkDays() method of the COM object."

	^(self invokeId: 16856 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

nominal: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Nominal() method of the COM object."

	^(self invokeId: 16829 with: arg1 with: arg2)
!

normDist: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the NormDist() method of the COM object."

	^(self invokeId: 16677 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

normInv: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the NormInv() method of the COM object."

	^(self invokeId: 16679 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

normSDist: arg1
	"Answer the <DOUBLE> result of invoking the NormSDist() method of the COM object."

	^(self invokeId: 16678 with: arg1)
!

normSInv: arg1
	"Answer the <DOUBLE> result of invoking the NormSInv() method of the COM object."

	^(self invokeId: 16680 with: arg1)
!

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

	^(self invokeId: 16442 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

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

	^(self invokeId: 16395 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

oct2Bin: arg1
	"Answer the <BSTR> result of invoking the Oct2Bin() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 oct2Bin: arg1
		 arg2: VARIANT unspecified!

oct2Bin: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Oct2Bin() method of the COM object."

	^(self invokeId: 16774 with: arg1 with: arg2)
!

oct2Dec: arg1
	"Answer the <BSTR> result of invoking the Oct2Dec() method of the COM object."

	^(self invokeId: 16776 with: arg1)
!

oct2Hex: arg1
	"Answer the <BSTR> result of invoking the Oct2Hex() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 oct2Hex: arg1
		 arg2: VARIANT unspecified!

oct2Hex: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Oct2Hex() method of the COM object."

	^(self invokeId: 16775 with: arg1 with: arg2)
!

odd: arg1
	"Answer the <DOUBLE> result of invoking the Odd() method of the COM object."

	^(self invokeId: 16682 with: arg1)
!

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

	^(self invokeId: 16846 withArguments:
			((Array new: 9)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				yourself))
!

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

	^(self invokeId: 16847 withArguments:
			((Array new: 9)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				yourself))
!

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

	^(self invokeId: 16844 withArguments:
			((Array new: 8)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				yourself))
!

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

	^(self invokeId: 16845 withArguments:
			((Array new: 8)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				yourself))
!

or: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <VARIANT_BOOL> result of invoking the Or() method of the COM object."

	^(self invokeId: 16421 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

pearson: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Pearson() method of the COM object."

	^(self invokeId: 16696 with: arg1 with: arg2)
!

percentile: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Percentile() method of the COM object."

	^(self invokeId: 16712 with: arg1 with: arg2)
!

percentRank: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the PercentRank() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 percentRank: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

percentRank: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the PercentRank() method of the COM object."

	^(self invokeId: 16713 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

permut: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Permut() method of the COM object."

	^(self invokeId: 16683 with: arg1 with: arg2)
!

phonetic: arg1
	"Answer the <BSTR> result of invoking the Phonetic() method of the COM object."

	^(self invokeId: 16744 with: arg1)
!

pi
	"Answer the <DOUBLE> result of invoking the Pi() method of the COM object."

	^(self invokeId: 16403)
!

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

	^(self invokeId: 16443 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

poisson: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Poisson() method of the COM object."

	^(self invokeId: 16684 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

power: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Power() method of the COM object."

	^(self invokeId: 16721 with: arg1 with: arg2)
!

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

	^(self invokeId: 16552 withArguments:
			((Array new: 6)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				yourself))
!

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

	^(self invokeId: 16825 withArguments:
			((Array new: 7)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				yourself))
!

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

	^(self invokeId: 16820 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

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

	^(self invokeId: 16815 withArguments:
			((Array new: 6)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				yourself))
!

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

	^(self invokeId: 16701 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

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

	^(self invokeId: 16567 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

proper: arg1
	"Answer the <BSTR> result of invoking the Proper() method of the COM object."

	^(self invokeId: 16498 with: arg1)
!

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

	^(self invokeId: 16440 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

quartile: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Quartile() method of the COM object."

	^(self invokeId: 16711 with: arg1 with: arg2)
!

quotient: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Quotient() method of the COM object."

	^(self invokeId: 16801 with: arg1 with: arg2)
!

radians: arg1
	"Answer the <DOUBLE> result of invoking the Radians() method of the COM object."

	^(self invokeId: 16726 with: arg1)
!

randBetween: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the RandBetween() method of the COM object."

	^(self invokeId: 16848 with: arg1 with: arg2)
!

rank: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Rank() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 rank: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

rank: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Rank() method of the COM object."

	^(self invokeId: 16600 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

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

	^(self invokeId: 16444 withArguments:
			((Array new: 6)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				yourself))
!

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

	^(self invokeId: 16818 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

replace: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <BSTR> result of invoking the Replace() method of the COM object."

	^(self invokeId: 16503 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

replaceB: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <BSTR> result of invoking the ReplaceB() method of the COM object."

	^(self invokeId: 16591 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

rept: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Rept() method of the COM object."

	^(self invokeId: 16414 with: arg1 with: arg2)
!

roman: arg1
	"Answer the <BSTR> result of invoking the Roman() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 roman: arg1
		 arg2: VARIANT unspecified!

roman: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Roman() method of the COM object."

	^(self invokeId: 16738 with: arg1 with: arg2)
!

round: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Round() method of the COM object."

	^(self invokeId: 16411 with: arg1 with: arg2)
!

roundBahtDown: arg1
	"Answer the <DOUBLE> result of invoking the RoundBahtDown() method of the COM object."

	^(self invokeId: 16760 with: arg1)
!

roundBahtUp: arg1
	"Answer the <DOUBLE> result of invoking the RoundBahtUp() method of the COM object."

	^(self invokeId: 16761 with: arg1)
!

roundDown: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the RoundDown() method of the COM object."

	^(self invokeId: 16597 with: arg1 with: arg2)
!

roundUp: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the RoundUp() method of the COM object."

	^(self invokeId: 16596 with: arg1 with: arg2)
!

rSq: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the RSq() method of the COM object."

	^(self invokeId: 16697 with: arg1 with: arg2)
!

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

	^(self invokeId: 16763 withArguments:
			((Array new: 30)
				basicAt: 1 put: progID;
				basicAt: 2 put: server;
				basicAt: 3 put: topic1;
				basicAt: 4 put: topic2;
				basicAt: 5 put: topic3;
				basicAt: 6 put: topic4;
				basicAt: 7 put: topic5;
				basicAt: 8 put: topic6;
				basicAt: 9 put: topic7;
				basicAt: 10 put: topic8;
				basicAt: 11 put: topic9;
				basicAt: 12 put: topic10;
				basicAt: 13 put: topic11;
				basicAt: 14 put: topic12;
				basicAt: 15 put: topic13;
				basicAt: 16 put: topic14;
				basicAt: 17 put: topic15;
				basicAt: 18 put: topic16;
				basicAt: 19 put: topic17;
				basicAt: 20 put: topic18;
				basicAt: 21 put: topic19;
				basicAt: 22 put: topic20;
				basicAt: 23 put: topic21;
				basicAt: 24 put: topic22;
				basicAt: 25 put: topic23;
				basicAt: 26 put: topic24;
				basicAt: 27 put: topic25;
				basicAt: 28 put: topic26;
				basicAt: 29 put: topic27;
				basicAt: 30 put: topic28;
				yourself))
!

search: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Search() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 search: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

search: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Search() method of the COM object."

	^(self invokeId: 16466 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

searchB: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the SearchB() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 searchB: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

searchB: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the SearchB() method of the COM object."

	^(self invokeId: 16590 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

seriesSum: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the SeriesSum() method of the COM object."

	^(self invokeId: 16798 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

sinh: arg1
	"Answer the <DOUBLE> result of invoking the Sinh() method of the COM object."

	^(self invokeId: 16613 with: arg1)
!

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

	^(self invokeId: 16707 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

sln: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Sln() method of the COM object."

	^(self invokeId: 16526 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

slope: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Slope() method of the COM object."

	^(self invokeId: 16699 with: arg1 with: arg2)
!

small: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Small() method of the COM object."

	^(self invokeId: 16710 with: arg1 with: arg2)
!

sqrtPi: arg1
	"Answer the <DOUBLE> result of invoking the SqrtPi() method of the COM object."

	^(self invokeId: 16800 with: arg1)
!

standardize: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Standardize() method of the COM object."

	^(self invokeId: 16681 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

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

	^(self invokeId: 16396 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16577 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

stEyx: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the StEyx() method of the COM object."

	^(self invokeId: 16698 with: arg1 with: arg2)
!

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

	^(self invokeId: 16504 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

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

	^(self invokeId: 16728 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16388 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

sumIf: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the SumIf() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sumIf: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

sumIf: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the SumIf() method of the COM object."

	^(self invokeId: 16729 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

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

	^(self invokeId: 16866 withArguments:
			((Array new: 29)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				yourself))
!

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

	^(self invokeId: 16612 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16705 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

sumX2MY2: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the SumX2MY2() method of the COM object."

	^(self invokeId: 16688 with: arg1 with: arg2)
!

sumX2PY2: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the SumX2PY2() method of the COM object."

	^(self invokeId: 16689 with: arg1 with: arg2)
!

sumXMY2: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the SumXMY2() method of the COM object."

	^(self invokeId: 16687 with: arg1 with: arg2)
!

syd: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Syd() method of the COM object."

	^(self invokeId: 16527 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

tanh: arg1
	"Answer the <DOUBLE> result of invoking the Tanh() method of the COM object."

	^(self invokeId: 16615 with: arg1)
!

tBillEq: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the TBillEq() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 tBillEq: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

tBillEq: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the TBillEq() method of the COM object."

	^(self invokeId: 16822 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

tBillPrice: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the TBillPrice() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 tBillPrice: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

tBillPrice: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the TBillPrice() method of the COM object."

	^(self invokeId: 16823 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

tBillYield: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the TBillYield() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 tBillYield: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

tBillYield: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the TBillYield() method of the COM object."

	^(self invokeId: 16824 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

tDist: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the TDist() method of the COM object."

	^(self invokeId: 16685 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

text: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the Text() method of the COM object."

	^(self invokeId: 16432 with: arg1 with: arg2)
!

thaiDayOfWeek: arg1
	"Answer the <BSTR> result of invoking the ThaiDayOfWeek() method of the COM object."

	^(self invokeId: 16753 with: arg1)
!

thaiDigit: arg1
	"Answer the <BSTR> result of invoking the ThaiDigit() method of the COM object."

	^(self invokeId: 16754 with: arg1)
!

thaiMonthOfYear: arg1
	"Answer the <BSTR> result of invoking the ThaiMonthOfYear() method of the COM object."

	^(self invokeId: 16755 with: arg1)
!

thaiNumSound: arg1
	"Answer the <BSTR> result of invoking the ThaiNumSound() method of the COM object."

	^(self invokeId: 16756 with: arg1)
!

thaiNumString: arg1
	"Answer the <BSTR> result of invoking the ThaiNumString() method of the COM object."

	^(self invokeId: 16757 with: arg1)
!

thaiStringLength: arg1
	"Answer the <DOUBLE> result of invoking the ThaiStringLength() method of the COM object."

	^(self invokeId: 16758 with: arg1)
!

thaiYear: arg1
	"Answer the <DOUBLE> result of invoking the ThaiYear() method of the COM object."

	^(self invokeId: 16762 with: arg1)
!

tInv: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the TInv() method of the COM object."

	^(self invokeId: 16716 with: arg1 with: arg2)
!

transpose: arg1
	"Answer the <VARIANT> result of invoking the Transpose() method of the COM object."

	^(self invokeId: 16467 with: arg1)
!

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

	^(self invokeId: 16434 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

trim: arg1
	"Answer the <BSTR> result of invoking the Trim() method of the COM object."

	^(self invokeId: 16502 with: arg1)
!

trimMean: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the TrimMean() method of the COM object."

	^(self invokeId: 16715 with: arg1 with: arg2)
!

tTest: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the TTest() method of the COM object."

	^(self invokeId: 16700 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

usDollar: arg1 arg2: arg2
	"Answer the <BSTR> result of invoking the USDollar() method of the COM object."

	^(self invokeId: 16588 with: arg1 with: arg2)
!

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

	^(self invokeId: 16430 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16578 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

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

	^(self invokeId: 16606 withArguments:
			((Array new: 7)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				yourself))
!

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

	^(self invokeId: 16486 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

weekday: arg1
	"Answer the <DOUBLE> result of invoking the Weekday() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 weekday: arg1
		 arg2: VARIANT unspecified!

weekday: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Weekday() method of the COM object."

	^(self invokeId: 16454 with: arg1 with: arg2)
!

weekNum: arg1
	"Answer the <DOUBLE> result of invoking the WeekNum() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 weekNum: arg1
		 arg2: VARIANT unspecified!

weekNum: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the WeekNum() method of the COM object."

	^(self invokeId: 16849 with: arg1 with: arg2)
!

weibull: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <DOUBLE> result of invoking the Weibull() method of the COM object."

	^(self invokeId: 16686 withArguments:
			((Array new: 4)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				yourself))
!

workDay: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the WorkDay() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 workDay: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

workDay: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the WorkDay() method of the COM object."

	^(self invokeId: 16855 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

xirr: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Xirr() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 xirr: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

xirr: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the Xirr() method of the COM object."

	^(self invokeId: 16813 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

xnpv: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the Xnpv() method of the COM object."

	^(self invokeId: 16814 with: arg1 with: arg2)
!

yearFrac: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the YearFrac() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 yearFrac: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

yearFrac: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the YearFrac() method of the COM object."

	^(self invokeId: 16835 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
!

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

	^(self invokeId: 16821 withArguments:
			((Array new: 5)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				yourself))
!

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

	^(self invokeId: 16816 withArguments:
			((Array new: 6)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				yourself))
!

zTest: arg1 arg2: arg2
	"Answer the <DOUBLE> result of invoking the ZTest() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 zTest: arg1
		 arg2: arg2
		 arg3: VARIANT unspecified!

zTest: arg1 arg2: arg2 arg3: arg3
	"Answer the <DOUBLE> result of invoking the ZTest() method of the COM object."

	^(self invokeId: 16708 withArguments:
			((Array new: 3)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				yourself))
! !
!ExcelWorksheetFunction categoriesFor: #_wsFunction!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #_wsFunction:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #accrInt:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #accrInt:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #accrIntM:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #accrIntM:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #acos:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #acosh:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #amorDegrc:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #amorDegrc:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #amorLinc:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #amorLinc:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #and:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #and_:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #application!**auto generated**!properties!public! !
!ExcelWorksheetFunction categoriesFor: #asc:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #asin:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #asinh:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #atan2:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #atanh:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #aveDev:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #aveDev:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #average:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #average:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #averageIf:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #averageIf:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #averageIfs:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #averageIfs:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #bahtText:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #besselI:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #besselJ:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #besselK:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #besselY:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #betaDist:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #betaDist:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #betaInv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #betaInv:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #bin2Dec:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #bin2Hex:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #bin2Hex:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #bin2Oct:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #bin2Oct:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #binomDist:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #ceiling:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #chiDist:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #chiInv:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #chiTest:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #choose:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #choose:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #clean:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #combin:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #complex:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #complex:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #confidence:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #convert:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #correl:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #cosh:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #count:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #count:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #countA:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #countA:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #countBlank:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #countIf:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #countIfs:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #countIfs:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #coupDayBs:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #coupDayBs:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #coupDays:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #coupDays:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #coupDaysNc:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #coupDaysNc:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #coupNcd:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #coupNcd:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #coupNum:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #coupNum:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #coupPcd:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #coupPcd:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #covar:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelWorksheetFunction categoriesFor: #critBinom:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #cumIPmt:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #cumPrinc:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dAverage:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #days360:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #days360:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #db:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #db:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dbcs:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dCount:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dCountA:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #ddb:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #ddb:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dec2Bin:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dec2Bin:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dec2Hex:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dec2Hex:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dec2Oct:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dec2Oct:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #degrees:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #delta:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #delta:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #devSq:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #devSq:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dGet:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #disc:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #disc:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dMax:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dMin:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dollar:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dollar:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dollarDe:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dollarFr:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dProduct:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dStDev:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dStDevP:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dSum:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #duration:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #duration:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dVar:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #dVarP:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #eDate:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #effect:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #eoMonth:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #erf:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #erf:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #erfC:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #even:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #exponDist:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #fact:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #factDouble:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #fDist:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #find:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #find:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #findB:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #findB:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #fInv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #fisher:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #fisherInv:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #fixed:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #fixed:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #floor:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #forecast:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #frequency:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #fTest:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #fv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #fv:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #fvSchedule:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #gammaDist:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #gammaInv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #gammaLn:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #gcd:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #gcd:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #geoMean:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #geoMean:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #geStep:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #geStep:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #growth:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #growth:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #harMean:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #harMean:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #hex2Bin:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #hex2Bin:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #hex2Dec:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #hex2Oct:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #hex2Oct:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #hLookup:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #hLookup:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #hypGeomDist:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #ifError:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imAbs:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imaginary:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imArgument:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imConjugate:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imCos:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imDiv:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imExp:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imLn:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imLog10:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imLog2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imPower:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imProduct:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imProduct:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imReal:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imSin:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imSqrt:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imSub:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imSum:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #imSum:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #index:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #index:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #intercept:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #intRate:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #intRate:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #ipmt:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #ipmt:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #irr:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #irr:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #isErr:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #isError:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #isEven:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #isLogical:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #isNA:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #isNonText:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #isNumber:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #isOdd:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #ispmt:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #isText:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #isThaiDigit:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #kurt:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #kurt:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #large:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #lcm:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #lcm:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #linEst:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #linEst:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #ln:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #log:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #log:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #log10:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #logEst:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #logEst:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #logInv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #logNormDist:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #lookup:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #lookup:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #match:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #match:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #max:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #max:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #mDeterm:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #mDuration:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #mDuration:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #median:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #median:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #min:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #min:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #mInverse:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #mIrr:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #mMult:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #mode:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #mode:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #mRound:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #multiNomial:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #multiNomial:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #negBinomDist:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #networkDays:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #networkDays:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #nominal:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #normDist:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #normInv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #normSDist:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #normSInv:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #nPer:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #nPer:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #npv:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #npv:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oct2Bin:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oct2Bin:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oct2Dec:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oct2Hex:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oct2Hex:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #odd:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oddFPrice:arg2:arg3:arg4:arg5:arg6:arg7:arg8:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oddFPrice:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oddFYield:arg2:arg3:arg4:arg5:arg6:arg7:arg8:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oddFYield:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oddLPrice:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oddLPrice:arg2:arg3:arg4:arg5:arg6:arg7:arg8:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oddLYield:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #oddLYield:arg2:arg3:arg4:arg5:arg6:arg7:arg8:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #or:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #or_:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelWorksheetFunction categoriesFor: #pearson:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #percentile:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #percentRank:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #percentRank:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #permut:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #phonetic:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #pi!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #pmt:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #pmt:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #poisson:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #power:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #ppmt:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #ppmt:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #price:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #price:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #priceDisc:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #priceDisc:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #priceMat:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #priceMat:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #prob:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #prob:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #product:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #product:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #proper:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #pv:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #pv:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #quartile:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #quotient:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #radians:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #randBetween:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #rank:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #rank:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #rate:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #rate:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #received:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #received:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #replace:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #replaceB:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #rept:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #roman:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #roman:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #round:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #roundBahtDown:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #roundBahtUp:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #roundDown:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #roundUp:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #rSq:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #rtd:server:topic1:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #rtd:server:topic1:topic2:topic3:topic4:topic5:topic6:topic7:topic8:topic9:topic10:topic11:topic12:topic13:topic14:topic15:topic16:topic17:topic18:topic19:topic20:topic21:topic22:topic23:topic24:topic25:topic26:topic27:topic28:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #search:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #search:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #searchB:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #searchB:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #seriesSum:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sinh:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #skew:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #skew:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sln:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #slope:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #small:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sqrtPi:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #standardize:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #stDev:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #stDev:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #stDevP:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #stDevP:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #stEyx:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #substitute:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #substitute:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #subtotal:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #subtotal:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sum:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sum:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sumIf:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sumIf:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sumIfs:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sumIfs:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sumProduct:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sumProduct:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sumSq:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sumSq:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sumX2MY2:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sumX2PY2:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #sumXMY2:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #syd:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #tanh:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #tBillEq:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #tBillEq:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #tBillPrice:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #tBillPrice:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #tBillYield:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #tBillYield:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #tDist:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #text:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #thaiDayOfWeek:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #thaiDigit:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #thaiMonthOfYear:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #thaiNumSound:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #thaiNumString:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #thaiStringLength:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #thaiYear:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #tInv:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #transpose:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #trend:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #trend:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #trim:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #trimMean:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #tTest:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #usDollar:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #var:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #var:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #varP:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #varP:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #vdb:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #vdb:arg2:arg3:arg4:arg5:arg6:arg7:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #vLookup:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #vLookup:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #weekday:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #weekday:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #weekNum:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #weekNum:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #weibull:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #workDay:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #workDay:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #xirr:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #xirr:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #xnpv:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #yearFrac:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #yearFrac:arg2:arg3:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #yieldDisc:arg2:arg3:arg4:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #yieldDisc:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #yieldMat:arg2:arg3:arg4:arg5:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #yieldMat:arg2:arg3:arg4:arg5:arg6:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #zTest:arg2:!**auto generated**!methods!public! !
!ExcelWorksheetFunction categoriesFor: #zTest:arg2:arg3:!**auto generated**!methods!public! !

!ExcelWorksheetFunction class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelWorksheetFunction initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelWorksheetFunction class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

