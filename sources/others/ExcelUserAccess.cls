"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelUserAccess
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelUserAccess guid: (IID fromString: '{0002446D-0000-0000-C000-000000000046}')!
ExcelUserAccess comment: '<ExcelUserAccess> is a wrapper class generated for the dispatch interface ''Excel.UserAccess'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002446D-0000-0000-C000-000000000046), 
	helpcontext(0x00020103)
]
dispinterface UserAccess {
	properties:
	methods:
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x000007e4), propget, helpcontext(0x000107e4)]
		VARIANT_BOOL AllowEdit();
[id(0x000007e4), propput, helpcontext(0x000107e4)]
		void AllowEdit(
			[in]VARIANT_BOOL arg1);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
};
'!
!ExcelUserAccess categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelUserAccess methodsFor!

allowEdit
	"Answer the <varbool> value of the 'AllowEdit' property of the receiver.
		VARIANT_BOOL AllowEdit"

	^(self getPropertyId: 2020)
!

allowEdit: arg1
	"Set the 'AllowEdit' property of the receiver to the <varbool> value of the argument.
		void AllowEdit"

	self setPropertyId: 2020 value: arg1
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
! !
!ExcelUserAccess categoriesFor: #allowEdit!**auto generated**!properties!public! !
!ExcelUserAccess categoriesFor: #allowEdit:!**auto generated**!properties!public! !
!ExcelUserAccess categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelUserAccess categoriesFor: #name!**auto generated**!properties!public! !

!ExcelUserAccess class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelUserAccess initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelUserAccess class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

