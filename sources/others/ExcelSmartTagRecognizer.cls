"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSmartTagRecognizer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSmartTagRecognizer guid: (IID fromString: '{00024462-0000-0000-C000-000000000046}')!
ExcelSmartTagRecognizer comment: '<ExcelSmartTagRecognizer> is a wrapper class generated for the dispatch interface ''Excel.SmartTagRecognizer'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024462-0000-0000-C000-000000000046), 
	helpcontext(0x000200f8)
]
dispinterface SmartTagRecognizer {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000258), propget, helpcontext(0x00010258)]
		VARIANT_BOOL Enabled();
[id(0x00000258), propput, helpcontext(0x00010258)]
		void Enabled(
			[in]VARIANT_BOOL arg1);
[id(0x000008a8), propget, helpcontext(0x000108a8)]
		BSTR progID();
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0x00000121), propget, helpcontext(0x00010121)]
		BSTR FullName();
};
'!
!ExcelSmartTagRecognizer categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSmartTagRecognizer methodsFor!

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

enabled
	"Answer the <varbool> value of the 'Enabled' property of the receiver.
		VARIANT_BOOL Enabled"

	^(self getPropertyId: 600)
!

enabled: arg1
	"Set the 'Enabled' property of the receiver to the <varbool> value of the argument.
		void Enabled"

	self setPropertyId: 600 value: arg1
!

fullName
	"Answer the <bstr> value of the 'FullName' property of the receiver.
		BSTR FullName"

	^(self getPropertyId: 289)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

progID
	"Answer the <bstr> value of the 'progID' property of the receiver.
		BSTR progID"

	^(self getPropertyId: 2216)
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelSmartTagRecognizer categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelSmartTagRecognizer categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSmartTagRecognizer categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSmartTagRecognizer categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelSmartTagRecognizer categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelSmartTagRecognizer categoriesFor: #fullName!**auto generated**!properties!public! !
!ExcelSmartTagRecognizer categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelSmartTagRecognizer categoriesFor: #progID!**auto generated**!properties!public! !
!ExcelSmartTagRecognizer categoriesFor: #value!**auto generated**!properties!public! !

!ExcelSmartTagRecognizer class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSmartTagRecognizer initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSmartTagRecognizer class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

