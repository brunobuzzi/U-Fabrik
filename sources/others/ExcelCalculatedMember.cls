"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelCalculatedMember
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelCalculatedMember guid: (IID fromString: '{00024455-0000-0000-C000-000000000046}')!
ExcelCalculatedMember comment: '<ExcelCalculatedMember> is a wrapper class generated for the dispatch interface ''Excel.CalculatedMember'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024455-0000-0000-C000-000000000046), 
	helpcontext(0x000200eb)
]
dispinterface CalculatedMember {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x00000105), propget, helpcontext(0x00010105)]
		BSTR Formula();
[id(0x000002d1), propget, helpcontext(0x000102d1)]
		BSTR SourceName();
[id(0x0000088b), propget, helpcontext(0x0001088b)]
		long SolveOrder();
[id(0x0000088c), propget, helpcontext(0x0001088c)]
		VARIANT_BOOL IsValid();
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		XlCalculatedMemberType Type();
};
'!
!ExcelCalculatedMember categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelCalculatedMember methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver.
		BSTR _Default"

	^(self getPropertyId: 0)
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

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

formula
	"Answer the <bstr> value of the 'Formula' property of the receiver.
		BSTR Formula"

	^(self getPropertyId: 261)
!

isValid
	"Answer the <varbool> value of the 'IsValid' property of the receiver.
		VARIANT_BOOL IsValid"

	^(self getPropertyId: 2188)
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

solveOrder
	"Answer the <sdword> value of the 'SolveOrder' property of the receiver.
		long SolveOrder"

	^(self getPropertyId: 2187)
!

sourceName
	"Answer the <bstr> value of the 'SourceName' property of the receiver.
		BSTR SourceName"

	^(self getPropertyId: 721)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		XlCalculatedMemberType Type"

	^(self getPropertyId: 108)
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelCalculatedMember categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelCalculatedMember categoriesFor: #application!**auto generated**!properties!public! !
!ExcelCalculatedMember categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelCalculatedMember categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelCalculatedMember categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelCalculatedMember categoriesFor: #isValid!**auto generated**!properties!public! !
!ExcelCalculatedMember categoriesFor: #name!**auto generated**!properties!public! !
!ExcelCalculatedMember categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelCalculatedMember categoriesFor: #solveOrder!**auto generated**!properties!public! !
!ExcelCalculatedMember categoriesFor: #sourceName!**auto generated**!properties!public! !
!ExcelCalculatedMember categoriesFor: #type!**auto generated**!properties!public! !
!ExcelCalculatedMember categoriesFor: #value!**auto generated**!properties!public! !

!ExcelCalculatedMember class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelCalculatedMember initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelCalculatedMember class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

