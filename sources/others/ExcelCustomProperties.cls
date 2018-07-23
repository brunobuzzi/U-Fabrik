"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelCustomProperties
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelCustomProperties guid: (IID fromString: '{00024452-0000-0000-C000-000000000046}')!
ExcelCustomProperties comment: '<ExcelCustomProperties> is a wrapper class generated for the dispatch interface ''Excel.CustomProperties'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024452-0000-0000-C000-000000000046), 
	helpcontext(0x000200e8)
]
dispinterface CustomProperties {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		CustomProperty* Add(
			[in]BSTR Name,
			[in]VARIANT Value);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0000000000), propget, helpcontext(0x00010000)]
		CustomProperty* _Default(
			[in]VARIANT Index);
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		CustomProperty* Item(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelCustomProperties categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelCustomProperties methodsFor!

_default: index
	"Answer the <ExcelCustomProperty> value of the '_Default' property of the receiver.
		CustomProperty* _Default"

	^ExcelCustomProperty attachInterface: (self getPropertyId: 0 item: index)
!

add: name value: value
	"Answer the <ExcelCustomProperty> result of invoking the Add() method of the COM object."

	^ExcelCustomProperty attachInterface: (self invokeId: 181 with: name with: value)
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
	"Answer the <ExcelCustomProperty> value of the 'Item' property of the receiver.
		CustomProperty* Item"

	^ExcelCustomProperty attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelCustomProperties categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelCustomProperties categoriesFor: #add:value:!**auto generated**!methods!public! !
!ExcelCustomProperties categoriesFor: #application!**auto generated**!properties!public! !
!ExcelCustomProperties categoriesFor: #count!**auto generated**!properties!public! !
!ExcelCustomProperties categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelCustomProperties categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelCustomProperties categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelCustomProperties categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelCustomProperties class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelCustomProperties initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelCustomProperties class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

