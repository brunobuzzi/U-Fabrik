"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotCache
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotCache guid: (IID fromString: '{0002441C-0000-0000-C000-000000000046}')!
ExcelPivotCache comment: '<ExcelPivotCache> is a wrapper class generated for the dispatch interface ''Excel.PivotCache'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002441C-0000-0000-C000-000000000046), 
	helpcontext(0x000200b2)
]
dispinterface PivotCache {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000593), propget, helpcontext(0x00010593)]
		VARIANT_BOOL BackgroundQuery();
[id(0x00000593), propput, helpcontext(0x00010593)]
		void BackgroundQuery(
			[in]VARIANT_BOOL arg1);
[id(0x00000598), propget, helpcontext(0x00010598)]
		VARIANT Connection();
[id(0x00000598), propput, helpcontext(0x00010598)]
		void Connection(
			[in]VARIANT arg1);
[id(0x000005c5), propget, helpcontext(0x000105c5)]
		VARIANT_BOOL EnableRefresh();
[id(0x000005c5), propput, helpcontext(0x000105c5)]
		void EnableRefresh(
			[in]VARIANT_BOOL arg1);
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x00000174), propget, helpcontext(0x00010174)]
		long MemoryUsed();
[id(0x00000594), propget, helpcontext(0x00010594)]
		VARIANT_BOOL OptimizeCache();
[id(0x00000594), propput, helpcontext(0x00010594)]
		void OptimizeCache(
			[in]VARIANT_BOOL arg1);
[id(0x000005c6), propget, helpcontext(0x000105c6)]
		long RecordCount();
[id(0x00000589), helpcontext(0x00010589)]
		void Refresh();
[id(0x000002b8), propget, helpcontext(0x000102b8)]
		DATE RefreshDate();
[id(0x000002b9), propget, helpcontext(0x000102b9)]
		BSTR RefreshName();
[id(0x000005c7), propget, helpcontext(0x000105c7)]
		VARIANT_BOOL RefreshOnFileOpen();
[id(0x000005c7), propput, helpcontext(0x000105c7)]
		void RefreshOnFileOpen(
			[in]VARIANT_BOOL arg1);
[id(0x000005c8), hidden, propget, helpcontext(0x000105c8)]
		VARIANT Sql();
[id(0x000005c8), hidden, propput, helpcontext(0x000105c8)]
		void Sql(
			[in]VARIANT arg1);
[id(0x000005c9), propget, helpcontext(0x000105c9)]
		VARIANT_BOOL SavePassword();
[id(0x000005c9), propput, helpcontext(0x000105c9)]
		void SavePassword(
			[in]VARIANT_BOOL arg1);
[id(0x000002ae), propget, helpcontext(0x000102ae)]
		VARIANT SourceData();
[id(0x000002ae), propput, helpcontext(0x000102ae)]
		void SourceData(
			[in]VARIANT arg1);
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
[id(0x00000727), propget, helpcontext(0x00010727)]
		XlQueryType QueryType();
[id(0x00000728), propget, helpcontext(0x00010728)]
		VARIANT_BOOL MaintainConnection();
[id(0x00000728), propput, helpcontext(0x00010728)]
		void MaintainConnection(
			[in]VARIANT_BOOL arg1);
[id(0x00000729), propget, helpcontext(0x00010729)]
		long RefreshPeriod();
[id(0x00000729), propput, helpcontext(0x00010729)]
		void RefreshPeriod(
			[in]long arg1);
[id(0x0000048d), propget, helpcontext(0x0001048d)]
		IDispatch* Recordset();
[id(0x0000048d), propputref, helpcontext(0x0001048d)]
		void Recordset(
			[in]IDispatch* arg1);
[id(0x0000072a), helpcontext(0x0001072a)]
		void ResetTimer();
[id(0x0000072b), propget, helpcontext(0x0001072b)]
		VARIANT LocalConnection();
[id(0x0000072b), propput, helpcontext(0x0001072b)]
		void LocalConnection(
			[in]VARIANT arg1);
[id(0x0000072c), helpcontext(0x0001072c)]
		PivotTable* CreatePivotTable(
			[in]VARIANT TableDestination,
			[in, optional]VARIANT TableName,
			[in, optional]VARIANT ReadData,
			[in, optional]VARIANT DefaultVersion);
[id(0x0000072d), propget, helpcontext(0x0001072d)]
		VARIANT_BOOL UseLocalConnection();
[id(0x0000072d), propput, helpcontext(0x0001072d)]
		void UseLocalConnection(
			[in]VARIANT_BOOL arg1);
[id(0x0000081a), propget, helpcontext(0x0001081a)]
		IDispatch* ADOConnection();
