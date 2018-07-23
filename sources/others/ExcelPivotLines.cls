"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotLines
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotLines guid: (IID fromString: '{00024481-0000-0000-C000-000000000046}')!
ExcelPivotLines comment: '<ExcelPivotLines> is a wrapper class generated for the dispatch interface ''Excel.PivotLines'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024481-0000-0000-C000-000000000046), 
	helpcontext(0x00020117)
]
dispinterface PivotLines {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0000000000), propget, helpcontext(0x00010000)]
		PivotLine* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		PivotLine* Item(
			[in]VARIANT Index);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
};
'!
!ExcelPivotLines categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotLines methodsFor!

_default: index
	"Answer the <ExcelPivotLine> value of the '_Default' property of the receiver.
		PivotLine* _Default"

	^ExcelPivotLine attachInterface: (self getPropertyId: 0 item: index)
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
	"Answer the <ExcelPivotLine> value of the 'Item' property of the receiver.
		PivotLine* Item"

	^ExcelPivotLine attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelPivotLines categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPivotLines categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotLines categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPivotLines categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotLines categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPivotLines categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelPivotLines categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelPivotLines class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotLines initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotLines class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

