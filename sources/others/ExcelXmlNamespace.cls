"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelXmlNamespace
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelXmlNamespace guid: (IID fromString: '{00024476-0000-0000-C000-000000000046}')!
ExcelXmlNamespace comment: '<ExcelXmlNamespace> is a wrapper class generated for the dispatch interface ''Excel.XmlNamespace'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024476-0000-0000-C000-000000000046), 
	helpcontext(0x0002010c)
]
dispinterface XmlNamespace {
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
[id(0x00000915), propget, helpcontext(0x00010915)]
		BSTR Uri();
[id(0x00000916), propget, helpcontext(0x00010916)]
		BSTR Prefix();
};
'!
!ExcelXmlNamespace categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelXmlNamespace methodsFor!

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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

prefix
	"Answer the <bstr> value of the 'Prefix' property of the receiver.
		BSTR Prefix"

	^(self getPropertyId: 2326)
!

uri
	"Answer the <bstr> value of the 'Uri' property of the receiver.
		BSTR Uri"

	^(self getPropertyId: 2325)
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelXmlNamespace categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelXmlNamespace categoriesFor: #application!**auto generated**!properties!public! !
!ExcelXmlNamespace categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelXmlNamespace categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelXmlNamespace categoriesFor: #prefix!**auto generated**!properties!public! !
!ExcelXmlNamespace categoriesFor: #uri!**auto generated**!properties!public! !
!ExcelXmlNamespace categoriesFor: #value!**auto generated**!properties!public! !

!ExcelXmlNamespace class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelXmlNamespace initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelXmlNamespace class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

