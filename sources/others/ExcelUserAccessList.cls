"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelUserAccessList
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelUserAccessList guid: (IID fromString: '{0002446C-0000-0000-C000-000000000046}')!
ExcelUserAccessList comment: '<ExcelUserAccessList> is a wrapper class generated for the dispatch interface ''Excel.UserAccessList'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002446C-0000-0000-C000-000000000046), 
	helpcontext(0x00020102)
]
dispinterface UserAccessList {
	properties:
	methods:
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		UserAccess* Item(
			[in]VARIANT Index);
[id(0x000000b5), helpcontext(0x000100b5)]
		UserAccess* Add(
			[in]BSTR Name,
			[in]VARIANT_BOOL AllowEdit);
[id(0x000008bf), helpcontext(0x000108bf)]
		void DeleteAll();
[id(0000000000), propget, helpcontext(0x00010000)]
		UserAccess* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelUserAccessList categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelUserAccessList methodsFor!

_default: index
	"Answer the <ExcelUserAccess> value of the '_Default' property of the receiver.
		UserAccess* _Default"

	^ExcelUserAccess attachInterface: (self getPropertyId: 0 item: index)
!

add: name allowEdit: allowEdit
	"Answer the <ExcelUserAccess> result of invoking the Add() method of the COM object."

	^ExcelUserAccess attachInterface: (self invokeId: 181 with: name with: allowEdit)
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver.
		long Count"

	^(self getPropertyId: 118)
!

deleteAll
	"Invoke the DeleteAll() method of the COM object."

	(self invokeId: 2239)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelUserAccess> value of the 'Item' property of the receiver.
		UserAccess* Item"

	^ExcelUserAccess attachInterface: (self getPropertyId: 170 item: index)
! !
!ExcelUserAccessList categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelUserAccessList categoriesFor: #add:allowEdit:!**auto generated**!methods!public! !
!ExcelUserAccessList categoriesFor: #count!**auto generated**!properties!public! !
!ExcelUserAccessList categoriesFor: #deleteAll!**auto generated**!methods!public! !
!ExcelUserAccessList categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelUserAccessList categoriesFor: #item:!**auto generated**!properties!public! !

!ExcelUserAccessList class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelUserAccessList initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelUserAccessList class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

