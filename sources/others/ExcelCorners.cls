"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelCorners
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelCorners guid: (IID fromString: '{000208C0-0000-0000-C000-000000000046}')!
ExcelCorners comment: '<ExcelCorners> is a wrapper class generated for the dispatch interface ''Excel.Corners'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208C0-0000-0000-C000-000000000046), 
	helpcontext(0x00020080), 
	hidden
]
dispinterface Corners {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), hidden, propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000006e), hidden, propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x000000eb), hidden, helpcontext(0x000100eb)]
		VARIANT Select();
};
'!
!ExcelCorners categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelCorners methodsFor!

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

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
! !
!ExcelCorners categoriesFor: #application!**auto generated**!properties!public! !
!ExcelCorners categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelCorners categoriesFor: #name!**auto generated**!properties!public! !
!ExcelCorners categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelCorners categoriesFor: #select!**auto generated**!methods!public! !

!ExcelCorners class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelCorners initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelCorners class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

