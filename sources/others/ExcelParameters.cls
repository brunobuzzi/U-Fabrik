"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelParameters
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelParameters guid: (IID fromString: '{0002442B-0000-0000-C000-000000000046}')!
ExcelParameters comment: '<ExcelParameters> is a wrapper class generated for the dispatch interface ''Excel.Parameters'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002442B-0000-0000-C000-000000000046), 
	helpcontext(0x000200c1)
]
dispinterface Parameters {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		Parameter* Add(
			[in]BSTR Name,
			[in, optional]VARIANT iDataType);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), helpcontext(0x000100aa)]
		Parameter* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		Parameter* _Default(
			[in]VARIANT Index);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelParameters categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelParameters methodsFor!

_default: index
	"Answer the <ExcelParameter> value of the '_Default' property of the receiver.
		Parameter* _Default"

	^ExcelParameter attachInterface: (self getPropertyId: 0 item: index)
!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	!

add: name
	"Answer the <ExcelParameter> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: name
		 iDataType: VARIANT unspecified!

add: name iDataType: iDataType
	"Answer the <ExcelParameter> result of invoking the Add() method of the COM object."

	^ExcelParameter attachInterface: (self invokeId: 181 with: name with: iDataType)
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

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelParameter> result of invoking the Item() method of the COM object."

	^ExcelParameter attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelParameters categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelParameters categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelParameters categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelParameters categoriesFor: #add:iDataType:!**auto generated**!methods!public! !
!ExcelParameters categoriesFor: #application!**auto generated**!properties!public! !
!ExcelParameters categoriesFor: #count!**auto generated**!properties!public! !
!ExcelParameters categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelParameters categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelParameters categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelParameters categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelParameters categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelParameters class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelParameters initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelParameters class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

