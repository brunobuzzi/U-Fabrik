"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelCalculatedMembers
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelCalculatedMembers guid: (IID fromString: '{00024454-0000-0000-C000-000000000046}')!
ExcelCalculatedMembers comment: '<ExcelCalculatedMembers> is a wrapper class generated for the dispatch interface ''Excel.CalculatedMembers'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024454-0000-0000-C000-000000000046), 
	helpcontext(0x000200ea)
]
dispinterface CalculatedMembers {
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
		CalculatedMember* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		CalculatedMember* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000b5), helpcontext(0x000100b5)]
		CalculatedMember* Add(
			[in]BSTR Name,
			[in]BSTR Formula,
			[in, optional]VARIANT SolveOrder,
			[in, optional]VARIANT Type);
};
'!
!ExcelCalculatedMembers categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelCalculatedMembers methodsFor!

_default: index
	"Answer the <ExcelCalculatedMember> value of the '_Default' property of the receiver.
		CalculatedMember* _Default"

	^ExcelCalculatedMember attachInterface: (self getPropertyId: 0 item: index)
!

add: name formula: formula
	"Answer the <ExcelCalculatedMember> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: name
		 formula: formula
		 solveOrder: VARIANT unspecified
		 type: VARIANT unspecified!

add: name formula: formula solveOrder: solveOrder type: type
	"Answer the <ExcelCalculatedMember> result of invoking the Add() method of the COM object."

	^ExcelCalculatedMember attachInterface: (self invokeId: 181 withArguments:
			((Array new: 4)
				basicAt: 1 put: name;
				basicAt: 2 put: formula;
				basicAt: 3 put: solveOrder;
				basicAt: 4 put: type;
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

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelCalculatedMember> value of the 'Item' property of the receiver.
		CalculatedMember* Item"

	^ExcelCalculatedMember attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelCalculatedMembers categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelCalculatedMembers categoriesFor: #add:formula:!**auto generated**!methods!public! !
!ExcelCalculatedMembers categoriesFor: #add:formula:solveOrder:type:!**auto generated**!methods!public! !
!ExcelCalculatedMembers categoriesFor: #application!**auto generated**!properties!public! !
!ExcelCalculatedMembers categoriesFor: #count!**auto generated**!properties!public! !
!ExcelCalculatedMembers categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelCalculatedMembers categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelCalculatedMembers categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelCalculatedMembers categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelCalculatedMembers class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelCalculatedMembers initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelCalculatedMembers class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

