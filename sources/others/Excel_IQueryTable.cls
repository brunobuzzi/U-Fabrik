"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #Excel_IQueryTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
Excel_IQueryTable guid: (IID fromString: '{00024428-0001-0000-C000-000000000046}')!
Excel_IQueryTable comment: '<Excel_IQueryTable> is a wrapper class for the COM interface ''Excel._IQueryTable'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024428-0001-0000-C000-000000000046), 
	helpcontext(0x000200be), 
	hidden
]
interface _IQueryTable : IDispatch
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
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x00000630), propget, helpcontext(0x00010630)]
	HRESULT __stdcall FieldNames(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000630), propput, helpcontext(0x00010630)]
	HRESULT __stdcall FieldNames(
		[in]VARIANT_BOOL RHS);
	[id(0x00000631), propget, helpcontext(0x00010631)]
	HRESULT __stdcall RowNumbers(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000631), propput, helpcontext(0x00010631)]
	HRESULT __stdcall RowNumbers(
		[in]VARIANT_BOOL RHS);
	[id(0x00000632), propget, helpcontext(0x00010632)]
	HRESULT __stdcall FillAdjacentFormulas(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000632), propput, helpcontext(0x00010632)]
	HRESULT __stdcall FillAdjacentFormulas(
		[in]VARIANT_BOOL RHS);
	[id(0x000002b7), hidden, propget, helpcontext(0x000102b7)]
	HRESULT __stdcall HasAutoFormat(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000002b7), hidden, propput, helpcontext(0x000102b7)]
	HRESULT __stdcall HasAutoFormat(
		[in]VARIANT_BOOL RHS);
	[id(0x000005c7), propget, helpcontext(0x000105c7)]
	HRESULT __stdcall RefreshOnFileOpen(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005c7), propput, helpcontext(0x000105c7)]
	HRESULT __stdcall RefreshOnFileOpen(
		[in]VARIANT_BOOL RHS);
	[id(0x00000633), propget, helpcontext(0x00010633)]
	HRESULT __stdcall Refreshing(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000634), propget, helpcontext(0x00010634)]
	HRESULT __stdcall FetchedRowOverflow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000593), propget, helpcontext(0x00010593)]
	HRESULT __stdcall BackgroundQuery(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000593), propput, helpcontext(0x00010593)]
	HRESULT __stdcall BackgroundQuery(
		[in]VARIANT_BOOL RHS);
	[id(0x00000635), helpcontext(0x00010635)]
	HRESULT __stdcall CancelRefresh();
	[id(0x00000636), propget, helpcontext(0x00010636)]
	HRESULT __stdcall RefreshStyle(
		[out, retval]XlCellInsertionMode* RHS);
	[id(0x00000636), propput, helpcontext(0x00010636)]
	HRESULT __stdcall RefreshStyle(
		[in]XlCellInsertionMode RHS);
	[id(0x000005c5), propget, helpcontext(0x000105c5)]
	HRESULT __stdcall EnableRefresh(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005c5), propput, helpcontext(0x000105c5)]
	HRESULT __stdcall EnableRefresh(
		[in]VARIANT_BOOL RHS);
	[id(0x000005c9), propget, helpcontext(0x000105c9)]
	HRESULT __stdcall SavePassword(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005c9), propput, helpcontext(0x000105c9)]
	HRESULT __stdcall SavePassword(
		[in]VARIANT_BOOL RHS);
	[id(0x000002a9), propget, helpcontext(0x000102a9)]
	HRESULT __stdcall Destination(
		[out, retval]Range** RHS);
	[id(0x00000598), propget, helpcontext(0x00010598)]
	HRESULT __stdcall Connection(
		[out, retval]VARIANT* RHS);
	[id(0x00000598), propput, helpcontext(0x00010598)]
	HRESULT __stdcall Connection(
		[in]VARIANT RHS);
	[id(0x000005c8), hidden, propget, helpcontext(0x000105c8)]
	HRESULT __stdcall Sql(
		[out, retval]VARIANT* RHS);
	[id(0x000005c8), hidden, propput, helpcontext(0x000105c8)]
	HRESULT __stdcall Sql(
		[in]VARIANT RHS);
	[id(0x00000637), propget, helpcontext(0x00010637)]
	HRESULT __stdcall PostText(
		[out, retval]BSTR* RHS);
	[id(0x00000637), propput, helpcontext(0x00010637)]
	HRESULT __stdcall PostText(
		[in]BSTR RHS);
	[id(0x00000638), propget, helpcontext(0x00010638)]
	HRESULT __stdcall ResultRange(
		[out, retval]Range** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000589), helpcontext(0x00010589)]
	HRESULT __stdcall Refresh(
		[in, optional]VARIANT BackgroundQuery,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000639), propget, helpcontext(0x00010639)]
	HRESULT __stdcall Parameters(
		[out, retval]Parameters** RHS);
	[id(0x0000048d), propget, helpcontext(0x0001048d)]
	HRESULT __stdcall Recordset(
		[out, retval]IDispatch** RHS);
	[id(0x0000048d), propputref, helpcontext(0x0001048d)]
	HRESULT __stdcall Recordset(
		[in]IDispatch* RHS);
	[id(0x000002b4), propget, helpcontext(0x000102b4)]
	HRESULT __stdcall SaveData(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000002b4), propput, helpcontext(0x000102b4)]
	HRESULT __stdcall SaveData(
		[in]VARIANT_BOOL RHS);
	[id(0x0000063a), hidden, propget, helpcontext(0x0001063a)]
	HRESULT __stdcall TablesOnlyFromHTML(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000063a), hidden, propput, helpcontext(0x0001063a)]
	HRESULT __stdcall TablesOnlyFromHTML(
		[in]VARIANT_BOOL RHS);
	[id(0x0000063b), propget, helpcontext(0x0001063b)]
	HRESULT __stdcall EnableEditing(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000063b), propput, helpcontext(0x0001063b)]
	HRESULT __stdcall EnableEditing(
		[in]VARIANT_BOOL RHS);
	[id(0x0000073f), propget, helpcontext(0x0001073f)]
	HRESULT __stdcall TextFilePlatform(
		[out, retval]long* RHS);
	[id(0x0000073f), propput, helpcontext(0x0001073f)]
	HRESULT __stdcall TextFilePlatform(
		[in]long RHS);
	[id(0x00000740), propget, helpcontext(0x00010740)]
	HRESULT __stdcall TextFileStartRow(
		[out, retval]long* RHS);
	[id(0x00000740), propput, helpcontext(0x00010740)]
	HRESULT __stdcall TextFileStartRow(
		[in]long RHS);
	[id(0x00000741), propget, helpcontext(0x00010741)]
	HRESULT __stdcall TextFileParseType(
		[out, retval]XlTextParsingType* RHS);
	[id(0x00000741), propput, helpcontext(0x00010741)]
	HRESULT __stdcall TextFileParseType(
		[in]XlTextParsingType RHS);
	[id(0x00000742), propget, helpcontext(0x00010742)]
	HRESULT __stdcall TextFileTextQualifier(
		[out, retval]XlTextQualifier* RHS);
	[id(0x00000742), propput, helpcontext(0x00010742)]
	HRESULT __stdcall TextFileTextQualifier(
		[in]XlTextQualifier RHS);
	[id(0x00000743), propget, helpcontext(0x00010743)]
	HRESULT __stdcall TextFileConsecutiveDelimiter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000743), propput, helpcontext(0x00010743)]
	HRESULT __stdcall TextFileConsecutiveDelimiter(
		[in]VARIANT_BOOL RHS);
	[id(0x00000744), propget, helpcontext(0x00010744)]
	HRESULT __stdcall TextFileTabDelimiter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000744), propput, helpcontext(0x00010744)]
	HRESULT __stdcall TextFileTabDelimiter(
		[in]VARIANT_BOOL RHS);
	[id(0x00000745), propget, helpcontext(0x00010745)]
	HRESULT __stdcall TextFileSemicolonDelimiter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000745), propput, helpcontext(0x00010745)]
	HRESULT __stdcall TextFileSemicolonDelimiter(
		[in]VARIANT_BOOL RHS);
	[id(0x00000746), propget, helpcontext(0x00010746)]
	HRESULT __stdcall TextFileCommaDelimiter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000746), propput, helpcontext(0x00010746)]
	HRESULT __stdcall TextFileCommaDelimiter(
		[in]VARIANT_BOOL RHS);
	[id(0x00000747), propget, helpcontext(0x00010747)]
	HRESULT __stdcall TextFileSpaceDelimiter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000747), propput, helpcontext(0x00010747)]
	HRESULT __stdcall TextFileSpaceDelimiter(
		[in]VARIANT_BOOL RHS);
	[id(0x00000748), propget, helpcontext(0x00010748)]
	HRESULT __stdcall TextFileOtherDelimiter(
		[out, retval]BSTR* RHS);
	[id(0x00000748), propput, helpcontext(0x00010748)]
	HRESULT __stdcall TextFileOtherDelimiter(
		[in]BSTR RHS);
	[id(0x00000749), propget, helpcontext(0x00010749)]
	HRESULT __stdcall TextFileColumnDataTypes(
		[out, retval]VARIANT* RHS);
	[id(0x00000749), propput, helpcontext(0x00010749)]
	HRESULT __stdcall TextFileColumnDataTypes(
		[in]VARIANT RHS);
	[id(0x0000074a), propget, helpcontext(0x0001074a)]
	HRESULT __stdcall TextFileFixedColumnWidths(
		[out, retval]VARIANT* RHS);
	[id(0x0000074a), propput, helpcontext(0x0001074a)]
	HRESULT __stdcall TextFileFixedColumnWidths(
		[in]VARIANT RHS);
	[id(0x0000074b), propget, helpcontext(0x0001074b)]
	HRESULT __stdcall PreserveColumnInfo(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000074b), propput, helpcontext(0x0001074b)]
	HRESULT __stdcall PreserveColumnInfo(
		[in]VARIANT_BOOL RHS);
	[id(0x000005dc), propget, helpcontext(0x000105dc)]
	HRESULT __stdcall PreserveFormatting(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005dc), propput, helpcontext(0x000105dc)]
	HRESULT __stdcall PreserveFormatting(
		[in]VARIANT_BOOL RHS);
	[id(0x0000074c), propget, helpcontext(0x0001074c)]
	HRESULT __stdcall AdjustColumnWidth(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000074c), propput, helpcontext(0x0001074c)]
	HRESULT __stdcall AdjustColumnWidth(
		[in]VARIANT_BOOL RHS);
	[id(0x00000725), propget, helpcontext(0x00010725)]
	HRESULT __stdcall CommandText(
		[out, retval]VARIANT* RHS);
	[id(0x00000725), propput, helpcontext(0x00010725)]
	HRESULT __stdcall CommandText(
		[in]VARIANT RHS);
	[id(0x00000726), propget, helpcontext(0x00010726)]
	HRESULT __stdcall CommandType(
		[out, retval]XlCmdType* RHS);
	[id(0x00000726), propput, helpcontext(0x00010726)]
	HRESULT __stdcall CommandType(
		[in]XlCmdType RHS);
	[id(0x0000074d), propget, helpcontext(0x0001074d)]
	HRESULT __stdcall TextFilePromptOnRefresh(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000074d), propput, helpcontext(0x0001074d)]
	HRESULT __stdcall TextFilePromptOnRefresh(
		[in]VARIANT_BOOL RHS);
	[id(0x00000727), propget, helpcontext(0x00010727)]
	HRESULT __stdcall QueryType(
		[out, retval]XlQueryType* RHS);
	[id(0x00000728), propget, helpcontext(0x00010728)]
	HRESULT __stdcall MaintainConnection(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000728), propput, helpcontext(0x00010728)]
	HRESULT __stdcall MaintainConnection(
		[in]VARIANT_BOOL RHS);
	[id(0x0000074e), propget, helpcontext(0x0001074e)]
	HRESULT __stdcall TextFileDecimalSeparator(
		[out, retval]BSTR* RHS);
	[id(0x0000074e), propput, helpcontext(0x0001074e)]
	HRESULT __stdcall TextFileDecimalSeparator(
		[in]BSTR RHS);
	[id(0x0000074f), propget, helpcontext(0x0001074f)]
	HRESULT __stdcall TextFileThousandsSeparator(
		[out, retval]BSTR* RHS);
	[id(0x0000074f), propput, helpcontext(0x0001074f)]
	HRESULT __stdcall TextFileThousandsSeparator(
		[in]BSTR RHS);
	[id(0x00000729), propget, helpcontext(0x00010729)]
	HRESULT __stdcall RefreshPeriod(
		[out, retval]long* RHS);
	[id(0x00000729), propput, helpcontext(0x00010729)]
	HRESULT __stdcall RefreshPeriod(
		[in]long RHS);
	[id(0x0000072a), helpcontext(0x0001072a)]
	HRESULT __stdcall ResetTimer();
	[id(0x00000750), propget, helpcontext(0x00010750)]
	HRESULT __stdcall WebSelectionType(
		[out, retval]XlWebSelectionType* RHS);
	[id(0x00000750), propput, helpcontext(0x00010750)]
	HRESULT __stdcall WebSelectionType(
		[in]XlWebSelectionType RHS);
	[id(0x00000751), propget, helpcontext(0x00010751)]
	HRESULT __stdcall WebFormatting(
		[out, retval]XlWebFormatting* RHS);
	[id(0x00000751), propput, helpcontext(0x00010751)]
	HRESULT __stdcall WebFormatting(
		[in]XlWebFormatting RHS);
	[id(0x00000752), propget, helpcontext(0x00010752)]
	HRESULT __stdcall WebTables(
		[out, retval]BSTR* RHS);
	[id(0x00000752), propput, helpcontext(0x00010752)]
	HRESULT __stdcall WebTables(
		[in]BSTR RHS);
	[id(0x00000753), propget, helpcontext(0x00010753)]
	HRESULT __stdcall WebPreFormattedTextToColumns(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000753), propput, helpcontext(0x00010753)]
	HRESULT __stdcall WebPreFormattedTextToColumns(
		[in]VARIANT_BOOL RHS);
	[id(0x00000754), propget, helpcontext(0x00010754)]
	HRESULT __stdcall WebSingleBlockTextImport(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000754), propput, helpcontext(0x00010754)]
	HRESULT __stdcall WebSingleBlockTextImport(
		[in]VARIANT_BOOL RHS);
	[id(0x00000755), propget, helpcontext(0x00010755)]
	HRESULT __stdcall WebDisableDateRecognition(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000755), propput, helpcontext(0x00010755)]
	HRESULT __stdcall WebDisableDateRecognition(
		[in]VARIANT_BOOL RHS);
	[id(0x00000756), propget, helpcontext(0x00010756)]
	HRESULT __stdcall WebConsecutiveDelimitersAsOne(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000756), propput, helpcontext(0x00010756)]
	HRESULT __stdcall WebConsecutiveDelimitersAsOne(
		[in]VARIANT_BOOL RHS);
	[id(0x00000872), propget, helpcontext(0x00010872)]
	HRESULT __stdcall WebDisableRedirections(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000872), propput, helpcontext(0x00010872)]
	HRESULT __stdcall WebDisableRedirections(
		[in]VARIANT_BOOL RHS);
	[id(0x00000873), propget, helpcontext(0x00010873)]
	HRESULT __stdcall EditWebPage(
		[out, retval]VARIANT* RHS);
	[id(0x00000873), propput, helpcontext(0x00010873)]
	HRESULT __stdcall EditWebPage(
		[in]VARIANT RHS);
	[id(0x0000081f), propget, helpcontext(0x0001081f)]
	HRESULT __stdcall SourceConnectionFile(
		[out, retval]BSTR* RHS);
	[id(0x0000081f), propput, helpcontext(0x0001081f)]
	HRESULT __stdcall SourceConnectionFile(
		[in]BSTR RHS);
	[id(0x00000820), propget, helpcontext(0x00010820)]
	HRESULT __stdcall SourceDataFile(
		[out, retval]BSTR* RHS);
	[id(0x00000820), propput, helpcontext(0x00010820)]
	HRESULT __stdcall SourceDataFile(
		[in]BSTR RHS);
	[id(0x00000821), propget, helpcontext(0x00010821)]
	HRESULT __stdcall RobustConnect(
		[out, retval]XlRobustConnect* RHS);
	[id(0x00000821), propput, helpcontext(0x00010821)]
	HRESULT __stdcall RobustConnect(
		[in]XlRobustConnect RHS);
	[id(0x00000874), propget, helpcontext(0x00010874)]
	HRESULT __stdcall TextFileTrailingMinusNumbers(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000874), propput, helpcontext(0x00010874)]
	HRESULT __stdcall TextFileTrailingMinusNumbers(
		[in]VARIANT_BOOL RHS);
	[id(0x00000822), helpcontext(0x00010822)]
	HRESULT __stdcall SaveAsODC(
		[in]BSTR ODCFileName,
		[in, optional]VARIANT Description,
		[in, optional]VARIANT Keywords);
	[id(0x000008d1), propget, helpcontext(0x000108d1)]
	HRESULT __stdcall ListObject(
		[out, retval]ListObject** RHS);
	[id(0x000008c5), propget, helpcontext(0x000108c5)]
	HRESULT __stdcall TextFileVisualLayout(
		[out, retval]XlTextVisualLayoutType* RHS);
	[id(0x000008c5), propput, helpcontext(0x000108c5)]
	HRESULT __stdcall TextFileVisualLayout(
		[in]XlTextVisualLayoutType RHS);
	[id(0x000009f0), propget, helpcontext(0x000109f0)]
	HRESULT __stdcall WorkbookConnection(
		[out, retval]WorkbookConnection** RHS);
	[id(0x00000370), propget, helpcontext(0x00010370)]
	HRESULT __stdcall Sort(
		[out, retval]Sort** RHS);
};
'!
!Excel_IQueryTable categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!Excel_IQueryTable methodsFor!

