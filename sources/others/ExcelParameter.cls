"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelParameter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelParameter guid: (IID fromString: '{0002442A-0000-0000-C000-000000000046}')!
ExcelParameter comment: '<ExcelParameter> is a wrapper class generated for the dispatch interface ''Excel.Parameter'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002442A-0000-0000-C000-000000000046), 
	helpcontext(0x000200c0)
]
dispinterface Parameter {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000002d2), propget, helpcontext(0x000102d2)]
		XlParameterDataType DataType();
[id(0x000002d2), propput, helpcontext(0x000102d2)]
		void DataType(
			[in]XlParameterDataType arg1);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		XlParameterType Type();
[id(0x0000063f), propget, helpcontext(0x0001063f)]
		BSTR PromptString();
[id(0x00000006), propget, helpcontext(0x00010006)]
		VARIANT Value();
[id(0x00000640), propget, helpcontext(0x00010640)]
		Range* SourceRange();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x00000641), helpcontext(0x00010641)]
		void SetParam(
			[in]XlParameterType Type,
			[in]VARIANT Value);
[id(0x00000757), propget, helpcontext(0x00010757)]
		VARIANT_BOOL RefreshOnChange();
[id(0x00000757), propput, helpcontext(0x00010757)]
		void RefreshOnChange(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelParameter categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelParameter methodsFor!

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

dataType
	"Answer the <sdword> value of the 'DataType' property of the receiver.
		XlParameterDataType DataType"

	^(self getPropertyId: 722)
!

dataType: arg1
	"Set the 'DataType' property of the receiver to the <sdword> value of the argument.
		void DataType"

	self setPropertyId: 722 value: arg1
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

promptString
	"Answer the <bstr> value of the 'PromptString' property of the receiver.
		BSTR PromptString"

	^(self getPropertyId: 1599)
!

refreshOnChange
	"Answer the <varbool> value of the 'RefreshOnChange' property of the receiver.
		VARIANT_BOOL RefreshOnChange"

	^(self getPropertyId: 1879)
!

refreshOnChange: arg1
	"Set the 'RefreshOnChange' property of the receiver to the <varbool> value of the argument.
		void RefreshOnChange"

	self setPropertyId: 1879 value: arg1
!

setParam: type value: value
	"Invoke the SetParam() method of the COM object."

	(self invokeId: 1601 with: type with: value)
!

sourceRange
	"Answer the <ExcelRange> value of the 'SourceRange' property of the receiver.
		Range* SourceRange"

	^ExcelRange attachInterface: (self getPropertyId: 1600)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		XlParameterType Type"

	^(self getPropertyId: 108)
!

value
	"Answer the <variant> value of the 'Value' property of the receiver.
		VARIANT Value"

	^(self getPropertyId: 6)
! !
!ExcelParameter categoriesFor: #application!**auto generated**!properties!public! !
!ExcelParameter categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelParameter categoriesFor: #dataType!**auto generated**!properties!public! !
!ExcelParameter categoriesFor: #dataType:!**auto generated**!properties!public! !
!ExcelParameter categoriesFor: #name!**auto generated**!properties!public! !
!ExcelParameter categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelParameter categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelParameter categoriesFor: #promptString!**auto generated**!properties!public! !
!ExcelParameter categoriesFor: #refreshOnChange!**auto generated**!properties!public! !
!ExcelParameter categoriesFor: #refreshOnChange:!**auto generated**!properties!public! !
!ExcelParameter categoriesFor: #setParam:value:!**auto generated**!methods!public! !
!ExcelParameter categoriesFor: #sourceRange!**auto generated**!properties!public! !
!ExcelParameter categoriesFor: #type!**auto generated**!properties!public! !
!ExcelParameter categoriesFor: #value!**auto generated**!properties!public! !

!ExcelParameter class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelParameter initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelParameter class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

