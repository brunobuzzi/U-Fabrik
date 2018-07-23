"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelColorScaleCriteria
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelColorScaleCriteria guid: (IID fromString: '{00024494-0000-0000-C000-000000000046}')!
ExcelColorScaleCriteria comment: '<ExcelColorScaleCriteria> is a wrapper class generated for the dispatch interface ''Excel.ColorScaleCriteria'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024494-0000-0000-C000-000000000046), 
	helpcontext(0x0002012a)
]
dispinterface ColorScaleCriteria {
	properties:
	methods:
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0000000000), propget, helpcontext(0x00010000)]
		ColorScaleCriterion* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		ColorScaleCriterion* Item(
			[in]VARIANT Index);
};
'!
!ExcelColorScaleCriteria categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelColorScaleCriteria methodsFor!

_default: index
	"Answer the <ExcelColorScaleCriterion> value of the '_Default' property of the receiver.
		ColorScaleCriterion* _Default"

	^ExcelColorScaleCriterion attachInterface: (self getPropertyId: 0 item: index)
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver.
		long Count"

	^(self getPropertyId: 118)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelColorScaleCriterion> value of the 'Item' property of the receiver.
		ColorScaleCriterion* Item"

	^ExcelColorScaleCriterion attachInterface: (self getPropertyId: 170 item: index)
! !
!ExcelColorScaleCriteria categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelColorScaleCriteria categoriesFor: #count!**auto generated**!properties!public! !
!ExcelColorScaleCriteria categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelColorScaleCriteria categoriesFor: #item:!**auto generated**!properties!public! !

!ExcelColorScaleCriteria class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelColorScaleCriteria initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelColorScaleCriteria class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

