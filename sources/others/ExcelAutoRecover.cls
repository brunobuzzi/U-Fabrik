"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelAutoRecover
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelAutoRecover guid: (IID fromString: '{0002445A-0000-0000-C000-000000000046}')!
ExcelAutoRecover comment: '<ExcelAutoRecover> is a wrapper class generated for the dispatch interface ''Excel.AutoRecover'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002445A-0000-0000-C000-000000000046), 
	helpcontext(0x000200f0)
]
dispinterface AutoRecover {
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
[id(0x0000018a), propget, helpcontext(0x0001018a)]
		long Time();
[id(0x0000018a), propput, helpcontext(0x0001018a)]
		void Time(
			[in]long arg1);
[id(0x00000123), propget, helpcontext(0x00010123)]
		BSTR Path();
[id(0x00000123), propput, helpcontext(0x00010123)]
		void Path(
			[in]BSTR arg1);
};
'!
!ExcelAutoRecover categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelAutoRecover methodsFor!

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

path
	"Answer the <bstr> value of the 'Path' property of the receiver.
		BSTR Path"

	^(self getPropertyId: 291)
!

path: arg1
	"Set the 'Path' property of the receiver to the <bstr> value of the argument.
		void Path"

	self setPropertyId: 291 value: arg1
!

time
	"Answer the <sdword> value of the 'Time' property of the receiver.
		long Time"

	^(self getPropertyId: 394)
!

time: arg1
	"Set the 'Time' property of the receiver to the <sdword> value of the argument.
		void Time"

	self setPropertyId: 394 value: arg1
! !
!ExcelAutoRecover categoriesFor: #application!**auto generated**!properties!public! !
!ExcelAutoRecover categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelAutoRecover categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelAutoRecover categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelAutoRecover categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelAutoRecover categoriesFor: #path!**auto generated**!properties!public! !
!ExcelAutoRecover categoriesFor: #path:!**auto generated**!properties!public! !
!ExcelAutoRecover categoriesFor: #time!**auto generated**!properties!public! !
!ExcelAutoRecover categoriesFor: #time:!**auto generated**!properties!public! !

!ExcelAutoRecover class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelAutoRecover initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelAutoRecover class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

