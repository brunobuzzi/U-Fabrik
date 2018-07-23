"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelListDataFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelListDataFormat guid: (IID fromString: '{0002447D-0000-0000-C000-000000000046}')!
ExcelListDataFormat comment: '<ExcelListDataFormat> is a wrapper class generated for the dispatch interface ''Excel.ListDataFormat'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002447D-0000-0000-C000-000000000046), 
	helpcontext(0x00020113)
]
dispinterface ListDataFormat {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0000000000), propget, helpcontext(0x00010000)]
		XlListDataType _Default();
[id(0x0000092c), propget, helpcontext(0x0001092c)]
		VARIANT Choices();
[id(0x0000092d), propget, helpcontext(0x0001092d)]
		long DecimalPlaces();
[id(0x0000092e), propget, helpcontext(0x0001092e)]
		VARIANT DefaultValue();
[id(0x0000092f), propget, helpcontext(0x0001092f)]
		VARIANT_BOOL IsPercent();
[id(0x00000930), propget, helpcontext(0x00010930)]
		long lcid();
[id(0x00000931), propget, helpcontext(0x00010931)]
		long MaxCharacters();
[id(0x00000932), propget, helpcontext(0x00010932)]
		VARIANT MaxNumber();
[id(0x00000933), propget, helpcontext(0x00010933)]
		VARIANT MinNumber();
[id(0x00000934), propget, helpcontext(0x00010934)]
		VARIANT_BOOL Required();
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		XlListDataType Type();
[id(0x00000128), propget, helpcontext(0x00010128)]
		VARIANT_BOOL ReadOnly();
[id(0x00000935), propget, helpcontext(0x00010935)]
		VARIANT_BOOL AllowFillIn();
};
'!
!ExcelListDataFormat categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelListDataFormat methodsFor!

_default
	"Answer the <sdword> value of the '_Default' property of the receiver.
		XlListDataType _Default"

	^(self getPropertyId: 0)
!

allowFillIn
	"Answer the <varbool> value of the 'AllowFillIn' property of the receiver.
		VARIANT_BOOL AllowFillIn"

	^(self getPropertyId: 2357)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

choices
	"Answer the <variant> value of the 'Choices' property of the receiver.
		VARIANT Choices"

	^(self getPropertyId: 2348)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

decimalPlaces
	"Answer the <sdword> value of the 'DecimalPlaces' property of the receiver.
		long DecimalPlaces"

	^(self getPropertyId: 2349)
!

defaultValue
	"Answer the <variant> value of the 'DefaultValue' property of the receiver.
		VARIANT DefaultValue"

	^(self getPropertyId: 2350)
!

isPercent
	"Answer the <varbool> value of the 'IsPercent' property of the receiver.
		VARIANT_BOOL IsPercent"

	^(self getPropertyId: 2351)
!

lcid
	"Answer the <sdword> value of the 'lcid' property of the receiver.
		long lcid"

	^(self getPropertyId: 2352)
!

maxCharacters
	"Answer the <sdword> value of the 'MaxCharacters' property of the receiver.
		long MaxCharacters"

	^(self getPropertyId: 2353)
!

maxNumber
	"Answer the <variant> value of the 'MaxNumber' property of the receiver.
		VARIANT MaxNumber"

	^(self getPropertyId: 2354)
!

minNumber
	"Answer the <variant> value of the 'MinNumber' property of the receiver.
		VARIANT MinNumber"

	^(self getPropertyId: 2355)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

readOnly
	"Answer the <varbool> value of the 'ReadOnly' property of the receiver.
		VARIANT_BOOL ReadOnly"

	^(self getPropertyId: 296)
!

required
	"Answer the <varbool> value of the 'Required' property of the receiver.
		VARIANT_BOOL Required"

	^(self getPropertyId: 2356)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		XlListDataType Type"

	^(self getPropertyId: 108)
!

value
	"Answer the <sdword> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelListDataFormat categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #allowFillIn!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #choices!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #decimalPlaces!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #defaultValue!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #isPercent!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #lcid!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #maxCharacters!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #maxNumber!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #minNumber!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #readOnly!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #required!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #type!**auto generated**!properties!public! !
!ExcelListDataFormat categoriesFor: #value!**auto generated**!properties!public! !

!ExcelListDataFormat class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelListDataFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelListDataFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

