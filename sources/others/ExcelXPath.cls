"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelXPath
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelXPath guid: (IID fromString: '{0002447E-0000-0000-C000-000000000046}')!
ExcelXPath comment: '<ExcelXPath> is a wrapper class generated for the dispatch interface ''Excel.XPath'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002447E-0000-0000-C000-000000000046), 
	helpcontext(0x00020114)
]
dispinterface XPath {
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
[id(0x00000006), propget, helpcontext(0x00010006)]
		BSTR Value();
[id(0x000008d6), propget, helpcontext(0x000108d6)]
		XmlMap* Map();
[id(0x00000936), helpcontext(0x00010936)]
		void SetValue(
			[in]XmlMap* Map,
			[in]BSTR XPath,
			[in, optional]VARIANT SelectionNamespace,
			[in, optional]VARIANT Repeating);
[id(0x0000006f), helpcontext(0x0001006f)]
		void Clear();
[id(0x00000938), propget, helpcontext(0x00010938)]
		VARIANT_BOOL Repeating();
};
'!
!ExcelXPath categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelXPath methodsFor!

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

clear
	"Invoke the Clear() method of the COM object."

	(self invokeId: 111)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

map
	"Answer the <ExcelXmlMap> value of the 'Map' property of the receiver.
		XmlMap* Map"

	^ExcelXmlMap attachInterface: (self getPropertyId: 2262)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

repeating
	"Answer the <varbool> value of the 'Repeating' property of the receiver.
		VARIANT_BOOL Repeating"

	^(self getPropertyId: 2360)
!

setValue: map xPath: xPath
	"Invoke the SetValue() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 setValue: map
		 xPath: xPath
		 selectionNamespace: VARIANT unspecified
		 repeating: VARIANT unspecified!

setValue: map xPath: xPath selectionNamespace: selectionNamespace repeating: repeating
	"Invoke the SetValue() method of the COM object."

	(self invokeId: 2358 withArguments:
			((Array new: 4)
				basicAt: 1 put: map;
				basicAt: 2 put: xPath;
				basicAt: 3 put: selectionNamespace;
				basicAt: 4 put: repeating;
				yourself))
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver.
		BSTR Value"

	^(self getPropertyId: 6)
! !
!ExcelXPath categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelXPath categoriesFor: #application!**auto generated**!properties!public! !
!ExcelXPath categoriesFor: #clear!**auto generated**!methods!public! !
!ExcelXPath categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelXPath categoriesFor: #map!**auto generated**!properties!public! !
!ExcelXPath categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelXPath categoriesFor: #repeating!**auto generated**!properties!public! !
!ExcelXPath categoriesFor: #setValue:xPath:!**auto generated**!methods!public! !
!ExcelXPath categoriesFor: #setValue:xPath:selectionNamespace:repeating:!**auto generated**!methods!public! !
!ExcelXPath categoriesFor: #value!**auto generated**!properties!public! !

!ExcelXPath class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelXPath initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelXPath class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

