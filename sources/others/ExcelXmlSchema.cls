"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelXmlSchema
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelXmlSchema guid: (IID fromString: '{00024479-0000-0000-C000-000000000046}')!
ExcelXmlSchema comment: '<ExcelXmlSchema> is a wrapper class generated for the dispatch interface ''Excel.XmlSchema'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024479-0000-0000-C000-000000000046), 
	helpcontext(0x0002010f)
]
dispinterface XmlSchema {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000091c), propget, helpcontext(0x0001091c)]
		XmlNamespace* Namespace();
[id(0x0000091d), propget, helpcontext(0x0001091d)]
		BSTR XML();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
};
'!
!ExcelXmlSchema categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelXmlSchema methodsFor!

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

namespace
	"Answer the <ExcelXmlNamespace> value of the 'Namespace' property of the receiver.
		XmlNamespace* Namespace"

	^ExcelXmlNamespace attachInterface: (self getPropertyId: 2332)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

xml
	"Answer the <bstr> value of the 'XML' property of the receiver.
		BSTR XML"

	^(self getPropertyId: 2333)
! !
!ExcelXmlSchema categoriesFor: #application!**auto generated**!properties!public! !
!ExcelXmlSchema categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelXmlSchema categoriesFor: #name!**auto generated**!properties!public! !
!ExcelXmlSchema categoriesFor: #namespace!**auto generated**!properties!public! !
!ExcelXmlSchema categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelXmlSchema categoriesFor: #xml!**auto generated**!properties!public! !

!ExcelXmlSchema class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelXmlSchema initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelXmlSchema class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

