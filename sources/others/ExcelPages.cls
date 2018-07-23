"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPages
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPages guid: (IID fromString: '{000244A3-0000-0000-C000-000000000046}')!
ExcelPages comment: '<ExcelPages> is a wrapper class generated for the dispatch interface ''Excel.Pages'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244A3-0000-0000-C000-000000000046), 
	helpcontext(0x00020139)
]
dispinterface Pages {
	properties:
	methods:
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		Page* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		Page* _Default(
			[in]VARIANT Index);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelPages categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPages methodsFor!

_default: index
	"Answer the <ExcelPage> value of the '_Default' property of the receiver.
		Page* _Default"

	^ExcelPage attachInterface: (self getPropertyId: 0 item: index)
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
	"Answer the <ExcelPage> value of the 'Item' property of the receiver.
		Page* Item"

	^ExcelPage attachInterface: (self getPropertyId: 170 item: index)
! !
!ExcelPages categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPages categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPages categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPages categoriesFor: #item:!**auto generated**!properties!public! !

!ExcelPages class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPages initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPages class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

