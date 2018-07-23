"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #Excel_QueryTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
Excel_QueryTable guid: (IID fromString: '{00024428-0000-0000-C000-000000000046}')!
Excel_QueryTable comment: '<Excel_QueryTable> is a wrapper class generated for the dispatch interface ''Excel._QueryTable'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024428-0000-0000-C000-000000000046), 
	helpcontext(0x000200be)
]
dispinterface _QueryTable {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x00000630), propget, helpcontext(0x00010630)]
		VARIANT_BOOL FieldNames();
[id(0x00000630), propput, helpcontext(0x00010630)]
		void FieldNames(
			[in]VARIANT_BOOL arg1);
[id(0x00000631), propget, helpcontext(0x00010631)]
		VARIANT_BOOL RowNumbers();
[id(0x00000631), propput, helpcontext(0x00010631)]
		void RowNumbers(
			[in]VARIANT_BOOL arg1);
[id(0x00000632), propget, helpcontext(0x00010632)]
		VARIANT_BOOL FillAdjacentFormulas();
[id(0x00000632), propput, helpcontext(0x00010632)]
		void FillAdjacentFormulas(
			[in]VARIANT_BOOL arg1);
[id(0x000002b7), hidden, propget, helpcontext(0x000102b7)]
		VARIANT_BOOL HasAutoFormat();
[id(0x000002b7), hidden, propput, helpcontext(0x000102b7)]
		void HasAutoFormat(
			[in]VARIANT_BOOL arg1);
[id(0x000005c7), propget, helpcontext(0x000105c7)]
		VARIANT_BOOL RefreshOnFileOpen();
[id(0x000005c7), propput, helpcontext(0x000105c7)]
		void RefreshOnFileOpen(
			[in]VARIANT_BOOL arg1);
[id(0x00000633), propget, helpcontext(0x00010633)]
		VARIANT_BOOL Refreshing();
[id(0x00000634), propget, helpcontext(0x00010634)]
		VARIANT_BOOL FetchedRowOverflow();
[id(0x00000593), propget, helpcontext(0x00010593)]
		VARIANT_BOOL BackgroundQuery();
[id(0x00000593), propput, helpcontext(0x00010593)]
		void BackgroundQuery(
			[in]VARIANT_BOOL arg1);
[id(0x00000635), helpcontext(0x00010635)]
		void CancelRefresh();
[id(0x00000636), propget, helpcontext(0x00010636)]
		XlCellInsertionMode RefreshStyle();
[id(0x00000636), propput, helpcontext(0x00010636)]
		void RefreshStyle(
			[in]XlCellInsertionMode arg1);
[id(0x000005c5), propget, helpcontext(0x000105c5)]
		VARIANT_BOOL EnableRefresh();
[id(0x000005c5), propput, helpcontext(0x000105c5)]
		void EnableRefresh(
			[in]VARIANT_BOOL arg1);
[id(0x000005c9), propget, helpcontext(0x000105c9)]
		VARIANT_BOOL SavePassword();
[id(0x000005c9), propput, helpcontext(0x000105c9)]
		void SavePassword(
			[in]VARIANT_BOOL arg1);
[id(0x000002a9), propget, helpcontext(0x000102a9)]
		Range* Destination();
[id(0x00000598), propget, helpcontext(0x00010598)]
		VARIANT Connection();
[id(0x00000598), propput, helpcontext(0x00010598)]
		void Connection(
			[in]VARIANT arg1);
[id(0x000005c8), hidden, propget, helpcontext(0x000105c8)]
		VARIANT Sql();
[id(0x000005c8), hidden, propput, helpcontext(0x000105c8)]
		void Sql(
			[in]VARIANT arg1);
[id(0x00000637), propget, helpcontext(0x00010637)]
		BSTR PostText();
[id(0x00000637), propput, helpcontext(0x00010637)]
		void PostText(
			[in]BSTR arg1);
[id(0x00000638), propget, helpcontext(0x00010638)]
		Range* ResultRange();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000589), helpcontext(0x00010589)]
		VARIANT_BOOL Refresh(
			[in, optional]VARIANT BackgroundQuery);
[id(0x00000639), propget, helpcontext(0x00010639)]
		Parameters* Parameters();
[id(0x0000048d), propget, helpcontext(0x0001048d)]
		IDispatch* Recordset();
[id(0x0000048d), propputref, helpcontext(0x0001048d)]
		void Recordset(
			[in]IDispatch* arg1);
[id(0x000002b4), propget, helpcontext(0x000102b4)]
		VARIANT_BOOL SaveData();
[id(0x000002b4), propput, helpcontext(0x000102b4)]
		void SaveData(
			[in]VARIANT_BOOL arg1);
[id(0x0000063a), hidden, propget, helpcontext(0x0001063a)]
		VARIANT_BOOL TablesOnlyFromHTML();
[id(0x0000063a), hidden, propput, helpcontext(0x0001063a)]
		void TablesOnlyFromHTML(
			[in]VARIANT_BOOL arg1);
[id(0x0000063b), propget, helpcontext(0x0001063b)]
		VARIANT_BOOL EnableEditing();
[id(0x0000063b), propput, helpcontext(0x0001063b)]
		void EnableEditing(
			[in]VARIANT_BOOL arg1);
[id(0x0000073f), propget, helpcontext(0x0001073f)]
		long TextFilePlatform();
[id(0x0000073f), propput, helpcontext(0x0001073f)]
		void TextFilePlatform(
			[in]long arg1);
