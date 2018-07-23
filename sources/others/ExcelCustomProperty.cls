"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelCustomProperty
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelCustomProperty guid: (IID fromString: '{00024453-0000-0000-C000-000000000046}')!
ExcelCustomProperty comment: '<ExcelCustomProperty> is a wrapper class generated for the dispatch interface ''Excel.CustomProperty'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024453-0000-0000-C000-000000000046), 
	helpcontext(0x000200e9)
]
dispinterface CustomProperty {
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
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x00000006), propget, helpcontext(0x00010006)]
		VARIANT Value();
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in]VARIANT arg1);
[id(0000000000), propget, helpcontext(0x00010000)]
		VARIANT _Default();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
};
'!
!ExcelCustomProperty categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelCustomProperty methodsFor!

_default
	"Answer the <variant> value of the '_Default' property of the receiver.
		VARIANT _Default"

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

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

value
	"Answer the <variant> value of the 'Value' property of the receiver.
		VARIANT Value"

	^(self getPropertyId: 6)
!

value: arg1
	"Set the 'Value' property of the receiver to the <variant> value of the argument.
		void Value"

	self setPropertyId: 6 value: arg1
! !
!ExcelCustomProperty categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelCustomProperty categoriesFor: #application!**auto generated**!properties!public! !
!ExcelCustomProperty categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelCustomProperty categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelCustomProperty categoriesFor: #name!**auto generated**!properties!public! !
!ExcelCustomProperty categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelCustomProperty categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelCustomProperty categoriesFor: #value!**auto generated**!properties!public! !
!ExcelCustomProperty categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelCustomProperty class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelCustomProperty initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelCustomProperty class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

