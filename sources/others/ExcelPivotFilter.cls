"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotFilter guid: (IID fromString: '{00024483-0000-0000-C000-000000000046}')!
ExcelPivotFilter comment: '<ExcelPivotFilter> is a wrapper class generated for the dispatch interface ''Excel.PivotFilter'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024483-0000-0000-C000-000000000046), 
	helpcontext(0x00020119)
]
dispinterface PivotFilter {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000c0), propget, helpcontext(0x000100c0)]
		long Order();
[id(0x000000c0), propput, helpcontext(0x000100c0)]
		void Order(
			[in]long arg1);
[id(0x00000a7e), propget, helpcontext(0x00010a7e)]
		XlPivotFilterType FilterType();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x000000da), propget, helpcontext(0x000100da)]
		BSTR Description();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000908), propget, helpcontext(0x00010908)]
		VARIANT_BOOL Active();
[id(0x000002db), propget, helpcontext(0x000102db)]
		PivotField* PivotField();
[id(0x0000082b), propget, helpcontext(0x0001082b)]
		PivotField* DataField();
[id(0x00000a7f), propget, helpcontext(0x00010a7f)]
		CubeField* DataCubeField();
[id(0x00000a80), propget, helpcontext(0x00010a80)]
		VARIANT Value1();
[id(0x0000056c), propget, helpcontext(0x0001056c)]
		VARIANT Value2();
[id(0x00000a81), propget, helpcontext(0x00010a81)]
		PivotField* MemberPropertyField();
[id(0x00000a82), propget, helpcontext(0x00010a82)]
		VARIANT_BOOL IsMemberPropertyFilter();
};
'!
!ExcelPivotFilter categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotFilter methodsFor!

active
	"Answer the <varbool> value of the 'Active' property of the receiver.
		VARIANT_BOOL Active"

	^(self getPropertyId: 2312)
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

dataCubeField
	"Answer the <ExcelCubeField> value of the 'DataCubeField' property of the receiver.
		CubeField* DataCubeField"

	^ExcelCubeField attachInterface: (self getPropertyId: 2687)
!

dataField
	"Answer the <ExcelPivotField> value of the 'DataField' property of the receiver.
		PivotField* DataField"

	^ExcelPivotField attachInterface: (self getPropertyId: 2091)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

description
	"Answer the <bstr> value of the 'Description' property of the receiver.
		BSTR Description"

	^(self getPropertyId: 218)
!

filterType
	"Answer the <sdword> value of the 'FilterType' property of the receiver.
		XlPivotFilterType FilterType"

	^(self getPropertyId: 2686)
!

isMemberPropertyFilter
	"Answer the <varbool> value of the 'IsMemberPropertyFilter' property of the receiver.
		VARIANT_BOOL IsMemberPropertyFilter"

	^(self getPropertyId: 2690)
!

memberPropertyField
	"Answer the <ExcelPivotField> value of the 'MemberPropertyField' property of the receiver.
		PivotField* MemberPropertyField"

	^ExcelPivotField attachInterface: (self getPropertyId: 2689)
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

order
	"Answer the <sdword> value of the 'Order' property of the receiver.
		long Order"

	^(self getPropertyId: 192)
!

order: arg1
	"Set the 'Order' property of the receiver to the <sdword> value of the argument.
		void Order"

	self setPropertyId: 192 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

pivotField
	"Answer the <ExcelPivotField> value of the 'PivotField' property of the receiver.
		PivotField* PivotField"

	^ExcelPivotField attachInterface: (self getPropertyId: 731)
!

value1
	"Answer the <variant> value of the 'Value1' property of the receiver.
		VARIANT Value1"

	^(self getPropertyId: 2688)
!

value2
	"Answer the <variant> value of the 'Value2' property of the receiver.
		VARIANT Value2"

	^(self getPropertyId: 1388)
! !
!ExcelPivotFilter categoriesFor: #active!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #dataCubeField!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #dataField!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelPivotFilter categoriesFor: #description!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #filterType!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #isMemberPropertyFilter!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #memberPropertyField!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #name!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #order!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #order:!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #pivotField!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #value1!**auto generated**!properties!public! !
!ExcelPivotFilter categoriesFor: #value2!**auto generated**!properties!public! !

!ExcelPivotFilter class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotFilter initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotFilter class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

