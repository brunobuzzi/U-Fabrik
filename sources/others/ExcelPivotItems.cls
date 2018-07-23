"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotItems
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotItems guid: (IID fromString: '{00020877-0000-0000-C000-000000000046}')!
ExcelPivotItems comment: '<ExcelPivotItems> is a wrapper class generated for the dispatch interface ''Excel.PivotItems'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020877-0000-0000-C000-000000000046), 
	helpcontext(0x00020037)
]
dispinterface PivotItems {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		PivotField* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		void Add(
			[in]BSTR Name);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), helpcontext(0x000100aa)]
		IDispatch* Item(
			[in]VARIANT Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelPivotItems categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotItems methodsFor!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	!

add: name
	"Invoke the Add() method of the COM object."

	(self invokeId: 181 with: name)
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
	"Answer the <IDispatch> result of invoking the Item() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <ExcelPivotField> value of the 'Parent' property of the receiver.
		PivotField* Parent"

	^ExcelPivotField attachInterface: (self getPropertyId: 150)
! !
!ExcelPivotItems categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelPivotItems categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelPivotItems categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotItems categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPivotItems categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotItems categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPivotItems categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelPivotItems categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelPivotItems class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotItems initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotItems class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

