"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelRTD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelRTD guid: (IID fromString: '{0002446E-0000-0000-C000-000000000046}')!
ExcelRTD comment: '<ExcelRTD> is a wrapper class generated for the dispatch interface ''Excel.RTD'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002446E-0000-0000-C000-000000000046), 
	helpcontext(0x00020104)
]
dispinterface RTD {
	properties:
	methods:
[id(0x000008c0), propget, helpcontext(0x000108c0)]
		long ThrottleInterval();
[id(0x000008c0), propput, helpcontext(0x000108c0)]
		void ThrottleInterval(
			[in]long arg1);
[id(0x000008c1), helpcontext(0x000108c1)]
		void RefreshData();
[id(0x000008c2), helpcontext(0x000108c2)]
		void RestartServers();
};
'!
!ExcelRTD categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelRTD methodsFor!

refreshData
	"Invoke the RefreshData() method of the COM object."

	(self invokeId: 2241)
!

restartServers
	"Invoke the RestartServers() method of the COM object."

	(self invokeId: 2242)
!

throttleInterval
	"Answer the <sdword> value of the 'ThrottleInterval' property of the receiver.
		long ThrottleInterval"

	^(self getPropertyId: 2240)
!

throttleInterval: arg1
	"Set the 'ThrottleInterval' property of the receiver to the <sdword> value of the argument.
		void ThrottleInterval"

	self setPropertyId: 2240 value: arg1
! !
!ExcelRTD categoriesFor: #refreshData!**auto generated**!methods!public! !
!ExcelRTD categoriesFor: #restartServers!**auto generated**!methods!public! !
!ExcelRTD categoriesFor: #throttleInterval!**auto generated**!properties!public! !
!ExcelRTD categoriesFor: #throttleInterval:!**auto generated**!properties!public! !

!ExcelRTD class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelRTD initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelRTD class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

