"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIRTD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIRTD guid: (IID fromString: '{0002446E-0001-0000-C000-000000000046}')!
ExcelIRTD comment: '<ExcelIRTD> is a wrapper class for the COM interface ''Excel.IRTD'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002446E-0001-0000-C000-000000000046), 
	helpcontext(0x00020104), 
	hidden
]
interface IRTD : IDispatch
 {
	[id(0x000008c0), propget, helpcontext(0x000108c0)]
	HRESULT __stdcall ThrottleInterval(
		[out, retval]long* RHS);
	[id(0x000008c0), propput, helpcontext(0x000108c0)]
	HRESULT __stdcall ThrottleInterval(
		[in]long RHS);
	[id(0x000008c1), helpcontext(0x000108c1)]
	HRESULT __stdcall RefreshData();
	[id(0x000008c2), helpcontext(0x000108c2)]
	HRESULT __stdcall RestartServers();
};
'!
!ExcelIRTD categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIRTD methodsFor!

get_ThrottleInterval: rhs
	"Private - Get the value of the 'ThrottleInterval' property of the receiver.

		HRESULT __stdcall ThrottleInterval(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 8 sdword*>
	^self invalidCall!

put_ThrottleInterval: rhs
	"Private - Set the value of the 'ThrottleInterval' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ThrottleInterval(
			[in]long RHS);"

	<virtual stdcall: hresult 9 sdword>
	^self invalidCall!

refreshData
	"Invoke the RefreshData() method of the COM object."

	^self RefreshData
!

RefreshData
	"Private - Invoke the RefreshData() method of the COM object.

		HRESULT __stdcall RefreshData();"

	<virtual stdcall: hresult 10>
	^self invalidCall!

restartServers
	"Invoke the RestartServers() method of the COM object."

	^self RestartServers
!

RestartServers
	"Private - Invoke the RestartServers() method of the COM object.

		HRESULT __stdcall RestartServers();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

throttleInterval
	"Answer the <sdword> value of the 'ThrottleInterval' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ThrottleInterval: answer.
	^answer asObject
!

throttleInterval: rhs
	"Set the 'ThrottleInterval' property of the receiver to the <sdword> value of the argument."

	self put_ThrottleInterval: rhs
! !
!ExcelIRTD categoriesFor: #get_ThrottleInterval:!**auto generated**!COM Interfaces-IRTD!private! !
!ExcelIRTD categoriesFor: #put_ThrottleInterval:!**auto generated**!COM Interfaces-IRTD!private! !
!ExcelIRTD categoriesFor: #refreshData!**auto generated**!methods!public! !
!ExcelIRTD categoriesFor: #RefreshData!**auto generated**!COM Interfaces-IRTD!private! !
!ExcelIRTD categoriesFor: #restartServers!**auto generated**!methods!public! !
!ExcelIRTD categoriesFor: #RestartServers!**auto generated**!COM Interfaces-IRTD!private! !
!ExcelIRTD categoriesFor: #throttleInterval!**auto generated**!properties!public! !
!ExcelIRTD categoriesFor: #throttleInterval:!**auto generated**!properties!public! !

!ExcelIRTD class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IRTD'
		ExcelIRTD defineTemplate"

	self
		defineFunction: #get_ThrottleInterval:
			argumentTypes: 'sdword*';
		defineFunction: #put_ThrottleInterval:
			argumentTypes: 'sdword';
		defineFunction: #RefreshData;
		defineFunction: #RestartServers
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIRTD initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIRTD class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIRTD class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

