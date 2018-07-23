"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIOLEDBConnection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIOLEDBConnection guid: (IID fromString: '{0002448D-0001-0000-C000-000000000046}')!
ExcelIOLEDBConnection comment: '<ExcelIOLEDBConnection> is a wrapper class for the COM interface ''Excel.IOLEDBConnection'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002448D-0001-0000-C000-000000000046), 
	helpcontext(0x00020123), 
	hidden
]
interface IOLEDBConnection : IDispatch
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
	[id(0x0000081a), propget, helpcontext(0x0001081a)]
	HRESULT __stdcall ADOConnection(
		[out, retval]IDispatch** RHS);
	[id(0x00000593), propget, helpcontext(0x00010593)]
	HRESULT __stdcall BackgroundQuery(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000593), propput, helpcontext(0x00010593)]
	HRESULT __stdcall BackgroundQuery(
		[in]VARIANT_BOOL RHS);
	[id(0x00000635), helpcontext(0x00010635)]
	HRESULT __stdcall CancelRefresh();
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
	[id(0x0000072b), propget, helpcontext(0x0001072b)]
	HRESULT __stdcall LocalConnection(
		[out, retval]VARIANT* RHS);
	[id(0x0000072b), propput, helpcontext(0x0001072b)]
	HRESULT __stdcall LocalConnection(
		[in]VARIANT RHS);
	[id(0x00000728), propget, helpcontext(0x00010728)]
	HRESULT __stdcall MaintainConnection(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000728), propput, helpcontext(0x00010728)]
	HRESULT __stdcall MaintainConnection(
		[in]VARIANT_BOOL RHS);
	[id(0x0000081c), helpcontext(0x0001081c)]
	HRESULT __stdcall MakeConnection();
	[id(0x00000589), helpcontext(0x00010589)]
	HRESULT __stdcall Refresh();
	[id(0x000002b8), propget, helpcontext(0x000102b8)]
	HRESULT __stdcall RefreshDate(
		[out, retval]DATE* RHS);
	[id(0x00000633), propget, helpcontext(0x00010633)]
	HRESULT __stdcall Refreshing(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005c7), propget, helpcontext(0x000105c7)]
	HRESULT __stdcall RefreshOnFileOpen(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005c7), propput, helpcontext(0x000105c7)]
	HRESULT __stdcall RefreshOnFileOpen(
		[in]VARIANT_BOOL RHS);
	[id(0x00000729), propget, helpcontext(0x00010729)]
	HRESULT __stdcall RefreshPeriod(
		[out, retval]long* RHS);
	[id(0x00000729), propput, helpcontext(0x00010729)]
	HRESULT __stdcall RefreshPeriod(
		[in]long RHS);
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
	[id(0x000005c9), propget, helpcontext(0x000105c9)]
	HRESULT __stdcall SavePassword(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005c9), propput, helpcontext(0x000105c9)]
	HRESULT __stdcall SavePassword(
		[in]VARIANT_BOOL RHS);
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
	[id(0x0000081d), propget, helpcontext(0x0001081d)]
	HRESULT __stdcall OLAP(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000072d), propget, helpcontext(0x0001072d)]
	HRESULT __stdcall UseLocalConnection(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000072d), propput, helpcontext(0x0001072d)]
	HRESULT __stdcall UseLocalConnection(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a8f), propget, helpcontext(0x00010a8f)]
	HRESULT __stdcall MaxDrillthroughRecords(
		[out, retval]long* RHS);
	[id(0x00000a8f), propput, helpcontext(0x00010a8f)]
	HRESULT __stdcall MaxDrillthroughRecords(
		[in]long RHS);
	[id(0x0000081b), propget, helpcontext(0x0001081b)]
	HRESULT __stdcall IsConnected(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a90), propget, helpcontext(0x00010a90)]
	HRESULT __stdcall ServerCredentialsMethod(
		[out, retval]XlCredentialsMethod* RHS);
	[id(0x00000a90), propput, helpcontext(0x00010a90)]
	HRESULT __stdcall ServerCredentialsMethod(
		[in]XlCredentialsMethod RHS);
	[id(0x00000a91), propget, helpcontext(0x00010a91)]
	HRESULT __stdcall ServerSSOApplicationID(
		[out, retval]BSTR* RHS);
	[id(0x00000a91), propput, helpcontext(0x00010a91)]
	HRESULT __stdcall ServerSSOApplicationID(
		[in]BSTR RHS);
	[id(0x00000a92), propget, helpcontext(0x00010a92)]
	HRESULT __stdcall AlwaysUseConnectionFile(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a92), propput, helpcontext(0x00010a92)]
	HRESULT __stdcall AlwaysUseConnectionFile(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a93), propget, helpcontext(0x00010a93)]
	HRESULT __stdcall ServerFillColor(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a93), propput, helpcontext(0x00010a93)]
	HRESULT __stdcall ServerFillColor(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a94), propget, helpcontext(0x00010a94)]
	HRESULT __stdcall ServerFontStyle(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a94), propput, helpcontext(0x00010a94)]
	HRESULT __stdcall ServerFontStyle(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a95), propget, helpcontext(0x00010a95)]
	HRESULT __stdcall ServerNumberFormat(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a95), propput, helpcontext(0x00010a95)]
	HRESULT __stdcall ServerNumberFormat(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a96), propget, helpcontext(0x00010a96)]
	HRESULT __stdcall ServerTextColor(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a96), propput, helpcontext(0x00010a96)]
	HRESULT __stdcall ServerTextColor(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a97), propget, helpcontext(0x00010a97)]
	HRESULT __stdcall RetrieveInOfficeUILang(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a97), propput, helpcontext(0x00010a97)]
	HRESULT __stdcall RetrieveInOfficeUILang(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelIOLEDBConnection categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIOLEDBConnection methodsFor!

adoConnection
	"Answer the <IDispatch> value of the 'ADOConnection' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_ADOConnection: answer.
	^answer asObject
!

alwaysUseConnectionFile
	"Answer the <varbool> value of the 'AlwaysUseConnectionFile' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AlwaysUseConnectionFile: answer.
	^answer asObject
!

alwaysUseConnectionFile: rhs
	"Set the 'AlwaysUseConnectionFile' property of the receiver to the <varbool> value of the argument."

	self put_AlwaysUseConnectionFile: rhs
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

	<virtual stdcall: hresult 14>
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

	<virtual stdcall: hresult 11 IDispatch**>
	^self invalidCall!

get_AlwaysUseConnectionFile: rhs
	"Private - Get the value of the 'AlwaysUseConnectionFile' property of the receiver.

		HRESULT __stdcall AlwaysUseConnectionFile(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 54 varbool*>
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

	<virtual stdcall: hresult 12 varbool*>
	^self invalidCall!

get_CommandText: rhs
	"Private - Get the value of the 'CommandText' property of the receiver.

		HRESULT __stdcall CommandText(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant*>
	^self invalidCall!

get_CommandType: rhs
	"Private - Get the value of the 'CommandType' property of the receiver.

		HRESULT __stdcall CommandType(
			[out, retval]XlCmdType* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_Connection: rhs
	"Private - Get the value of the 'Connection' property of the receiver.

		HRESULT __stdcall Connection(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 19 variant*>
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

	<virtual stdcall: hresult 21 varbool*>
	^self invalidCall!

get_IsConnected: rhs
	"Private - Get the value of the 'IsConnected' property of the receiver.

		HRESULT __stdcall IsConnected(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 49 varbool*>
	^self invalidCall!

get_LocalConnection: rhs
	"Private - Get the value of the 'LocalConnection' property of the receiver.

		HRESULT __stdcall LocalConnection(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 23 variant*>
	^self invalidCall!

get_MaintainConnection: rhs
	"Private - Get the value of the 'MaintainConnection' property of the receiver.

		HRESULT __stdcall MaintainConnection(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_MaxDrillthroughRecords: rhs
	"Private - Get the value of the 'MaxDrillthroughRecords' property of the receiver.

		HRESULT __stdcall MaxDrillthroughRecords(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 47 sdword*>
	^self invalidCall!

get_OLAP: rhs
	"Private - Get the value of the 'OLAP' property of the receiver.

		HRESULT __stdcall OLAP(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 44 varbool*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_RefreshDate: rhs
	"Private - Get the value of the 'RefreshDate' property of the receiver.

		HRESULT __stdcall RefreshDate(
			[out, retval]DATE* RHS);"

	<virtual stdcall: hresult 29 date*>
	^self invalidCall!

get_Refreshing: rhs
	"Private - Get the value of the 'Refreshing' property of the receiver.

		HRESULT __stdcall Refreshing(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 30 varbool*>
	^self invalidCall!

get_RefreshOnFileOpen: rhs
	"Private - Get the value of the 'RefreshOnFileOpen' property of the receiver.

		HRESULT __stdcall RefreshOnFileOpen(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 31 varbool*>
	^self invalidCall!

get_RefreshPeriod: rhs
	"Private - Get the value of the 'RefreshPeriod' property of the receiver.

		HRESULT __stdcall RefreshPeriod(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 33 sdword*>
	^self invalidCall!

get_RetrieveInOfficeUILang: rhs
	"Private - Get the value of the 'RetrieveInOfficeUILang' property of the receiver.

		HRESULT __stdcall RetrieveInOfficeUILang(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 64 varbool*>
	^self invalidCall!

get_RobustConnect: rhs
	"Private - Get the value of the 'RobustConnect' property of the receiver.

		HRESULT __stdcall RobustConnect(
			[out, retval]XlRobustConnect* RHS);"

	<virtual stdcall: hresult 35 sdword*>
	^self invalidCall!

get_SavePassword: rhs
	"Private - Get the value of the 'SavePassword' property of the receiver.

		HRESULT __stdcall SavePassword(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 38 varbool*>
	^self invalidCall!

get_ServerCredentialsMethod: rhs
	"Private - Get the value of the 'ServerCredentialsMethod' property of the receiver.

		HRESULT __stdcall ServerCredentialsMethod(
			[out, retval]XlCredentialsMethod* RHS);"

	<virtual stdcall: hresult 50 sdword*>
	^self invalidCall!

get_ServerFillColor: rhs
	"Private - Get the value of the 'ServerFillColor' property of the receiver.

		HRESULT __stdcall ServerFillColor(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 56 varbool*>
	^self invalidCall!

get_ServerFontStyle: rhs
	"Private - Get the value of the 'ServerFontStyle' property of the receiver.

		HRESULT __stdcall ServerFontStyle(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 58 varbool*>
	^self invalidCall!

get_ServerNumberFormat: rhs
	"Private - Get the value of the 'ServerNumberFormat' property of the receiver.

		HRESULT __stdcall ServerNumberFormat(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 60 varbool*>
	^self invalidCall!

get_ServerSSOApplicationID: rhs
	"Private - Get the value of the 'ServerSSOApplicationID' property of the receiver.

		HRESULT __stdcall ServerSSOApplicationID(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 52 bstr*>
	^self invalidCall!

get_ServerTextColor: rhs
	"Private - Get the value of the 'ServerTextColor' property of the receiver.

		HRESULT __stdcall ServerTextColor(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 62 varbool*>
	^self invalidCall!

get_SourceConnectionFile: rhs
	"Private - Get the value of the 'SourceConnectionFile' property of the receiver.

		HRESULT __stdcall SourceConnectionFile(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 40 bstr*>
	^self invalidCall!

get_SourceDataFile: rhs
	"Private - Get the value of the 'SourceDataFile' property of the receiver.

		HRESULT __stdcall SourceDataFile(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 42 bstr*>
	^self invalidCall!

get_UseLocalConnection: rhs
	"Private - Get the value of the 'UseLocalConnection' property of the receiver.

		HRESULT __stdcall UseLocalConnection(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 45 varbool*>
	^self invalidCall!

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

	<virtual stdcall: hresult 27>
	^self invalidCall!

maxDrillthroughRecords
	"Answer the <sdword> value of the 'MaxDrillthroughRecords' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MaxDrillthroughRecords: answer.
	^answer asObject
!

maxDrillthroughRecords: rhs
	"Set the 'MaxDrillthroughRecords' property of the receiver to the <sdword> value of the argument."

	self put_MaxDrillthroughRecords: rhs
!

olap
	"Answer the <varbool> value of the 'OLAP' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_OLAP: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_AlwaysUseConnectionFile: rhs
	"Private - Set the value of the 'AlwaysUseConnectionFile' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AlwaysUseConnectionFile(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 55 varbool>
	^self invalidCall!

put_BackgroundQuery: rhs
	"Private - Set the value of the 'BackgroundQuery' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall BackgroundQuery(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 13 varbool>
	^self invalidCall!

put_CommandText: rhs
	"Private - Set the value of the 'CommandText' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall CommandText(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 16 variant>
	^self invalidCall!

put_CommandType: rhs
	"Private - Set the value of the 'CommandType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CommandType(
			[in]XlCmdType RHS);"

	<virtual stdcall: hresult 18 sdword>
	^self invalidCall!

put_Connection: rhs
	"Private - Set the value of the 'Connection' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Connection(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 20 variant>
	^self invalidCall!

put_EnableRefresh: rhs
	"Private - Set the value of the 'EnableRefresh' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableRefresh(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 22 varbool>
	^self invalidCall!

put_LocalConnection: rhs
	"Private - Set the value of the 'LocalConnection' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall LocalConnection(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 24 variant>
	^self invalidCall!

put_MaintainConnection: rhs
	"Private - Set the value of the 'MaintainConnection' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MaintainConnection(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_MaxDrillthroughRecords: rhs
	"Private - Set the value of the 'MaxDrillthroughRecords' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MaxDrillthroughRecords(
			[in]long RHS);"

	<virtual stdcall: hresult 48 sdword>
	^self invalidCall!

put_RefreshOnFileOpen: rhs
	"Private - Set the value of the 'RefreshOnFileOpen' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RefreshOnFileOpen(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 32 varbool>
	^self invalidCall!

put_RefreshPeriod: rhs
	"Private - Set the value of the 'RefreshPeriod' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall RefreshPeriod(
			[in]long RHS);"

	<virtual stdcall: hresult 34 sdword>
	^self invalidCall!

put_RetrieveInOfficeUILang: rhs
	"Private - Set the value of the 'RetrieveInOfficeUILang' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RetrieveInOfficeUILang(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 65 varbool>
	^self invalidCall!

put_RobustConnect: rhs
	"Private - Set the value of the 'RobustConnect' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall RobustConnect(
			[in]XlRobustConnect RHS);"

	<virtual stdcall: hresult 36 sdword>
	^self invalidCall!

put_SavePassword: rhs
	"Private - Set the value of the 'SavePassword' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SavePassword(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 39 varbool>
	^self invalidCall!

put_ServerCredentialsMethod: rhs
	"Private - Set the value of the 'ServerCredentialsMethod' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ServerCredentialsMethod(
			[in]XlCredentialsMethod RHS);"

	<virtual stdcall: hresult 51 sdword>
	^self invalidCall!

put_ServerFillColor: rhs
	"Private - Set the value of the 'ServerFillColor' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ServerFillColor(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 57 varbool>
	^self invalidCall!

put_ServerFontStyle: rhs
	"Private - Set the value of the 'ServerFontStyle' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ServerFontStyle(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 59 varbool>
	^self invalidCall!

put_ServerNumberFormat: rhs
	"Private - Set the value of the 'ServerNumberFormat' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ServerNumberFormat(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 61 varbool>
	^self invalidCall!

put_ServerSSOApplicationID: rhs
	"Private - Set the value of the 'ServerSSOApplicationID' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ServerSSOApplicationID(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 53 bstr>
	^self invalidCall!

put_ServerTextColor: rhs
	"Private - Set the value of the 'ServerTextColor' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ServerTextColor(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 63 varbool>
	^self invalidCall!

put_SourceConnectionFile: rhs
	"Private - Set the value of the 'SourceConnectionFile' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall SourceConnectionFile(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 41 bstr>
	^self invalidCall!

put_SourceDataFile: rhs
	"Private - Set the value of the 'SourceDataFile' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall SourceDataFile(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 43 bstr>
	^self invalidCall!

put_UseLocalConnection: rhs
	"Private - Set the value of the 'UseLocalConnection' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall UseLocalConnection(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 46 varbool>
	^self invalidCall!

refresh
	"Invoke the Refresh() method of the COM object."

	^self Refresh
!

Refresh
	"Private - Invoke the Refresh() method of the COM object.

		HRESULT __stdcall Refresh();"

	<virtual stdcall: hresult 28>
	^self invalidCall!

refreshDate
	"Answer the <date> value of the 'RefreshDate' property of the receiver."

	| answer |
	answer := (DATE new).
	self get_RefreshDate: answer.
	^answer asObject
!

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

retrieveInOfficeUILang
	"Answer the <varbool> value of the 'RetrieveInOfficeUILang' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_RetrieveInOfficeUILang: answer.
	^answer asObject
!

retrieveInOfficeUILang: rhs
	"Set the 'RetrieveInOfficeUILang' property of the receiver to the <varbool> value of the argument."

	self put_RetrieveInOfficeUILang: rhs
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

	<virtual stdcall: hresult 37 bstr variant variant>
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

serverCredentialsMethod
	"Answer the <sdword> value of the 'ServerCredentialsMethod' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ServerCredentialsMethod: answer.
	^answer asObject
!

serverCredentialsMethod: rhs
	"Set the 'ServerCredentialsMethod' property of the receiver to the <sdword> value of the argument."

	self put_ServerCredentialsMethod: rhs
!

serverFillColor
	"Answer the <varbool> value of the 'ServerFillColor' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ServerFillColor: answer.
	^answer asObject
!

serverFillColor: rhs
	"Set the 'ServerFillColor' property of the receiver to the <varbool> value of the argument."

	self put_ServerFillColor: rhs
!

serverFontStyle
	"Answer the <varbool> value of the 'ServerFontStyle' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ServerFontStyle: answer.
	^answer asObject
!

serverFontStyle: rhs
	"Set the 'ServerFontStyle' property of the receiver to the <varbool> value of the argument."

	self put_ServerFontStyle: rhs
!

serverNumberFormat
	"Answer the <varbool> value of the 'ServerNumberFormat' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ServerNumberFormat: answer.
	^answer asObject
!

serverNumberFormat: rhs
	"Set the 'ServerNumberFormat' property of the receiver to the <varbool> value of the argument."

	self put_ServerNumberFormat: rhs
!

serverSSOApplicationID
	"Answer the <bstr> value of the 'ServerSSOApplicationID' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ServerSSOApplicationID: answer.
	^answer asObject
!

serverSSOApplicationID: rhs
	"Set the 'ServerSSOApplicationID' property of the receiver to the <bstr> value of the argument."

	self put_ServerSSOApplicationID: rhs
!

serverTextColor
	"Answer the <varbool> value of the 'ServerTextColor' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ServerTextColor: answer.
	^answer asObject
!

serverTextColor: rhs
	"Set the 'ServerTextColor' property of the receiver to the <varbool> value of the argument."

	self put_ServerTextColor: rhs
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
! !
!ExcelIOLEDBConnection categoriesFor: #adoConnection!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #alwaysUseConnectionFile!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #alwaysUseConnectionFile:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #backgroundQuery!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #backgroundQuery:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #cancelRefresh!**auto generated**!methods!public! !
!ExcelIOLEDBConnection categoriesFor: #CancelRefresh!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #commandText!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #commandText:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #commandType!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #commandType:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #connection!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #connection:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #enableRefresh!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #enableRefresh:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #get_ADOConnection:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_AlwaysUseConnectionFile:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_BackgroundQuery:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_CommandText:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_CommandType:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_Connection:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_EnableRefresh:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_IsConnected:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_LocalConnection:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_MaintainConnection:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_MaxDrillthroughRecords:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_OLAP:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_RefreshDate:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_Refreshing:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_RefreshOnFileOpen:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_RefreshPeriod:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_RetrieveInOfficeUILang:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_RobustConnect:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_SavePassword:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_ServerCredentialsMethod:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_ServerFillColor:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_ServerFontStyle:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_ServerNumberFormat:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_ServerSSOApplicationID:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_ServerTextColor:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_SourceConnectionFile:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_SourceDataFile:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #get_UseLocalConnection:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #isConnected!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #localConnection!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #localConnection:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #maintainConnection!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #maintainConnection:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #makeConnection!**auto generated**!methods!public! !
!ExcelIOLEDBConnection categoriesFor: #MakeConnection!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #maxDrillthroughRecords!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #maxDrillthroughRecords:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #olap!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #put_AlwaysUseConnectionFile:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_BackgroundQuery:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_CommandText:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_CommandType:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_Connection:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_EnableRefresh:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_LocalConnection:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_MaintainConnection:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_MaxDrillthroughRecords:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_RefreshOnFileOpen:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_RefreshPeriod:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_RetrieveInOfficeUILang:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_RobustConnect:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_SavePassword:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_ServerCredentialsMethod:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_ServerFillColor:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_ServerFontStyle:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_ServerNumberFormat:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_ServerSSOApplicationID:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_ServerTextColor:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_SourceConnectionFile:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_SourceDataFile:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #put_UseLocalConnection:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #refresh!**auto generated**!methods!public! !
!ExcelIOLEDBConnection categoriesFor: #Refresh!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #refreshDate!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #refreshing!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #refreshOnFileOpen!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #refreshOnFileOpen:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #refreshPeriod!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #refreshPeriod:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #retrieveInOfficeUILang!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #retrieveInOfficeUILang:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #robustConnect!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #robustConnect:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #saveAsODC:!**auto generated**!methods!public! !
!ExcelIOLEDBConnection categoriesFor: #saveAsODC:description:keywords:!**auto generated**!methods!public! !
!ExcelIOLEDBConnection categoriesFor: #SaveAsODC:description:keywords:!**auto generated**!COM Interfaces-IOLEDBConnection!private! !
!ExcelIOLEDBConnection categoriesFor: #savePassword!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #savePassword:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #serverCredentialsMethod!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #serverCredentialsMethod:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #serverFillColor!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #serverFillColor:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #serverFontStyle!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #serverFontStyle:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #serverNumberFormat!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #serverNumberFormat:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #serverSSOApplicationID!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #serverSSOApplicationID:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #serverTextColor!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #serverTextColor:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #sourceConnectionFile!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #sourceConnectionFile:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #sourceDataFile!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #sourceDataFile:!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #useLocalConnection!**auto generated**!properties!public! !
!ExcelIOLEDBConnection categoriesFor: #useLocalConnection:!**auto generated**!properties!public! !

!ExcelIOLEDBConnection class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IOLEDBConnection'
		ExcelIOLEDBConnection defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_ADOConnection:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_BackgroundQuery:
			argumentTypes: 'varbool*';
		defineFunction: #put_BackgroundQuery:
			argumentTypes: 'varbool';
		defineFunction: #CancelRefresh;
		defineFunction: #get_CommandText:
			argumentTypes: 'variant*';
		defineFunction: #put_CommandText:
			argumentTypes: 'variant';
		defineFunction: #get_CommandType:
			argumentTypes: 'sdword*';
		defineFunction: #put_CommandType:
			argumentTypes: 'sdword';
		defineFunction: #get_Connection:
			argumentTypes: 'variant*';
		defineFunction: #put_Connection:
			argumentTypes: 'variant';
		defineFunction: #get_EnableRefresh:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableRefresh:
			argumentTypes: 'varbool';
		defineFunction: #get_LocalConnection:
			argumentTypes: 'variant*';
		defineFunction: #put_LocalConnection:
			argumentTypes: 'variant';
		defineFunction: #get_MaintainConnection:
			argumentTypes: 'varbool*';
		defineFunction: #put_MaintainConnection:
			argumentTypes: 'varbool';
		defineFunction: #MakeConnection;
		defineFunction: #Refresh;
		defineFunction: #get_RefreshDate:
			argumentTypes: 'date*';
		defineFunction: #get_Refreshing:
			argumentTypes: 'varbool*';
		defineFunction: #get_RefreshOnFileOpen:
			argumentTypes: 'varbool*';
		defineFunction: #put_RefreshOnFileOpen:
			argumentTypes: 'varbool';
		defineFunction: #get_RefreshPeriod:
			argumentTypes: 'sdword*';
		defineFunction: #put_RefreshPeriod:
			argumentTypes: 'sdword';
		defineFunction: #get_RobustConnect:
			argumentTypes: 'sdword*';
		defineFunction: #put_RobustConnect:
			argumentTypes: 'sdword';
		defineFunction: #SaveAsODC:description:keywords:
			argumentTypes: 'bstr variant variant';
		defineFunction: #get_SavePassword:
			argumentTypes: 'varbool*';
		defineFunction: #put_SavePassword:
			argumentTypes: 'varbool';
		defineFunction: #get_SourceConnectionFile:
			argumentTypes: 'bstr*';
		defineFunction: #put_SourceConnectionFile:
			argumentTypes: 'bstr';
		defineFunction: #get_SourceDataFile:
			argumentTypes: 'bstr*';
		defineFunction: #put_SourceDataFile:
			argumentTypes: 'bstr';
		defineFunction: #get_OLAP:
			argumentTypes: 'varbool*';
		defineFunction: #get_UseLocalConnection:
			argumentTypes: 'varbool*';
		defineFunction: #put_UseLocalConnection:
			argumentTypes: 'varbool';
		defineFunction: #get_MaxDrillthroughRecords:
			argumentTypes: 'sdword*';
		defineFunction: #put_MaxDrillthroughRecords:
			argumentTypes: 'sdword';
		defineFunction: #get_IsConnected:
			argumentTypes: 'varbool*';
		defineFunction: #get_ServerCredentialsMethod:
			argumentTypes: 'sdword*';
		defineFunction: #put_ServerCredentialsMethod:
			argumentTypes: 'sdword';
		defineFunction: #get_ServerSSOApplicationID:
			argumentTypes: 'bstr*';
		defineFunction: #put_ServerSSOApplicationID:
			argumentTypes: 'bstr';
		defineFunction: #get_AlwaysUseConnectionFile:
			argumentTypes: 'varbool*';
		defineFunction: #put_AlwaysUseConnectionFile:
			argumentTypes: 'varbool';
		defineFunction: #get_ServerFillColor:
			argumentTypes: 'varbool*';
		defineFunction: #put_ServerFillColor:
			argumentTypes: 'varbool';
		defineFunction: #get_ServerFontStyle:
			argumentTypes: 'varbool*';
		defineFunction: #put_ServerFontStyle:
			argumentTypes: 'varbool';
		defineFunction: #get_ServerNumberFormat:
			argumentTypes: 'varbool*';
		defineFunction: #put_ServerNumberFormat:
			argumentTypes: 'varbool';
		defineFunction: #get_ServerTextColor:
			argumentTypes: 'varbool*';
		defineFunction: #put_ServerTextColor:
			argumentTypes: 'varbool';
		defineFunction: #get_RetrieveInOfficeUILang:
			argumentTypes: 'varbool*';
		defineFunction: #put_RetrieveInOfficeUILang:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIOLEDBConnection initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIOLEDBConnection class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIOLEDBConnection class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

