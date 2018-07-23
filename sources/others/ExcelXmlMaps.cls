"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelXmlMaps
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelXmlMaps guid: (IID fromString: '{0002447C-0000-0000-C000-000000000046}')!
ExcelXmlMaps comment: '<ExcelXmlMaps> is a wrapper class generated for the dispatch interface ''Excel.XmlMaps'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002447C-0000-0000-C000-000000000046), 
	helpcontext(0x00020112)
]
dispinterface XmlMaps {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		XmlMap* Add(
			[in]BSTR Schema,
			[in, optional]VARIANT RootElementName);
[id(0000000000), propget, helpcontext(0x00010000)]
		XmlMap* _Default(
			[in]VARIANT Index);
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		XmlMap* Item(
			[in]VARIANT Index);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelXmlMaps categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelXmlMaps methodsFor!

_default: index
	"Answer the <ExcelXmlMap> value of the '_Default' property of the receiver.
		XmlMap* _Default"

	^ExcelXmlMap attachInterface: (self getPropertyId: 0 item: index)
!

add: schema
	"Answer the <ExcelXmlMap> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: schema
		 rootElementName: VARIANT unspecified!

add: schema rootElementName: rootElementName
	"Answer the <ExcelXmlMap> result of invoking the Add() method of the COM object."

	^ExcelXmlMap attachInterface: (self invokeId: 181 with: schema with: rootElementName)
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
	"Answer the <ExcelXmlMap> value of the 'Item' property of the receiver.
		XmlMap* Item"

	^ExcelXmlMap attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelXmlMaps categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelXmlMaps categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelXmlMaps categoriesFor: #add:rootElementName:!**auto generated**!methods!public! !
!ExcelXmlMaps categoriesFor: #application!**auto generated**!properties!public! !
!ExcelXmlMaps categoriesFor: #count!**auto generated**!properties!public! !
!ExcelXmlMaps categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelXmlMaps categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelXmlMaps categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelXmlMaps categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelXmlMaps class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelXmlMaps initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelXmlMaps class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

