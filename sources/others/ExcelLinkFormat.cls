"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelLinkFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelLinkFormat guid: (IID fromString: '{00024442-0000-0000-C000-000000000046}')!
ExcelLinkFormat comment: '<ExcelLinkFormat> is a wrapper class generated for the dispatch interface ''Excel.LinkFormat'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024442-0000-0000-C000-000000000046), 
	helpcontext(0x000200d8)
]
dispinterface LinkFormat {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000418), propget, helpcontext(0x00010418)]
		VARIANT_BOOL AutoUpdate();
[id(0x00000418), propput, helpcontext(0x00010418)]
		void AutoUpdate(
			[in]VARIANT_BOOL arg1);
[id(0x0000010d), propget, helpcontext(0x0001010d)]
		VARIANT_BOOL Locked();
[id(0x0000010d), propput, helpcontext(0x0001010d)]
		void Locked(
			[in]VARIANT_BOOL arg1);
[id(0x000002a8), helpcontext(0x000102a8)]
		void Update();
};
'!
!ExcelLinkFormat categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelLinkFormat methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

autoUpdate
	"Answer the <varbool> value of the 'AutoUpdate' property of the receiver.
		VARIANT_BOOL AutoUpdate"

	^(self getPropertyId: 1048)
!

autoUpdate: arg1
	"Set the 'AutoUpdate' property of the receiver to the <varbool> value of the argument.
		void AutoUpdate"

	self setPropertyId: 1048 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver.
		VARIANT_BOOL Locked"

	^(self getPropertyId: 269)
!

locked: arg1
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument.
		void Locked"

	self setPropertyId: 269 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

update
	"Invoke the Update() method of the COM object."

	(self invokeId: 680)
! !
!ExcelLinkFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelLinkFormat categoriesFor: #autoUpdate!**auto generated**!properties!public! !
!ExcelLinkFormat categoriesFor: #autoUpdate:!**auto generated**!properties!public! !
!ExcelLinkFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelLinkFormat categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelLinkFormat categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelLinkFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelLinkFormat categoriesFor: #update!**auto generated**!methods!public! !

!ExcelLinkFormat class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelLinkFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelLinkFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