[id(0x0000081b), propget, helpcontext(0x0001081b)]
		VARIANT_BOOL IsConnected();
[id(0x0000081c), helpcontext(0x0001081c)]
		void MakeConnection();
[id(0x0000081d), propget, helpcontext(0x0001081d)]
		VARIANT_BOOL OLAP();
[id(0x000002ad), propget, helpcontext(0x000102ad)]
		XlPivotTableSourceType SourceType();
[id(0x0000081e), propget, helpcontext(0x0001081e)]
		XlPivotTableMissingItems MissingItemsLimit();
[id(0x0000081e), propput, helpcontext(0x0001081e)]
		void MissingItemsLimit(
			[in]XlPivotTableMissingItems arg1);
[id(0x0000081f), propget, helpcontext(0x0001081f)]
		BSTR SourceConnectionFile();
[id(0x0000081f), propput, helpcontext(0x0001081f)]
		void SourceConnectionFile(
			[in]BSTR arg1);
[id(0x00000820), propget, helpcontext(0x00010820)]
		BSTR SourceDataFile();
[id(0x00000821), propget, helpcontext(0x00010821)]
		XlRobustConnect RobustConnect();
[id(0x00000821), propput, helpcontext(0x00010821)]
		void RobustConnect(
			[in]XlRobustConnect arg1);
[id(0x00000822), helpcontext(0x00010822)]
		void SaveAsODC(
			[in]BSTR ODCFileName,
			[in, optional]VARIANT Description,
			[in, optional]VARIANT Keywords);
[id(0x000009f0), propget, helpcontext(0x000109f0)]
		WorkbookConnection* WorkbookConnection();
[id(0x00000188), propget, helpcontext(0x00010188)]
		XlPivotTableVersionList Version();
[id(0x000009f1), propget, helpcontext(0x000109f1)]
		VARIANT_BOOL UpgradeOnRefresh();
