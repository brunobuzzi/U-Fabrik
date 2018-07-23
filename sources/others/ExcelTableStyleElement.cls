"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelTableStyleElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelTableStyleElement guid: (IID fromString: '{000244A5-0000-0000-C000-000000000046}')!
ExcelTableStyleElement comment: '<ExcelTableStyleElement> is a wrapper class generated for the dispatch interface ''Excel.TableStyleElement'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244A5-0000-0000-C000-000000000046), 
	helpcontext(0x0002013b)
]
dispinterface TableStyleElement {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000aaf), propget, helpcontext(0x00010aaf)]
		VARIANT_BOOL HasFormat();
[id(0x00000081), propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x000001b3), propget, helpcontext(0x000101b3)]
		Borders* Borders();
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x00000ab0), propget, helpcontext(0x00010ab0)]
		long StripeSize();
[id(0x00000ab0), propput, helpcontext(0x00010ab0)]
		void StripeSize(
			[in]long arg1);
[id(0x0000006f), helpcontext(0x0001006f)]
		void Clear();
};
'!
!ExcelTableStyleElement categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelTableStyleElement methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

borders
	"Answer the <ExcelBorders> value of the 'Borders' property of the receiver.
		Borders* Borders"

	^ExcelBorders attachInterface: (self getPropertyId: 435)
!

clear
	"Invoke the Clear() method of the COM object."

	(self invokeId: 111)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
!

hasFormat
	"Answer the <varbool> value of the 'HasFormat' property of the receiver.
		VARIANT_BOOL HasFormat"

	^(self getPropertyId: 2735)
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

stripeSize
	"Answer the <sdword> value of the 'StripeSize' property of the receiver.
		long StripeSize"

	^(self getPropertyId: 2736)
!

stripeSize: arg1
	"Set the 'StripeSize' property of the receiver to the <sdword> value of the argument.
		void StripeSize"

	self setPropertyId: 2736 value: arg1
! !
!ExcelTableStyleElement categoriesFor: #application!**auto generated**!properties!public! !
!ExcelTableStyleElement categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelTableStyleElement categoriesFor: #clear!**auto generated**!methods!public! !
!ExcelTableStyleElement categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelTableStyleElement categoriesFor: #font!**auto generated**!properties!public! !
!ExcelTableStyleElement categoriesFor: #hasFormat!**auto generated**!properties!public! !
!ExcelTableStyleElement categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelTableStyleElement categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelTableStyleElement categoriesFor: #stripeSize!**auto generated**!properties!public! !
!ExcelTableStyleElement categoriesFor: #stripeSize:!**auto generated**!properties!public! !

!ExcelTableStyleElement class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelTableStyleElement initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelTableStyleElement class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