adjustColumnWidth
	"Answer the <varbool> value of the 'AdjustColumnWidth' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AdjustColumnWidth: answer.
	^answer asObject
!

adjustColumnWidth: rhs
	"Set the 'AdjustColumnWidth' property of the receiver to the <varbool> value of the argument."

	self put_AdjustColumnWidth: rhs
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

backgroundQuery
	"Answer the <varbool> value of the 'BackgroundQuery' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_BackgroundQuery: answer.
	^answer asObject
!

backgroundQuery: rhs
	"Set the 'BackgroundQuery' property of the receiver to the <varbool> value of the argument."

	self put_BackgroundQuery: rhs
!

cancelRefresh
	"Invoke the CancelRefresh() method of the COM object."

	^self CancelRefresh
!

CancelRefresh
	"Private - Invoke the CancelRefresh() method of the COM object.

		HRESULT __stdcall CancelRefresh();"

	<virtual stdcall: hresult 27>
	^self invalidCall!

commandText
	"Answer the <variant> value of the 'CommandText' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_CommandText: answer.
	^answer asObject
!

commandText: rhs
	"Set the 'CommandText' property of the receiver to the <variant> value of the argument."

	self put_CommandText: rhs asVariant
!

commandType
	"Answer the <sdword> value of the 'CommandType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CommandType: answer.
	^answer asObject
!

commandType: rhs
	"Set the 'CommandType' property of the receiver to the <sdword> value of the argument."

	self put_CommandType: rhs
!

connection
	"Answer the <variant> value of the 'Connection' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Connection: answer.
	^answer asObject
!

connection: rhs
	"Set the 'Connection' property of the receiver to the <variant> value of the argument."

	self put_Connection: rhs asVariant
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 42>
	^self invalidCall!