[id(0x00000740), propget, helpcontext(0x00010740)]
		long TextFileStartRow();
[id(0x00000740), propput, helpcontext(0x00010740)]
		void TextFileStartRow(
			[in]long arg1);
[id(0x00000741), propget, helpcontext(0x00010741)]
		XlTextParsingType TextFileParseType();
[id(0x00000741), propput, helpcontext(0x00010741)]
		void TextFileParseType(
			[in]XlTextParsingType arg1);
[id(0x00000742), propget, helpcontext(0x00010742)]
		XlTextQualifier TextFileTextQualifier();
[id(0x00000742), propput, helpcontext(0x00010742)]
		void TextFileTextQualifier(
			[in]XlTextQualifier arg1);
[id(0x00000743), propget, helpcontext(0x00010743)]
		VARIANT_BOOL TextFileConsecutiveDelimiter();
[id(0x00000743), propput, helpcontext(0x00010743)]
		void TextFileConsecutiveDelimiter(
			[in]VARIANT_BOOL arg1);
[id(0x00000744), propget, helpcontext(0x00010744)]
		VARIANT_BOOL TextFileTabDelimiter();
[id(0x00000744), propput, helpcontext(0x00010744)]
		void TextFileTabDelimiter(
			[in]VARIANT_BOOL arg1);
[id(0x00000745), propget, helpcontext(0x00010745)]
		VARIANT_BOOL TextFileSemicolonDelimiter();
[id(0x00000745), propput, helpcontext(0x00010745)]
		void TextFileSemicolonDelimiter(
			[in]VARIANT_BOOL arg1);
[id(0x00000746), propget, helpcontext(0x00010746)]
		VARIANT_BOOL TextFileCommaDelimiter();
[id(0x00000746), propput, helpcontext(0x00010746)]
		void TextFileCommaDelimiter(
			[in]VARIANT_BOOL arg1);
[id(0x00000747), propget, helpcontext(0x00010747)]
		VARIANT_BOOL TextFileSpaceDelimiter();
[id(0x00000747), propput, helpcontext(0x00010747)]
		void TextFileSpaceDelimiter(
			[in]VARIANT_BOOL arg1);
[id(0x00000748), propget, helpcontext(0x00010748)]
		BSTR TextFileOtherDelimiter();
[id(0x00000748), propput, helpcontext(0x00010748)]
		void TextFileOtherDelimiter(
			[in]BSTR arg1);
[id(0x00000749), propget, helpcontext(0x00010749)]
		VARIANT TextFileColumnDataTypes();
[id(0x00000749), propput, helpcontext(0x00010749)]
		void TextFileColumnDataTypes(
			[in]VARIANT arg1);
[id(0x0000074a), propget, helpcontext(0x0001074a)]
		VARIANT TextFileFixedColumnWidths();
[id(0x0000074a), propput, helpcontext(0x0001074a)]
		void TextFileFixedColumnWidths(
			[in]VARIANT arg1);
[id(0x0000074b), propget, helpcontext(0x0001074b)]
		VARIANT_BOOL PreserveColumnInfo();
[id(0x0000074b), propput, helpcontext(0x0001074b)]
		void PreserveColumnInfo(
			[in]VARIANT_BOOL arg1);
[id(0x000005dc), propget, helpcontext(0x000105dc)]
		VARIANT_BOOL PreserveFormatting();
[id(0x000005dc), propput, helpcontext(0x000105dc)]
		void PreserveFormatting(
			[in]VARIANT_BOOL arg1);
[id(0x0000074c), propget, helpcontext(0x0001074c)]
		VARIANT_BOOL AdjustColumnWidth();
[id(0x0000074c), propput, helpcontext(0x0001074c)]
		void AdjustColumnWidth(
			[in]VARIANT_BOOL arg1);
[id(0x00000725), propget, helpcontext(0x00010725)]
		VARIANT CommandText();
[id(0x00000725), propput, helpcontext(0x00010725)]
		void CommandText(
			[in]VARIANT arg1);
[id(0x00000726), propget, helpcontext(0x00010726)]
		XlCmdType CommandType();
[id(0x00000726), propput, helpcontext(0x00010726)]
		void CommandType(
			[in]XlCmdType arg1);
[id(0x0000074d), propget, helpcontext(0x0001074d)]
		VARIANT_BOOL TextFilePromptOnRefresh();
[id(0x0000074d), propput, helpcontext(0x0001074d)]
		void TextFilePromptOnRefresh(
			[in]VARIANT_BOOL arg1);
[id(0x00000727), propget, helpcontext(0x00010727)]
		XlQueryType QueryType();
[id(0x00000728), propget, helpcontext(0x00010728)]
		VARIANT_BOOL MaintainConnection();
[id(0x00000728), propput, helpcontext(0x00010728)]
		void MaintainConnection(
			[in]VARIANT_BOOL arg1);
[id(0x0000074e), propget, helpcontext(0x0001074e)]
		BSTR TextFileDecimalSeparator();
[id(0x0000074e), propput, helpcontext(0x0001074e)]
		void TextFileDecimalSeparator(
			[in]BSTR arg1);
[id(0x0000074f), propget, helpcontext(0x0001074f)]
		BSTR TextFileThousandsSeparator();
[id(0x0000074f), propput, helpcontext(0x0001074f)]
		void TextFileThousandsSeparator(
			[in]BSTR arg1);
[id(0x00000729), propget, helpcontext(0x00010729)]
		long RefreshPeriod();
