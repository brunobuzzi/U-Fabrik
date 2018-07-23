"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSmartTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSmartTag guid: (IID fromString: '{00024460-0000-0000-C000-000000000046}')!
ExcelSmartTag comment: '<ExcelSmartTag> is a wrapper class generated for the dispatch interface ''Excel.SmartTag'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024460-0000-0000-C000-000000000046), 
	helpcontext(0x000200f6)
]
dispinterface SmartTag {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000008a4), propget, helpcontext(0x000108a4)]
		BSTR DownloadURL();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0x000008a5), propget, helpcontext(0x000108a5)]
		BSTR XML();
[id(0x000000c5), propget, helpcontext(0x000100c5)]
		Range* Range();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x000008a6), propget, helpcontext(0x000108a6)]
		SmartTagActions* SmartTagActions();
[id(0x00000857), propget, helpcontext(0x00010857)]
		CustomProperties* Properties();
};
'!
!ExcelSmartTag categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSmartTag methodsFor!

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

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

downloadURL
	"Answer the <bstr> value of the 'DownloadURL' property of the receiver.
		BSTR DownloadURL"

	^(self getPropertyId: 2212)
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

properties
	"Answer the <ExcelCustomProperties> value of the 'Properties' property of the receiver.
		CustomProperties* Properties"

	^ExcelCustomProperties attachInterface: (self getPropertyId: 2135)
!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver.
		Range* Range"

	^ExcelRange attachInterface: (self getPropertyId: 197)
!

smartTagActions
	"Answer the <ExcelSmartTagActions> value of the 'SmartTagActions' property of the receiver.
		SmartTagActions* SmartTagActions"

	^ExcelSmartTagActions attachInterface: (self getPropertyId: 2214)
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
!

xml
	"Answer the <bstr> value of the 'XML' property of the receiver.
		BSTR XML"

	^(self getPropertyId: 2213)
! !
!ExcelSmartTag categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelSmartTag categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSmartTag categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSmartTag categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelSmartTag categoriesFor: #downloadURL!**auto generated**!properties!public! !
!ExcelSmartTag categoriesFor: #name!**auto generated**!properties!public! !
!ExcelSmartTag categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelSmartTag categoriesFor: #properties!**auto generated**!properties!public! !
!ExcelSmartTag categoriesFor: #range!**auto generated**!properties!public! !
!ExcelSmartTag categoriesFor: #smartTagActions!**auto generated**!properties!public! !
!ExcelSmartTag categoriesFor: #value!**auto generated**!properties!public! !
!ExcelSmartTag categoriesFor: #xml!**auto generated**!properties!public! !

!ExcelSmartTag class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSmartTag initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSmartTag class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

