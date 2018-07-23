"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIODBCConnection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIODBCConnection guid: (IID fromString: '{0002448E-0001-0000-C000-000000000046}')!
ExcelIODBCConnection comment: '<ExcelIODBCConnection> is a wrapper class for the COM interface ''Excel.IODBCConnection'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002448E-0001-0000-C000-000000000046), 
	helpcontext(0x00020124), 
	hidden
]
interface IODBCConnection : IDispatch
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
	[id(0x000002ae), propget, helpcontext(0x000102ae)]
	HRESULT __stdcall SourceData(
		[out, retval]VARIANT* RHS);
	[id(0x000002ae), propput, helpcontext(0x000102ae)]
	HRESULT __stdcall SourceData(
		[in]VARIANT RHS);
	[id(0x00000820), propget, helpcontext(0x00010820)]
	HRESULT __stdcall SourceDataFile(
		[out, retval]BSTR* RHS);
	[id(0x00000820), propput, helpcontext(0x00010820)]
	HRESULT __stdcall SourceDataFile(
		[in]BSTR RHS);
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
};
'!
!ExcelIODBCConnection categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIODBCConnection methodsFor!

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

	<virtual stdcall: hresult 13>
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

get_AlwaysUseConnectionFile: rhs
	"Private - Get the value of the 'AlwaysUseConnectionFile' property of the receiver.

		HRESULT __stdcall AlwaysUseConnectionFile(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 44 varbool*>
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

	<virtual stdcall: hresult 14 variant*>
	^self invalidCall!

get_CommandType: rhs
	"Private - Get the value of the 'CommandType' property of the receiver.

		HRESULT __stdcall CommandType(
			[out, retval]XlCmdType* RHS);"

	<virtual stdcall: hresult 16 sdword*>
	^self invalidCall!

get_Connection: rhs
	"Private - Get the value of the 'Connection' property of the receiver.

		HRESULT __stdcall Connection(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 18 variant*>
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

	<virtual stdcall: hresult 20 varbool*>
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

	<virtual stdcall: hresult 23 date*>
	^self invalidCall!

get_Refreshing: rhs
	"Private - Get the value of the 'Refreshing' property of the receiver.

		HRESULT __stdcall Refreshing(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 24 varbool*>
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

	<virtual stdcall: hresult 27 sdword*>
	^self invalidCall!

get_RobustConnect: rhs
	"Private - Get the value of the 'RobustConnect' property of the receiver.

		HRESULT __stdcall RobustConnect(
			[out, retval]XlRobustConnect* RHS);"

	<virtual stdcall: hresult 29 sdword*>
	^self invalidCall!

get_SavePassword: rhs
	"Private - Get the value of the 'SavePassword' property of the receiver.

		HRESULT __stdcall SavePassword(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 32 varbool*>
	^self invalidCall!

get_ServerCredentialsMethod: rhs
	"Private - Get the value of the 'ServerCredentialsMethod' property of the receiver.

		HRESULT __stdcall ServerCredentialsMethod(
			[out, retval]XlCredentialsMethod* RHS);"

	<virtual stdcall: hresult 40 sdword*>
	^self invalidCall!

get_ServerSSOApplicationID: rhs
	"Private - Get the value of the 'ServerSSOApplicationID' property of the receiver.

		HRESULT __stdcall ServerSSOApplicationID(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 42 bstr*>
	^self invalidCall!

get_SourceConnectionFile: rhs
	"Private - Get the value of the 'SourceConnectionFile' property of the receiver.

		HRESULT __stdcall SourceConnectionFile(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 34 bstr*>
	^self invalidCall!

get_SourceData: rhs
	"Private - Get the value of the 'SourceData' property of the receiver.

		HRESULT __stdcall SourceData(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 36 variant*>
	^self invalidCall!

get_SourceDataFile: rhs
	"Private - Get the value of the 'SourceDataFile' property of the receiver.

		HRESULT __stdcall SourceDataFile(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 38 bstr*>
	^self invalidCall!

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

	<virtual stdcall: hresult 45 varbool>
	^self invalidCall!

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

	<virtual stdcall: hresult 15 variant>
	^self invalidCall!

put_CommandType: rhs
	"Private - Set the value of the 'CommandType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CommandType(
			[in]XlCmdType RHS);"

	<virtual stdcall: hresult 17 sdword>
	^self invalidCall!

put_Connection: rhs
	"Private - Set the value of the 'Connection' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Connection(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 19 variant>
	^self invalidCall!

put_EnableRefresh: rhs
	"Private - Set the value of the 'EnableRefresh' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableRefresh(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 21 varbool>
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

	<virtual stdcall: hresult 28 sdword>
	^self invalidCall!

put_RobustConnect: rhs
	"Private - Set the value of the 'RobustConnect' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall RobustConnect(
			[in]XlRobustConnect RHS);"

	<virtual stdcall: hresult 30 sdword>
	^self invalidCall!

put_SavePassword: rhs
	"Private - Set the value of the 'SavePassword' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SavePassword(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 33 varbool>
	^self invalidCall!

put_ServerCredentialsMethod: rhs
	"Private - Set the value of the 'ServerCredentialsMethod' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ServerCredentialsMethod(
			[in]XlCredentialsMethod RHS);"

	<virtual stdcall: hresult 41 sdword>
	^self invalidCall!

put_ServerSSOApplicationID: rhs
	"Private - Set the value of the 'ServerSSOApplicationID' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ServerSSOApplicationID(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 43 bstr>
	^self invalidCall!

put_SourceConnectionFile: rhs
	"Private - Set the value of the 'SourceConnectionFile' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall SourceConnectionFile(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 35 bstr>
	^self invalidCall!

put_SourceData: rhs
	"Private - Set the value of the 'SourceData' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall SourceData(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 37 variant>
	^self invalidCall!

put_SourceDataFile: rhs
	"Private - Set the value of the 'SourceDataFile' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall SourceDataFile(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 39 bstr>
	^self invalidCall!

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

	<virtual stdcall: hresult 31 bstr variant variant>
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

sourceDataFile: rhs
	"Set the 'SourceDataFile' property of the receiver to the <bstr> value of the argument."

	self put_SourceDataFile: rhs
! !
!ExcelIODBCConnection categoriesFor: #alwaysUseConnectionFile!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #alwaysUseConnectionFile:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #backgroundQuery!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #backgroundQuery:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #cancelRefresh!**auto generated**!methods!public! !
!ExcelIODBCConnection categoriesFor: #CancelRefresh!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #commandText!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #commandText:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #commandType!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #commandType:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #connection!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #connection:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #enableRefresh!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #enableRefresh:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #get_AlwaysUseConnectionFile:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_BackgroundQuery:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_CommandText:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_CommandType:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_Connection:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_EnableRefresh:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_RefreshDate:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_Refreshing:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_RefreshOnFileOpen:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_RefreshPeriod:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_RobustConnect:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_SavePassword:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_ServerCredentialsMethod:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_ServerSSOApplicationID:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_SourceConnectionFile:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_SourceData:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #get_SourceDataFile:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #put_AlwaysUseConnectionFile:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_BackgroundQuery:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_CommandText:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_CommandType:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_Connection:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_EnableRefresh:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_RefreshOnFileOpen:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_RefreshPeriod:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_RobustConnect:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_SavePassword:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_ServerCredentialsMethod:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_ServerSSOApplicationID:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_SourceConnectionFile:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_SourceData:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #put_SourceDataFile:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #refresh!**auto generated**!methods!public! !
!ExcelIODBCConnection categoriesFor: #Refresh!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #refreshDate!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #refreshing!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #refreshOnFileOpen!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #refreshOnFileOpen:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #refreshPeriod!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #refreshPeriod:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #robustConnect!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #robustConnect:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #saveAsODC:!**auto generated**!methods!public! !
!ExcelIODBCConnection categoriesFor: #saveAsODC:description:keywords:!**auto generated**!methods!public! !
!ExcelIODBCConnection categoriesFor: #SaveAsODC:description:keywords:!**auto generated**!COM Interfaces-IODBCConnection!private! !
!ExcelIODBCConnection categoriesFor: #savePassword!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #savePassword:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #serverCredentialsMethod!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #serverCredentialsMethod:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #serverSSOApplicationID!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #serverSSOApplicationID:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #sourceConnectionFile!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #sourceConnectionFile:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #sourceData!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #sourceData:!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #sourceDataFile!**auto generated**!properties!public! !
!ExcelIODBCConnection categoriesFor: #sourceDataFile:!**auto generated**!properties!public! !

!ExcelIODBCConnection class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IODBCConnection'
		ExcelIODBCConnection defineTemplate"

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
		defineFunction: #get_SourceData:
			argumentTypes: 'variant*';
		defineFunction: #put_SourceData:
			argumentTypes: 'variant';
		defineFunction: #get_SourceDataFile:
			argumentTypes: 'bstr*';
		defineFunction: #put_SourceDataFile:
			argumentTypes: 'bstr';
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
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIODBCConnection initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIODBCConnection class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIODBCConnection class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

