"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelMultiThreadedCalculation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelMultiThreadedCalculation guid: (IID fromString: '{000244B1-0000-0000-C000-000000000046}')!
ExcelMultiThreadedCalculation comment: '<ExcelMultiThreadedCalculation> is a wrapper class generated for the dispatch interface ''Excel.MultiThreadedCalculation'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244B1-0000-0000-C000-000000000046), 
	helpcontext(0x00020147)
]
dispinterface MultiThreadedCalculation {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000258), propget, helpcontext(0x00010258)]
		VARIANT_BOOL Enabled();
[id(0x00000258), propput, helpcontext(0x00010258)]
		void Enabled(
			[in]VARIANT_BOOL arg1);
[id(0x00000ace), propget, helpcontext(0x00010ace)]
		XlThreadMode ThreadMode();
[id(0x00000ace), propput, helpcontext(0x00010ace)]
		void ThreadMode(
			[in]XlThreadMode arg1);
[id(0x00000acf), propget, helpcontext(0x00010acf)]
		long ThreadCount();
[id(0x00000acf), propput, helpcontext(0x00010acf)]
		void ThreadCount(
			[in]long arg1);
};
'!
!ExcelMultiThreadedCalculation categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelMultiThreadedCalculation methodsFor!

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

enabled
	"Answer the <varbool> value of the 'Enabled' property of the receiver.
		VARIANT_BOOL Enabled"

	^(self getPropertyId: 600)
!

enabled: arg1
	"Set the 'Enabled' property of the receiver to the <varbool> value of the argument.
		void Enabled"

	self setPropertyId: 600 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

threadCount
	"Answer the <sdword> value of the 'ThreadCount' property of the receiver.
		long ThreadCount"

	^(self getPropertyId: 2767)
!

threadCount: arg1
	"Set the 'ThreadCount' property of the receiver to the <sdword> value of the argument.
		void ThreadCount"

	self setPropertyId: 2767 value: arg1
!

threadMode
	"Answer the <sdword> value of the 'ThreadMode' property of the receiver.
		XlThreadMode ThreadMode"

	^(self getPropertyId: 2766)
!

threadMode: arg1
	"Set the 'ThreadMode' property of the receiver to the <sdword> value of the argument.
		void ThreadMode"

	self setPropertyId: 2766 value: arg1
! !
!ExcelMultiThreadedCalculation categoriesFor: #application!**auto generated**!properties!public! !
!ExcelMultiThreadedCalculation categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelMultiThreadedCalculation categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelMultiThreadedCalculation categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelMultiThreadedCalculation categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelMultiThreadedCalculation categoriesFor: #threadCount!**auto generated**!properties!public! !
!ExcelMultiThreadedCalculation categoriesFor: #threadCount:!**auto generated**!properties!public! !
!ExcelMultiThreadedCalculation categoriesFor: #threadMode!**auto generated**!properties!public! !
!ExcelMultiThreadedCalculation categoriesFor: #threadMode:!**auto generated**!properties!public! !

!ExcelMultiThreadedCalculation class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelMultiThreadedCalculation initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelMultiThreadedCalculation class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