[id(0x00000729), propput, helpcontext(0x00010729)]
		void RefreshPeriod(
			[in]long arg1);
[id(0x0000072a), helpcontext(0x0001072a)]
		void ResetTimer();
[id(0x00000750), propget, helpcontext(0x00010750)]
		XlWebSelectionType WebSelectionType();
[id(0x00000750), propput, helpcontext(0x00010750)]
		void WebSelectionType(
			[in]XlWebSelectionType arg1);
[id(0x00000751), propget, helpcontext(0x00010751)]
		XlWebFormatting WebFormatting();
[id(0x00000751), propput, helpcontext(0x00010751)]
		void WebFormatting(
			[in]XlWebFormatting arg1);
[id(0x00000752), propget, helpcontext(0x00010752)]
		BSTR WebTables();
[id(0x00000752), propput, helpcontext(0x00010752)]
		void WebTables(
			[in]BSTR arg1);
[id(0x00000753), propget, helpcontext(0x00010753)]
		VARIANT_BOOL WebPreFormattedTextToColumns();
[id(0x00000753), propput, helpcontext(0x00010753)]
		void WebPreFormattedTextToColumns(
			[in]VARIANT_BOOL arg1);
[id(0x00000754), propget, helpcontext(0x00010754)]
		VARIANT_BOOL WebSingleBlockTextImport();
[id(0x00000754), propput, helpcontext(0x00010754)]
		void WebSingleBlockTextImport(
			[in]VARIANT_BOOL arg1);
[id(0x00000755), propget, helpcontext(0x00010755)]
		VARIANT_BOOL WebDisableDateRecognition();
[id(0x00000755), propput, helpcontext(0x00010755)]
		void WebDisableDateRecognition(
			[in]VARIANT_BOOL arg1);
[id(0x00000756), propget, helpcontext(0x00010756)]
		VARIANT_BOOL WebConsecutiveDelimitersAsOne();
[id(0x00000756), propput, helpcontext(0x00010756)]
		void WebConsecutiveDelimitersAsOne(
			[in]VARIANT_BOOL arg1);
[id(0x00000872), propget, helpcontext(0x00010872)]
		VARIANT_BOOL WebDisableRedirections();
[id(0x00000872), propput, helpcontext(0x00010872)]
		void WebDisableRedirections(
			[in]VARIANT_BOOL arg1);
[id(0x00000873), propget, helpcontext(0x00010873)]
		VARIANT EditWebPage();
[id(0x00000873), propput, helpcontext(0x00010873)]
		void EditWebPage(
			[in]VARIANT arg1);
[id(0x0000081f), propget, helpcontext(0x0001081f)]
		BSTR SourceConnectionFile();
[id(0x0000081f), propput, helpcontext(0x0001081f)]
		void SourceConnectionFile(
			[in]BSTR arg1);
[id(0x00000820), propget, helpcontext(0x00010820)]
		BSTR SourceDataFile();
[id(0x00000820), propput, helpcontext(0x00010820)]
		void SourceDataFile(
			[in]BSTR arg1);
[id(0x00000821), propget, helpcontext(0x00010821)]
		XlRobustConnect RobustConnect();
[id(0x00000821), propput, helpcontext(0x00010821)]
		void RobustConnect(
			[in]XlRobustConnect arg1);
[id(0x00000874), propget, helpcontext(0x00010874)]
		VARIANT_BOOL TextFileTrailingMinusNumbers();
[id(0x00000874), propput, helpcontext(0x00010874)]
		void TextFileTrailingMinusNumbers(
			[in]VARIANT_BOOL arg1);
[id(0x00000822), helpcontext(0x00010822)]
		void SaveAsODC(
			[in]BSTR ODCFileName,
			[in, optional]VARIANT Description,
			[in, optional]VARIANT Keywords);
[id(0x000008d1), propget, helpcontext(0x000108d1)]
		ListObject* ListObject();
[id(0x000008c5), propget, helpcontext(0x000108c5)]
		XlTextVisualLayoutType TextFileVisualLayout();
[id(0x000008c5), propput, helpcontext(0x000108c5)]
		void TextFileVisualLayout(
			[in]XlTextVisualLayoutType arg1);
[id(0x000009f0), propget, helpcontext(0x000109f0)]
		WorkbookConnection* WorkbookConnection();
[id(0x00000370), propget, helpcontext(0x00010370)]
		Sort* Sort();
};
'!
!Excel_QueryTable categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!Excel_QueryTable methodsFor!

adjustColumnWidth
	"Answer the <varbool> value of the 'AdjustColumnWidth' property of the receiver.
		VARIANT_BOOL AdjustColumnWidth"

	^(self getPropertyId: 1868)
!

adjustColumnWidth: arg1
	"Set the 'AdjustColumnWidth' property of the receiver to the <varbool> value of the argument.
		void AdjustColumnWidth"

	self setPropertyId: 1868 value: arg1
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

backgroundQuery
	"Answer the <varbool> value of the 'BackgroundQuery' property of the receiver.
		VARIANT_BOOL BackgroundQuery"

	^(self getPropertyId: 1427)
!

backgroundQuery: arg1
	"Set the 'BackgroundQuery' property of the receiver to the <varbool> value of the argument.
		void BackgroundQuery"

	self setPropertyId: 1427 value: arg1
!

cancelRefresh
	"Invoke the CancelRefresh() method of the COM object."

	(self invokeId: 1589)
!

commandText
	"Answer the <variant> value of the 'CommandText' property of the receiver.
		VARIANT CommandText"

	^(self getPropertyId: 1829)
