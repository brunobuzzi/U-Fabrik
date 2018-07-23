"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelODBCErrors
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelODBCErrors guid: (IID fromString: '{0002442D-0000-0000-C000-000000000046}')!
ExcelODBCErrors comment: '<ExcelODBCErrors> is a wrapper class generated for the dispatch interface ''Excel.ODBCErrors'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002442D-0000-0000-C000-000000000046), 
	helpcontext(0x000200c3)
]
dispinterface ODBCErrors {
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
		ODBCError* Item(
			[in]long Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		ODBCError* _Default(
			[in]long Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelODBCErrors categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelODBCErrors methodsFor!

_default: index
	"Answer the <ExcelODBCError> value of the '_Default' property of the receiver.
		ODBCError* _Default"

	^ExcelODBCError attachInterface: (self getPropertyId: 0 item: index)
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
	"Answer the <ExcelODBCError> result of invoking the Item() method of the COM object."

	^ExcelODBCError attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelODBCErrors categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelODBCErrors categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelODBCErrors categoriesFor: #application!**auto generated**!properties!public! !
!ExcelODBCErrors categoriesFor: #count!**auto generated**!properties!public! !
!ExcelODBCErrors categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelODBCErrors categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelODBCErrors categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelODBCErrors categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelODBCErrors class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelODBCErrors initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelODBCErrors class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

