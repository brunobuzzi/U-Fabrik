"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelError guid: (IID fromString: '{0002445D-0000-0000-C000-000000000046}')!
ExcelError comment: '<ExcelError> is a wrapper class generated for the dispatch interface ''Excel.Error'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002445D-0000-0000-C000-000000000046), 
	helpcontext(0x000200f3)
]
dispinterface Error {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000006), propget, helpcontext(0x00010006)]
		VARIANT_BOOL Value();
[id(0x000008a2), propget, helpcontext(0x000108a2)]
		VARIANT_BOOL Ignore();
[id(0x000008a2), propput, helpcontext(0x000108a2)]
		void Ignore(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelError categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelError methodsFor!

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

ignore
	"Answer the <varbool> value of the 'Ignore' property of the receiver.
		VARIANT_BOOL Ignore"

	^(self getPropertyId: 2210)
!

ignore: arg1
	"Set the 'Ignore' property of the receiver to the <varbool> value of the argument.
		void Ignore"

	self setPropertyId: 2210 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

value
	"Answer the <varbool> value of the 'Value' property of the receiver.
		VARIANT_BOOL Value"

	^(self getPropertyId: 6)
! !
!ExcelError categoriesFor: #application!**auto generated**!properties!public! !
!ExcelError categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelError categoriesFor: #ignore!**auto generated**!properties!public! !
!ExcelError categoriesFor: #ignore:!**auto generated**!properties!public! !
!ExcelError categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelError categoriesFor: #value!**auto generated**!properties!public! !

!ExcelError class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelError initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelError class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

