"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelMenu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelMenu guid: (IID fromString: '{00020866-0000-0000-C000-000000000046}')!
ExcelMenu comment: '<ExcelMenu> is a wrapper class generated for the dispatch interface ''Excel.Menu'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020866-0000-0000-C000-000000000046), 
	helpcontext(0x00020026), 
	hidden
]
dispinterface Menu {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000008b), propget, helpcontext(0x0001008b)]
		BSTR Caption();
[id(0x0000008b), propput, helpcontext(0x0001008b)]
		void Caption(
			[in]BSTR arg1);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000258), propget, helpcontext(0x00010258)]
		VARIANT_BOOL Enabled();
[id(0x00000258), propput, helpcontext(0x00010258)]
		void Enabled(
			[in]VARIANT_BOOL arg1);
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x00000251), propget, helpcontext(0x00010251)]
		MenuItems* MenuItems();
};
'!
!ExcelMenu categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelMenu methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver.
		BSTR Caption"

	^(self getPropertyId: 139)
!

caption: arg1
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument.
		void Caption"

	self setPropertyId: 139 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
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

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

menuItems
	"Answer the <ExcelMenuItems> value of the 'MenuItems' property of the receiver.
		MenuItems* MenuItems"

	^ExcelMenuItems attachInterface: (self getPropertyId: 593)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelMenu categoriesFor: #application!**auto generated**!properties!public! !
!ExcelMenu categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelMenu categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelMenu categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelMenu categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelMenu categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelMenu categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelMenu categoriesFor: #index!**auto generated**!properties!public! !
!ExcelMenu categoriesFor: #menuItems!**auto generated**!properties!public! !
!ExcelMenu categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelMenu class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelMenu initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelMenu class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

