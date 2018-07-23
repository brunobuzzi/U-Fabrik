"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotFields
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotFields guid: (IID fromString: '{00020875-0000-0000-C000-000000000046}')!
ExcelPivotFields comment: '<ExcelPivotFields> is a wrapper class generated for the dispatch interface ''Excel.PivotFields'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020875-0000-0000-C000-000000000046), 
	helpcontext(0x00020035)
]
dispinterface PivotFields {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		PivotTable* Parent();
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), helpcontext(0x000100aa)]
		IDispatch* Item(
			[in]VARIANT Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelPivotFields categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotFields methodsFor!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

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
	"Answer the <ExcelPivotTable> value of the 'Parent' property of the receiver.
		PivotTable* Parent"

	^ExcelPivotTable attachInterface: (self getPropertyId: 150)
! !
!ExcelPivotFields categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelPivotFields categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotFields categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPivotFields categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotFields categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPivotFields categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelPivotFields categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelPivotFields class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotFields initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotFields class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