destination
	"Answer the <ExcelRange> value of the 'Destination' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Destination: answer.
	^answer asObject
!

editWebPage
	"Answer the <variant> value of the 'EditWebPage' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_EditWebPage: answer.
	^answer asObject
!

editWebPage: rhs
	"Set the 'EditWebPage' property of the receiver to the <variant> value of the argument."

	self put_EditWebPage: rhs asVariant
!

enableEditing
	"Answer the <varbool> value of the 'EnableEditing' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableEditing: answer.
	^answer asObject
!

enableEditing: rhs
	"Set the 'EnableEditing' property of the receiver to the <varbool> value of the argument."

	self put_EnableEditing: rhs
!

enableRefresh
	"Answer the <varbool> value of the 'EnableRefresh' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableRefresh: answer.
	^answer asObject
!

enableRefresh: rhs
	"Set the 'EnableRefresh' property of the receiver to the <varbool> value of the argument."

	self put_EnableRefresh: rhs
!

fetchedRowOverflow
	"Answer the <varbool> value of the 'FetchedRowOverflow' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_FetchedRowOverflow: answer.
	^answer asObject
!

fieldNames
	"Answer the <varbool> value of the 'FieldNames' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_FieldNames: answer.
	^answer asObject
!

fieldNames: rhs
	"Set the 'FieldNames' property of the receiver to the <varbool> value of the argument."

	self put_FieldNames: rhs
!

fillAdjacentFormulas
	"Answer the <varbool> value of the 'FillAdjacentFormulas' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_FillAdjacentFormulas: answer.
	^answer asObject
!

fillAdjacentFormulas: rhs
	"Set the 'FillAdjacentFormulas' property of the receiver to the <varbool> value of the argument."

	self put_FillAdjacentFormulas: rhs
!

