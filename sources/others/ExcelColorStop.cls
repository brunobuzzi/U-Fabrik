"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelColorStop
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelColorStop guid: (IID fromString: '{000244AD-0000-0000-C000-000000000046}')!
ExcelColorStop comment: '<ExcelColorStop> is a wrapper class generated for the dispatch interface ''Excel.ColorStop'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244AD-0000-0000-C000-000000000046), 
	helpcontext(0x00020143)
]
dispinterface ColorStop {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000063), propget, helpcontext(0x00010063)]
		VARIANT Color();
[id(0x00000063), propput, helpcontext(0x00010063)]
		void Color(
			[in]VARIANT arg1);
[id(0x0000093d), propget, helpcontext(0x0001093d)]
		long ThemeColor();
[id(0x0000093d), propput, helpcontext(0x0001093d)]
		void ThemeColor(
			[in]long arg1);
[id(0x0000093e), propget, helpcontext(0x0001093e)]
		VARIANT TintAndShade();
[id(0x0000093e), propput, helpcontext(0x0001093e)]
		void TintAndShade(
			[in]VARIANT arg1);
[id(0x00000085), propget, helpcontext(0x00010085)]
		double Position();
[id(0x00000085), propput, helpcontext(0x00010085)]
		void Position(
			[in]double arg1);
};
'!
!ExcelColorStop categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelColorStop methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

color
	"Answer the <variant> value of the 'Color' property of the receiver.
		VARIANT Color"

	^(self getPropertyId: 99)
!

color: arg1
	"Set the 'Color' property of the receiver to the <variant> value of the argument.
		void Color"

	self setPropertyId: 99 value: arg1
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

position
	"Answer the <double> value of the 'Position' property of the receiver.
		double Position"

	^(self getPropertyId: 133)
!

position: arg1
	"Set the 'Position' property of the receiver to the <double> value of the argument.
		void Position"

	self setPropertyId: 133 value: arg1
!

themeColor
	"Answer the <sdword> value of the 'ThemeColor' property of the receiver.
		long ThemeColor"

	^(self getPropertyId: 2365)
!

themeColor: arg1
	"Set the 'ThemeColor' property of the receiver to the <sdword> value of the argument.
		void ThemeColor"

	self setPropertyId: 2365 value: arg1
!

tintAndShade
	"Answer the <variant> value of the 'TintAndShade' property of the receiver.
		VARIANT TintAndShade"

	^(self getPropertyId: 2366)
!

tintAndShade: arg1
	"Set the 'TintAndShade' property of the receiver to the <variant> value of the argument.
		void TintAndShade"

	self setPropertyId: 2366 value: arg1
! !
!ExcelColorStop categoriesFor: #application!**auto generated**!properties!public! !
!ExcelColorStop categoriesFor: #color!**auto generated**!properties!public! !
!ExcelColorStop categoriesFor: #color:!**auto generated**!properties!public! !
!ExcelColorStop categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelColorStop categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelColorStop categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelColorStop categoriesFor: #position!**auto generated**!properties!public! !
!ExcelColorStop categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelColorStop categoriesFor: #themeColor!**auto generated**!properties!public! !
!ExcelColorStop categoriesFor: #themeColor:!**auto generated**!properties!public! !
!ExcelColorStop categoriesFor: #tintAndShade!**auto generated**!properties!public! !
!ExcelColorStop categoriesFor: #tintAndShade:!**auto generated**!properties!public! !

!ExcelColorStop class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelColorStop initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelColorStop class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

