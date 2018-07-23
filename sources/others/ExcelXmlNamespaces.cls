"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelXmlNamespaces
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelXmlNamespaces guid: (IID fromString: '{00024477-0000-0000-C000-000000000046}')!
ExcelXmlNamespaces comment: '<ExcelXmlNamespaces> is a wrapper class generated for the dispatch interface ''Excel.XmlNamespaces'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024477-0000-0000-C000-000000000046), 
	helpcontext(0x0002010d)
]
dispinterface XmlNamespaces {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0000000000), propget, helpcontext(0x00010000)]
		XmlNamespace* _Default(
			[in]VARIANT Index);
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		XmlNamespace* Item(
			[in]VARIANT Index);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x00000006), propget, helpcontext(0x00010006)]
		BSTR Value();
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x00000917), helpcontext(0x00010917)]
		void InstallManifest(
			[in]BSTR Path,
			[in, optional]VARIANT InstallForAllUsers);
};
'!
!ExcelXmlNamespaces categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelXmlNamespaces methodsFor!

_default: index
	"Answer the <ExcelXmlNamespace> value of the '_Default' property of the receiver.
		XmlNamespace* _Default"

	^ExcelXmlNamespace attachInterface: (self getPropertyId: 0 item: index)
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

installManifest: path
	"Invoke the InstallManifest() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 installManifest: path
		 installForAllUsers: VARIANT unspecified!

installManifest: path installForAllUsers: installForAllUsers
	"Invoke the InstallManifest() method of the COM object."

	(self invokeId: 2327 with: path with: installForAllUsers)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelXmlNamespace> value of the 'Item' property of the receiver.
		XmlNamespace* Item"

	^ExcelXmlNamespace attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver.
		BSTR Value"

	^(self getPropertyId: 6)
! !
!ExcelXmlNamespaces categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelXmlNamespaces categoriesFor: #application!**auto generated**!properties!public! !
!ExcelXmlNamespaces categoriesFor: #count!**auto generated**!properties!public! !
!ExcelXmlNamespaces categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelXmlNamespaces categoriesFor: #installManifest:!**auto generated**!methods!public! !
!ExcelXmlNamespaces categoriesFor: #installManifest:installForAllUsers:!**auto generated**!methods!public! !
!ExcelXmlNamespaces categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelXmlNamespaces categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelXmlNamespaces categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelXmlNamespaces categoriesFor: #value!**auto generated**!properties!public! !

!ExcelXmlNamespaces class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelXmlNamespaces initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelXmlNamespaces class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

