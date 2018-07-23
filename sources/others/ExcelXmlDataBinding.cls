"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelXmlDataBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelXmlDataBinding guid: (IID fromString: '{00024478-0000-0000-C000-000000000046}')!
ExcelXmlDataBinding comment: '<ExcelXmlDataBinding> is a wrapper class generated for the dispatch interface ''Excel.XmlDataBinding'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024478-0000-0000-C000-000000000046), 
	helpcontext(0x0002010e)
]
dispinterface XmlDataBinding {
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
[id(0x00000589), helpcontext(0x00010589)]
		XlXmlImportResult Refresh();
[id(0x00000919), helpcontext(0x00010919)]
		void LoadSettings(
			[in]BSTR Url);
[id(0x0000091a), helpcontext(0x0001091a)]
		void ClearSettings();
[id(0x0000091b), propget, helpcontext(0x0001091b)]
		BSTR SourceUrl();
};
'!
!ExcelXmlDataBinding categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelXmlDataBinding methodsFor!

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

clearSettings
	"Invoke the ClearSettings() method of the COM object."

	(self invokeId: 2330)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

loadSettings: url
	"Invoke the LoadSettings() method of the COM object."

	(self invokeId: 2329 with: url)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

refresh
	"Answer the <SDWORD> result of invoking the Refresh() method of the COM object."

	^(self invokeId: 1417)
!

sourceUrl
	"Answer the <bstr> value of the 'SourceUrl' property of the receiver.
		BSTR SourceUrl"

	^(self getPropertyId: 2331)
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelXmlDataBinding categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelXmlDataBinding categoriesFor: #application!**auto generated**!properties!public! !
!ExcelXmlDataBinding categoriesFor: #clearSettings!**auto generated**!methods!public! !
!ExcelXmlDataBinding categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelXmlDataBinding categoriesFor: #loadSettings:!**auto generated**!methods!public! !
!ExcelXmlDataBinding categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelXmlDataBinding categoriesFor: #refresh!**auto generated**!methods!public! !
!ExcelXmlDataBinding categoriesFor: #sourceUrl!**auto generated**!properties!public! !
!ExcelXmlDataBinding categoriesFor: #value!**auto generated**!properties!public! !

!ExcelXmlDataBinding class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelXmlDataBinding initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelXmlDataBinding class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