!

commandText: arg1
	"Set the 'CommandText' property of the receiver to the <variant> value of the argument.
		void CommandText"

	self setPropertyId: 1829 value: arg1
!

commandType
	"Answer the <sdword> value of the 'CommandType' property of the receiver.
		XlCmdType CommandType"

	^(self getPropertyId: 1830)
!

commandType: arg1
	"Set the 'CommandType' property of the receiver to the <sdword> value of the argument.
		void CommandType"

	self setPropertyId: 1830 value: arg1
!

connection
	"Answer the <variant> value of the 'Connection' property of the receiver.
		VARIANT Connection"

	^(self getPropertyId: 1432)
!

connection: arg1
	"Set the 'Connection' property of the receiver to the <variant> value of the argument.
		void Connection"

	self setPropertyId: 1432 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

destination
	"Answer the <ExcelRange> value of the 'Destination' property of the receiver.
		Range* Destination"

	^ExcelRange attachInterface: (self getPropertyId: 681)
!

editWebPage
	"Answer the <variant> value of the 'EditWebPage' property of the receiver.
		VARIANT EditWebPage"

	^(self getPropertyId: 2163)
!

editWebPage: arg1
	"Set the 'EditWebPage' property of the receiver to the <variant> value of the argument.
		void EditWebPage"

	self setPropertyId: 2163 value: arg1
!

enableEditing
	"Answer the <varbool> value of the 'EnableEditing' property of the receiver.
		VARIANT_BOOL EnableEditing"

	^(self getPropertyId: 1595)
!

enableEditing: arg1
	"Set the 'EnableEditing' property of the receiver to the <varbool> value of the argument.
		void EnableEditing"

	self setPropertyId: 1595 value: arg1
!

enableRefresh
	"Answer the <varbool> value of the 'EnableRefresh' property of the receiver.
		VARIANT_BOOL EnableRefresh"

	^(self getPropertyId: 1477)
!

enableRefresh: arg1
	"Set the 'EnableRefresh' property of the receiver to the <varbool> value of the argument.
		void EnableRefresh"

	self setPropertyId: 1477 value: arg1
!

fetchedRowOverflow
	"Answer the <varbool> value of the 'FetchedRowOverflow' property of the receiver.
		VARIANT_BOOL FetchedRowOverflow"

	^(self getPropertyId: 1588)
!

fieldNames
	"Answer the <varbool> value of the 'FieldNames' property of the receiver.
		VARIANT_BOOL FieldNames"

	^(self getPropertyId: 1584)
!

fieldNames: arg1
	"Set the 'FieldNames' property of the receiver to the <varbool> value of the argument.
		void FieldNames"

	self setPropertyId: 1584 value: arg1
!

fillAdjacentFormulas
	"Answer the <varbool> value of the 'FillAdjacentFormulas' property of the receiver.
		VARIANT_BOOL FillAdjacentFormulas"

	^(self getPropertyId: 1586)
!

fillAdjacentFormulas: arg1
	"Set the 'FillAdjacentFormulas' property of the receiver to the <varbool> value of the argument.
		void FillAdjacentFormulas"

	self setPropertyId: 1586 value: arg1
!

hasAutoFormat
	"Answer the <varbool> value of the 'HasAutoFormat' property of the receiver.
		VARIANT_BOOL HasAutoFormat"

	^(self getPropertyId: 695)
!

hasAutoFormat: arg1
	"Set the 'HasAutoFormat' property of the receiver to the <varbool> value of the argument.
		void HasAutoFormat"

	self setPropertyId: 695 value: arg1
!

listObject
	"Answer the <ExcelListObject> value of the 'ListObject' property of the receiver.
		ListObject* ListObject"

	^ExcelListObject attachInterface: (self getPropertyId: 2257)
!

maintainConnection
	"Answer the <varbool> value of the 'MaintainConnection' property of the receiver.
		VARIANT_BOOL MaintainConnection"

	^(self getPropertyId: 1832)
!

maintainConnection: arg1
	"Set the 'MaintainConnection' property of the receiver to the <varbool> value of the argument.
		void MaintainConnection"

	self setPropertyId: 1832 value: arg1
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

parameters
	"Answer the <ExcelParameters> value of the 'Parameters' property of the receiver.
		Parameters* Parameters"

	^ExcelParameters attachInterface: (self getPropertyId: 1593)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

postText
	"Answer the <bstr> value of the 'PostText' property of the receiver.
		BSTR PostText"

	^(self getPropertyId: 1591)
!

postText: arg1
	"Set the 'PostText' property of the receiver to the <bstr> value of the argument.
		void PostText"

	self setPropertyId: 1591 value: arg1
!

preserveColumnInfo
	"Answer the <varbool> value of the 'PreserveColumnInfo' property of the receiver.
		VARIANT_BOOL PreserveColumnInfo"

	^(self getPropertyId: 1867)
!

preserveColumnInfo: arg1
	"Set the 'PreserveColumnInfo' property of the receiver to the <varbool> value of the argument.
		void PreserveColumnInfo"

	self setPropertyId: 1867 value: arg1
!

preserveFormatting
	"Answer the <varbool> value of the 'PreserveFormatting' property of the receiver.
		VARIANT_BOOL PreserveFormatting"

	^(self getPropertyId: 1500)
!

preserveFormatting: arg1
	"Set the 'PreserveFormatting' property of the receiver to the <varbool> value of the argument.
		void PreserveFormatting"

	self setPropertyId: 1500 value: arg1
