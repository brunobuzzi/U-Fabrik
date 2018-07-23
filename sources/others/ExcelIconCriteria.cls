"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIconCriteria
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIconCriteria guid: (IID fromString: '{00024498-0000-0000-C000-000000000046}')!
ExcelIconCriteria comment: '<ExcelIconCriteria> is a wrapper class generated for the dispatch interface ''Excel.IconCriteria'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024498-0000-0000-C000-000000000046), 
	helpcontext(0x0002012e)
]
dispinterface IconCriteria {
	properties:
	methods:
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0000000000), propget, helpcontext(0x00010000)]
		IconCriterion* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		IconCriterion* Item(
			[in]VARIANT Index);
};
'!
!ExcelIconCriteria categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelIconCriteria methodsFor!

_default: index
	"Answer the <ExcelIconCriterion> value of the '_Default' property of the receiver.
		IconCriterion* _Default"

	^ExcelIconCriterion attachInterface: (self getPropertyId: 0 item: index)
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
	"Answer the <ExcelIconCriterion> value of the 'Item' property of the receiver.
		IconCriterion* Item"

	^ExcelIconCriterion attachInterface: (self getPropertyId: 170 item: index)
! !
!ExcelIconCriteria categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIconCriteria categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIconCriteria categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIconCriteria categoriesFor: #item:!**auto generated**!properties!public! !

!ExcelIconCriteria class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIconCriteria initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIconCriteria class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

