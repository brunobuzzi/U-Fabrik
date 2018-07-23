"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelTableStyle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelTableStyle guid: (IID fromString: '{000244A7-0000-0000-C000-000000000046}')!
ExcelTableStyle comment: '<ExcelTableStyle> is a wrapper class generated for the dispatch interface ''Excel.TableStyle'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244A7-0000-0000-C000-000000000046), 
	helpcontext(0x0002013d)
]
dispinterface TableStyle {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x000003a9), propget, helpcontext(0x000103a9)]
		BSTR NameLocal();
[id(0x00000229), propget, helpcontext(0x00010229)]
		VARIANT_BOOL BuiltIn();
[id(0x00000ab1), propget, helpcontext(0x00010ab1)]
		TableStyleElements* TableStyleElements();
[id(0x00000ab2), propget, helpcontext(0x00010ab2)]
		VARIANT_BOOL ShowAsAvailableTableStyle();
[id(0x00000ab2), propput, helpcontext(0x00010ab2)]
		void ShowAsAvailableTableStyle(
			[in]VARIANT_BOOL arg1);
[id(0x00000ab3), propget, helpcontext(0x00010ab3)]
		VARIANT_BOOL ShowAsAvailablePivotTableStyle();
[id(0x00000ab3), propput, helpcontext(0x00010ab3)]
		void ShowAsAvailablePivotTableStyle(
			[in]VARIANT_BOOL arg1);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x0000040f), helpcontext(0x0001040f)]
		TableStyle* Duplicate(
			[in, optional]VARIANT NewTableStyleName);
};
'!
!ExcelTableStyle categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelTableStyle methodsFor!

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

builtIn
	"Answer the <varbool> value of the 'BuiltIn' property of the receiver.
		VARIANT_BOOL BuiltIn"

	^(self getPropertyId: 553)
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

duplicate
	"Answer the <ExcelTableStyle> result of invoking the Duplicate() method of the COM object.
	Default values are passed for all optional parameters."

	^self duplicate: VARIANT unspecified!

duplicate: newTableStyleName
	"Answer the <ExcelTableStyle> result of invoking the Duplicate() method of the COM object."

	^ExcelTableStyle attachInterface: (self invokeId: 1039 with: newTableStyleName)
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

nameLocal
	"Answer the <bstr> value of the 'NameLocal' property of the receiver.
		BSTR NameLocal"

	^(self getPropertyId: 937)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

showAsAvailablePivotTableStyle
	"Answer the <varbool> value of the 'ShowAsAvailablePivotTableStyle' property of the receiver.
		VARIANT_BOOL ShowAsAvailablePivotTableStyle"

	^(self getPropertyId: 2739)
!

showAsAvailablePivotTableStyle: arg1
	"Set the 'ShowAsAvailablePivotTableStyle' property of the receiver to the <varbool> value of the argument.
		void ShowAsAvailablePivotTableStyle"

	self setPropertyId: 2739 value: arg1
!

showAsAvailableTableStyle
	"Answer the <varbool> value of the 'ShowAsAvailableTableStyle' property of the receiver.
		VARIANT_BOOL ShowAsAvailableTableStyle"

	^(self getPropertyId: 2738)
!

showAsAvailableTableStyle: arg1
	"Set the 'ShowAsAvailableTableStyle' property of the receiver to the <varbool> value of the argument.
		void ShowAsAvailableTableStyle"

	self setPropertyId: 2738 value: arg1
!

tableStyleElements
	"Answer the <ExcelTableStyleElements> value of the 'TableStyleElements' property of the receiver.
		TableStyleElements* TableStyleElements"

	^ExcelTableStyleElements attachInterface: (self getPropertyId: 2737)
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelTableStyle categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelTableStyle categoriesFor: #application!**auto generated**!properties!public! !
!ExcelTableStyle categoriesFor: #builtIn!**auto generated**!properties!public! !
!ExcelTableStyle categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelTableStyle categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelTableStyle categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelTableStyle categoriesFor: #duplicate:!**auto generated**!methods!public! !
!ExcelTableStyle categoriesFor: #name!**auto generated**!properties!public! !
!ExcelTableStyle categoriesFor: #nameLocal!**auto generated**!properties!public! !
!ExcelTableStyle categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelTableStyle categoriesFor: #showAsAvailablePivotTableStyle!**auto generated**!properties!public! !
!ExcelTableStyle categoriesFor: #showAsAvailablePivotTableStyle:!**auto generated**!properties!public! !
!ExcelTableStyle categoriesFor: #showAsAvailableTableStyle!**auto generated**!properties!public! !
!ExcelTableStyle categoriesFor: #showAsAvailableTableStyle:!**auto generated**!properties!public! !
!ExcelTableStyle categoriesFor: #tableStyleElements!**auto generated**!properties!public! !
!ExcelTableStyle categoriesFor: #value!**auto generated**!properties!public! !

!ExcelTableStyle class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelTableStyle initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelTableStyle class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

