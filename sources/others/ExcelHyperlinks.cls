"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelHyperlinks
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelHyperlinks guid: (IID fromString: '{00024430-0000-0000-C000-000000000046}')!
ExcelHyperlinks comment: '<ExcelHyperlinks> is a wrapper class generated for the dispatch interface ''Excel.Hyperlinks'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024430-0000-0000-C000-000000000046), 
	helpcontext(0x000200c6)
]
dispinterface Hyperlinks {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		IDispatch* Add(
			[in]IDispatch* Anchor,
			[in]BSTR Address,
			[in, optional]VARIANT SubAddress,
			[in, optional]VARIANT ScreenTip,
			[in, optional]VARIANT TextToDisplay);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		Hyperlink* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		Hyperlink* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
};
'!
!ExcelHyperlinks categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelHyperlinks methodsFor!

_default: index
	"Answer the <ExcelHyperlink> value of the '_Default' property of the receiver.
		Hyperlink* _Default"

	^ExcelHyperlink attachInterface: (self getPropertyId: 0 item: index)
!

add: anchor address: address
	"Answer the <IDispatch> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: anchor
		 address: address
		 subAddress: VARIANT unspecified
		 screenTip: VARIANT unspecified
		 textToDisplay: VARIANT unspecified!

add: anchor address: address subAddress: subAddress screenTip: screenTip textToDisplay: textToDisplay
	"Answer the <IDispatch> result of invoking the Add() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 181 withArguments:
			((Array new: 5)
				basicAt: 1 put: anchor;
				basicAt: 2 put: address;
				basicAt: 3 put: subAddress;
				basicAt: 4 put: screenTip;
				basicAt: 5 put: textToDisplay;
				yourself))
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
	"Answer the <ExcelHyperlink> value of the 'Item' property of the receiver.
		Hyperlink* Item"

	^ExcelHyperlink attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelHyperlinks categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelHyperlinks categoriesFor: #add:address:!**auto generated**!methods!public! !
!ExcelHyperlinks categoriesFor: #add:address:subAddress:screenTip:textToDisplay:!**auto generated**!methods!public! !
!ExcelHyperlinks categoriesFor: #application!**auto generated**!properties!public! !
!ExcelHyperlinks categoriesFor: #count!**auto generated**!properties!public! !
!ExcelHyperlinks categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelHyperlinks categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelHyperlinks categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelHyperlinks categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelHyperlinks categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelHyperlinks class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelHyperlinks initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelHyperlinks class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

