"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelVPageBreaks
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelVPageBreaks guid: (IID fromString: '{00024405-0000-0000-C000-000000000046}')!
ExcelVPageBreaks comment: '<ExcelVPageBreaks> is a wrapper class generated for the dispatch interface ''Excel.VPageBreaks'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024405-0000-0000-C000-000000000046), 
	helpcontext(0x0002009b)
]
dispinterface VPageBreaks {
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
		VPageBreak* Item(
			[in]long Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		VPageBreak* _Default(
			[in]long Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000b5), helpcontext(0x000100b5)]
		VPageBreak* Add(
			[in]IDispatch* Before);
};
'!
!ExcelVPageBreaks categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelVPageBreaks methodsFor!

_default: index
	"Answer the <ExcelVPageBreak> value of the '_Default' property of the receiver.
		VPageBreak* _Default"

	^ExcelVPageBreak attachInterface: (self getPropertyId: 0 item: index)
!

add: before
	"Answer the <ExcelVPageBreak> result of invoking the Add() method of the COM object."

	^ExcelVPageBreak attachInterface: (self invokeId: 181 with: before)
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
	"Answer the <ExcelVPageBreak> value of the 'Item' property of the receiver.
		VPageBreak* Item"

	^ExcelVPageBreak attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelVPageBreaks categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelVPageBreaks categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelVPageBreaks categoriesFor: #application!**auto generated**!properties!public! !
!ExcelVPageBreaks categoriesFor: #count!**auto generated**!properties!public! !
!ExcelVPageBreaks categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelVPageBreaks categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelVPageBreaks categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelVPageBreaks categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelVPageBreaks class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelVPageBreaks initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelVPageBreaks class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

