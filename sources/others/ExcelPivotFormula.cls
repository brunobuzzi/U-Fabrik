"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotFormula
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotFormula guid: (IID fromString: '{0002441E-0000-0000-C000-000000000046}')!
ExcelPivotFormula comment: '<ExcelPivotFormula> is a wrapper class generated for the dispatch interface ''Excel.PivotFormula'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002441E-0000-0000-C000-000000000046), 
	helpcontext(0x000200b4)
]
dispinterface PivotFormula {
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
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0000000000), propput, helpcontext(0x00010000)]
		void _Default(
			[in]BSTR arg1);
[id(0x00000105), propget, helpcontext(0x00010105)]
		BSTR Formula();
[id(0x00000105), propput, helpcontext(0x00010105)]
		void Formula(
			[in]BSTR arg1);
[id(0x00000006), propget, helpcontext(0x00010006)]
		BSTR Value();
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in]BSTR arg1);
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x000001e6), propput, helpcontext(0x000101e6)]
		void Index(
			[in]long arg1);
[id(0x00000824), propget, helpcontext(0x00010824)]
		BSTR StandardFormula();
[id(0x00000824), propput, helpcontext(0x00010824)]
		void StandardFormula(
			[in]BSTR arg1);
};
'!
!ExcelPivotFormula categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotFormula methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver.
		BSTR _Default"

	^(self getPropertyId: 0)
!

_default: arg1
	"Set the '_Default' property of the receiver to the <bstr> value of the argument.
		void _Default"

	self setPropertyId: 0 value: arg1
!

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

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

formula
	"Answer the <bstr> value of the 'Formula' property of the receiver.
		BSTR Formula"

	^(self getPropertyId: 261)
!

formula: arg1
	"Set the 'Formula' property of the receiver to the <bstr> value of the argument.
		void Formula"

	self setPropertyId: 261 value: arg1
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

index: arg1
	"Set the 'Index' property of the receiver to the <sdword> value of the argument.
		void Index"

	self setPropertyId: 486 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

standardFormula
	"Answer the <bstr> value of the 'StandardFormula' property of the receiver.
		BSTR StandardFormula"

	^(self getPropertyId: 2084)
!

standardFormula: arg1
	"Set the 'StandardFormula' property of the receiver to the <bstr> value of the argument.
		void StandardFormula"

	self setPropertyId: 2084 value: arg1
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver.
		BSTR Value"

	^(self getPropertyId: 6)
!

value: arg1
	"Set the 'Value' property of the receiver to the <bstr> value of the argument.
		void Value"

	self setPropertyId: 6 value: arg1
! !
!ExcelPivotFormula categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelPivotFormula categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPivotFormula categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotFormula categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotFormula categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelPivotFormula categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelPivotFormula categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelPivotFormula categoriesFor: #index!**auto generated**!properties!public! !
!ExcelPivotFormula categoriesFor: #index:!**auto generated**!properties!public! !
!ExcelPivotFormula categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPivotFormula categoriesFor: #standardFormula!**auto generated**!properties!public! !
!ExcelPivotFormula categoriesFor: #standardFormula:!**auto generated**!properties!public! !
!ExcelPivotFormula categoriesFor: #value!**auto generated**!properties!public! !
!ExcelPivotFormula categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelPivotFormula class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotFormula initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotFormula class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

