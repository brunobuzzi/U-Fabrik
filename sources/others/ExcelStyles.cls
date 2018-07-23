"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelStyles
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelStyles guid: (IID fromString: '{00020853-0000-0000-C000-000000000046}')!
ExcelStyles comment: '<ExcelStyles> is a wrapper class generated for the dispatch interface ''Excel.Styles'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020853-0000-0000-C000-000000000046), 
	helpcontext(0x00020013)
]
dispinterface Styles {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		Style* Add(
			[in]BSTR Name,
			[in, optional]VARIANT BasedOn);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		Style* Item(
			[in]VARIANT Index);
[id(0x00000234), helpcontext(0x00010234)]
		VARIANT Merge(
			[in]VARIANT Workbook);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0000000000), propget, helpcontext(0x00010000)]
		Style* _Default(
			[in]VARIANT Index);
};
'!
!ExcelStyles categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelStyles methodsFor!

_default: index
	"Answer the <ExcelStyle> value of the '_Default' property of the receiver.
		Style* _Default"

	^ExcelStyle attachInterface: (self getPropertyId: 0 item: index)
!

add: name
	"Answer the <ExcelStyle> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: name
		 basedOn: VARIANT unspecified!

add: name basedOn: basedOn
	"Answer the <ExcelStyle> result of invoking the Add() method of the COM object."

	^ExcelStyle attachInterface: (self invokeId: 181 with: name with: basedOn)
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
	"Answer the <ExcelStyle> value of the 'Item' property of the receiver.
		Style* Item"

	^ExcelStyle attachInterface: (self getPropertyId: 170 item: index)
!

merge: workbook
	"Answer the <VARIANT> result of invoking the Merge() method of the COM object."

	^(self invokeId: 564 with: workbook)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelStyles categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelStyles categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelStyles categoriesFor: #add:basedOn:!**auto generated**!methods!public! !
!ExcelStyles categoriesFor: #application!**auto generated**!properties!public! !
!ExcelStyles categoriesFor: #count!**auto generated**!properties!public! !
!ExcelStyles categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelStyles categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelStyles categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelStyles categoriesFor: #merge:!**auto generated**!methods!public! !
!ExcelStyles categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelStyles class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelStyles initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelStyles class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