!

queryType
	"Answer the <sdword> value of the 'QueryType' property of the receiver.
		XlQueryType QueryType"

	^(self getPropertyId: 1831)
!

recordset
	"Answer the <IDispatch> value of the 'Recordset' property of the receiver.
		IDispatch* Recordset"

	^IDispatch attachInterface: (self getPropertyId: 1165)
!

refresh
	"Answer the <VARIANT_BOOL> result of invoking the Refresh() method of the COM object.
	Default values are passed for all optional parameters."

	^self refresh: VARIANT unspecified!

refresh: backgroundQuery
	"Answer the <VARIANT_BOOL> result of invoking the Refresh() method of the COM object."

	^(self invokeId: 1417 with: backgroundQuery)
!

refreshing
	"Answer the <varbool> value of the 'Refreshing' property of the receiver.
		VARIANT_BOOL Refreshing"

	^(self getPropertyId: 1587)
!

refreshOnFileOpen
	"Answer the <varbool> value of the 'RefreshOnFileOpen' property of the receiver.
		VARIANT_BOOL RefreshOnFileOpen"

	^(self getPropertyId: 1479)
!

refreshOnFileOpen: arg1
	"Set the 'RefreshOnFileOpen' property of the receiver to the <varbool> value of the argument.
		void RefreshOnFileOpen"

	self setPropertyId: 1479 value: arg1
!

refreshPeriod
	"Answer the <sdword> value of the 'RefreshPeriod' property of the receiver.
		long RefreshPeriod"

	^(self getPropertyId: 1833)
!

refreshPeriod: arg1
	"Set the 'RefreshPeriod' property of the receiver to the <sdword> value of the argument.
		void RefreshPeriod"

	self setPropertyId: 1833 value: arg1
!

refreshStyle
	"Answer the <sdword> value of the 'RefreshStyle' property of the receiver.
		XlCellInsertionMode RefreshStyle"

	^(self getPropertyId: 1590)
!

refreshStyle: arg1
	"Set the 'RefreshStyle' property of the receiver to the <sdword> value of the argument.
		void RefreshStyle"

	self setPropertyId: 1590 value: arg1
!

resetTimer
	"Invoke the ResetTimer() method of the COM object."

	(self invokeId: 1834)
!

resultRange
	"Answer the <ExcelRange> value of the 'ResultRange' property of the receiver.
		Range* ResultRange"

	^ExcelRange attachInterface: (self getPropertyId: 1592)
!

robustConnect
	"Answer the <sdword> value of the 'RobustConnect' property of the receiver.
		XlRobustConnect RobustConnect"

	^(self getPropertyId: 2081)
!

robustConnect: arg1
	"Set the 'RobustConnect' property of the receiver to the <sdword> value of the argument.
		void RobustConnect"

	self setPropertyId: 2081 value: arg1
!

rowNumbers
	"Answer the <varbool> value of the 'RowNumbers' property of the receiver.
		VARIANT_BOOL RowNumbers"

	^(self getPropertyId: 1585)
!

rowNumbers: arg1
	"Set the 'RowNumbers' property of the receiver to the <varbool> value of the argument.
		void RowNumbers"

	self setPropertyId: 1585 value: arg1
!

saveAsODC: odcFileName
	"Invoke the SaveAsODC() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 saveAsODC: odcFileName
		 description: VARIANT unspecified
		 keywords: VARIANT unspecified!

saveAsODC: odcFileName description: description keywords: keywords
	"Invoke the SaveAsODC() method of the COM object."

	(self invokeId: 2082 withArguments:
			((Array new: 3)
				basicAt: 1 put: odcFileName;
				basicAt: 2 put: description;
				basicAt: 3 put: keywords;
				yourself))
!

saveData
	"Answer the <varbool> value of the 'SaveData' property of the receiver.
		VARIANT_BOOL SaveData"

	^(self getPropertyId: 692)
!

saveData: arg1
	"Set the 'SaveData' property of the receiver to the <varbool> value of the argument.
		void SaveData"

	self setPropertyId: 692 value: arg1
!

savePassword
	"Answer the <varbool> value of the 'SavePassword' property of the receiver.
		VARIANT_BOOL SavePassword"

	^(self getPropertyId: 1481)
!

savePassword: arg1
	"Set the 'SavePassword' property of the receiver to the <varbool> value of the argument.
		void SavePassword"

	self setPropertyId: 1481 value: arg1
!

setRecordset: arg1
	"Set the 'Recordset' property of the receiver to the <IDispatch*> value of the argument.
		void Recordset"

	self setPropertyId: 1165 value: arg1
!

sort
	"Answer the <ExcelSort> value of the 'Sort' property of the receiver.
		Sort* Sort"

	^ExcelSort attachInterface: (self getPropertyId: 880)
!

sourceConnectionFile
	"Answer the <bstr> value of the 'SourceConnectionFile' property of the receiver.
		BSTR SourceConnectionFile"

	^(self getPropertyId: 2079)
!

sourceConnectionFile: arg1
	"Set the 'SourceConnectionFile' property of the receiver to the <bstr> value of the argument.
		void SourceConnectionFile"

	self setPropertyId: 2079 value: arg1
!

sourceDataFile
	"Answer the <bstr> value of the 'SourceDataFile' property of the receiver.
		BSTR SourceDataFile"

	^(self getPropertyId: 2080)
!

