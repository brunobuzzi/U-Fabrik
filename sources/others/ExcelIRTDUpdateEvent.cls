"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIRTDUpdateEvent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIRTDUpdateEvent guid: (IID fromString: '{A43788C1-D91B-11D3-8F39-00C04F3651B8}')!
ExcelIRTDUpdateEvent comment: '<ExcelIRTDUpdateEvent> is a wrapper class for the COM interface ''Excel.IRTDUpdateEvent'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(A43788C1-D91B-11D3-8F39-00C04F3651B8), 
	helpcontext(0x0007a120), 
	dual
]
interface IRTDUpdateEvent : IDispatch
 {
	[id(0x0000000a), helpcontext(0x0007a121)]
	HRESULT __stdcall UpdateNotify();
	[id(0x0000000b), propget, helpcontext(0x0007a122)]
	HRESULT __stdcall HeartbeatInterval(
		[out, retval]long* plRetVal);
	[id(0x0000000b), propput, helpcontext(0x0007a122)]
	HRESULT __stdcall HeartbeatInterval(
		[in]long plRetVal);
	[id(0x0000000c), helpcontext(0x0007a123)]
	HRESULT __stdcall Disconnect();
};
'!
!ExcelIRTDUpdateEvent categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIRTDUpdateEvent methodsFor!

disconnect
	"Invoke the Disconnect() method of the COM object."

	^self Disconnect
!

Disconnect
	"Private - Invoke the Disconnect() method of the COM object.

		HRESULT __stdcall Disconnect();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

get_HeartbeatInterval: plRetVal
	"Private - Get the value of the 'HeartbeatInterval' property of the receiver.

		HRESULT __stdcall HeartbeatInterval(
			[out, retval]long* plRetVal);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

heartbeatInterval
	"Answer the <sdword> value of the 'HeartbeatInterval' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HeartbeatInterval: answer.
	^answer asObject
!

heartbeatInterval: plRetVal
	"Set the 'HeartbeatInterval' property of the receiver to the <sdword> value of the argument."

	self put_HeartbeatInterval: plRetVal
!

put_HeartbeatInterval: plRetVal
	"Private - Set the value of the 'HeartbeatInterval' property of the object wrapped by the 
	 receiver to the <sdword> argument, plRetVal.

		HRESULT __stdcall HeartbeatInterval(
			[in]long plRetVal);"

	<virtual stdcall: hresult 10 sdword>
	^self invalidCall!

updateNotify
	"Invoke the UpdateNotify() method of the COM object."

	^self UpdateNotify
!

UpdateNotify
	"Private - Invoke the UpdateNotify() method of the COM object.

		HRESULT __stdcall UpdateNotify();"

	<virtual stdcall: hresult 8>
	^self invalidCall! !
!ExcelIRTDUpdateEvent categoriesFor: #disconnect!**auto generated**!methods!public! !
!ExcelIRTDUpdateEvent categoriesFor: #Disconnect!**auto generated**!COM Interfaces-IRTDUpdateEvent!private! !
!ExcelIRTDUpdateEvent categoriesFor: #get_HeartbeatInterval:!**auto generated**!COM Interfaces-IRTDUpdateEvent!private! !
!ExcelIRTDUpdateEvent categoriesFor: #heartbeatInterval!**auto generated**!properties!public! !
!ExcelIRTDUpdateEvent categoriesFor: #heartbeatInterval:!**auto generated**!properties!public! !
!ExcelIRTDUpdateEvent categoriesFor: #put_HeartbeatInterval:!**auto generated**!COM Interfaces-IRTDUpdateEvent!private! !
!ExcelIRTDUpdateEvent categoriesFor: #updateNotify!**auto generated**!methods!public! !
!ExcelIRTDUpdateEvent categoriesFor: #UpdateNotify!**auto generated**!COM Interfaces-IRTDUpdateEvent!private! !

!ExcelIRTDUpdateEvent class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IRTDUpdateEvent'
		ExcelIRTDUpdateEvent defineTemplate"

	self
		defineFunction: #UpdateNotify;
		defineFunction: #get_HeartbeatInterval:
			argumentTypes: 'sdword*';
		defineFunction: #put_HeartbeatInterval:
			argumentTypes: 'sdword';
		defineFunction: #Disconnect
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIRTDUpdateEvent initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIRTDUpdateEvent class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIRTDUpdateEvent class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

