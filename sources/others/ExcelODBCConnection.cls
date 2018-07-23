"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelODBCConnection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelODBCConnection guid: (IID fromString: '{0002448E-0000-0000-C000-000000000046}')!
ExcelODBCConnection comment: '<ExcelODBCConnection> is a wrapper class generated for the dispatch interface ''Excel.ODBCConnection'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002448E-0000-0000-C000-000000000046), 
	helpcontext(0x00020124)
]
dispinterface ODBCConnection {
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
[id(0x00000635), helpcontext(0x00010635)]
		void CancelRefresh();
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
[id(0x00000589), helpcontext(0x00010589)]
		void Refresh();
[id(0x000002b8), propget, helpcontext(0x000102b8)]
		DATE RefreshDate();
[id(0x00000633), propget, helpcontext(0x00010633)]
		VARIANT_BOOL Refreshing();
[id(0x000005c7), propget, helpcontext(0x000105c7)]
		VARIANT_BOOL RefreshOnFileOpen();
[id(0x000005c7), propput, helpcontext(0x000105c7)]
		void RefreshOnFileOpen(
			[in]VARIANT_BOOL arg1);
[id(0x00000729), propget, helpcontext(0x00010729)]
		long RefreshPeriod();
[id(0x00000729), propput, helpcontext(0x00010729)]
		void RefreshPeriod(
			[in]long arg1);
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
[id(0x000005c9), propget, helpcontext(0x000105c9)]
		VARIANT_BOOL SavePassword();
[id(0x000005c9), propput, helpcontext(0x000105c9)]
		void SavePassword(
			[in]VARIANT_BOOL arg1);
[id(0x0000081f), propget, helpcontext(0x0001081f)]
		BSTR SourceConnectionFile();
[id(0x0000081f), propput, helpcontext(0x0001081f)]
		void SourceConnectionFile(
			[in]BSTR arg1);
[id(0x000002ae), propget, helpcontext(0x000102ae)]
		VARIANT SourceData();
[id(0x000002ae), propput, helpcontext(0x000102ae)]
		void SourceData(
			[in]VARIANT arg1);
[id(0x00000820), propget, helpcontext(0x00010820)]
		BSTR SourceDataFile();
[id(0x00000820), propput, helpcontext(0x00010820)]
		void SourceDataFile(
			[in]BSTR arg1);
[id(0x00000a90), propget, helpcontext(0x00010a90)]
		XlCredentialsMethod ServerCredentialsMethod();
[id(0x00000a90), propput, helpcontext(0x00010a90)]
		void ServerCredentialsMethod(
			[in]XlCredentialsMethod arg1);
[id(0x00000a91), propget, helpcontext(0x00010a91)]
		BSTR ServerSSOApplicationID();
[id(0x00000a91), propput, helpcontext(0x00010a91)]
		void ServerSSOApplicationID(
			[in]BSTR arg1);
[id(0x00000a92), propget, helpcontext(0x00010a92)]
		VARIANT_BOOL AlwaysUseConnectionFile();
[id(0x00000a92), propput, helpcontext(0x00010a92)]
		void AlwaysUseConnectionFile(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelODBCConnection categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelODBCConnection methodsFor!

alwaysUseConnectionFile
	"Answer the <varbool> value of the 'AlwaysUseConnectionFile' property of the receiver.
		VARIANT_BOOL AlwaysUseConnectionFile"

	^(self getPropertyId: 2706)
!

alwaysUseConnectionFile: arg1
	"Set the 'AlwaysUseConnectionFile' property of the receiver to the <varbool> value of the argument.
		void AlwaysUseConnectionFile"

	self setPropertyId: 2706 value: arg1
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
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

serverCredentialsMethod
	"Answer the <sdword> value of the 'ServerCredentialsMethod' property of the receiver.
		XlCredentialsMethod ServerCredentialsMethod"

	^(self getPropertyId: 2704)
!

serverCredentialsMethod: arg1
	"Set the 'ServerCredentialsMethod' property of the receiver to the <sdword> value of the argument.
		void ServerCredentialsMethod"

	self setPropertyId: 2704 value: arg1
!

serverSSOApplicationID
	"Answer the <bstr> value of the 'ServerSSOApplicationID' property of the receiver.
		BSTR ServerSSOApplicationID"

	^(self getPropertyId: 2705)
!

serverSSOApplicationID: arg1
	"Set the 'ServerSSOApplicationID' property of the receiver to the <bstr> value of the argument.
		void ServerSSOApplicationID"

	self setPropertyId: 2705 value: arg1
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

sourceDataFile: arg1
	"Set the 'SourceDataFile' property of the receiver to the <bstr> value of the argument.
		void SourceDataFile"

	self setPropertyId: 2080 value: arg1
! !
!ExcelODBCConnection categoriesFor: #alwaysUseConnectionFile!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #alwaysUseConnectionFile:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #application!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #backgroundQuery!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #backgroundQuery:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #cancelRefresh!**auto generated**!methods!public! !
!ExcelODBCConnection categoriesFor: #commandText!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #commandText:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #commandType!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #commandType:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #connection!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #connection:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #enableRefresh!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #enableRefresh:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #refresh!**auto generated**!methods!public! !
!ExcelODBCConnection categoriesFor: #refreshDate!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #refreshing!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #refreshOnFileOpen!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #refreshOnFileOpen:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #refreshPeriod!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #refreshPeriod:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #robustConnect!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #robustConnect:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #saveAsODC:!**auto generated**!methods!public! !
!ExcelODBCConnection categoriesFor: #saveAsODC:description:keywords:!**auto generated**!methods!public! !
!ExcelODBCConnection categoriesFor: #savePassword!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #savePassword:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #serverCredentialsMethod!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #serverCredentialsMethod:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #serverSSOApplicationID!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #serverSSOApplicationID:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #sourceConnectionFile!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #sourceConnectionFile:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #sourceData!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #sourceData:!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #sourceDataFile!**auto generated**!properties!public! !
!ExcelODBCConnection categoriesFor: #sourceDataFile:!**auto generated**!properties!public! !

!ExcelODBCConnection class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelODBCConnection initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelODBCConnection class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