sourceDataFile: arg1
	"Set the 'SourceDataFile' property of the receiver to the <bstr> value of the argument.
		void SourceDataFile"

	self setPropertyId: 2080 value: arg1
!

sql
	"Answer the <variant> value of the 'Sql' property of the receiver.
		VARIANT Sql"

	^(self getPropertyId: 1480)
!

sql: arg1
	"Set the 'Sql' property of the receiver to the <variant> value of the argument.
		void Sql"

	self setPropertyId: 1480 value: arg1
!

tablesOnlyFromHTML
	"Answer the <varbool> value of the 'TablesOnlyFromHTML' property of the receiver.
		VARIANT_BOOL TablesOnlyFromHTML"

	^(self getPropertyId: 1594)
!

tablesOnlyFromHTML: arg1
	"Set the 'TablesOnlyFromHTML' property of the receiver to the <varbool> value of the argument.
		void TablesOnlyFromHTML"

	self setPropertyId: 1594 value: arg1
!

textFileColumnDataTypes
	"Answer the <variant> value of the 'TextFileColumnDataTypes' property of the receiver.
		VARIANT TextFileColumnDataTypes"

	^(self getPropertyId: 1865)
!

textFileColumnDataTypes: arg1
	"Set the 'TextFileColumnDataTypes' property of the receiver to the <variant> value of the argument.
		void TextFileColumnDataTypes"

	self setPropertyId: 1865 value: arg1
!

textFileCommaDelimiter
	"Answer the <varbool> value of the 'TextFileCommaDelimiter' property of the receiver.
		VARIANT_BOOL TextFileCommaDelimiter"

	^(self getPropertyId: 1862)
!

textFileCommaDelimiter: arg1
	"Set the 'TextFileCommaDelimiter' property of the receiver to the <varbool> value of the argument.
		void TextFileCommaDelimiter"

	self setPropertyId: 1862 value: arg1
!

textFileConsecutiveDelimiter
	"Answer the <varbool> value of the 'TextFileConsecutiveDelimiter' property of the receiver.
		VARIANT_BOOL TextFileConsecutiveDelimiter"

	^(self getPropertyId: 1859)
!

textFileConsecutiveDelimiter: arg1
	"Set the 'TextFileConsecutiveDelimiter' property of the receiver to the <varbool> value of the argument.
		void TextFileConsecutiveDelimiter"

	self setPropertyId: 1859 value: arg1
!

textFileDecimalSeparator
	"Answer the <bstr> value of the 'TextFileDecimalSeparator' property of the receiver.
		BSTR TextFileDecimalSeparator"

	^(self getPropertyId: 1870)
!

textFileDecimalSeparator: arg1
	"Set the 'TextFileDecimalSeparator' property of the receiver to the <bstr> value of the argument.
		void TextFileDecimalSeparator"

	self setPropertyId: 1870 value: arg1
!

textFileFixedColumnWidths
	"Answer the <variant> value of the 'TextFileFixedColumnWidths' property of the receiver.
		VARIANT TextFileFixedColumnWidths"

	^(self getPropertyId: 1866)
!

textFileFixedColumnWidths: arg1
	"Set the 'TextFileFixedColumnWidths' property of the receiver to the <variant> value of the argument.
		void TextFileFixedColumnWidths"

	self setPropertyId: 1866 value: arg1
!

textFileOtherDelimiter
	"Answer the <bstr> value of the 'TextFileOtherDelimiter' property of the receiver.
		BSTR TextFileOtherDelimiter"

	^(self getPropertyId: 1864)
!

textFileOtherDelimiter: arg1
	"Set the 'TextFileOtherDelimiter' property of the receiver to the <bstr> value of the argument.
		void TextFileOtherDelimiter"

	self setPropertyId: 1864 value: arg1
!

textFileParseType
	"Answer the <sdword> value of the 'TextFileParseType' property of the receiver.
		XlTextParsingType TextFileParseType"

	^(self getPropertyId: 1857)
!

textFileParseType: arg1
	"Set the 'TextFileParseType' property of the receiver to the <sdword> value of the argument.
		void TextFileParseType"

	self setPropertyId: 1857 value: arg1
!

textFilePlatform
	"Answer the <sdword> value of the 'TextFilePlatform' property of the receiver.
		long TextFilePlatform"

	^(self getPropertyId: 1855)
!

textFilePlatform: arg1
	"Set the 'TextFilePlatform' property of the receiver to the <sdword> value of the argument.
		void TextFilePlatform"

	self setPropertyId: 1855 value: arg1
!

textFilePromptOnRefresh
	"Answer the <varbool> value of the 'TextFilePromptOnRefresh' property of the receiver.
		VARIANT_BOOL TextFilePromptOnRefresh"

	^(self getPropertyId: 1869)
!

textFilePromptOnRefresh: arg1
	"Set the 'TextFilePromptOnRefresh' property of the receiver to the <varbool> value of the argument.
		void TextFilePromptOnRefresh"

	self setPropertyId: 1869 value: arg1
!

textFileSemicolonDelimiter
	"Answer the <varbool> value of the 'TextFileSemicolonDelimiter' property of the receiver.
		VARIANT_BOOL TextFileSemicolonDelimiter"

	^(self getPropertyId: 1861)
!

textFileSemicolonDelimiter: arg1
	"Set the 'TextFileSemicolonDelimiter' property of the receiver to the <varbool> value of the argument.
		void TextFileSemicolonDelimiter"

	self setPropertyId: 1861 value: arg1
!

