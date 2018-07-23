"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIRoutingSlip
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIRoutingSlip guid: (IID fromString: '{000208AA-0001-0000-C000-000000000046}')!
ExcelIRoutingSlip comment: '<ExcelIRoutingSlip> is a wrapper class for the COM interface ''Excel.IRoutingSlip'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208AA-0001-0000-C000-000000000046), 
	helpcontext(0x0002006a), 
	hidden
]
interface IRoutingSlip : IDispatch
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
	[id(0x000003bb), propget, helpcontext(0x000103bb)]
	HRESULT __stdcall Delivery(
		[out, retval]XlRoutingSlipDelivery* RHS);
	[id(0x000003bb), propput, helpcontext(0x000103bb)]
	HRESULT __stdcall Delivery(
		[in]XlRoutingSlipDelivery RHS);
	[id(0x000003ba), propget, helpcontext(0x000103ba)]
	HRESULT __stdcall Message(
		[out, retval]VARIANT* RHS);
	[id(0x000003ba), propput, helpcontext(0x000103ba)]
	HRESULT __stdcall Message(
		[in]VARIANT RHS);
	[id(0x000003b8), propget, helpcontext(0x000103b8)]
	HRESULT __stdcall Recipients(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x000003b8), propput, helpcontext(0x000103b8)]
	HRESULT __stdcall Recipients(
		[in, optional]VARIANT Index,
		[in]VARIANT RHS);
	[id(0x0000022b), helpcontext(0x0001022b)]
	HRESULT __stdcall Reset(
		[out, retval]VARIANT* RHS);
	[id(0x000003bc), propget, helpcontext(0x000103bc)]
	HRESULT __stdcall ReturnWhenDone(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003bc), propput, helpcontext(0x000103bc)]
	HRESULT __stdcall ReturnWhenDone(
		[in]VARIANT_BOOL RHS);
	[id(0x000003be), propget, helpcontext(0x000103be)]
	HRESULT __stdcall Status(
		[out, retval]XlRoutingSlipStatus* RHS);
	[id(0x000003b9), propget, helpcontext(0x000103b9)]
	HRESULT __stdcall Subject(
		[out, retval]VARIANT* RHS);
	[id(0x000003b9), propput, helpcontext(0x000103b9)]
	HRESULT __stdcall Subject(
		[in]VARIANT RHS);
	[id(0x000003bd), propget, helpcontext(0x000103bd)]
	HRESULT __stdcall TrackStatus(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003bd), propput, helpcontext(0x000103bd)]
	HRESULT __stdcall TrackStatus(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelIRoutingSlip categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIRoutingSlip methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

delivery
	"Answer the <sdword> value of the 'Delivery' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Delivery: answer.
	^answer asObject
!

delivery: rhs
	"Set the 'Delivery' property of the receiver to the <sdword> value of the argument."

	self put_Delivery: rhs
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Delivery: rhs
	"Private - Get the value of the 'Delivery' property of the receiver.

		HRESULT __stdcall Delivery(
			[out, retval]XlRoutingSlipDelivery* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_Message: rhs
	"Private - Get the value of the 'Message' property of the receiver.

		HRESULT __stdcall Message(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Recipients: index rhs: rhs
	"Private - Get the value of the 'Recipients' property of the receiver.

		HRESULT __stdcall Recipients(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant variant*>
	^self invalidCall!

get_ReturnWhenDone: rhs
	"Private - Get the value of the 'ReturnWhenDone' property of the receiver.

		HRESULT __stdcall ReturnWhenDone(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 18 varbool*>
	^self invalidCall!

get_Status: rhs
	"Private - Get the value of the 'Status' property of the receiver.

		HRESULT __stdcall Status(
			[out, retval]XlRoutingSlipStatus* RHS);"

	<virtual stdcall: hresult 20 sdword*>
	^self invalidCall!

get_Subject: rhs
	"Private - Get the value of the 'Subject' property of the receiver.

		HRESULT __stdcall Subject(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 21 variant*>
	^self invalidCall!

get_TrackStatus: rhs
	"Private - Get the value of the 'TrackStatus' property of the receiver.

		HRESULT __stdcall TrackStatus(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 23 varbool*>
	^self invalidCall!

message
	"Answer the <variant> value of the 'Message' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Message: answer.
	^answer asObject
!

message: rhs
	"Set the 'Message' property of the receiver to the <variant> value of the argument."

	self put_Message: rhs asVariant
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Delivery: rhs
	"Private - Set the value of the 'Delivery' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Delivery(
			[in]XlRoutingSlipDelivery RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

put_Message: rhs
	"Private - Set the value of the 'Message' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Message(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 14 variant>
	^self invalidCall!

put_Recipients: index rhs: rhs
	"Private - Set the value of the 'Recipients' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Recipients(
			[in, optional]VARIANT Index,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 16 variant variant>
	^self invalidCall!

put_ReturnWhenDone: rhs
	"Private - Set the value of the 'ReturnWhenDone' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ReturnWhenDone(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 19 varbool>
	^self invalidCall!

put_Subject: rhs
	"Private - Set the value of the 'Subject' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Subject(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 22 variant>
	^self invalidCall!

put_TrackStatus: rhs
	"Private - Set the value of the 'TrackStatus' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TrackStatus(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 24 varbool>
	^self invalidCall!

recipients
	"Answer the <variant> value of the 'Recipients' property of the receiver."

	^self recipients: VARIANT unspecified!

recipients: index
	"Answer the <variant> value of the 'Recipients' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_Recipients: index asVariant
		rhs: answer.
	^answer asObject
!

recipients: index rhs: rhs
	"Set the 'Recipients' property of the receiver to the <variant> value of the argument."

	self
		put_Recipients: index asVariant
		rhs: rhs asVariant
!

reset
	"Answer the <VARIANT> result of invoking the Reset() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Reset: answer.
	^answer asObject
!

Reset: rhs
	"Private - Invoke the Reset() method of the COM object.

		HRESULT __stdcall Reset(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 17 variant*>
	^self invalidCall!

returnWhenDone
	"Answer the <varbool> value of the 'ReturnWhenDone' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ReturnWhenDone: answer.
	^answer asObject
!

returnWhenDone: rhs
	"Set the 'ReturnWhenDone' property of the receiver to the <varbool> value of the argument."

	self put_ReturnWhenDone: rhs
!

status
	"Answer the <sdword> value of the 'Status' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Status: answer.
	^answer asObject
!

subject
	"Answer the <variant> value of the 'Subject' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Subject: answer.
	^answer asObject
!

subject: rhs
	"Set the 'Subject' property of the receiver to the <variant> value of the argument."

	self put_Subject: rhs asVariant
!

trackStatus
	"Answer the <varbool> value of the 'TrackStatus' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TrackStatus: answer.
	^answer asObject
!

trackStatus: rhs
	"Set the 'TrackStatus' property of the receiver to the <varbool> value of the argument."

	self put_TrackStatus: rhs
! !
!ExcelIRoutingSlip categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #delivery!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #delivery:!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #get_Delivery:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #get_Message:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #get_Recipients:rhs:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #get_ReturnWhenDone:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #get_Status:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #get_Subject:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #get_TrackStatus:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #message!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #message:!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #put_Delivery:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #put_Message:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #put_Recipients:rhs:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #put_ReturnWhenDone:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #put_Subject:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #put_TrackStatus:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #recipients!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #recipients:!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #recipients:rhs:!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #reset!**auto generated**!methods!public! !
!ExcelIRoutingSlip categoriesFor: #Reset:!**auto generated**!COM Interfaces-IRoutingSlip!private! !
!ExcelIRoutingSlip categoriesFor: #returnWhenDone!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #returnWhenDone:!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #status!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #subject!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #subject:!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #trackStatus!**auto generated**!properties!public! !
!ExcelIRoutingSlip categoriesFor: #trackStatus:!**auto generated**!properties!public! !

!ExcelIRoutingSlip class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IRoutingSlip'
		ExcelIRoutingSlip defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Delivery:
			argumentTypes: 'sdword*';
		defineFunction: #put_Delivery:
			argumentTypes: 'sdword';
		defineFunction: #get_Message:
			argumentTypes: 'variant*';
		defineFunction: #put_Message:
			argumentTypes: 'variant';
		defineFunction: #get_Recipients:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #put_Recipients:rhs:
			argumentTypes: 'variant variant';
		defineFunction: #Reset:
			argumentTypes: 'variant*';
		defineFunction: #get_ReturnWhenDone:
			argumentTypes: 'varbool*';
		defineFunction: #put_ReturnWhenDone:
			argumentTypes: 'varbool';
		defineFunction: #get_Status:
			argumentTypes: 'sdword*';
		defineFunction: #get_Subject:
			argumentTypes: 'variant*';
		defineFunction: #put_Subject:
			argumentTypes: 'variant';
		defineFunction: #get_TrackStatus:
			argumentTypes: 'varbool*';
		defineFunction: #put_TrackStatus:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIRoutingSlip initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIRoutingSlip class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIRoutingSlip class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