get_AdjustColumnWidth: rhs
	"Private - Get the value of the 'AdjustColumnWidth' property of the receiver.

		HRESULT __stdcall AdjustColumnWidth(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 81 varbool*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_BackgroundQuery: rhs
	"Private - Get the value of the 'BackgroundQuery' property of the receiver.

		HRESULT __stdcall BackgroundQuery(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_CommandText: rhs
	"Private - Get the value of the 'CommandText' property of the receiver.

		HRESULT __stdcall CommandText(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 83 variant*>
	^self invalidCall!

get_CommandType: rhs
	"Private - Get the value of the 'CommandType' property of the receiver.

		HRESULT __stdcall CommandType(
			[out, retval]XlCmdType* RHS);"

	<virtual stdcall: hresult 85 sdword*>
	^self invalidCall!

get_Connection: rhs
	"Private - Get the value of the 'Connection' property of the receiver.

		HRESULT __stdcall Connection(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 35 variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Destination: rhs
	"Private - Get the value of the 'Destination' property of the receiver.

		HRESULT __stdcall Destination(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 34 ExcelRange**>
	^self invalidCall!

get_EditWebPage: rhs
	"Private - Get the value of the 'EditWebPage' property of the receiver.

		HRESULT __stdcall EditWebPage(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 115 variant*>
	^self invalidCall!

get_EnableEditing: rhs
	"Private - Get the value of the 'EnableEditing' property of the receiver.

		HRESULT __stdcall EnableEditing(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 51 varbool*>
	^self invalidCall!

get_EnableRefresh: rhs
	"Private - Get the value of the 'EnableRefresh' property of the receiver.

		HRESULT __stdcall EnableRefresh(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 30 varbool*>
	^self invalidCall!

get_FetchedRowOverflow: rhs
	"Private - Get the value of the 'FetchedRowOverflow' property of the receiver.

		HRESULT __stdcall FetchedRowOverflow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 24 varbool*>
	^self invalidCall!

get_FieldNames: rhs
	"Private - Get the value of the 'FieldNames' property of the receiver.

		HRESULT __stdcall FieldNames(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
	^self invalidCall!

get_FillAdjacentFormulas: rhs
	"Private - Get the value of the 'FillAdjacentFormulas' property of the receiver.

		HRESULT __stdcall FillAdjacentFormulas(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

get_HasAutoFormat: rhs
	"Private - Get the value of the 'HasAutoFormat' property of the receiver.

		HRESULT __stdcall HasAutoFormat(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

get_ListObject: rhs
	"Private - Get the value of the 'ListObject' property of the receiver.

		HRESULT __stdcall ListObject(
			[out, retval]ListObject** RHS);"

	<virtual stdcall: hresult 126 ExcelListObject**>
	^self invalidCall!

get_MaintainConnection: rhs
	"Private - Get the value of the 'MaintainConnection' property of the receiver.

		HRESULT __stdcall MaintainConnection(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 90 varbool*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Parameters: rhs
	"Private - Get the value of the 'Parameters' property of the receiver.

		HRESULT __stdcall Parameters(
			[out, retval]Parameters** RHS);"

	<virtual stdcall: hresult 44 ExcelParameters**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PostText: rhs
	"Private - Get the value of the 'PostText' property of the receiver.

		HRESULT __stdcall PostText(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 39 bstr*>
	^self invalidCall!

get_PreserveColumnInfo: rhs
	"Private - Get the value of the 'PreserveColumnInfo' property of the receiver.

		HRESULT __stdcall PreserveColumnInfo(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 77 varbool*>
	^self invalidCall!

get_PreserveFormatting: rhs
	"Private - Get the value of the 'PreserveFormatting' property of the receiver.

		HRESULT __stdcall PreserveFormatting(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 79 varbool*>
	^self invalidCall!

get_QueryType: rhs
	"Private - Get the value of the 'QueryType' property of the receiver.

		HRESULT __stdcall QueryType(
			[out, retval]XlQueryType* RHS);"

	<virtual stdcall: hresult 89 sdword*>
	^self invalidCall!

get_Recordset: rhs
	"Private - Get the value of the 'Recordset' property of the receiver.

		HRESULT __stdcall Recordset(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 45 IDispatch**>
	^self invalidCall!

get_Refreshing: rhs
	"Private - Get the value of the 'Refreshing' property of the receiver.

		HRESULT __stdcall Refreshing(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 23 varbool*>
	^self invalidCall!

get_RefreshOnFileOpen: rhs
	"Private - Get the value of the 'RefreshOnFileOpen' property of the receiver.

		HRESULT __stdcall RefreshOnFileOpen(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 21 varbool*>
	^self invalidCall!

get_RefreshPeriod: rhs
	"Private - Get the value of the 'RefreshPeriod' property of the receiver.

		HRESULT __stdcall RefreshPeriod(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 96 sdword*>
	^self invalidCall!

get_RefreshStyle: rhs
	"Private - Get the value of the 'RefreshStyle' property of the receiver.

		HRESULT __stdcall RefreshStyle(
			[out, retval]XlCellInsertionMode* RHS);"

	<virtual stdcall: hresult 28 sdword*>
	^self invalidCall!

get_ResultRange: rhs
	"Private - Get the value of the 'ResultRange' property of the receiver.

		HRESULT __stdcall ResultRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 41 ExcelRange**>
	^self invalidCall!

get_RobustConnect: rhs
	"Private - Get the value of the 'RobustConnect' property of the receiver.

		HRESULT __stdcall RobustConnect(
			[out, retval]XlRobustConnect* RHS);"

	<virtual stdcall: hresult 121 sdword*>
	^self invalidCall!

get_RowNumbers: rhs
	"Private - Get the value of the 'RowNumbers' property of the receiver.

		HRESULT __stdcall RowNumbers(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 15 varbool*>
	^self invalidCall!

get_SaveData: rhs
	"Private - Get the value of the 'SaveData' property of the receiver.

		HRESULT __stdcall SaveData(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 47 varbool*>
	^self invalidCall!

get_SavePassword: rhs
	"Private - Get the value of the 'SavePassword' property of the receiver.

		HRESULT __stdcall SavePassword(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 32 varbool*>
	^self invalidCall!

get_Sort: rhs
	"Private - Get the value of the 'Sort' property of the receiver.

		HRESULT __stdcall Sort(
			[out, retval]Sort** RHS);"

	<virtual stdcall: hresult 130 ExcelSort**>
	^self invalidCall!

get_SourceConnectionFile: rhs
	"Private - Get the value of the 'SourceConnectionFile' property of the receiver.

		HRESULT __stdcall SourceConnectionFile(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 117 bstr*>
	^self invalidCall!

get_SourceDataFile: rhs
	"Private - Get the value of the 'SourceDataFile' property of the receiver.

		HRESULT __stdcall SourceDataFile(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 119 bstr*>
	^self invalidCall!

get_Sql: rhs
	"Private - Get the value of the 'Sql' property of the receiver.

		HRESULT __stdcall Sql(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 37 variant*>
	^self invalidCall!

get_TablesOnlyFromHTML: rhs
	"Private - Get the value of the 'TablesOnlyFromHTML' property of the receiver.

		HRESULT __stdcall TablesOnlyFromHTML(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 49 varbool*>
	^self invalidCall!

get_TextFileColumnDataTypes: rhs
	"Private - Get the value of the 'TextFileColumnDataTypes' property of the receiver.

		HRESULT __stdcall TextFileColumnDataTypes(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 73 variant*>
	^self invalidCall!

get_TextFileCommaDelimiter: rhs
	"Private - Get the value of the 'TextFileCommaDelimiter' property of the receiver.

		HRESULT __stdcall TextFileCommaDelimiter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 67 varbool*>
	^self invalidCall!

get_TextFileConsecutiveDelimiter: rhs
	"Private - Get the value of the 'TextFileConsecutiveDelimiter' property of the receiver.

		HRESULT __stdcall TextFileConsecutiveDelimiter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 61 varbool*>
	^self invalidCall!

get_TextFileDecimalSeparator: rhs
	"Private - Get the value of the 'TextFileDecimalSeparator' property of the receiver.

		HRESULT __stdcall TextFileDecimalSeparator(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 92 bstr*>
	^self invalidCall!

get_TextFileFixedColumnWidths: rhs
	"Private - Get the value of the 'TextFileFixedColumnWidths' property of the receiver.

		HRESULT __stdcall TextFileFixedColumnWidths(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 75 variant*>
	^self invalidCall!

get_TextFileOtherDelimiter: rhs
	"Private - Get the value of the 'TextFileOtherDelimiter' property of the receiver.

		HRESULT __stdcall TextFileOtherDelimiter(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 71 bstr*>
	^self invalidCall!

get_TextFileParseType: rhs
	"Private - Get the value of the 'TextFileParseType' property of the receiver.

		HRESULT __stdcall TextFileParseType(
			[out, retval]XlTextParsingType* RHS);"

	<virtual stdcall: hresult 57 sdword*>
	^self invalidCall!

get_TextFilePlatform: rhs
	"Private - Get the value of the 'TextFilePlatform' property of the receiver.

		HRESULT __stdcall TextFilePlatform(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 53 sdword*>
	^self invalidCall!

get_TextFilePromptOnRefresh: rhs
	"Private - Get the value of the 'TextFilePromptOnRefresh' property of the receiver.

		HRESULT __stdcall TextFilePromptOnRefresh(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 87 varbool*>
	^self invalidCall!

get_TextFileSemicolonDelimiter: rhs
	"Private - Get the value of the 'TextFileSemicolonDelimiter' property of the receiver.

		HRESULT __stdcall TextFileSemicolonDelimiter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 65 varbool*>
	^self invalidCall!

get_TextFileSpaceDelimiter: rhs
	"Private - Get the value of the 'TextFileSpaceDelimiter' property of the receiver.

		HRESULT __stdcall TextFileSpaceDelimiter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 69 varbool*>
	^self invalidCall!

get_TextFileStartRow: rhs
	"Private - Get the value of the 'TextFileStartRow' property of the receiver.

		HRESULT __stdcall TextFileStartRow(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 55 sdword*>
	^self invalidCall!

get_TextFileTabDelimiter: rhs
	"Private - Get the value of the 'TextFileTabDelimiter' property of the receiver.

		HRESULT __stdcall TextFileTabDelimiter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 63 varbool*>
	^self invalidCall!

get_TextFileTextQualifier: rhs
	"Private - Get the value of the 'TextFileTextQualifier' property of the receiver.

		HRESULT __stdcall TextFileTextQualifier(
			[out, retval]XlTextQualifier* RHS);"

	<virtual stdcall: hresult 59 sdword*>
	^self invalidCall!

get_TextFileThousandsSeparator: rhs
	"Private - Get the value of the 'TextFileThousandsSeparator' property of the receiver.

		HRESULT __stdcall TextFileThousandsSeparator(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 94 bstr*>
	^self invalidCall!

get_TextFileTrailingMinusNumbers: rhs
	"Private - Get the value of the 'TextFileTrailingMinusNumbers' property of the receiver.

		HRESULT __stdcall TextFileTrailingMinusNumbers(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 123 varbool*>
	^self invalidCall!

get_TextFileVisualLayout: rhs
	"Private - Get the value of the 'TextFileVisualLayout' property of the receiver.

		HRESULT __stdcall TextFileVisualLayout(
			[out, retval]XlTextVisualLayoutType* RHS);"

	<virtual stdcall: hresult 127 sdword*>
	^self invalidCall!

get_WebConsecutiveDelimitersAsOne: rhs
	"Private - Get the value of the 'WebConsecutiveDelimitersAsOne' property of the receiver.

		HRESULT __stdcall WebConsecutiveDelimitersAsOne(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 111 varbool*>
	^self invalidCall!

get_WebDisableDateRecognition: rhs
	"Private - Get the value of the 'WebDisableDateRecognition' property of the receiver.

		HRESULT __stdcall WebDisableDateRecognition(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 109 varbool*>
	^self invalidCall!

get_WebDisableRedirections: rhs
	"Private - Get the value of the 'WebDisableRedirections' property of the receiver.

		HRESULT __stdcall WebDisableRedirections(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 113 varbool*>
	^self invalidCall!

get_WebFormatting: rhs
	"Private - Get the value of the 'WebFormatting' property of the receiver.

		HRESULT __stdcall WebFormatting(
			[out, retval]XlWebFormatting* RHS);"

	<virtual stdcall: hresult 101 sdword*>
	^self invalidCall!

get_WebPreFormattedTextToColumns: rhs
	"Private - Get the value of the 'WebPreFormattedTextToColumns' property of the receiver.

		HRESULT __stdcall WebPreFormattedTextToColumns(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 105 varbool*>
	^self invalidCall!

get_WebSelectionType: rhs
	"Private - Get the value of the 'WebSelectionType' property of the receiver.

		HRESULT __stdcall WebSelectionType(
			[out, retval]XlWebSelectionType* RHS);"

	<virtual stdcall: hresult 99 sdword*>
	^self invalidCall!

get_WebSingleBlockTextImport: rhs
	"Private - Get the value of the 'WebSingleBlockTextImport' property of the receiver.

		HRESULT __stdcall WebSingleBlockTextImport(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 107 varbool*>
	^self invalidCall!

get_WebTables: rhs
	"Private - Get the value of the 'WebTables' property of the receiver.

		HRESULT __stdcall WebTables(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 103 bstr*>
	^self invalidCall!

get_WorkbookConnection: rhs
	"Private - Get the value of the 'WorkbookConnection' property of the receiver.

		HRESULT __stdcall WorkbookConnection(
			[out, retval]WorkbookConnection** RHS);"

	<virtual stdcall: hresult 129 ExcelWorkbookConnection**>
	^self invalidCall!

hasAutoFormat
	"Answer the <varbool> value of the 'HasAutoFormat' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasAutoFormat: answer.
	^answer asObject
!

hasAutoFormat: rhs
	"Set the 'HasAutoFormat' property of the receiver to the <varbool> value of the argument."

	self put_HasAutoFormat: rhs
!

listObject
	"Answer the <ExcelListObject> value of the 'ListObject' property of the receiver."

	| answer |
	answer := ExcelListObject newPointer.
	self get_ListObject: answer.
	^answer asObject
!

maintainConnection
	"Answer the <varbool> value of the 'MaintainConnection' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_MaintainConnection: answer.
	^answer asObject
!

maintainConnection: rhs
	"Set the 'MaintainConnection' property of the receiver to the <varbool> value of the argument."

	self put_MaintainConnection: rhs
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

parameters
	"Answer the <ExcelParameters> value of the 'Parameters' property of the receiver."

	| answer |
	answer := ExcelParameters newPointer.
	self get_Parameters: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

postText
	"Answer the <bstr> value of the 'PostText' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_PostText: answer.
	^answer asObject
!

postText: rhs
	"Set the 'PostText' property of the receiver to the <bstr> value of the argument."

	self put_PostText: rhs
!

preserveColumnInfo
	"Answer the <varbool> value of the 'PreserveColumnInfo' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PreserveColumnInfo: answer.
	^answer asObject
!

preserveColumnInfo: rhs
	"Set the 'PreserveColumnInfo' property of the receiver to the <varbool> value of the argument."

	self put_PreserveColumnInfo: rhs
!

preserveFormatting
	"Answer the <varbool> value of the 'PreserveFormatting' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PreserveFormatting: answer.
	^answer asObject
!

preserveFormatting: rhs
	"Set the 'PreserveFormatting' property of the receiver to the <varbool> value of the argument."

	self put_PreserveFormatting: rhs
!

put_AdjustColumnWidth: rhs
	"Private - Set the value of the 'AdjustColumnWidth' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AdjustColumnWidth(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 82 varbool>
	^self invalidCall!

put_BackgroundQuery: rhs
	"Private - Set the value of the 'BackgroundQuery' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall BackgroundQuery(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_CommandText: rhs
	"Private - Set the value of the 'CommandText' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall CommandText(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 84 variant>
	^self invalidCall!

put_CommandType: rhs
	"Private - Set the value of the 'CommandType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CommandType(
			[in]XlCmdType RHS);"

	<virtual stdcall: hresult 86 sdword>
	^self invalidCall!

put_Connection: rhs
	"Private - Set the value of the 'Connection' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Connection(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 36 variant>
	^self invalidCall!

put_EditWebPage: rhs
	"Private - Set the value of the 'EditWebPage' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall EditWebPage(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 116 variant>
	^self invalidCall!

put_EnableEditing: rhs
	"Private - Set the value of the 'EnableEditing' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableEditing(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 52 varbool>
	^self invalidCall!

put_EnableRefresh: rhs
	"Private - Set the value of the 'EnableRefresh' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableRefresh(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 31 varbool>
	^self invalidCall!

put_FieldNames: rhs
	"Private - Set the value of the 'FieldNames' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall FieldNames(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 14 varbool>
	^self invalidCall!

put_FillAdjacentFormulas: rhs
	"Private - Set the value of the 'FillAdjacentFormulas' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall FillAdjacentFormulas(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 18 varbool>
	^self invalidCall!

put_HasAutoFormat: rhs
	"Private - Set the value of the 'HasAutoFormat' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasAutoFormat(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 20 varbool>
	^self invalidCall!

put_MaintainConnection: rhs
	"Private - Set the value of the 'MaintainConnection' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MaintainConnection(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 91 varbool>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 12 bstr>
	^self invalidCall!

put_PostText: rhs
	"Private - Set the value of the 'PostText' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall PostText(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 40 bstr>
	^self invalidCall!

put_PreserveColumnInfo: rhs
	"Private - Set the value of the 'PreserveColumnInfo' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PreserveColumnInfo(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 78 varbool>
	^self invalidCall!

put_PreserveFormatting: rhs
	"Private - Set the value of the 'PreserveFormatting' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PreserveFormatting(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 80 varbool>
	^self invalidCall!

put_RefreshOnFileOpen: rhs
	"Private - Set the value of the 'RefreshOnFileOpen' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RefreshOnFileOpen(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 22 varbool>
	^self invalidCall!

put_RefreshPeriod: rhs
	"Private - Set the value of the 'RefreshPeriod' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall RefreshPeriod(
			[in]long RHS);"

	<virtual stdcall: hresult 97 sdword>
	^self invalidCall!

put_RefreshStyle: rhs
	"Private - Set the value of the 'RefreshStyle' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall RefreshStyle(
			[in]XlCellInsertionMode RHS);"

	<virtual stdcall: hresult 29 sdword>
	^self invalidCall!

put_RobustConnect: rhs
	"Private - Set the value of the 'RobustConnect' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall RobustConnect(
			[in]XlRobustConnect RHS);"

	<virtual stdcall: hresult 122 sdword>
	^self invalidCall!

put_RowNumbers: rhs
	"Private - Set the value of the 'RowNumbers' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RowNumbers(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 16 varbool>
	^self invalidCall!

put_SaveData: rhs
	"Private - Set the value of the 'SaveData' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SaveData(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 48 varbool>
	^self invalidCall!

put_SavePassword: rhs
	"Private - Set the value of the 'SavePassword' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SavePassword(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 33 varbool>
	^self invalidCall!

put_SourceConnectionFile: rhs
	"Private - Set the value of the 'SourceConnectionFile' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall SourceConnectionFile(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 118 bstr>
	^self invalidCall!

put_SourceDataFile: rhs
	"Private - Set the value of the 'SourceDataFile' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall SourceDataFile(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 120 bstr>
	^self invalidCall!

put_Sql: rhs
	"Private - Set the value of the 'Sql' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Sql(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 38 variant>
	^self invalidCall!

put_TablesOnlyFromHTML: rhs
	"Private - Set the value of the 'TablesOnlyFromHTML' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TablesOnlyFromHTML(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 50 varbool>
	^self invalidCall!

put_TextFileColumnDataTypes: rhs
	"Private - Set the value of the 'TextFileColumnDataTypes' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall TextFileColumnDataTypes(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 74 variant>
	^self invalidCall!

put_TextFileCommaDelimiter: rhs
	"Private - Set the value of the 'TextFileCommaDelimiter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TextFileCommaDelimiter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 68 varbool>
	^self invalidCall!

put_TextFileConsecutiveDelimiter: rhs
	"Private - Set the value of the 'TextFileConsecutiveDelimiter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TextFileConsecutiveDelimiter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 62 varbool>
	^self invalidCall!

put_TextFileDecimalSeparator: rhs
	"Private - Set the value of the 'TextFileDecimalSeparator' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall TextFileDecimalSeparator(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 93 bstr>
	^self invalidCall!

put_TextFileFixedColumnWidths: rhs
	"Private - Set the value of the 'TextFileFixedColumnWidths' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall TextFileFixedColumnWidths(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 76 variant>
	^self invalidCall!

put_TextFileOtherDelimiter: rhs
	"Private - Set the value of the 'TextFileOtherDelimiter' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall TextFileOtherDelimiter(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 72 bstr>
	^self invalidCall!

put_TextFileParseType: rhs
	"Private - Set the value of the 'TextFileParseType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TextFileParseType(
			[in]XlTextParsingType RHS);"

	<virtual stdcall: hresult 58 sdword>
	^self invalidCall!

put_TextFilePlatform: rhs
	"Private - Set the value of the 'TextFilePlatform' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TextFilePlatform(
			[in]long RHS);"

	<virtual stdcall: hresult 54 sdword>
	^self invalidCall!

put_TextFilePromptOnRefresh: rhs
	"Private - Set the value of the 'TextFilePromptOnRefresh' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TextFilePromptOnRefresh(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 88 varbool>
	^self invalidCall!

put_TextFileSemicolonDelimiter: rhs
	"Private - Set the value of the 'TextFileSemicolonDelimiter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TextFileSemicolonDelimiter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 66 varbool>
	^self invalidCall!

put_TextFileSpaceDelimiter: rhs
	"Private - Set the value of the 'TextFileSpaceDelimiter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TextFileSpaceDelimiter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 70 varbool>
	^self invalidCall!

put_TextFileStartRow: rhs
	"Private - Set the value of the 'TextFileStartRow' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TextFileStartRow(
			[in]long RHS);"

	<virtual stdcall: hresult 56 sdword>
	^self invalidCall!

put_TextFileTabDelimiter: rhs
	"Private - Set the value of the 'TextFileTabDelimiter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TextFileTabDelimiter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 64 varbool>
	^self invalidCall!

put_TextFileTextQualifier: rhs
	"Private - Set the value of the 'TextFileTextQualifier' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TextFileTextQualifier(
			[in]XlTextQualifier RHS);"

	<virtual stdcall: hresult 60 sdword>
	^self invalidCall!

put_TextFileThousandsSeparator: rhs
	"Private - Set the value of the 'TextFileThousandsSeparator' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall TextFileThousandsSeparator(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 95 bstr>
	^self invalidCall!

put_TextFileTrailingMinusNumbers: rhs
	"Private - Set the value of the 'TextFileTrailingMinusNumbers' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TextFileTrailingMinusNumbers(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 124 varbool>
	^self invalidCall!

put_TextFileVisualLayout: rhs
	"Private - Set the value of the 'TextFileVisualLayout' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TextFileVisualLayout(
			[in]XlTextVisualLayoutType RHS);"

	<virtual stdcall: hresult 128 sdword>
	^self invalidCall!

put_WebConsecutiveDelimitersAsOne: rhs
	"Private - Set the value of the 'WebConsecutiveDelimitersAsOne' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall WebConsecutiveDelimitersAsOne(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 112 varbool>
	^self invalidCall!

put_WebDisableDateRecognition: rhs
	"Private - Set the value of the 'WebDisableDateRecognition' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall WebDisableDateRecognition(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 110 varbool>
	^self invalidCall!

put_WebDisableRedirections: rhs
	"Private - Set the value of the 'WebDisableRedirections' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall WebDisableRedirections(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 114 varbool>
	^self invalidCall!

put_WebFormatting: rhs
	"Private - Set the value of the 'WebFormatting' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall WebFormatting(
			[in]XlWebFormatting RHS);"

	<virtual stdcall: hresult 102 sdword>
	^self invalidCall!

put_WebPreFormattedTextToColumns: rhs
	"Private - Set the value of the 'WebPreFormattedTextToColumns' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall WebPreFormattedTextToColumns(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 106 varbool>
	^self invalidCall!

put_WebSelectionType: rhs
	"Private - Set the value of the 'WebSelectionType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall WebSelectionType(
			[in]XlWebSelectionType RHS);"

	<virtual stdcall: hresult 100 sdword>
	^self invalidCall!

put_WebSingleBlockTextImport: rhs
	"Private - Set the value of the 'WebSingleBlockTextImport' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall WebSingleBlockTextImport(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 108 varbool>
	^self invalidCall!

put_WebTables: rhs
	"Private - Set the value of the 'WebTables' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall WebTables(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 104 bstr>
	^self invalidCall!

putref_Recordset: rhs
	"Private - Set the value of the 'Recordset' property of the object wrapped by the 
	 receiver to the <IDispatch*> argument, rhs.

		HRESULT __stdcall Recordset(
			[in]IDispatch* RHS);"

	<virtual stdcall: hresult 46 IDispatch*>
	^self invalidCall!

queryType
	"Answer the <sdword> value of the 'QueryType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_QueryType: answer.
	^answer asObject
!

recordset
	"Answer the <IDispatch> value of the 'Recordset' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Recordset: answer.
	^answer asObject
!

refresh
	"Answer the <VARIANT_BOOL> result of invoking the Refresh() method of the COM object.
	Default values are passed for all optional parameters."

	^self refresh: VARIANT unspecified!

refresh: backgroundQuery
	"Answer the <VARIANT_BOOL> result of invoking the Refresh() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		Refresh: backgroundQuery asVariant
		rhs: answer.
	^answer asObject
!

Refresh: backgroundQuery rhs: rhs
	"Private - Invoke the Refresh() method of the COM object.

		HRESULT __stdcall Refresh(
			[in, optional]VARIANT BackgroundQuery,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 43 variant varbool*>
	^self invalidCall!

refreshing
	"Answer the <varbool> value of the 'Refreshing' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Refreshing: answer.
	^answer asObject
!

refreshOnFileOpen
	"Answer the <varbool> value of the 'RefreshOnFileOpen' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_RefreshOnFileOpen: answer.
	^answer asObject
!

refreshOnFileOpen: rhs
	"Set the 'RefreshOnFileOpen' property of the receiver to the <varbool> value of the argument."

	self put_RefreshOnFileOpen: rhs
!

refreshPeriod
	"Answer the <sdword> value of the 'RefreshPeriod' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_RefreshPeriod: answer.
	^answer asObject
!

refreshPeriod: rhs
	"Set the 'RefreshPeriod' property of the receiver to the <sdword> value of the argument."

	self put_RefreshPeriod: rhs
!

refreshStyle
	"Answer the <sdword> value of the 'RefreshStyle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_RefreshStyle: answer.
	^answer asObject
!

refreshStyle: rhs
	"Set the 'RefreshStyle' property of the receiver to the <sdword> value of the argument."

	self put_RefreshStyle: rhs
!

resetTimer
	"Invoke the ResetTimer() method of the COM object."

	^self ResetTimer
!

ResetTimer
	"Private - Invoke the ResetTimer() method of the COM object.

		HRESULT __stdcall ResetTimer();"

	<virtual stdcall: hresult 98>
	^self invalidCall!

resultRange
	"Answer the <ExcelRange> value of the 'ResultRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_ResultRange: answer.
	^answer asObject
!

robustConnect
	"Answer the <sdword> value of the 'RobustConnect' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_RobustConnect: answer.
	^answer asObject
!

robustConnect: rhs
	"Set the 'RobustConnect' property of the receiver to the <sdword> value of the argument."

	self put_RobustConnect: rhs
!

rowNumbers
	"Answer the <varbool> value of the 'RowNumbers' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_RowNumbers: answer.
	^answer asObject
!

rowNumbers: rhs
	"Set the 'RowNumbers' property of the receiver to the <varbool> value of the argument."

	self put_RowNumbers: rhs
!

saveAsODC: odcFileName
	"Invoke the SaveAsODC() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 saveAsODC: odcFileName
		 description: VARIANT unspecified
		 keywords: VARIANT unspecified!

saveAsODC: odcFileName description: description keywords: keywords
	"Invoke the SaveAsODC() method of the COM object."

	^self
		SaveAsODC: odcFileName
		description: description asVariant
		keywords: keywords asVariant
!

SaveAsODC: odcFileName description: description keywords: keywords
	"Private - Invoke the SaveAsODC() method of the COM object.

		HRESULT __stdcall SaveAsODC(
			[in]BSTR ODCFileName,
			[in, optional]VARIANT Description,
			[in, optional]VARIANT Keywords);"

	<virtual stdcall: hresult 125 bstr variant variant>
	^self invalidCall!

saveData
	"Answer the <varbool> value of the 'SaveData' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_SaveData: answer.
	^answer asObject
!

saveData: rhs
	"Set the 'SaveData' property of the receiver to the <varbool> value of the argument."

	self put_SaveData: rhs
!

savePassword
	"Answer the <varbool> value of the 'SavePassword' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_SavePassword: answer.
	^answer asObject
!

savePassword: rhs
	"Set the 'SavePassword' property of the receiver to the <varbool> value of the argument."

	self put_SavePassword: rhs
!

setRecordset: rhs
	"Set the 'Recordset' property of the receiver to the <IDispatch*> value of the argument."

	self putref_Recordset: rhs
!

sort
	"Answer the <ExcelSort> value of the 'Sort' property of the receiver."

	| answer |
	answer := ExcelSort newPointer.
	self get_Sort: answer.
	^answer asObject
!

sourceConnectionFile
	"Answer the <bstr> value of the 'SourceConnectionFile' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SourceConnectionFile: answer.
	^answer asObject
!

sourceConnectionFile: rhs
	"Set the 'SourceConnectionFile' property of the receiver to the <bstr> value of the argument."

	self put_SourceConnectionFile: rhs
!

sourceDataFile
	"Answer the <bstr> value of the 'SourceDataFile' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SourceDataFile: answer.
	^answer asObject
!

sourceDataFile: rhs
	"Set the 'SourceDataFile' property of the receiver to the <bstr> value of the argument."

	self put_SourceDataFile: rhs
!

sql
	"Answer the <variant> value of the 'Sql' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Sql: answer.
	^answer asObject
!

sql: rhs
	"Set the 'Sql' property of the receiver to the <variant> value of the argument."

	self put_Sql: rhs asVariant
!

tablesOnlyFromHTML
	"Answer the <varbool> value of the 'TablesOnlyFromHTML' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TablesOnlyFromHTML: answer.
	^answer asObject
!

tablesOnlyFromHTML: rhs
	"Set the 'TablesOnlyFromHTML' property of the receiver to the <varbool> value of the argument."

	self put_TablesOnlyFromHTML: rhs
!

textFileColumnDataTypes
	"Answer the <variant> value of the 'TextFileColumnDataTypes' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_TextFileColumnDataTypes: answer.
	^answer asObject
!

textFileColumnDataTypes: rhs
	"Set the 'TextFileColumnDataTypes' property of the receiver to the <variant> value of the argument."

	self put_TextFileColumnDataTypes: rhs asVariant
!

textFileCommaDelimiter
	"Answer the <varbool> value of the 'TextFileCommaDelimiter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TextFileCommaDelimiter: answer.
	^answer asObject
!

textFileCommaDelimiter: rhs
	"Set the 'TextFileCommaDelimiter' property of the receiver to the <varbool> value of the argument."

	self put_TextFileCommaDelimiter: rhs
!

textFileConsecutiveDelimiter
	"Answer the <varbool> value of the 'TextFileConsecutiveDelimiter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TextFileConsecutiveDelimiter: answer.
	^answer asObject
!

textFileConsecutiveDelimiter: rhs
	"Set the 'TextFileConsecutiveDelimiter' property of the receiver to the <varbool> value of the argument."

	self put_TextFileConsecutiveDelimiter: rhs
!

textFileDecimalSeparator
	"Answer the <bstr> value of the 'TextFileDecimalSeparator' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_TextFileDecimalSeparator: answer.
	^answer asObject
!

textFileDecimalSeparator: rhs
	"Set the 'TextFileDecimalSeparator' property of the receiver to the <bstr> value of the argument."

	self put_TextFileDecimalSeparator: rhs
!

textFileFixedColumnWidths
	"Answer the <variant> value of the 'TextFileFixedColumnWidths' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_TextFileFixedColumnWidths: answer.
	^answer asObject
!

textFileFixedColumnWidths: rhs
	"Set the 'TextFileFixedColumnWidths' property of the receiver to the <variant> value of the argument."

	self put_TextFileFixedColumnWidths: rhs asVariant
!

textFileOtherDelimiter
	"Answer the <bstr> value of the 'TextFileOtherDelimiter' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_TextFileOtherDelimiter: answer.
	^answer asObject
!

textFileOtherDelimiter: rhs
	"Set the 'TextFileOtherDelimiter' property of the receiver to the <bstr> value of the argument."

	self put_TextFileOtherDelimiter: rhs
!

textFileParseType
	"Answer the <sdword> value of the 'TextFileParseType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TextFileParseType: answer.
	^answer asObject
!

textFileParseType: rhs
	"Set the 'TextFileParseType' property of the receiver to the <sdword> value of the argument."

	self put_TextFileParseType: rhs
!

textFilePlatform
	"Answer the <sdword> value of the 'TextFilePlatform' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TextFilePlatform: answer.
	^answer asObject
!

textFilePlatform: rhs
	"Set the 'TextFilePlatform' property of the receiver to the <sdword> value of the argument."

	self put_TextFilePlatform: rhs
!

textFilePromptOnRefresh
	"Answer the <varbool> value of the 'TextFilePromptOnRefresh' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TextFilePromptOnRefresh: answer.
	^answer asObject
!

textFilePromptOnRefresh: rhs
	"Set the 'TextFilePromptOnRefresh' property of the receiver to the <varbool> value of the argument."

	self put_TextFilePromptOnRefresh: rhs
!

textFileSemicolonDelimiter
	"Answer the <varbool> value of the 'TextFileSemicolonDelimiter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TextFileSemicolonDelimiter: answer.
	^answer asObject
!

textFileSemicolonDelimiter: rhs
	"Set the 'TextFileSemicolonDelimiter' property of the receiver to the <varbool> value of the argument."

	self put_TextFileSemicolonDelimiter: rhs
!

textFileSpaceDelimiter
	"Answer the <varbool> value of the 'TextFileSpaceDelimiter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TextFileSpaceDelimiter: answer.
	^answer asObject
!

textFileSpaceDelimiter: rhs
	"Set the 'TextFileSpaceDelimiter' property of the receiver to the <varbool> value of the argument."

	self put_TextFileSpaceDelimiter: rhs
!

textFileStartRow
	"Answer the <sdword> value of the 'TextFileStartRow' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TextFileStartRow: answer.
	^answer asObject
!

textFileStartRow: rhs
	"Set the 'TextFileStartRow' property of the receiver to the <sdword> value of the argument."

	self put_TextFileStartRow: rhs
!

textFileTabDelimiter
	"Answer the <varbool> value of the 'TextFileTabDelimiter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TextFileTabDelimiter: answer.
	^answer asObject
!

textFileTabDelimiter: rhs
	"Set the 'TextFileTabDelimiter' property of the receiver to the <varbool> value of the argument."

	self put_TextFileTabDelimiter: rhs
!

textFileTextQualifier
	"Answer the <sdword> value of the 'TextFileTextQualifier' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TextFileTextQualifier: answer.
	^answer asObject
!

textFileTextQualifier: rhs
	"Set the 'TextFileTextQualifier' property of the receiver to the <sdword> value of the argument."

	self put_TextFileTextQualifier: rhs
!

textFileThousandsSeparator
	"Answer the <bstr> value of the 'TextFileThousandsSeparator' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_TextFileThousandsSeparator: answer.
	^answer asObject
!

textFileThousandsSeparator: rhs
	"Set the 'TextFileThousandsSeparator' property of the receiver to the <bstr> value of the argument."

	self put_TextFileThousandsSeparator: rhs
!

textFileTrailingMinusNumbers
	"Answer the <varbool> value of the 'TextFileTrailingMinusNumbers' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TextFileTrailingMinusNumbers: answer.
	^answer asObject
!

textFileTrailingMinusNumbers: rhs
	"Set the 'TextFileTrailingMinusNumbers' property of the receiver to the <varbool> value of the argument."

	self put_TextFileTrailingMinusNumbers: rhs
!

textFileVisualLayout
	"Answer the <sdword> value of the 'TextFileVisualLayout' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TextFileVisualLayout: answer.
	^answer asObject
!

textFileVisualLayout: rhs
	"Set the 'TextFileVisualLayout' property of the receiver to the <sdword> value of the argument."

	self put_TextFileVisualLayout: rhs
!

webConsecutiveDelimitersAsOne
	"Answer the <varbool> value of the 'WebConsecutiveDelimitersAsOne' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_WebConsecutiveDelimitersAsOne: answer.
	^answer asObject
!

webConsecutiveDelimitersAsOne: rhs
	"Set the 'WebConsecutiveDelimitersAsOne' property of the receiver to the <varbool> value of the argument."

	self put_WebConsecutiveDelimitersAsOne: rhs
!

webDisableDateRecognition
	"Answer the <varbool> value of the 'WebDisableDateRecognition' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_WebDisableDateRecognition: answer.
	^answer asObject
!

webDisableDateRecognition: rhs
	"Set the 'WebDisableDateRecognition' property of the receiver to the <varbool> value of the argument."

	self put_WebDisableDateRecognition: rhs
!

webDisableRedirections
	"Answer the <varbool> value of the 'WebDisableRedirections' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_WebDisableRedirections: answer.
	^answer asObject
!

webDisableRedirections: rhs
	"Set the 'WebDisableRedirections' property of the receiver to the <varbool> value of the argument."

	self put_WebDisableRedirections: rhs
!

webFormatting
	"Answer the <sdword> value of the 'WebFormatting' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_WebFormatting: answer.
	^answer asObject
!

webFormatting: rhs
	"Set the 'WebFormatting' property of the receiver to the <sdword> value of the argument."

	self put_WebFormatting: rhs
!

webPreFormattedTextToColumns
	"Answer the <varbool> value of the 'WebPreFormattedTextToColumns' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_WebPreFormattedTextToColumns: answer.
	^answer asObject
!

webPreFormattedTextToColumns: rhs
	"Set the 'WebPreFormattedTextToColumns' property of the receiver to the <varbool> value of the argument."

	self put_WebPreFormattedTextToColumns: rhs
!

webSelectionType
	"Answer the <sdword> value of the 'WebSelectionType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_WebSelectionType: answer.
	^answer asObject
!

webSelectionType: rhs
	"Set the 'WebSelectionType' property of the receiver to the <sdword> value of the argument."

	self put_WebSelectionType: rhs
!

webSingleBlockTextImport
	"Answer the <varbool> value of the 'WebSingleBlockTextImport' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_WebSingleBlockTextImport: answer.
	^answer asObject
!

webSingleBlockTextImport: rhs
	"Set the 'WebSingleBlockTextImport' property of the receiver to the <varbool> value of the argument."

	self put_WebSingleBlockTextImport: rhs
!

webTables
	"Answer the <bstr> value of the 'WebTables' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_WebTables: answer.
	^answer asObject
!

webTables: rhs
	"Set the 'WebTables' property of the receiver to the <bstr> value of the argument."

	self put_WebTables: rhs
!

workbookConnection
	"Answer the <ExcelWorkbookConnection> value of the 'WorkbookConnection' property of the receiver."

	| answer |
	answer := ExcelWorkbookConnection newPointer.
	self get_WorkbookConnection: answer.
	^answer asObject
! !
!Excel_IQueryTable categoriesFor: #adjustColumnWidth!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #adjustColumnWidth:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #application!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #backgroundQuery!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #backgroundQuery:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #cancelRefresh!**auto generated**!methods!public! !
!Excel_IQueryTable categoriesFor: #CancelRefresh!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #commandText!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #commandText:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #commandType!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #commandType:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #connection!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #connection:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #creator!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #delete!**auto generated**!methods!public! !
!Excel_IQueryTable categoriesFor: #Delete!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #destination!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #editWebPage!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #editWebPage:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #enableEditing!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #enableEditing:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #enableRefresh!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #enableRefresh:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #fetchedRowOverflow!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #fieldNames!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #fieldNames:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #fillAdjacentFormulas!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #fillAdjacentFormulas:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #get_AdjustColumnWidth:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_Application:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_BackgroundQuery:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_CommandText:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_CommandType:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_Connection:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_Destination:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_EditWebPage:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_EnableEditing:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_EnableRefresh:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_FetchedRowOverflow:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_FieldNames:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_FillAdjacentFormulas:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_HasAutoFormat:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_ListObject:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_MaintainConnection:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_Name:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_Parameters:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_PostText:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_PreserveColumnInfo:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_PreserveFormatting:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_QueryType:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_Recordset:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_Refreshing:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_RefreshOnFileOpen:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_RefreshPeriod:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_RefreshStyle:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_ResultRange:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_RobustConnect:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_RowNumbers:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_SaveData:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_SavePassword:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_Sort:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_SourceConnectionFile:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_SourceDataFile:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_Sql:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TablesOnlyFromHTML:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileColumnDataTypes:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileCommaDelimiter:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileConsecutiveDelimiter:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileDecimalSeparator:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileFixedColumnWidths:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileOtherDelimiter:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileParseType:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFilePlatform:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFilePromptOnRefresh:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileSemicolonDelimiter:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileSpaceDelimiter:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileStartRow:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileTabDelimiter:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileTextQualifier:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileThousandsSeparator:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileTrailingMinusNumbers:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_TextFileVisualLayout:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_WebConsecutiveDelimitersAsOne:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_WebDisableDateRecognition:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_WebDisableRedirections:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_WebFormatting:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_WebPreFormattedTextToColumns:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_WebSelectionType:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_WebSingleBlockTextImport:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_WebTables:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #get_WorkbookConnection:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #hasAutoFormat!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #hasAutoFormat:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #listObject!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #maintainConnection!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #maintainConnection:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #name!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #name:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #parameters!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #parent!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #postText!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #postText:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #preserveColumnInfo!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #preserveColumnInfo:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #preserveFormatting!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #preserveFormatting:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #put_AdjustColumnWidth:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_BackgroundQuery:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_CommandText:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_CommandType:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_Connection:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_EditWebPage:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_EnableEditing:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_EnableRefresh:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_FieldNames:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_FillAdjacentFormulas:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_HasAutoFormat:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_MaintainConnection:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_Name:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_PostText:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_PreserveColumnInfo:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_PreserveFormatting:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_RefreshOnFileOpen:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_RefreshPeriod:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_RefreshStyle:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_RobustConnect:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_RowNumbers:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_SaveData:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_SavePassword:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_SourceConnectionFile:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_SourceDataFile:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_Sql:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TablesOnlyFromHTML:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileColumnDataTypes:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileCommaDelimiter:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileConsecutiveDelimiter:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileDecimalSeparator:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileFixedColumnWidths:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileOtherDelimiter:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileParseType:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFilePlatform:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFilePromptOnRefresh:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileSemicolonDelimiter:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileSpaceDelimiter:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileStartRow:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileTabDelimiter:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileTextQualifier:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileThousandsSeparator:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileTrailingMinusNumbers:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_TextFileVisualLayout:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_WebConsecutiveDelimitersAsOne:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_WebDisableDateRecognition:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_WebDisableRedirections:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_WebFormatting:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_WebPreFormattedTextToColumns:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_WebSelectionType:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_WebSingleBlockTextImport:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #put_WebTables:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #putref_Recordset:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #queryType!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #recordset!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #refresh!**auto generated**!methods!public! !
!Excel_IQueryTable categoriesFor: #refresh:!**auto generated**!methods!public! !
!Excel_IQueryTable categoriesFor: #Refresh:rhs:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #refreshing!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #refreshOnFileOpen!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #refreshOnFileOpen:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #refreshPeriod!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #refreshPeriod:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #refreshStyle!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #refreshStyle:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #resetTimer!**auto generated**!methods!public! !
!Excel_IQueryTable categoriesFor: #ResetTimer!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #resultRange!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #robustConnect!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #robustConnect:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #rowNumbers!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #rowNumbers:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #saveAsODC:!**auto generated**!methods!public! !
!Excel_IQueryTable categoriesFor: #saveAsODC:description:keywords:!**auto generated**!methods!public! !
!Excel_IQueryTable categoriesFor: #SaveAsODC:description:keywords:!**auto generated**!COM Interfaces-_IQueryTable!private! !
!Excel_IQueryTable categoriesFor: #saveData!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #saveData:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #savePassword!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #savePassword:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #setRecordset:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #sort!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #sourceConnectionFile!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #sourceConnectionFile:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #sourceDataFile!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #sourceDataFile:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #sql!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #sql:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #tablesOnlyFromHTML!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #tablesOnlyFromHTML:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileColumnDataTypes!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileColumnDataTypes:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileCommaDelimiter!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileCommaDelimiter:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileConsecutiveDelimiter!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileConsecutiveDelimiter:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileDecimalSeparator!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileDecimalSeparator:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileFixedColumnWidths!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileFixedColumnWidths:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileOtherDelimiter!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileOtherDelimiter:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileParseType!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileParseType:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFilePlatform!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFilePlatform:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFilePromptOnRefresh!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFilePromptOnRefresh:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileSemicolonDelimiter!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileSemicolonDelimiter:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileSpaceDelimiter!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileSpaceDelimiter:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileStartRow!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileStartRow:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileTabDelimiter!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileTabDelimiter:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileTextQualifier!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileTextQualifier:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileThousandsSeparator!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileThousandsSeparator:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileTrailingMinusNumbers!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileTrailingMinusNumbers:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileVisualLayout!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #textFileVisualLayout:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webConsecutiveDelimitersAsOne!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webConsecutiveDelimitersAsOne:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webDisableDateRecognition!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webDisableDateRecognition:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webDisableRedirections!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webDisableRedirections:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webFormatting!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webFormatting:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webPreFormattedTextToColumns!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webPreFormattedTextToColumns:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webSelectionType!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webSelectionType:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webSingleBlockTextImport!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webSingleBlockTextImport:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webTables!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #webTables:!**auto generated**!properties!public! !
!Excel_IQueryTable categoriesFor: #workbookConnection!**auto generated**!properties!public! !

!Excel_IQueryTable class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel._IQueryTable'
		Excel_IQueryTable defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_FieldNames:
			argumentTypes: 'varbool*';
		defineFunction: #put_FieldNames:
			argumentTypes: 'varbool';
		defineFunction: #get_RowNumbers:
			argumentTypes: 'varbool*';
		defineFunction: #put_RowNumbers:
			argumentTypes: 'varbool';
		defineFunction: #get_FillAdjacentFormulas:
			argumentTypes: 'varbool*';
		defineFunction: #put_FillAdjacentFormulas:
			argumentTypes: 'varbool';
		defineFunction: #get_HasAutoFormat:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasAutoFormat:
			argumentTypes: 'varbool';
		defineFunction: #get_RefreshOnFileOpen:
			argumentTypes: 'varbool*';
		defineFunction: #put_RefreshOnFileOpen:
			argumentTypes: 'varbool';
		defineFunction: #get_Refreshing:
			argumentTypes: 'varbool*';
		defineFunction: #get_FetchedRowOverflow:
			argumentTypes: 'varbool*';
		defineFunction: #get_BackgroundQuery:
			argumentTypes: 'varbool*';
		defineFunction: #put_BackgroundQuery:
			argumentTypes: 'varbool';
		defineFunction: #CancelRefresh;
		defineFunction: #get_RefreshStyle:
			argumentTypes: 'sdword*';
		defineFunction: #put_RefreshStyle:
			argumentTypes: 'sdword';
		defineFunction: #get_EnableRefresh:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableRefresh:
			argumentTypes: 'varbool';
		defineFunction: #get_SavePassword:
			argumentTypes: 'varbool*';
		defineFunction: #put_SavePassword:
			argumentTypes: 'varbool';
		defineFunction: #get_Destination:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Connection:
			argumentTypes: 'variant*';
		defineFunction: #put_Connection:
			argumentTypes: 'variant';
		defineFunction: #get_Sql:
			argumentTypes: 'variant*';
		defineFunction: #put_Sql:
			argumentTypes: 'variant';
		defineFunction: #get_PostText:
			argumentTypes: 'bstr*';
		defineFunction: #put_PostText:
			argumentTypes: 'bstr';
		defineFunction: #get_ResultRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #Delete;
		defineFunction: #Refresh:rhs:
			argumentTypes: 'variant varbool*';
		defineFunction: #get_Parameters:
			argumentTypes: 'ExcelParameters**';
		defineFunction: #get_Recordset:
			argumentTypes: 'IDispatch**';
		defineFunction: #putref_Recordset:
			argumentTypes: 'IDispatch*';
		defineFunction: #get_SaveData:
			argumentTypes: 'varbool*';
		defineFunction: #put_SaveData:
			argumentTypes: 'varbool';
		defineFunction: #get_TablesOnlyFromHTML:
			argumentTypes: 'varbool*';
		defineFunction: #put_TablesOnlyFromHTML:
			argumentTypes: 'varbool';
		defineFunction: #get_EnableEditing:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableEditing:
			argumentTypes: 'varbool';
		defineFunction: #get_TextFilePlatform:
			argumentTypes: 'sdword*';
		defineFunction: #put_TextFilePlatform:
			argumentTypes: 'sdword';
		defineFunction: #get_TextFileStartRow:
			argumentTypes: 'sdword*';
		defineFunction: #put_TextFileStartRow:
			argumentTypes: 'sdword';
		defineFunction: #get_TextFileParseType:
			argumentTypes: 'sdword*';
		defineFunction: #put_TextFileParseType:
			argumentTypes: 'sdword';
		defineFunction: #get_TextFileTextQualifier:
			argumentTypes: 'sdword*';
		defineFunction: #put_TextFileTextQualifier:
			argumentTypes: 'sdword';
		defineFunction: #get_TextFileConsecutiveDelimiter:
			argumentTypes: 'varbool*';
		defineFunction: #put_TextFileConsecutiveDelimiter:
			argumentTypes: 'varbool';
		defineFunction: #get_TextFileTabDelimiter:
			argumentTypes: 'varbool*';
		defineFunction: #put_TextFileTabDelimiter:
			argumentTypes: 'varbool';
		defineFunction: #get_TextFileSemicolonDelimiter:
			argumentTypes: 'varbool*';
		defineFunction: #put_TextFileSemicolonDelimiter:
			argumentTypes: 'varbool';
		defineFunction: #get_TextFileCommaDelimiter:
			argumentTypes: 'varbool*';
		defineFunction: #put_TextFileCommaDelimiter:
			argumentTypes: 'varbool';
		defineFunction: #get_TextFileSpaceDelimiter:
			argumentTypes: 'varbool*';
		defineFunction: #put_TextFileSpaceDelimiter:
			argumentTypes: 'varbool';
		defineFunction: #get_TextFileOtherDelimiter:
			argumentTypes: 'bstr*';
		defineFunction: #put_TextFileOtherDelimiter:
			argumentTypes: 'bstr';
		defineFunction: #get_TextFileColumnDataTypes:
			argumentTypes: 'variant*';
		defineFunction: #put_TextFileColumnDataTypes:
			argumentTypes: 'variant';
		defineFunction: #get_TextFileFixedColumnWidths:
			argumentTypes: 'variant*';
		defineFunction: #put_TextFileFixedColumnWidths:
			argumentTypes: 'variant';
		defineFunction: #get_PreserveColumnInfo:
			argumentTypes: 'varbool*';
		defineFunction: #put_PreserveColumnInfo:
			argumentTypes: 'varbool';
		defineFunction: #get_PreserveFormatting:
			argumentTypes: 'varbool*';
		defineFunction: #put_PreserveFormatting:
			argumentTypes: 'varbool';
		defineFunction: #get_AdjustColumnWidth:
			argumentTypes: 'varbool*';
		defineFunction: #put_AdjustColumnWidth:
			argumentTypes: 'varbool';
		defineFunction: #get_CommandText:
			argumentTypes: 'variant*';
		defineFunction: #put_CommandText:
			argumentTypes: 'variant';
		defineFunction: #get_CommandType:
			argumentTypes: 'sdword*';
		defineFunction: #put_CommandType:
			argumentTypes: 'sdword';
		defineFunction: #get_TextFilePromptOnRefresh:
			argumentTypes: 'varbool*';
		defineFunction: #put_TextFilePromptOnRefresh:
			argumentTypes: 'varbool';
		defineFunction: #get_QueryType:
			argumentTypes: 'sdword*';
		defineFunction: #get_MaintainConnection:
			argumentTypes: 'varbool*';
		defineFunction: #put_MaintainConnection:
			argumentTypes: 'varbool';
		defineFunction: #get_TextFileDecimalSeparator:
			argumentTypes: 'bstr*';
		defineFunction: #put_TextFileDecimalSeparator:
			argumentTypes: 'bstr';
		defineFunction: #get_TextFileThousandsSeparator:
			argumentTypes: 'bstr*';
		defineFunction: #put_TextFileThousandsSeparator:
			argumentTypes: 'bstr';
		defineFunction: #get_RefreshPeriod:
			argumentTypes: 'sdword*';
		defineFunction: #put_RefreshPeriod:
			argumentTypes: 'sdword';
		defineFunction: #ResetTimer;
		defineFunction: #get_WebSelectionType:
			argumentTypes: 'sdword*';
		defineFunction: #put_WebSelectionType:
			argumentTypes: 'sdword';
		defineFunction: #get_WebFormatting:
			argumentTypes: 'sdword*';
		defineFunction: #put_WebFormatting:
			argumentTypes: 'sdword';
		defineFunction: #get_WebTables:
			argumentTypes: 'bstr*';
		defineFunction: #put_WebTables:
			argumentTypes: 'bstr';
		defineFunction: #get_WebPreFormattedTextToColumns:
			argumentTypes: 'varbool*';
		defineFunction: #put_WebPreFormattedTextToColumns:
			argumentTypes: 'varbool';
		defineFunction: #get_WebSingleBlockTextImport:
			argumentTypes: 'varbool*';
		defineFunction: #put_WebSingleBlockTextImport:
			argumentTypes: 'varbool';
		defineFunction: #get_WebDisableDateRecognition:
			argumentTypes: 'varbool*';
		defineFunction: #put_WebDisableDateRecognition:
			argumentTypes: 'varbool';
		defineFunction: #get_WebConsecutiveDelimitersAsOne:
			argumentTypes: 'varbool*';
		defineFunction: #put_WebConsecutiveDelimitersAsOne:
			argumentTypes: 'varbool';
		defineFunction: #get_WebDisableRedirections:
			argumentTypes: 'varbool*';
		defineFunction: #put_WebDisableRedirections:
			argumentTypes: 'varbool';
		defineFunction: #get_EditWebPage:
			argumentTypes: 'variant*';
		defineFunction: #put_EditWebPage:
			argumentTypes: 'variant';
		defineFunction: #get_SourceConnectionFile:
			argumentTypes: 'bstr*';
		defineFunction: #put_SourceConnectionFile:
			argumentTypes: 'bstr';
		defineFunction: #get_SourceDataFile:
			argumentTypes: 'bstr*';
		defineFunction: #put_SourceDataFile:
			argumentTypes: 'bstr';
		defineFunction: #get_RobustConnect:
			argumentTypes: 'sdword*';
		defineFunction: #put_RobustConnect:
			argumentTypes: 'sdword';
		defineFunction: #get_TextFileTrailingMinusNumbers:
			argumentTypes: 'varbool*';
		defineFunction: #put_TextFileTrailingMinusNumbers:
			argumentTypes: 'varbool';
		defineFunction: #SaveAsODC:description:keywords:
			argumentTypes: 'bstr variant variant';
		defineFunction: #get_ListObject:
			argumentTypes: 'ExcelListObject**';
		defineFunction: #get_TextFileVisualLayout:
			argumentTypes: 'sdword*';
		defineFunction: #put_TextFileVisualLayout:
			argumentTypes: 'sdword';
		defineFunction: #get_WorkbookConnection:
			argumentTypes: 'ExcelWorkbookConnection**';
		defineFunction: #get_Sort:
			argumentTypes: 'ExcelSort**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		Excel_IQueryTable initializeTypeLib"

	typeLib := ExcelLib! !
!Excel_IQueryTable class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!Excel_IQueryTable class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