textFileSpaceDelimiter
	"Answer the <varbool> value of the 'TextFileSpaceDelimiter' property of the receiver.
		VARIANT_BOOL TextFileSpaceDelimiter"

	^(self getPropertyId: 1863)
!

textFileSpaceDelimiter: arg1
	"Set the 'TextFileSpaceDelimiter' property of the receiver to the <varbool> value of the argument.
		void TextFileSpaceDelimiter"

	self setPropertyId: 1863 value: arg1
!

textFileStartRow
	"Answer the <sdword> value of the 'TextFileStartRow' property of the receiver.
		long TextFileStartRow"

	^(self getPropertyId: 1856)
!

textFileStartRow: arg1
	"Set the 'TextFileStartRow' property of the receiver to the <sdword> value of the argument.
		void TextFileStartRow"

	self setPropertyId: 1856 value: arg1
!

textFileTabDelimiter
	"Answer the <varbool> value of the 'TextFileTabDelimiter' property of the receiver.
		VARIANT_BOOL TextFileTabDelimiter"

	^(self getPropertyId: 1860)
!

textFileTabDelimiter: arg1
	"Set the 'TextFileTabDelimiter' property of the receiver to the <varbool> value of the argument.
		void TextFileTabDelimiter"

	self setPropertyId: 1860 value: arg1
!

textFileTextQualifier
	"Answer the <sdword> value of the 'TextFileTextQualifier' property of the receiver.
		XlTextQualifier TextFileTextQualifier"

	^(self getPropertyId: 1858)
!

textFileTextQualifier: arg1
	"Set the 'TextFileTextQualifier' property of the receiver to the <sdword> value of the argument.
		void TextFileTextQualifier"

	self setPropertyId: 1858 value: arg1
!

textFileThousandsSeparator
	"Answer the <bstr> value of the 'TextFileThousandsSeparator' property of the receiver.
		BSTR TextFileThousandsSeparator"

	^(self getPropertyId: 1871)
!

textFileThousandsSeparator: arg1
	"Set the 'TextFileThousandsSeparator' property of the receiver to the <bstr> value of the argument.
		void TextFileThousandsSeparator"

	self setPropertyId: 1871 value: arg1
!

textFileTrailingMinusNumbers
	"Answer the <varbool> value of the 'TextFileTrailingMinusNumbers' property of the receiver.
		VARIANT_BOOL TextFileTrailingMinusNumbers"

	^(self getPropertyId: 2164)
!

textFileTrailingMinusNumbers: arg1
	"Set the 'TextFileTrailingMinusNumbers' property of the receiver to the <varbool> value of the argument.
		void TextFileTrailingMinusNumbers"

	self setPropertyId: 2164 value: arg1
!

textFileVisualLayout
	"Answer the <sdword> value of the 'TextFileVisualLayout' property of the receiver.
		XlTextVisualLayoutType TextFileVisualLayout"

	^(self getPropertyId: 2245)
!

textFileVisualLayout: arg1
	"Set the 'TextFileVisualLayout' property of the receiver to the <sdword> value of the argument.
		void TextFileVisualLayout"

	self setPropertyId: 2245 value: arg1
!

webConsecutiveDelimitersAsOne
	"Answer the <varbool> value of the 'WebConsecutiveDelimitersAsOne' property of the receiver.
		VARIANT_BOOL WebConsecutiveDelimitersAsOne"

	^(self getPropertyId: 1878)
!

webConsecutiveDelimitersAsOne: arg1
	"Set the 'WebConsecutiveDelimitersAsOne' property of the receiver to the <varbool> value of the argument.
		void WebConsecutiveDelimitersAsOne"

	self setPropertyId: 1878 value: arg1
!

webDisableDateRecognition
	"Answer the <varbool> value of the 'WebDisableDateRecognition' property of the receiver.
		VARIANT_BOOL WebDisableDateRecognition"

	^(self getPropertyId: 1877)
!

webDisableDateRecognition: arg1
	"Set the 'WebDisableDateRecognition' property of the receiver to the <varbool> value of the argument.
		void WebDisableDateRecognition"

	self setPropertyId: 1877 value: arg1
!

webDisableRedirections
	"Answer the <varbool> value of the 'WebDisableRedirections' property of the receiver.
		VARIANT_BOOL WebDisableRedirections"

	^(self getPropertyId: 2162)
!

webDisableRedirections: arg1
	"Set the 'WebDisableRedirections' property of the receiver to the <varbool> value of the argument.
		void WebDisableRedirections"

	self setPropertyId: 2162 value: arg1
!

webFormatting
	"Answer the <sdword> value of the 'WebFormatting' property of the receiver.
		XlWebFormatting WebFormatting"

	^(self getPropertyId: 1873)
!

webFormatting: arg1
	"Set the 'WebFormatting' property of the receiver to the <sdword> value of the argument.
		void WebFormatting"

	self setPropertyId: 1873 value: arg1
!

webPreFormattedTextToColumns
	"Answer the <varbool> value of the 'WebPreFormattedTextToColumns' property of the receiver.
		VARIANT_BOOL WebPreFormattedTextToColumns"

	^(self getPropertyId: 1875)
!

webPreFormattedTextToColumns: arg1
	"Set the 'WebPreFormattedTextToColumns' property of the receiver to the <varbool> value of the argument.
		void WebPreFormattedTextToColumns"

	self setPropertyId: 1875 value: arg1
!

webSelectionType
	"Answer the <sdword> value of the 'WebSelectionType' property of the receiver.
		XlWebSelectionType WebSelectionType"

	^(self getPropertyId: 1872)
