"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelRoutingSlip
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelRoutingSlip guid: (IID fromString: '{000208AA-0000-0000-C000-000000000046}')!
ExcelRoutingSlip comment: '<ExcelRoutingSlip> is a wrapper class generated for the dispatch interface ''Excel.RoutingSlip'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208AA-0000-0000-C000-000000000046), 
	helpcontext(0x0002006a)
]
dispinterface RoutingSlip {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000003bb), propget, helpcontext(0x000103bb)]
		XlRoutingSlipDelivery Delivery();
[id(0x000003bb), propput, helpcontext(0x000103bb)]
		void Delivery(
			[in]XlRoutingSlipDelivery arg1);
[id(0x000003ba), propget, helpcontext(0x000103ba)]
		VARIANT Message();
[id(0x000003ba), propput, helpcontext(0x000103ba)]
		void Message(
			[in]VARIANT arg1);
[id(0x000003b8), propget, helpcontext(0x000103b8)]
		VARIANT Recipients(
			[in, optional]VARIANT Index);
[id(0x000003b8), propput, helpcontext(0x000103b8)]
		void Recipients(
			[in, optional]VARIANT Index,
			[in]VARIANT arg2);
[id(0x0000022b), helpcontext(0x0001022b)]
		VARIANT Reset();
[id(0x000003bc), propget, helpcontext(0x000103bc)]
		VARIANT_BOOL ReturnWhenDone();
[id(0x000003bc), propput, helpcontext(0x000103bc)]
		void ReturnWhenDone(
			[in]VARIANT_BOOL arg1);
[id(0x000003be), propget, helpcontext(0x000103be)]
		XlRoutingSlipStatus Status();
[id(0x000003b9), propget, helpcontext(0x000103b9)]
		VARIANT Subject();
[id(0x000003b9), propput, helpcontext(0x000103b9)]
		void Subject(
			[in]VARIANT arg1);
[id(0x000003bd), propget, helpcontext(0x000103bd)]
		VARIANT_BOOL TrackStatus();
[id(0x000003bd), propput, helpcontext(0x000103bd)]
		void TrackStatus(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelRoutingSlip categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelRoutingSlip methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delivery
	"Answer the <sdword> value of the 'Delivery' property of the receiver.
		XlRoutingSlipDelivery Delivery"

	^(self getPropertyId: 955)
!

delivery: arg1
	"Set the 'Delivery' property of the receiver to the <sdword> value of the argument.
		void Delivery"

	self setPropertyId: 955 value: arg1
!

message
	"Answer the <variant> value of the 'Message' property of the receiver.
		VARIANT Message"

	^(self getPropertyId: 954)
!

message: arg1
	"Set the 'Message' property of the receiver to the <variant> value of the argument.
		void Message"

	self setPropertyId: 954 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

recipients
	"Answer the <variant> value of the 'Recipients' property of the receiver.
		VARIANT Recipients"

	^self recipients: VARIANT unspecified!

recipients: index
	"Answer the <variant> value of the 'Recipients' property of the receiver.
		VARIANT Recipients"

	^(self getPropertyId: 952 item: index)
!

recipients: index _: arg2
	"Set the 'Recipients' property of the receiver to the <variant> value of the argument.
		void Recipients"

	self setPropertyId: 952 item: index value: arg2
!

reset
	"Answer the <VARIANT> result of invoking the Reset() method of the COM object."

	^(self invokeId: 555)
!

returnWhenDone
	"Answer the <varbool> value of the 'ReturnWhenDone' property of the receiver.
		VARIANT_BOOL ReturnWhenDone"

	^(self getPropertyId: 956)
!

returnWhenDone: arg1
	"Set the 'ReturnWhenDone' property of the receiver to the <varbool> value of the argument.
		void ReturnWhenDone"

	self setPropertyId: 956 value: arg1
!

status
	"Answer the <sdword> value of the 'Status' property of the receiver.
		XlRoutingSlipStatus Status"

	^(self getPropertyId: 958)
!

subject
	"Answer the <variant> value of the 'Subject' property of the receiver.
		VARIANT Subject"

	^(self getPropertyId: 953)
!

subject: arg1
	"Set the 'Subject' property of the receiver to the <variant> value of the argument.
		void Subject"

	self setPropertyId: 953 value: arg1
!

trackStatus
	"Answer the <varbool> value of the 'TrackStatus' property of the receiver.
		VARIANT_BOOL TrackStatus"

	^(self getPropertyId: 957)
!

trackStatus: arg1
	"Set the 'TrackStatus' property of the receiver to the <varbool> value of the argument.
		void TrackStatus"

	self setPropertyId: 957 value: arg1
! !
!ExcelRoutingSlip categoriesFor: #application!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #delivery!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #delivery:!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #message!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #message:!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #recipients!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #recipients:!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #recipients:_:!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #reset!**auto generated**!methods!public! !
!ExcelRoutingSlip categoriesFor: #returnWhenDone!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #returnWhenDone:!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #status!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #subject!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #subject:!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #trackStatus!**auto generated**!properties!public! !
!ExcelRoutingSlip categoriesFor: #trackStatus:!**auto generated**!properties!public! !

!ExcelRoutingSlip class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelRoutingSlip initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelRoutingSlip class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

