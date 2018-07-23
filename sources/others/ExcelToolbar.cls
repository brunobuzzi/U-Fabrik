"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelToolbar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelToolbar guid: (IID fromString: '{0002085C-0000-0000-C000-000000000046}')!
ExcelToolbar comment: '<ExcelToolbar> is a wrapper class generated for the dispatch interface ''Excel.Toolbar'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002085C-0000-0000-C000-000000000046), 
	helpcontext(0x0002001c), 
	hidden
]
dispinterface Toolbar {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000229), propget, helpcontext(0x00010229)]
		VARIANT_BOOL BuiltIn();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		long Height();
[id(0x0000007b), propput, helpcontext(0x0001007b)]
		void Height(
			[in]long arg1);
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		long Left();
[id(0x0000007f), propput, helpcontext(0x0001007f)]
		void Left(
			[in]long arg1);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x00000085), propget, helpcontext(0x00010085)]
		long Position();
[id(0x00000085), propput, helpcontext(0x00010085)]
		void Position(
			[in]long arg1);
[id(0x000000b0), propget, helpcontext(0x000100b0)]
		XlToolbarProtection Protection();
[id(0x000000b0), propput, helpcontext(0x000100b0)]
		void Protection(
			[in]XlToolbarProtection arg1);
[id(0x0000022b), helpcontext(0x0001022b)]
		void Reset();
[id(0x000003c4), propget, helpcontext(0x000103c4)]
		ToolbarButtons* ToolbarButtons();
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		long Top();
[id(0x0000007e), propput, helpcontext(0x0001007e)]
		void Top(
			[in]long arg1);
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		VARIANT_BOOL Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]VARIANT_BOOL arg1);
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		long Width();
[id(0x0000007a), propput, helpcontext(0x0001007a)]
		void Width(
			[in]long arg1);
};
'!
!ExcelToolbar categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelToolbar methodsFor!

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

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

height
	"Answer the <sdword> value of the 'Height' property of the receiver.
		long Height"

	^(self getPropertyId: 123)
!

height: arg1
	"Set the 'Height' property of the receiver to the <sdword> value of the argument.
		void Height"

	self setPropertyId: 123 value: arg1
!

left
	"Answer the <sdword> value of the 'Left' property of the receiver.
		long Left"

	^(self getPropertyId: 127)
!

left: arg1
	"Set the 'Left' property of the receiver to the <sdword> value of the argument.
		void Left"

	self setPropertyId: 127 value: arg1
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

position
	"Answer the <sdword> value of the 'Position' property of the receiver.
		long Position"

	^(self getPropertyId: 133)
!

position: arg1
	"Set the 'Position' property of the receiver to the <sdword> value of the argument.
		void Position"

	self setPropertyId: 133 value: arg1
!

protection
	"Answer the <sdword> value of the 'Protection' property of the receiver.
		XlToolbarProtection Protection"

	^(self getPropertyId: 176)
!

protection: arg1
	"Set the 'Protection' property of the receiver to the <sdword> value of the argument.
		void Protection"

	self setPropertyId: 176 value: arg1
!

reset
	"Invoke the Reset() method of the COM object."

	(self invokeId: 555)
!

toolbarButtons
	"Answer the <ExcelToolbarButtons> value of the 'ToolbarButtons' property of the receiver.
		ToolbarButtons* ToolbarButtons"

	^ExcelToolbarButtons attachInterface: (self getPropertyId: 964)
!

top
	"Answer the <sdword> value of the 'Top' property of the receiver.
		long Top"

	^(self getPropertyId: 126)
!

top: arg1
	"Set the 'Top' property of the receiver to the <sdword> value of the argument.
		void Top"

	self setPropertyId: 126 value: arg1
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver.
		VARIANT_BOOL Visible"

	^(self getPropertyId: 558)
!

visible: arg1
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument.
		void Visible"

	self setPropertyId: 558 value: arg1
!

width
	"Answer the <sdword> value of the 'Width' property of the receiver.
		long Width"

	^(self getPropertyId: 122)
!

width: arg1
	"Set the 'Width' property of the receiver to the <sdword> value of the argument.
		void Width"

	self setPropertyId: 122 value: arg1
! !
!ExcelToolbar categoriesFor: #application!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #builtIn!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelToolbar categoriesFor: #height!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #left!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #name!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #position!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #protection!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #protection:!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #reset!**auto generated**!methods!public! !
!ExcelToolbar categoriesFor: #toolbarButtons!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #top!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #width!**auto generated**!properties!public! !
!ExcelToolbar categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelToolbar class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelToolbar initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelToolbar class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

