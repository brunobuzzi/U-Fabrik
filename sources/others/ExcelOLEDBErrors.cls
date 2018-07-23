"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelOLEDBErrors
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelOLEDBErrors guid: (IID fromString: '{00024446-0000-0000-C000-000000000046}')!
ExcelOLEDBErrors comment: '<ExcelOLEDBErrors> is a wrapper class generated for the dispatch interface ''Excel.OLEDBErrors'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024446-0000-0000-C000-000000000046), 
	helpcontext(0x000200dc)
]
dispinterface OLEDBErrors {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), helpcontext(0x000100aa)]
		OLEDBError* Item(
			[in]long Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		OLEDBError* _Default(
			[in]long Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelOLEDBErrors categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelOLEDBErrors methodsFor!

_default: index
	"Answer the <ExcelOLEDBError> value of the '_Default' property of the receiver.
		OLEDBError* _Default"

	^ExcelOLEDBError attachInterface: (self getPropertyId: 0 item: index)
!

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
	"Answer the <ExcelOLEDBError> result of invoking the Item() method of the COM object."

	^ExcelOLEDBError attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelOLEDBErrors categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelOLEDBErrors categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelOLEDBErrors categoriesFor: #application!**auto generated**!properties!public! !
!ExcelOLEDBErrors categoriesFor: #count!**auto generated**!properties!public! !
!ExcelOLEDBErrors categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelOLEDBErrors categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelOLEDBErrors categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelOLEDBErrors categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelOLEDBErrors class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelOLEDBErrors initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelOLEDBErrors class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

