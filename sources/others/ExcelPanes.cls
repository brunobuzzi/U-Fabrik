"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPanes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPanes guid: (IID fromString: '{00020894-0000-0000-C000-000000000046}')!
ExcelPanes comment: '<ExcelPanes> is a wrapper class generated for the dispatch interface ''Excel.Panes'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020894-0000-0000-C000-000000000046), 
	helpcontext(0x00020054)
]
dispinterface Panes {
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
		Pane* Item(
			[in]long Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		Pane* _Default(
			[in]long Index);
};
'!
!ExcelPanes categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPanes methodsFor!

_default: index
	"Answer the <ExcelPane> value of the '_Default' property of the receiver.
		Pane* _Default"

	^ExcelPane attachInterface: (self getPropertyId: 0 item: index)
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

item: index
	"Answer the <ExcelPane> value of the 'Item' property of the receiver.
		Pane* Item"

	^ExcelPane attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelPanes categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPanes categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPanes categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPanes categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPanes categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelPanes categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelPanes class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPanes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPanes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