!

webSelectionType: arg1
	"Set the 'WebSelectionType' property of the receiver to the <sdword> value of the argument.
		void WebSelectionType"

	self setPropertyId: 1872 value: arg1
!

webSingleBlockTextImport
	"Answer the <varbool> value of the 'WebSingleBlockTextImport' property of the receiver.
		VARIANT_BOOL WebSingleBlockTextImport"

	^(self getPropertyId: 1876)
!

webSingleBlockTextImport: arg1
	"Set the 'WebSingleBlockTextImport' property of the receiver to the <varbool> value of the argument.
		void WebSingleBlockTextImport"

	self setPropertyId: 1876 value: arg1
!

webTables
	"Answer the <bstr> value of the 'WebTables' property of the receiver.
		BSTR WebTables"

	^(self getPropertyId: 1874)
!

webTables: arg1
	"Set the 'WebTables' property of the receiver to the <bstr> value of the argument.
		void WebTables"

	self setPropertyId: 1874 value: arg1
!

workbookConnection
	"Answer the <ExcelWorkbookConnection> value of the 'WorkbookConnection' property of the receiver.
		WorkbookConnection* WorkbookConnection"

	^ExcelWorkbookConnection attachInterface: (self getPropertyId: 2544)
! !
!Excel_QueryTable categoriesFor: #adjustColumnWidth!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #adjustColumnWidth:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #application!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #backgroundQuery!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #backgroundQuery:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #cancelRefresh!**auto generated**!methods!public! !
!Excel_QueryTable categoriesFor: #commandText!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #commandText:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #commandType!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #commandType:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #connection!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #connection:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #creator!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #delete!**auto generated**!methods!public! !
!Excel_QueryTable categoriesFor: #destination!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #editWebPage!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #editWebPage:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #enableEditing!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #enableEditing:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #enableRefresh!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #enableRefresh:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #fetchedRowOverflow!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #fieldNames!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #fieldNames:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #fillAdjacentFormulas!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #fillAdjacentFormulas:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #hasAutoFormat!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #hasAutoFormat:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #listObject!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #maintainConnection!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #maintainConnection:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #name!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #name:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #parameters!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #parent!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #postText!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #postText:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #preserveColumnInfo!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #preserveColumnInfo:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #preserveFormatting!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #preserveFormatting:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #queryType!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #recordset!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #refresh!**auto generated**!methods!public! !
!Excel_QueryTable categoriesFor: #refresh:!**auto generated**!methods!public! !
!Excel_QueryTable categoriesFor: #refreshing!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #refreshOnFileOpen!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #refreshOnFileOpen:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #refreshPeriod!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #refreshPeriod:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #refreshStyle!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #refreshStyle:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #resetTimer!**auto generated**!methods!public! !
!Excel_QueryTable categoriesFor: #resultRange!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #robustConnect!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #robustConnect:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #rowNumbers!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #rowNumbers:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #saveAsODC:!**auto generated**!methods!public! !
!Excel_QueryTable categoriesFor: #saveAsODC:description:keywords:!**auto generated**!methods!public! !
!Excel_QueryTable categoriesFor: #saveData!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #saveData:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #savePassword!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #savePassword:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #setRecordset:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #sort!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #sourceConnectionFile!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #sourceConnectionFile:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #sourceDataFile!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #sourceDataFile:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #sql!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #sql:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #tablesOnlyFromHTML!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #tablesOnlyFromHTML:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileColumnDataTypes!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileColumnDataTypes:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileCommaDelimiter!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileCommaDelimiter:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileConsecutiveDelimiter!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileConsecutiveDelimiter:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileDecimalSeparator!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileDecimalSeparator:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileFixedColumnWidths!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileFixedColumnWidths:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileOtherDelimiter!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileOtherDelimiter:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileParseType!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileParseType:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFilePlatform!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFilePlatform:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFilePromptOnRefresh!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFilePromptOnRefresh:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileSemicolonDelimiter!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileSemicolonDelimiter:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileSpaceDelimiter!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileSpaceDelimiter:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileStartRow!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileStartRow:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileTabDelimiter!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileTabDelimiter:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileTextQualifier!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileTextQualifier:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileThousandsSeparator!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileThousandsSeparator:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileTrailingMinusNumbers!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileTrailingMinusNumbers:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileVisualLayout!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #textFileVisualLayout:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webConsecutiveDelimitersAsOne!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webConsecutiveDelimitersAsOne:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webDisableDateRecognition!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webDisableDateRecognition:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webDisableRedirections!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webDisableRedirections:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webFormatting!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webFormatting:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webPreFormattedTextToColumns!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webPreFormattedTextToColumns:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webSelectionType!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webSelectionType:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webSingleBlockTextImport!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webSingleBlockTextImport:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webTables!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #webTables:!**auto generated**!properties!public! !
!Excel_QueryTable categoriesFor: #workbookConnection!**auto generated**!properties!public! !

!Excel_QueryTable class methodsFor!

clsid
	"Private - Answer the CLSID of the coclass (QueryTable) for which the receiver is the default interface."

	^CLSID fromString: '{59191DA1-EA47-11CE-A51F-00AA0061507F}'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		Excel_QueryTable initializeTypeLib"

	typeLib := ExcelLib! !
!Excel_QueryTable class categoriesFor: #clsid!**auto generated**!constants!private! !
!Excel_QueryTable class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

