"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelAction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelAction guid: (IID fromString: '{0002448F-0000-0000-C000-000000000046}')!
ExcelAction comment: '<ExcelAction> is a wrapper class generated for the dispatch interface ''Excel.Action'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002448F-0000-0000-C000-000000000046), 
	helpcontext(0x00020125)
]
dispinterface Action {
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
[id(0x0000008b), propget, helpcontext(0x0001008b)]
		BSTR Caption();
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		XlActionType Type();
[id(0x00000a98), propget, helpcontext(0x00010a98)]
		BSTR Coordinate();
[id(0x00000a99), propget, helpcontext(0x00010a99)]
		BSTR Content();
[id(0x000008a3), helpcontext(0x000108a3)]
		void Execute();
};
'!
!ExcelAction categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelAction methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver.
		BSTR Caption"

	^(self getPropertyId: 139)
!

content
	"Answer the <bstr> value of the 'Content' property of the receiver.
		BSTR Content"

	^(self getPropertyId: 2713)
!

coordinate
	"Answer the <bstr> value of the 'Coordinate' property of the receiver.
		BSTR Coordinate"

	^(self getPropertyId: 2712)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

execute
	"Invoke the Execute() method of the COM object."

	(self invokeId: 2211)
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

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		XlActionType Type"

	^(self getPropertyId: 108)
! !
!ExcelAction categoriesFor: #application!**auto generated**!properties!public! !
!ExcelAction categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelAction categoriesFor: #content!**auto generated**!properties!public! !
!ExcelAction categoriesFor: #coordinate!**auto generated**!properties!public! !
!ExcelAction categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelAction categoriesFor: #execute!**auto generated**!methods!public! !
!ExcelAction categoriesFor: #name!**auto generated**!properties!public! !
!ExcelAction categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelAction categoriesFor: #type!**auto generated**!properties!public! !

!ExcelAction class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelAction initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelAction class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

