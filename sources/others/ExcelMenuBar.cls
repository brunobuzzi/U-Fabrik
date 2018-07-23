"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelMenuBar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelMenuBar guid: (IID fromString: '{00020864-0000-0000-C000-000000000046}')!
ExcelMenuBar comment: '<ExcelMenuBar> is a wrapper class generated for the dispatch interface ''Excel.MenuBar'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020864-0000-0000-C000-000000000046), 
	helpcontext(0x00020024), 
	hidden
]
dispinterface MenuBar {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000130), helpcontext(0x00010130)]
		void Activate();
[id(0x00000229), propget, helpcontext(0x00010229)]
		VARIANT_BOOL BuiltIn();
[id(0x0000008b), propget, helpcontext(0x0001008b)]
		BSTR Caption();
[id(0x0000008b), propput, helpcontext(0x0001008b)]
		void Caption(
			[in]BSTR arg1);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x0000024f), propget, helpcontext(0x0001024f)]
		Menus* Menus();
[id(0x0000022b), helpcontext(0x0001022b)]
		void Reset();
};
'!
!ExcelMenuBar categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelMenuBar methodsFor!

activate
	"Invoke the Activate() method of the COM object."

	(self invokeId: 304)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

builtIn
	"Answer the <varbool> value of the 'BuiltIn' property of the receiver.
		VARIANT_BOOL BuiltIn"

	^(self getPropertyId: 553)
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

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

menus
	"Answer the <ExcelMenus> value of the 'Menus' property of the receiver.
		Menus* Menus"

	^ExcelMenus attachInterface: (self getPropertyId: 591)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

reset
	"Invoke the Reset() method of the COM object."

	(self invokeId: 555)
! !
!ExcelMenuBar categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelMenuBar categoriesFor: #application!**auto generated**!properties!public! !
!ExcelMenuBar categoriesFor: #builtIn!**auto generated**!properties!public! !
!ExcelMenuBar categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelMenuBar categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelMenuBar categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelMenuBar categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelMenuBar categoriesFor: #index!**auto generated**!properties!public! !
!ExcelMenuBar categoriesFor: #menus!**auto generated**!properties!public! !
!ExcelMenuBar categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelMenuBar categoriesFor: #reset!**auto generated**!methods!public! !

!ExcelMenuBar class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelMenuBar initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelMenuBar class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