[id(0x000009f1), propput, helpcontext(0x000109f1)]
		void UpgradeOnRefresh(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelPivotCache categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotCache methodsFor!

adoConnection
	"Answer the <IDispatch> value of the 'ADOConnection' property of the receiver.
		IDispatch* ADOConnection"

	^IDispatch attachInterface: (self getPropertyId: 2074)
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

	^ExcelPivotTable attachInterface: (self invokeId: 1836 withArguments:
			((Array new: 4)
				basicAt: 1 put: tableDestination;
				basicAt: 2 put: tableName;
				basicAt: 3 put: readData;
				basicAt: 4 put: defaultVersion;
				yourself))
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
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

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

isConnected
	"Answer the <varbool> value of the 'IsConnected' property of the receiver.
		VARIANT_BOOL IsConnected"

	^(self getPropertyId: 2075)
!

localConnection
	"Answer the <variant> value of the 'LocalConnection' property of the receiver.
		VARIANT LocalConnection"

	^(self getPropertyId: 1835)
!

localConnection: arg1
	"Set the 'LocalConnection' property of the receiver to the <variant> value of the argument.
		void LocalConnection"

	self setPropertyId: 1835 value: arg1
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

makeConnection
	"Invoke the MakeConnection() method of the COM object."

	(self invokeId: 2076)
!

memoryUsed
	"Answer the <sdword> value of the 'MemoryUsed' property of the receiver.
		long MemoryUsed"

	^(self getPropertyId: 372)
!

missingItemsLimit
	"Answer the <sdword> value of the 'MissingItemsLimit' property of the receiver.
		XlPivotTableMissingItems MissingItemsLimit"

	^(self getPropertyId: 2078)
!

missingItemsLimit: arg1
	"Set the 'MissingItemsLimit' property of the receiver to the <sdword> value of the argument.
		void MissingItemsLimit"

	self setPropertyId: 2078 value: arg1
!

olap
	"Answer the <varbool> value of the 'OLAP' property of the receiver.
		VARIANT_BOOL OLAP"

	^(self getPropertyId: 2077)
!

optimizeCache
	"Answer the <varbool> value of the 'OptimizeCache' property of the receiver.
		VARIANT_BOOL OptimizeCache"

	^(self getPropertyId: 1428)
!

optimizeCache: arg1
	"Set the 'OptimizeCache' property of the receiver to the <varbool> value of the argument.
		void OptimizeCache"

	self setPropertyId: 1428 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

queryType
	"Answer the <sdword> value of the 'QueryType' property of the receiver.
		XlQueryType QueryType"

	^(self getPropertyId: 1831)
!

recordCount
	"Answer the <sdword> value of the 'RecordCount' property of the receiver.
		long RecordCount"

	^(self getPropertyId: 1478)
!

recordset
	"Answer the <IDispatch> value of the 'Recordset' property of the receiver.
		IDispatch* Recordset"

	^IDispatch attachInterface: (self getPropertyId: 1165)
!

refresh
	"Invoke the Refresh() method of the COM object."

	(self invokeId: 1417)
!

refreshDate
	"Answer the <date> value of the 'RefreshDate' property of the receiver.
		DATE RefreshDate"

	^(self getPropertyId: 696)
!

refreshName
	"Answer the <bstr> value of the 'RefreshName' property of the receiver.
		BSTR RefreshName"

	^(self getPropertyId: 697)
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

resetTimer
	"Invoke the ResetTimer() method of the COM object."

	(self invokeId: 1834)
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

sourceData
	"Answer the <variant> value of the 'SourceData' property of the receiver.
		VARIANT SourceData"

	^(self getPropertyId: 686)
!

sourceData: arg1
	"Set the 'SourceData' property of the receiver to the <variant> value of the argument.
		void SourceData"

	self setPropertyId: 686 value: arg1
!

sourceDataFile
	"Answer the <bstr> value of the 'SourceDataFile' property of the receiver.
		BSTR SourceDataFile"

	^(self getPropertyId: 2080)
!

sourceType
	"Answer the <sdword> value of the 'SourceType' property of the receiver.
		XlPivotTableSourceType SourceType"

	^(self getPropertyId: 685)
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

upgradeOnRefresh
	"Answer the <varbool> value of the 'UpgradeOnRefresh' property of the receiver.
		VARIANT_BOOL UpgradeOnRefresh"

	^(self getPropertyId: 2545)
!

upgradeOnRefresh: arg1
	"Set the 'UpgradeOnRefresh' property of the receiver to the <varbool> value of the argument.
		void UpgradeOnRefresh"

	self setPropertyId: 2545 value: arg1
!

useLocalConnection
	"Answer the <varbool> value of the 'UseLocalConnection' property of the receiver.
		VARIANT_BOOL UseLocalConnection"

	^(self getPropertyId: 1837)
!

useLocalConnection: arg1
	"Set the 'UseLocalConnection' property of the receiver to the <varbool> value of the argument.
		void UseLocalConnection"

	self setPropertyId: 1837 value: arg1
!

version
	"Answer the <sdword> value of the 'Version' property of the receiver.
		XlPivotTableVersionList Version"

	^(self getPropertyId: 392)
!

workbookConnection
	"Answer the <ExcelWorkbookConnection> value of the 'WorkbookConnection' property of the receiver.
		WorkbookConnection* WorkbookConnection"

	^ExcelWorkbookConnection attachInterface: (self getPropertyId: 2544)
! !
!ExcelPivotCache categoriesFor: #adoConnection!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #backgroundQuery!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #backgroundQuery:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #commandText!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #commandText:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #commandType!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #commandType:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #connection!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #connection:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #createPivotTable:!**auto generated**!methods!public! !
!ExcelPivotCache categoriesFor: #createPivotTable:tableName:readData:defaultVersion:!**auto generated**!methods!public! !
!ExcelPivotCache categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #enableRefresh!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #enableRefresh:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #index!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #isConnected!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #localConnection!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #localConnection:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #maintainConnection!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #maintainConnection:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #makeConnection!**auto generated**!methods!public! !
!ExcelPivotCache categoriesFor: #memoryUsed!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #missingItemsLimit!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #missingItemsLimit:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #olap!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #optimizeCache!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #optimizeCache:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #queryType!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #recordCount!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #recordset!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #refresh!**auto generated**!methods!public! !
!ExcelPivotCache categoriesFor: #refreshDate!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #refreshName!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #refreshOnFileOpen!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #refreshOnFileOpen:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #refreshPeriod!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #refreshPeriod:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #resetTimer!**auto generated**!methods!public! !
!ExcelPivotCache categoriesFor: #robustConnect!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #robustConnect:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #saveAsODC:!**auto generated**!methods!public! !
!ExcelPivotCache categoriesFor: #saveAsODC:description:keywords:!**auto generated**!methods!public! !
!ExcelPivotCache categoriesFor: #savePassword!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #savePassword:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #setRecordset:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #sourceConnectionFile!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #sourceConnectionFile:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #sourceData!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #sourceData:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #sourceDataFile!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #sourceType!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #sql!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #sql:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #upgradeOnRefresh!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #upgradeOnRefresh:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #useLocalConnection!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #useLocalConnection:!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #version!**auto generated**!properties!public! !
!ExcelPivotCache categoriesFor: #workbookConnection!**auto generated**!properties!public! !

!ExcelPivotCache class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotCache initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotCache class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

