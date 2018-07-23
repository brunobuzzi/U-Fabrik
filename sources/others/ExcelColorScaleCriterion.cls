"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelColorScaleCriterion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelColorScaleCriterion guid: (IID fromString: '{00024495-0000-0000-C000-000000000046}')!
ExcelColorScaleCriterion comment: '<ExcelColorScaleCriterion> is a wrapper class generated for the dispatch interface ''Excel.ColorScaleCriterion'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024495-0000-0000-C000-000000000046), 
	helpcontext(0x0002012b)
]
dispinterface ColorScaleCriterion {
	properties:
	methods:
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		XlConditionValueTypes Type();
[id(0x0000006c), propput, helpcontext(0x0001006c)]
		void Type(
			[in]XlConditionValueTypes arg1);
[id(0x00000006), propget, helpcontext(0x00010006)]
		VARIANT Value();
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in]VARIANT arg1);
[id(0x00000a9d), propget, helpcontext(0x00010a9d)]
		FormatColor* FormatColor();
};
'!
!ExcelColorScaleCriterion categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelColorScaleCriterion methodsFor!

formatColor
	"Answer the <ExcelFormatColor> value of the 'FormatColor' property of the receiver.
		FormatColor* FormatColor"

	^ExcelFormatColor attachInterface: (self getPropertyId: 2717)
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		XlConditionValueTypes Type"

	^(self getPropertyId: 108)
!

type: arg1
	"Set the 'Type' property of the receiver to the <sdword> value of the argument.
		void Type"

	self setPropertyId: 108 value: arg1
!

value
	"Answer the <variant> value of the 'Value' property of the receiver.
		VARIANT Value"

	^(self getPropertyId: 6)
!

value: arg1
	"Set the 'Value' property of the receiver to the <variant> value of the argument.
		void Value"

	self setPropertyId: 6 value: arg1
! !
!ExcelColorScaleCriterion categoriesFor: #formatColor!**auto generated**!properties!public! !
!ExcelColorScaleCriterion categoriesFor: #index!**auto generated**!properties!public! !
!ExcelColorScaleCriterion categoriesFor: #type!**auto generated**!properties!public! !
!ExcelColorScaleCriterion categoriesFor: #type:!**auto generated**!properties!public! !
!ExcelColorScaleCriterion categoriesFor: #value!**auto generated**!properties!public! !
!ExcelColorScaleCriterion categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelColorScaleCriterion class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelColorScaleCriterion initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelColorScaleCriterion class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

