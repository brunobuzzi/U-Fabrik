"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelFilter guid: (IID fromString: '{00024434-0000-0000-C000-000000000046}')!
ExcelFilter comment: '<ExcelFilter> is a wrapper class generated for the dispatch interface ''Excel.Filter'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024434-0000-0000-C000-000000000046), 
	helpcontext(0x000200ca)
]
dispinterface Filter {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000652), propget, helpcontext(0x00010652)]
		VARIANT_BOOL On();
[id(0x0000031c), propget, helpcontext(0x0001031c)]
		VARIANT Criteria1();
[id(0x00000a51), hidden, propget, helpcontext(0x00010a51)]
		XlAutoFilterOperator _Operator();
[id(0x0000031e), propget, helpcontext(0x0001031e)]
		VARIANT Criteria2();
[id(0x0000031d), propget, helpcontext(0x0001031d)]
		XlAutoFilterOperator Operator();
[id(0x0000031d), propput, helpcontext(0x0001031d)]
		void Operator(
			[in]XlAutoFilterOperator arg1);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
};
'!
!ExcelFilter categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelFilter methodsFor!

_operator
	"Answer the <sdword> value of the '_Operator' property of the receiver.
		XlAutoFilterOperator _Operator"

	^(self getPropertyId: 2641)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver.
		long Count"

	^(self getPropertyId: 118)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

criteria1
	"Answer the <variant> value of the 'Criteria1' property of the receiver.
		VARIANT Criteria1"

	^(self getPropertyId: 796)
!

criteria2
	"Answer the <variant> value of the 'Criteria2' property of the receiver.
		VARIANT Criteria2"

	^(self getPropertyId: 798)
!

on
	"Answer the <varbool> value of the 'On' property of the receiver.
		VARIANT_BOOL On"

	^(self getPropertyId: 1618)
!

operator
	"Answer the <sdword> value of the 'Operator' property of the receiver.
		XlAutoFilterOperator Operator"

	^(self getPropertyId: 797)
!

operator: arg1
	"Set the 'Operator' property of the receiver to the <sdword> value of the argument.
		void Operator"

	self setPropertyId: 797 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelFilter categoriesFor: #_operator!**auto generated**!properties!public! !
!ExcelFilter categoriesFor: #application!**auto generated**!properties!public! !
!ExcelFilter categoriesFor: #count!**auto generated**!properties!public! !
!ExcelFilter categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelFilter categoriesFor: #criteria1!**auto generated**!properties!public! !
!ExcelFilter categoriesFor: #criteria2!**auto generated**!properties!public! !
!ExcelFilter categoriesFor: #on!**auto generated**!properties!public! !
!ExcelFilter categoriesFor: #operator!**auto generated**!properties!public! !
!ExcelFilter categoriesFor: #operator:!**auto generated**!properties!public! !
!ExcelFilter categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelFilter class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelFilter initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelFilter class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

