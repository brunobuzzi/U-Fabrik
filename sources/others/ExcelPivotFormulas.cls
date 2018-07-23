"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotFormulas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotFormulas guid: (IID fromString: '{0002441F-0000-0000-C000-000000000046}')!
ExcelPivotFormulas comment: '<ExcelPivotFormulas> is a wrapper class generated for the dispatch interface ''Excel.PivotFormulas'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002441F-0000-0000-C000-000000000046), 
	helpcontext(0x000200b5)
]
dispinterface PivotFormulas {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x00000825), hidden, helpcontext(0x00010825)]
		PivotFormula* _Add(
			[in]BSTR Formula);
[id(0x000000aa), helpcontext(0x000100aa)]
		PivotFormula* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		PivotFormula* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000b5), helpcontext(0x000100b5)]
		PivotFormula* Add(
			[in]BSTR Formula,
			[in, optional]VARIANT UseStandardFormula);
};
'!
!ExcelPivotFormulas categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotFormulas methodsFor!

_add: formula
	"Answer the <ExcelPivotFormula> result of invoking the _Add() method of the COM object."

	^ExcelPivotFormula attachInterface: (self invokeId: 2085 with: formula)
!

_default: index
	"Answer the <ExcelPivotFormula> value of the '_Default' property of the receiver.
		PivotFormula* _Default"

	^ExcelPivotFormula attachInterface: (self getPropertyId: 0 item: index)
!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	!

add: formula
	"Answer the <ExcelPivotFormula> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: formula
		 useStandardFormula: VARIANT unspecified!

add: formula useStandardFormula: useStandardFormula
	"Answer the <ExcelPivotFormula> result of invoking the Add() method of the COM object."

	^ExcelPivotFormula attachInterface: (self invokeId: 181 with: formula with: useStandardFormula)
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

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelPivotFormula> result of invoking the Item() method of the COM object."

	^ExcelPivotFormula attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelPivotFormulas categoriesFor: #_add:!**auto generated**!methods!public! !
!ExcelPivotFormulas categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPivotFormulas categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelPivotFormulas categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelPivotFormulas categoriesFor: #add:useStandardFormula:!**auto generated**!methods!public! !
!ExcelPivotFormulas categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotFormulas categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPivotFormulas categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotFormulas categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPivotFormulas categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelPivotFormulas categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelPivotFormulas class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotFormulas initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotFormulas class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

