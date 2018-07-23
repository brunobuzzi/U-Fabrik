"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelMailer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelMailer guid: (IID fromString: '{000208D1-0000-0000-C000-000000000046}')!
ExcelMailer comment: '<ExcelMailer> is a wrapper class generated for the dispatch interface ''Excel.Mailer'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208D1-0000-0000-C000-000000000046), 
	helpcontext(0x00020090)
]
dispinterface Mailer {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000003d7), propget, helpcontext(0x000103d7)]
		VARIANT BCCRecipients();
[id(0x000003d7), propput, helpcontext(0x000103d7)]
		void BCCRecipients(
			[in]VARIANT arg1);
[id(0x000003d6), propget, helpcontext(0x000103d6)]
		VARIANT CCRecipients();
[id(0x000003d6), propput, helpcontext(0x000103d6)]
		void CCRecipients(
			[in]VARIANT arg1);
[id(0x000003d8), propget, helpcontext(0x000103d8)]
		VARIANT Enclosures();
[id(0x000003d8), propput, helpcontext(0x000103d8)]
		void Enclosures(
			[in]VARIANT arg1);
[id(0x000003da), propget, helpcontext(0x000103da)]
		VARIANT_BOOL Received();
[id(0x000003db), propget, helpcontext(0x000103db)]
		DATE SendDateTime();
[id(0x000003dc), propget, helpcontext(0x000103dc)]
		BSTR Sender();
[id(0x000003b9), propget, helpcontext(0x000103b9)]
		BSTR Subject();
[id(0x000003b9), propput, helpcontext(0x000103b9)]
		void Subject(
			[in]BSTR arg1);
[id(0x000003d5), propget, helpcontext(0x000103d5)]
		VARIANT ToRecipients();
[id(0x000003d5), propput, helpcontext(0x000103d5)]
		void ToRecipients(
			[in]VARIANT arg1);
[id(0x000003ce), propget, helpcontext(0x000103ce)]
		VARIANT WhichAddress();
[id(0x000003ce), propput, helpcontext(0x000103ce)]
		void WhichAddress(
			[in]VARIANT arg1);
};
'!
!ExcelMailer categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelMailer methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

bccRecipients
	"Answer the <variant> value of the 'BCCRecipients' property of the receiver.
		VARIANT BCCRecipients"

	^(self getPropertyId: 983)
!

bccRecipients: arg1
	"Set the 'BCCRecipients' property of the receiver to the <variant> value of the argument.
		void BCCRecipients"

	self setPropertyId: 983 value: arg1
!

ccRecipients
	"Answer the <variant> value of the 'CCRecipients' property of the receiver.
		VARIANT CCRecipients"

	^(self getPropertyId: 982)
!

ccRecipients: arg1
	"Set the 'CCRecipients' property of the receiver to the <variant> value of the argument.
		void CCRecipients"

	self setPropertyId: 982 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

enclosures
	"Answer the <variant> value of the 'Enclosures' property of the receiver.
		VARIANT Enclosures"

	^(self getPropertyId: 984)
!

enclosures: arg1
	"Set the 'Enclosures' property of the receiver to the <variant> value of the argument.
		void Enclosures"

	self setPropertyId: 984 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

received
	"Answer the <varbool> value of the 'Received' property of the receiver.
		VARIANT_BOOL Received"

	^(self getPropertyId: 986)
!

sendDateTime
	"Answer the <date> value of the 'SendDateTime' property of the receiver.
		DATE SendDateTime"

	^(self getPropertyId: 987)
!

sender
	"Answer the <bstr> value of the 'Sender' property of the receiver.
		BSTR Sender"

	^(self getPropertyId: 988)
!

subject
	"Answer the <bstr> value of the 'Subject' property of the receiver.
		BSTR Subject"

	^(self getPropertyId: 953)
!

subject: arg1
	"Set the 'Subject' property of the receiver to the <bstr> value of the argument.
		void Subject"

	self setPropertyId: 953 value: arg1
!

toRecipients
	"Answer the <variant> value of the 'ToRecipients' property of the receiver.
		VARIANT ToRecipients"

	^(self getPropertyId: 981)
!

toRecipients: arg1
	"Set the 'ToRecipients' property of the receiver to the <variant> value of the argument.
		void ToRecipients"

	self setPropertyId: 981 value: arg1
!

whichAddress
	"Answer the <variant> value of the 'WhichAddress' property of the receiver.
		VARIANT WhichAddress"

	^(self getPropertyId: 974)
!

whichAddress: arg1
	"Set the 'WhichAddress' property of the receiver to the <variant> value of the argument.
		void WhichAddress"

	self setPropertyId: 974 value: arg1
! !
!ExcelMailer categoriesFor: #application!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #bccRecipients!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #bccRecipients:!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #ccRecipients!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #ccRecipients:!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #enclosures!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #enclosures:!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #received!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #sendDateTime!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #sender!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #subject!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #subject:!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #toRecipients!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #toRecipients:!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #whichAddress!**auto generated**!properties!public! !
!ExcelMailer categoriesFor: #whichAddress:!**auto generated**!properties!public! !

!ExcelMailer class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelMailer initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelMailer class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

