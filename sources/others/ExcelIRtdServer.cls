"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIRtdServer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIRtdServer guid: (IID fromString: '{EC0E6191-DB51-11D3-8F3E-00C04F3651B8}')!
ExcelIRtdServer comment: '<ExcelIRtdServer> is a wrapper class for the COM interface ''Excel.IRtdServer'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(EC0E6191-DB51-11D3-8F3E-00C04F3651B8), 
	helpcontext(0x0007a124), 
	dual
]
interface IRtdServer : IDispatch
 {
	[id(0x0000000a), helpcontext(0x0007a125)]
	HRESULT __stdcall ServerStart(
		[in]IRTDUpdateEvent* CallbackObject,
		[out, retval]long* pfRes);
	[id(0x0000000b), helpcontext(0x0007a126)]
	HRESULT __stdcall ConnectData(
		[in]long TopicID,
		[in]SAFEARRAY(VARIANT)* Strings,
		[in, out]VARIANT_BOOL* GetNewValues,
		[out, retval]VARIANT* pvarOut);
	[id(0x0000000c), helpcontext(0x0007a127)]
	HRESULT __stdcall RefreshData(
		[in, out]long* TopicCount,
		[out, retval]SAFEARRAY(VARIANT)* parrayOut);
	[id(0x0000000d), helpcontext(0x0007a128)]
	HRESULT __stdcall DisconnectData(
		[in]long TopicID);
	[id(0x0000000e), helpcontext(0x0007a129)]
	HRESULT __stdcall Heartbeat(
		[out, retval]long* pfRes);
	[id(0x0000000f), helpcontext(0x0007a12a)]
	HRESULT __stdcall ServerTerminate();
};
'!
!ExcelIRtdServer categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIRtdServer methodsFor!

connectData: topicID strings: strings getNewValues: getNewValues
	"Invoke the ConnectData() method of the COM object."

	| answer |
	answer := (Array new: 2)
				basicAt: 1 put: (VARIANT_BOOL new value: getNewValues; yourself);
				basicAt: 2 put: VARIANT new;
				yourself.
	self
		ConnectData: topicID
		strings: strings asSAFEARRAY
		getNewValues: (answer basicAt: 1)
		pvarOut: (answer basicAt: 2).
	^answer collect: [:each | each asObject]
!

ConnectData: topicID strings: strings getNewValues: getNewValues pvarOut: pvarOut
	"Private - Invoke the ConnectData() method of the COM object.

		HRESULT __stdcall ConnectData(
			[in]long TopicID,
			[in]SAFEARRAY(VARIANT)* Strings,
			[in, out]VARIANT_BOOL* GetNewValues,
			[out, retval]VARIANT* pvarOut);"

	<virtual stdcall: hresult 9 sdword SAFEARRAY** varbool* variant*>
	^self invalidCall!

disconnectData: topicID
	"Invoke the DisconnectData() method of the COM object."

	^self DisconnectData: topicID
!

DisconnectData: topicID
	"Private - Invoke the DisconnectData() method of the COM object.

		HRESULT __stdcall DisconnectData(
			[in]long TopicID);"

	<virtual stdcall: hresult 11 sdword>
	^self invalidCall!

heartbeat
	"Answer the <SDWORD> result of invoking the Heartbeat() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self Heartbeat: answer.
	^answer asObject
!

Heartbeat: pfRes
	"Private - Invoke the Heartbeat() method of the COM object.

		HRESULT __stdcall Heartbeat(
			[out, retval]long* pfRes);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

refreshData: topicCount
	"Invoke the RefreshData() method of the COM object."

	| answer |
	answer := (Array new: 2)
				basicAt: 1 put: (SDWORD new value: topicCount; yourself);
				basicAt: 2 put: SAFEARRAY newPointer;
				yourself.
	self
		RefreshData: (answer basicAt: 1)
		parrayOut: (answer basicAt: 2).
	^answer collect: [:each | each asObject]
!

RefreshData: topicCount parrayOut: parrayOut
	"Private - Invoke the RefreshData() method of the COM object.

		HRESULT __stdcall RefreshData(
			[in, out]long* TopicCount,
			[out, retval]SAFEARRAY(VARIANT)* parrayOut);"

	<virtual stdcall: hresult 10 sdword* SAFEARRAY**>
	^self invalidCall!

serverStart: callbackObject
	"Answer the <SDWORD> result of invoking the ServerStart() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self
		ServerStart: callbackObject
		pfRes: answer.
	^answer asObject
!

ServerStart: callbackObject pfRes: pfRes
	"Private - Invoke the ServerStart() method of the COM object.

		HRESULT __stdcall ServerStart(
			[in]IRTDUpdateEvent* CallbackObject,
			[out, retval]long* pfRes);"

	<virtual stdcall: hresult 8 ExcelIRTDUpdateEvent* sdword*>
	^self invalidCall!

serverTerminate
	"Invoke the ServerTerminate() method of the COM object."

	^self ServerTerminate
!

ServerTerminate
	"Private - Invoke the ServerTerminate() method of the COM object.

		HRESULT __stdcall ServerTerminate();"

	<virtual stdcall: hresult 13>
	^self invalidCall! !
!ExcelIRtdServer categoriesFor: #connectData:strings:getNewValues:!**auto generated**!methods!public! !
!ExcelIRtdServer categoriesFor: #ConnectData:strings:getNewValues:pvarOut:!**auto generated**!COM Interfaces-IRtdServer!private! !
!ExcelIRtdServer categoriesFor: #disconnectData:!**auto generated**!methods!public! !
!ExcelIRtdServer categoriesFor: #DisconnectData:!**auto generated**!COM Interfaces-IRtdServer!private! !
!ExcelIRtdServer categoriesFor: #heartbeat!**auto generated**!methods!public! !
!ExcelIRtdServer categoriesFor: #Heartbeat:!**auto generated**!COM Interfaces-IRtdServer!private! !
!ExcelIRtdServer categoriesFor: #refreshData:!**auto generated**!methods!public! !
!ExcelIRtdServer categoriesFor: #RefreshData:parrayOut:!**auto generated**!COM Interfaces-IRtdServer!private! !
!ExcelIRtdServer categoriesFor: #serverStart:!**auto generated**!methods!public! !
!ExcelIRtdServer categoriesFor: #ServerStart:pfRes:!**auto generated**!COM Interfaces-IRtdServer!private! !
!ExcelIRtdServer categoriesFor: #serverTerminate!**auto generated**!methods!public! !
!ExcelIRtdServer categoriesFor: #ServerTerminate!**auto generated**!COM Interfaces-IRtdServer!private! !

!ExcelIRtdServer class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IRtdServer'
		ExcelIRtdServer defineTemplate"

	self
		defineFunction: #ServerStart:pfRes:
			argumentTypes: 'ExcelIRTDUpdateEvent* sdword*';
		defineFunction: #ConnectData:strings:getNewValues:pvarOut:
			argumentTypes: 'sdword SAFEARRAY** varbool* variant*';
		defineFunction: #RefreshData:parrayOut:
			argumentTypes: 'sdword* SAFEARRAY**';
		defineFunction: #DisconnectData:
			argumentTypes: 'sdword';
		defineFunction: #Heartbeat:
			argumentTypes: 'sdword*';
		defineFunction: #ServerTerminate
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIRtdServer initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIRtdServer class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIRtdServer class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

