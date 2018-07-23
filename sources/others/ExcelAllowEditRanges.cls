"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelAllowEditRanges
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelAllowEditRanges guid: (IID fromString: '{0002446A-0000-0000-C000-000000000046}')!
ExcelAllowEditRanges comment: '<ExcelAllowEditRanges> is a wrapper class generated for the dispatch interface ''Excel.AllowEditRanges'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002446A-0000-0000-C000-000000000046), 
	helpcontext(0x00020100)
]
dispinterface AllowEditRanges {
	properties:
	methods:
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		AllowEditRange* Item(
			[in]VARIANT Index);
[id(0x000000b5), helpcontext(0x000100b5)]
		AllowEditRange* Add(
			[in]BSTR Title,
			[in]Range* Range,
			[in, optional]VARIANT Password);
[id(0000000000), propget, helpcontext(0x00010000)]
		AllowEditRange* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelAllowEditRanges categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelAllowEditRanges methodsFor!

_default: index
	"Answer the <ExcelAllowEditRange> value of the '_Default' property of the receiver.
		AllowEditRange* _Default"

	^ExcelAllowEditRange attachInterface: (self getPropertyId: 0 item: index)
!

add: title range: range
	"Answer the <ExcelAllowEditRange> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: title
		 range: range
		 password: VARIANT unspecified!

add: title range: range password: password
	"Answer the <ExcelAllowEditRange> result of invoking the Add() method of the COM object."

	^ExcelAllowEditRange attachInterface: (self invokeId: 181 withArguments:
			((Array new: 3)
				basicAt: 1 put: title;
				basicAt: 2 put: range;
				basicAt: 3 put: password;
				yourself))
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
	"Answer the <ExcelAllowEditRange> value of the 'Item' property of the receiver.
		AllowEditRange* Item"

	^ExcelAllowEditRange attachInterface: (self getPropertyId: 170 item: index)
! !
!ExcelAllowEditRanges categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelAllowEditRanges categoriesFor: #add:range:!**auto generated**!methods!public! !
!ExcelAllowEditRanges categoriesFor: #add:range:password:!**auto generated**!methods!public! !
!ExcelAllowEditRanges categoriesFor: #count!**auto generated**!properties!public! !
!ExcelAllowEditRanges categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelAllowEditRanges categoriesFor: #item:!**auto generated**!properties!public! !

!ExcelAllowEditRanges class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelAllowEditRanges initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelAllowEditRanges class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

