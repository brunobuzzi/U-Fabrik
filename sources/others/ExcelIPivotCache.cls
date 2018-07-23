"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotCache
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotCache guid: (IID fromString: '{0002441C-0001-0000-C000-000000000046}')!
ExcelIPivotCache comment: '<ExcelIPivotCache> is a wrapper class for the COM interface ''Excel.IPivotCache'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002441C-0001-0000-C000-000000000046), 
	helpcontext(0x000200b2), 
	hidden
]
interface IPivotCache : IDispatch
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
	[id(0x00000593), propget, helpcontext(0x00010593)]
	HRESULT __stdcall BackgroundQuery(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000593), propput, helpcontext(0x00010593)]
	HRESULT __stdcall BackgroundQuery(
		[in]VARIANT_BOOL RHS);
	[id(0x00000598), propget, helpcontext(0x00010598)]
	HRESULT __stdcall Connection(
		[out, retval]VARIANT* RHS);
	[id(0x00000598), propput, helpcontext(0x00010598)]
	HRESULT __stdcall Connection(
		[in]VARIANT RHS);
	[id(0x000005c5), propget, helpcontext(0x000105c5)]
	HRESULT __stdcall EnableRefresh(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005c5), propput, helpcontext(0x000105c5)]
	HRESULT __stdcall EnableRefresh(
		[in]VARIANT_BOOL RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x00000174), propget, helpcontext(0x00010174)]
	HRESULT __stdcall MemoryUsed(
		[out, retval]long* RHS);
	[id(0x00000594), propget, helpcontext(0x00010594)]
	HRESULT __stdcall OptimizeCache(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000594), propput, helpcontext(0x00010594)]
	HRESULT __stdcall OptimizeCache(
		[in]VARIANT_BOOL RHS);
	[id(0x000005c6), propget, helpcontext(0x000105c6)]
	HRESULT __stdcall RecordCount(
		[out, retval]long* RHS);
	[id(0x00000589), helpcontext(0x00010589)]
	HRESULT __stdcall Refresh();
	[id(0x000002b8), propget, helpcontext(0x000102b8)]
	HRESULT __stdcall RefreshDate(
		[out, retval]DATE* RHS);
	[id(0x000002b9), propget, helpcontext(0x000102b9)]
	HRESULT __stdcall RefreshName(
		[out, retval]BSTR* RHS);
	[id(0x000005c7), propget, helpcontext(0x000105c7)]
	HRESULT __stdcall RefreshOnFileOpen(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005c7), propput, helpcontext(0x000105c7)]
	HRESULT __stdcall RefreshOnFileOpen(
		[in]VARIANT_BOOL RHS);
	[id(0x000005c8), hidden, propget, helpcontext(0x000105c8)]
	HRESULT __stdcall Sql(
		[out, retval]VARIANT* RHS);
	[id(0x000005c8), hidden, propput, helpcontext(0x000105c8)]
	HRESULT __stdcall Sql(
		[in]VARIANT RHS);
	[id(0x000005c9), propget, helpcontext(0x000105c9)]
	HRESULT __stdcall SavePassword(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005c9), propput, helpcontext(0x000105c9)]
	HRESULT __stdcall SavePassword(
		[in]VARIANT_BOOL RHS);
	[id(0x000002ae), propget, helpcontext(0x000102ae)]
	HRESULT __stdcall SourceData(
		[out, retval]VARIANT* RHS);
	[id(0x000002ae), propput, helpcontext(0x000102ae)]
	HRESULT __stdcall SourceData(
		[in]VARIANT RHS);
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
	[id(0x00000727), propget, helpcontext(0x00010727)]
	HRESULT __stdcall QueryType(
		[out, retval]XlQueryType* RHS);
	[id(0x00000728), propget, helpcontext(0x00010728)]
	HRESULT __stdcall MaintainConnection(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000728), propput, helpcontext(0x00010728)]
	HRESULT __stdcall MaintainConnection(
		[in]VARIANT_BOOL RHS);
	[id(0x00000729), propget, helpcontext(0x00010729)]
	HRESULT __stdcall RefreshPeriod(
		[out, retval]long* RHS);
	[id(0x00000729), propput, helpcontext(0x00010729)]
	HRESULT __stdcall RefreshPeriod(
		[in]long RHS);
	[id(0x0000048d), propget, helpcontext(0x0001048d)]
	HRESULT __stdcall Recordset(
		[out, retval]IDispatch** RHS);
	[id(0x0000048d), propputref, helpcontext(0x0001048d)]
	HRESULT __stdcall Recordset(
		[in]IDispatch* RHS);
	[id(0x0000072a), helpcontext(0x0001072a)]
	HRESULT __stdcall ResetTimer();
	[id(0x0000072b), propget, helpcontext(0x0001072b)]
	HRESULT __stdcall LocalConnection(
		[out, retval]VARIANT* RHS);
	[id(0x0000072b), propput, helpcontext(0x0001072b)]
	HRESULT __stdcall LocalConnection(
		[in]VARIANT RHS);
	[id(0x0000072c), helpcontext(0x0001072c)]
	HRESULT __stdcall CreatePivotTable(
		[in]VARIANT TableDestination,
		[in, optional]VARIANT TableName,
		[in, optional]VARIANT ReadData,
		[in, optional]VARIANT DefaultVersion,
		[out, retval]PivotTable** RHS);
	[id(0x0000072d), propget, helpcontext(0x0001072d)]
	HRESULT __stdcall UseLocalConnection(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000072d), propput, helpcontext(0x0001072d)]
	HRESULT __stdcall UseLocalConnection(
		[in]VARIANT_BOOL RHS);
	[id(0x0000081a), propget, helpcontext(0x0001081a)]
	HRESULT __stdcall ADOConnection(
		[out, retval]IDispatch** RHS);
	[id(0x0000081b), propget, helpcontext(0x0001081b)]
	HRESULT __stdcall IsConnected(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000081c), helpcontext(0x0001081c)]
	HRESULT __stdcall MakeConnection();
	[id(0x0000081d), propget, helpcontext(0x0001081d)]
	HRESULT __stdcall OLAP(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000002ad), propget, helpcontext(0x000102ad)]
	HRESULT __stdcall SourceType(
		[out, retval]XlPivotTableSourceType* RHS);
	[id(0x0000081e), propget, helpcontext(0x0001081e)]
	HRESULT __stdcall MissingItemsLimit(
		[out, retval]XlPivotTableMissingItems* RHS);
	[id(0x0000081e), propput, helpcontext(0x0001081e)]
	HRESULT __stdcall MissingItemsLimit(
		[in]XlPivotTableMissingItems RHS);
	[id(0x0000081f), propget, helpcontext(0x0001081f)]
	HRESULT __stdcall SourceConnectionFile(
		[out, retval]BSTR* RHS);
	[id(0x0000081f), propput, helpcontext(0x0001081f)]
	HRESULT __stdcall SourceConnectionFile(
		[in]BSTR RHS);
	[id(0x00000820), propget, helpcontext(0x00010820)]
	HRESULT __stdcall SourceDataFile(
		[out, retval]BSTR* RHS);
	[id(0x00000821), propget, helpcontext(0x00010821)]
	HRESULT __stdcall RobustConnect(
		[out, retval]XlRobustConnect* RHS);
	[id(0x00000821), propput, helpcontext(0x00010821)]
	HRESULT __stdcall RobustConnect(
		[in]XlRobustConnect RHS);
	[id(0x00000822), helpcontext(0x00010822)]
	HRESULT __stdcall SaveAsODC(
		[in]BSTR ODCFileName,
		[in, optional]VARIANT Description,
		[in, optional]VARIANT Keywords);
	[id(0x000009f0), propget, helpcontext(0x000109f0)]
	HRESULT __stdcall WorkbookConnection(
		[out, retval]WorkbookConnection** RHS);
	[id(0x00000188), propget, helpcontext(0x00010188)]
	HRESULT __stdcall Version(
		[out, retval]XlPivotTableVersionList* RHS);
	[id(0x000009f1), propget, helpcontext(0x000109f1)]
	HRESULT __stdcall UpgradeOnRefresh(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009f1), propput, helpcontext(0x000109f1)]
	HRESULT __stdcall UpgradeOnRefresh(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelIPivotCache categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotCache methodsFor!

adoConnection
	"Answer the <IDispatch> value of the 'ADOConnection' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_ADOConnection: answer.
	^answer asObject
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

createPivotTable: tableDestination
	"Answer the <ExcelPivotTable> result of invoking the CreatePivotTable() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 createPivotTable: tableDestination
		 tableName: VARIANT unspecified
		 readData: VARIANT unspecified
		 defaultVersion: VARIANT unspecified!

createPivotTable: tableDestination tableName: tableName readData: readData defaultVersion: defaultVersion
	"Answer the <ExcelPivotTable> result of invoking the CreatePivotTable() method of the COM object."

	| answer |
	answer := ExcelPivotTable newPointer.
	self
		CreatePivotTable: tableDestination asVariant
		tableName: tableName asVariant
		readData: readData asVariant
		defaultVersion: defaultVersion asVariant
		rhs: answer.
	^answer asObject
!

CreatePivotTable: tableDestination tableName: tableName readData: readData defaultVersion: defaultVersion rhs: rhs
	"Private - Invoke the CreatePivotTable() method of the COM object.

		HRESULT __stdcall CreatePivotTable(
			[in]VARIANT TableDestination,
			[in, optional]VARIANT TableName,
			[in, optional]VARIANT ReadData,
			[in, optional]VARIANT DefaultVersion,
			[out, retval]PivotTable** RHS);"

	<virtual stdcall: hresult 47 variant variant variant variant ExcelPivotTable**>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
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

get_ADOConnection: rhs
	"Private - Get the value of the 'ADOConnection' property of the receiver.

		HRESULT __stdcall ADOConnection(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 50 IDispatch**>
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

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_CommandText: rhs
	"Private - Get the value of the 'CommandText' property of the receiver.

		HRESULT __stdcall CommandText(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 33 variant*>
	^self invalidCall!

get_CommandType: rhs
	"Private - Get the value of the 'CommandType' property of the receiver.

		HRESULT __stdcall CommandType(
			[out, retval]XlCmdType* RHS);"

	<virtual stdcall: hresult 35 sdword*>
	^self invalidCall!

get_Connection: rhs
	"Private - Get the value of the 'Connection' property of the receiver.

		HRESULT __stdcall Connection(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_EnableRefresh: rhs
	"Private - Get the value of the 'EnableRefresh' property of the receiver.

		HRESULT __stdcall EnableRefresh(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 15 varbool*>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_IsConnected: rhs
	"Private - Get the value of the 'IsConnected' property of the receiver.

		HRESULT __stdcall IsConnected(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 51 varbool*>
	^self invalidCall!

get_LocalConnection: rhs
	"Private - Get the value of the 'LocalConnection' property of the receiver.

		HRESULT __stdcall LocalConnection(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 45 variant*>
	^self invalidCall!

get_MaintainConnection: rhs
	"Private - Get the value of the 'MaintainConnection' property of the receiver.

		HRESULT __stdcall MaintainConnection(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 38 varbool*>
	^self invalidCall!

get_MemoryUsed: rhs
	"Private - Get the value of the 'MemoryUsed' property of the receiver.

		HRESULT __stdcall MemoryUsed(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_MissingItemsLimit: rhs
	"Private - Get the value of the 'MissingItemsLimit' property of the receiver.

		HRESULT __stdcall MissingItemsLimit(
			[out, retval]XlPivotTableMissingItems* RHS);"

	<virtual stdcall: hresult 55 sdword*>
	^self invalidCall!

get_OLAP: rhs
	"Private - Get the value of the 'OLAP' property of the receiver.

		HRESULT __stdcall OLAP(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 53 varbool*>
	^self invalidCall!

get_OptimizeCache: rhs
	"Private - Get the value of the 'OptimizeCache' property of the receiver.

		HRESULT __stdcall OptimizeCache(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_QueryType: rhs
	"Private - Get the value of the 'QueryType' property of the receiver.

		HRESULT __stdcall QueryType(
			[out, retval]XlQueryType* RHS);"

	<virtual stdcall: hresult 37 sdword*>
	^self invalidCall!

get_RecordCount: rhs
	"Private - Get the value of the 'RecordCount' property of the receiver.

		HRESULT __stdcall RecordCount(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

get_Recordset: rhs
	"Private - Get the value of the 'Recordset' property of the receiver.

		HRESULT __stdcall Recordset(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 42 IDispatch**>
	^self invalidCall!

get_RefreshDate: rhs
	"Private - Get the value of the 'RefreshDate' property of the receiver.

		HRESULT __stdcall RefreshDate(
			[out, retval]DATE* RHS);"

	<virtual stdcall: hresult 23 date*>
	^self invalidCall!

get_RefreshName: rhs
	"Private - Get the value of the 'RefreshName' property of the receiver.

		HRESULT __stdcall RefreshName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 24 bstr*>
	^self invalidCall!

get_RefreshOnFileOpen: rhs
	"Private - Get the value of the 'RefreshOnFileOpen' property of the receiver.

		HRESULT __stdcall RefreshOnFileOpen(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_RefreshPeriod: rhs
	"Private - Get the value of the 'RefreshPeriod' property of the receiver.

		HRESULT __stdcall RefreshPeriod(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 40 sdword*>
	^self invalidCall!

get_RobustConnect: rhs
	"Private - Get the value of the 'RobustConnect' property of the receiver.

		HRESULT __stdcall RobustConnect(
			[out, retval]XlRobustConnect* RHS);"

	<virtual stdcall: hresult 60 sdword*>
	^self invalidCall!

get_SavePassword: rhs
	"Private - Get the value of the 'SavePassword' property of the receiver.

		HRESULT __stdcall SavePassword(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 29 varbool*>
	^self invalidCall!

get_SourceConnectionFile: rhs
	"Private - Get the value of the 'SourceConnectionFile' property of the receiver.

		HRESULT __stdcall SourceConnectionFile(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 57 bstr*>
	^self invalidCall!

get_SourceData: rhs
	"Private - Get the value of the 'SourceData' property of the receiver.

		HRESULT __stdcall SourceData(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 31 variant*>
	^self invalidCall!

get_SourceDataFile: rhs
	"Private - Get the value of the 'SourceDataFile' property of the receiver.

		HRESULT __stdcall SourceDataFile(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 59 bstr*>
	^self invalidCall!

get_SourceType: rhs
	"Private - Get the value of the 'SourceType' property of the receiver.

		HRESULT __stdcall SourceType(
			[out, retval]XlPivotTableSourceType* RHS);"

	<virtual stdcall: hresult 54 sdword*>
	^self invalidCall!

get_Sql: rhs
	"Private - Get the value of the 'Sql' property of the receiver.

		HRESULT __stdcall Sql(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 27 variant*>
	^self invalidCall!

get_UpgradeOnRefresh: rhs
	"Private - Get the value of the 'UpgradeOnRefresh' property of the receiver.

		HRESULT __stdcall UpgradeOnRefresh(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 65 varbool*>
	^self invalidCall!

get_UseLocalConnection: rhs
	"Private - Get the value of the 'UseLocalConnection' property of the receiver.

		HRESULT __stdcall UseLocalConnection(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 48 varbool*>
	^self invalidCall!

get_Version: rhs
	"Private - Get the value of the 'Version' property of the receiver.

		HRESULT __stdcall Version(
			[out, retval]XlPivotTableVersionList* RHS);"

	<virtual stdcall: hresult 64 sdword*>
	^self invalidCall!

get_WorkbookConnection: rhs
	"Private - Get the value of the 'WorkbookConnection' property of the receiver.

		HRESULT __stdcall WorkbookConnection(
			[out, retval]WorkbookConnection** RHS);"

	<virtual stdcall: hresult 63 ExcelWorkbookConnection**>
	^self invalidCall!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

isConnected
	"Answer the <varbool> value of the 'IsConnected' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IsConnected: answer.
	^answer asObject
!

localConnection
	"Answer the <variant> value of the 'LocalConnection' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_LocalConnection: answer.
	^answer asObject
!

localConnection: rhs
	"Set the 'LocalConnection' property of the receiver to the <variant> value of the argument."

	self put_LocalConnection: rhs asVariant
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

makeConnection
	"Invoke the MakeConnection() method of the COM object."

	^self MakeConnection
!

MakeConnection
	"Private - Invoke the MakeConnection() method of the COM object.

		HRESULT __stdcall MakeConnection();"

	<virtual stdcall: hresult 52>
	^self invalidCall!

memoryUsed
	"Answer the <sdword> value of the 'MemoryUsed' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MemoryUsed: answer.
	^answer asObject
!

missingItemsLimit
	"Answer the <sdword> value of the 'MissingItemsLimit' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MissingItemsLimit: answer.
	^answer asObject
!

missingItemsLimit: rhs
	"Set the 'MissingItemsLimit' property of the receiver to the <sdword> value of the argument."

	self put_MissingItemsLimit: rhs
!

olap
	"Answer the <varbool> value of the 'OLAP' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_OLAP: answer.
	^answer asObject
!

optimizeCache
	"Answer the <varbool> value of the 'OptimizeCache' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_OptimizeCache: answer.
	^answer asObject
!

optimizeCache: rhs
	"Set the 'OptimizeCache' property of the receiver to the <varbool> value of the argument."

	self put_OptimizeCache: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_BackgroundQuery: rhs
	"Private - Set the value of the 'BackgroundQuery' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall BackgroundQuery(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

put_CommandText: rhs
	"Private - Set the value of the 'CommandText' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall CommandText(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 34 variant>
	^self invalidCall!

put_CommandType: rhs
	"Private - Set the value of the 'CommandType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CommandType(
			[in]XlCmdType RHS);"

	<virtual stdcall: hresult 36 sdword>
	^self invalidCall!

put_Connection: rhs
	"Private - Set the value of the 'Connection' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Connection(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 14 variant>
	^self invalidCall!

put_EnableRefresh: rhs
	"Private - Set the value of the 'EnableRefresh' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableRefresh(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 16 varbool>
	^self invalidCall!

put_LocalConnection: rhs
	"Private - Set the value of the 'LocalConnection' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall LocalConnection(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 46 variant>
	^self invalidCall!

put_MaintainConnection: rhs
	"Private - Set the value of the 'MaintainConnection' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MaintainConnection(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 39 varbool>
	^self invalidCall!

put_MissingItemsLimit: rhs
	"Private - Set the value of the 'MissingItemsLimit' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MissingItemsLimit(
			[in]XlPivotTableMissingItems RHS);"

	<virtual stdcall: hresult 56 sdword>
	^self invalidCall!

put_OptimizeCache: rhs
	"Private - Set the value of the 'OptimizeCache' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall OptimizeCache(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 20 varbool>
	^self invalidCall!

put_RefreshOnFileOpen: rhs
	"Private - Set the value of the 'RefreshOnFileOpen' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RefreshOnFileOpen(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_RefreshPeriod: rhs
	"Private - Set the value of the 'RefreshPeriod' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall RefreshPeriod(
			[in]long RHS);"

	<virtual stdcall: hresult 41 sdword>
	^self invalidCall!

put_RobustConnect: rhs
	"Private - Set the value of the 'RobustConnect' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall RobustConnect(
			[in]XlRobustConnect RHS);"

	<virtual stdcall: hresult 61 sdword>
	^self invalidCall!

put_SavePassword: rhs
	"Private - Set the value of the 'SavePassword' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SavePassword(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 30 varbool>
	^self invalidCall!

put_SourceConnectionFile: rhs
	"Private - Set the value of the 'SourceConnectionFile' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall SourceConnectionFile(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 58 bstr>
	^self invalidCall!

put_SourceData: rhs
	"Private - Set the value of the 'SourceData' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall SourceData(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 32 variant>
	^self invalidCall!

put_Sql: rhs
	"Private - Set the value of the 'Sql' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Sql(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 28 variant>
	^self invalidCall!

put_UpgradeOnRefresh: rhs
	"Private - Set the value of the 'UpgradeOnRefresh' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall UpgradeOnRefresh(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 66 varbool>
	^self invalidCall!

put_UseLocalConnection: rhs
	"Private - Set the value of the 'UseLocalConnection' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall UseLocalConnection(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 49 varbool>
	^self invalidCall!

putref_Recordset: rhs
	"Private - Set the value of the 'Recordset' property of the object wrapped by the 
	 receiver to the <IDispatch*> argument, rhs.

		HRESULT __stdcall Recordset(
			[in]IDispatch* RHS);"

	<virtual stdcall: hresult 43 IDispatch*>
	^self invalidCall!

queryType
	"Answer the <sdword> value of the 'QueryType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_QueryType: answer.
	^answer asObject
!

recordCount
	"Answer the <sdword> value of the 'RecordCount' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_RecordCount: answer.
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
	"Invoke the Refresh() method of the COM object."

	^self Refresh
!

Refresh
	"Private - Invoke the Refresh() method of the COM object.

		HRESULT __stdcall Refresh();"

	<virtual stdcall: hresult 22>
	^self invalidCall!

refreshDate
	"Answer the <date> value of the 'RefreshDate' property of the receiver."

	| answer |
	answer := (DATE new).
	self get_RefreshDate: answer.
	^answer asObject
!

refreshName
	"Answer the <bstr> value of the 'RefreshName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_RefreshName: answer.
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

resetTimer
	"Invoke the ResetTimer() method of the COM object."

	^self ResetTimer
!

ResetTimer
	"Private - Invoke the ResetTimer() method of the COM object.

		HRESULT __stdcall ResetTimer();"

	<virtual stdcall: hresult 44>
	^self invalidCall!

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

	<virtual stdcall: hresult 62 bstr variant variant>
	^self invalidCall!

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

sourceData
	"Answer the <variant> value of the 'SourceData' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_SourceData: answer.
	^answer asObject
!

sourceData: rhs
	"Set the 'SourceData' property of the receiver to the <variant> value of the argument."

	self put_SourceData: rhs asVariant
!

sourceDataFile
	"Answer the <bstr> value of the 'SourceDataFile' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SourceDataFile: answer.
	^answer asObject
!

sourceType
	"Answer the <sdword> value of the 'SourceType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SourceType: answer.
	^answer asObject
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

upgradeOnRefresh
	"Answer the <varbool> value of the 'UpgradeOnRefresh' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_UpgradeOnRefresh: answer.
	^answer asObject
!

upgradeOnRefresh: rhs
	"Set the 'UpgradeOnRefresh' property of the receiver to the <varbool> value of the argument."

	self put_UpgradeOnRefresh: rhs
!

useLocalConnection
	"Answer the <varbool> value of the 'UseLocalConnection' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_UseLocalConnection: answer.
	^answer asObject
!

useLocalConnection: rhs
	"Set the 'UseLocalConnection' property of the receiver to the <varbool> value of the argument."

	self put_UseLocalConnection: rhs
!

version
	"Answer the <sdword> value of the 'Version' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Version: answer.
	^answer asObject
!

workbookConnection
	"Answer the <ExcelWorkbookConnection> value of the 'WorkbookConnection' property of the receiver."

	| answer |
	answer := ExcelWorkbookConnection newPointer.
	self get_WorkbookConnection: answer.
	^answer asObject
! !
!ExcelIPivotCache categoriesFor: #adoConnection!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #backgroundQuery!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #backgroundQuery:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #commandText!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #commandText:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #commandType!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #commandType:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #connection!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #connection:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #createPivotTable:!**auto generated**!methods!public! !
!ExcelIPivotCache categoriesFor: #createPivotTable:tableName:readData:defaultVersion:!**auto generated**!methods!public! !
!ExcelIPivotCache categoriesFor: #CreatePivotTable:tableName:readData:defaultVersion:rhs:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #enableRefresh!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #enableRefresh:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #get_ADOConnection:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_BackgroundQuery:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_CommandText:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_CommandType:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_Connection:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_EnableRefresh:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_IsConnected:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_LocalConnection:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_MaintainConnection:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_MemoryUsed:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_MissingItemsLimit:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_OLAP:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_OptimizeCache:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_QueryType:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_RecordCount:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_Recordset:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_RefreshDate:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_RefreshName:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_RefreshOnFileOpen:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_RefreshPeriod:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_RobustConnect:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_SavePassword:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_SourceConnectionFile:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_SourceData:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_SourceDataFile:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_SourceType:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_Sql:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_UpgradeOnRefresh:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_UseLocalConnection:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_Version:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #get_WorkbookConnection:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #isConnected!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #localConnection!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #localConnection:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #maintainConnection!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #maintainConnection:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #makeConnection!**auto generated**!methods!public! !
!ExcelIPivotCache categoriesFor: #MakeConnection!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #memoryUsed!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #missingItemsLimit!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #missingItemsLimit:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #olap!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #optimizeCache!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #optimizeCache:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #put_BackgroundQuery:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_CommandText:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_CommandType:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_Connection:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_EnableRefresh:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_LocalConnection:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_MaintainConnection:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_MissingItemsLimit:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_OptimizeCache:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_RefreshOnFileOpen:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_RefreshPeriod:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_RobustConnect:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_SavePassword:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_SourceConnectionFile:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_SourceData:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_Sql:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_UpgradeOnRefresh:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #put_UseLocalConnection:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #putref_Recordset:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #queryType!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #recordCount!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #recordset!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #refresh!**auto generated**!methods!public! !
!ExcelIPivotCache categoriesFor: #Refresh!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #refreshDate!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #refreshName!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #refreshOnFileOpen!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #refreshOnFileOpen:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #refreshPeriod!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #refreshPeriod:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #resetTimer!**auto generated**!methods!public! !
!ExcelIPivotCache categoriesFor: #ResetTimer!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #robustConnect!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #robustConnect:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #saveAsODC:!**auto generated**!methods!public! !
!ExcelIPivotCache categoriesFor: #saveAsODC:description:keywords:!**auto generated**!methods!public! !
!ExcelIPivotCache categoriesFor: #SaveAsODC:description:keywords:!**auto generated**!COM Interfaces-IPivotCache!private! !
!ExcelIPivotCache categoriesFor: #savePassword!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #savePassword:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #setRecordset:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #sourceConnectionFile!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #sourceConnectionFile:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #sourceData!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #sourceData:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #sourceDataFile!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #sourceType!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #sql!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #sql:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #upgradeOnRefresh!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #upgradeOnRefresh:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #useLocalConnection!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #useLocalConnection:!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #version!**auto generated**!properties!public! !
!ExcelIPivotCache categoriesFor: #workbookConnection!**auto generated**!properties!public! !

!ExcelIPivotCache class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotCache'
		ExcelIPivotCache defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_BackgroundQuery:
			argumentTypes: 'varbool*';
		defineFunction: #put_BackgroundQuery:
			argumentTypes: 'varbool';
		defineFunction: #get_Connection:
			argumentTypes: 'variant*';
		defineFunction: #put_Connection:
			argumentTypes: 'variant';
		defineFunction: #get_EnableRefresh:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableRefresh:
			argumentTypes: 'varbool';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_MemoryUsed:
			argumentTypes: 'sdword*';
		defineFunction: #get_OptimizeCache:
			argumentTypes: 'varbool*';
		defineFunction: #put_OptimizeCache:
			argumentTypes: 'varbool';
		defineFunction: #get_RecordCount:
			argumentTypes: 'sdword*';
		defineFunction: #Refresh;
		defineFunction: #get_RefreshDate:
			argumentTypes: 'date*';
		defineFunction: #get_RefreshName:
			argumentTypes: 'bstr*';
		defineFunction: #get_RefreshOnFileOpen:
			argumentTypes: 'varbool*';
		defineFunction: #put_RefreshOnFileOpen:
			argumentTypes: 'varbool';
		defineFunction: #get_Sql:
			argumentTypes: 'variant*';
		defineFunction: #put_Sql:
			argumentTypes: 'variant';
		defineFunction: #get_SavePassword:
			argumentTypes: 'varbool*';
		defineFunction: #put_SavePassword:
			argumentTypes: 'varbool';
		defineFunction: #get_SourceData:
			argumentTypes: 'variant*';
		defineFunction: #put_SourceData:
			argumentTypes: 'variant';
		defineFunction: #get_CommandText:
			argumentTypes: 'variant*';
		defineFunction: #put_CommandText:
			argumentTypes: 'variant';
		defineFunction: #get_CommandType:
			argumentTypes: 'sdword*';
		defineFunction: #put_CommandType:
			argumentTypes: 'sdword';
		defineFunction: #get_QueryType:
			argumentTypes: 'sdword*';
		defineFunction: #get_MaintainConnection:
			argumentTypes: 'varbool*';
		defineFunction: #put_MaintainConnection:
			argumentTypes: 'varbool';
		defineFunction: #get_RefreshPeriod:
			argumentTypes: 'sdword*';
		defineFunction: #put_RefreshPeriod:
			argumentTypes: 'sdword';
		defineFunction: #get_Recordset:
			argumentTypes: 'IDispatch**';
		defineFunction: #putref_Recordset:
			argumentTypes: 'IDispatch*';
		defineFunction: #ResetTimer;
		defineFunction: #get_LocalConnection:
			argumentTypes: 'variant*';
		defineFunction: #put_LocalConnection:
			argumentTypes: 'variant';
		defineFunction: #CreatePivotTable:tableName:readData:defaultVersion:rhs:
			argumentTypes: 'variant variant variant variant ExcelPivotTable**';
		defineFunction: #get_UseLocalConnection:
			argumentTypes: 'varbool*';
		defineFunction: #put_UseLocalConnection:
			argumentTypes: 'varbool';
		defineFunction: #get_ADOConnection:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_IsConnected:
			argumentTypes: 'varbool*';
		defineFunction: #MakeConnection;
		defineFunction: #get_OLAP:
			argumentTypes: 'varbool*';
		defineFunction: #get_SourceType:
			argumentTypes: 'sdword*';
		defineFunction: #get_MissingItemsLimit:
			argumentTypes: 'sdword*';
		defineFunction: #put_MissingItemsLimit:
			argumentTypes: 'sdword';
		defineFunction: #get_SourceConnectionFile:
			argumentTypes: 'bstr*';
		defineFunction: #put_SourceConnectionFile:
			argumentTypes: 'bstr';
		defineFunction: #get_SourceDataFile:
			argumentTypes: 'bstr*';
		defineFunction: #get_RobustConnect:
			argumentTypes: 'sdword*';
		defineFunction: #put_RobustConnect:
			argumentTypes: 'sdword';
		defineFunction: #SaveAsODC:description:keywords:
			argumentTypes: 'bstr variant variant';
		defineFunction: #get_WorkbookConnection:
			argumentTypes: 'ExcelWorkbookConnection**';
		defineFunction: #get_Version:
			argumentTypes: 'sdword*';
		defineFunction: #get_UpgradeOnRefresh:
			argumentTypes: 'varbool*';
		defineFunction: #put_UpgradeOnRefresh:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotCache initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotCache class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotCache class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

