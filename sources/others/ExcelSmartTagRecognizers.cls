"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSmartTagRecognizers
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSmartTagRecognizers guid: (IID fromString: '{00024463-0000-0000-C000-000000000046}')!
ExcelSmartTagRecognizers comment: '<ExcelSmartTagRecognizers> is a wrapper class generated for the dispatch interface ''Excel.SmartTagRecognizers'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024463-0000-0000-C000-000000000046), 
	helpcontext(0x000200f9)
]
dispinterface SmartTagRecognizers {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		SmartTagRecognizer* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		SmartTagRecognizer* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000008a9), propget, helpcontext(0x000108a9)]
		VARIANT_BOOL Recognize();
[id(0x000008a9), propput, helpcontext(0x000108a9)]
		void Recognize(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelSmartTagRecognizers categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSmartTagRecognizers methodsFor!

_default: index
	"Answer the <ExcelSmartTagRecognizer> value of the '_Default' property of the receiver.
		SmartTagRecognizer* _Default"

	^ExcelSmartTagRecognizer attachInterface: (self getPropertyId: 0 item: index)
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
	"Answer the <ExcelSmartTagRecognizer> value of the 'Item' property of the receiver.
		SmartTagRecognizer* Item"

	^ExcelSmartTagRecognizer attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

recognize
	"Answer the <varbool> value of the 'Recognize' property of the receiver.
		VARIANT_BOOL Recognize"

	^(self getPropertyId: 2217)
!

recognize: arg1
	"Set the 'Recognize' property of the receiver to the <varbool> value of the argument.
		void Recognize"

	self setPropertyId: 2217 value: arg1
! !
!ExcelSmartTagRecognizers categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelSmartTagRecognizers categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSmartTagRecognizers categoriesFor: #count!**auto generated**!properties!public! !
!ExcelSmartTagRecognizers categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSmartTagRecognizers categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelSmartTagRecognizers categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelSmartTagRecognizers categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelSmartTagRecognizers categoriesFor: #recognize!**auto generated**!properties!public! !
!ExcelSmartTagRecognizers categoriesFor: #recognize:!**auto generated**!properties!public! !

!ExcelSmartTagRecognizers class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSmartTagRecognizers initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSmartTagRecognizers class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

