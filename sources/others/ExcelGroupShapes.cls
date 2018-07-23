"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelGroupShapes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelGroupShapes guid: (IID fromString: '{0002443C-0000-0000-C000-000000000046}')!
ExcelGroupShapes comment: '<ExcelGroupShapes> is a wrapper class generated for the dispatch interface ''Excel.GroupShapes'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002443C-0000-0000-C000-000000000046), 
	helpcontext(0x000200d2)
]
dispinterface GroupShapes {
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
[id(0x000000aa), helpcontext(0x000100aa)]
		Shape* Item(
			[in]VARIANT Index);
[id(0000000000), helpcontext(0x00010000)]
		Shape* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000c5), propget, helpcontext(0x000100c5)]
		ShapeRange* Range(
			[in]VARIANT Index);
};
'!
!ExcelGroupShapes categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelGroupShapes methodsFor!

_default: index
	"Answer the <ExcelShape> result of invoking the _Default() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 0 with: index)
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
	"Answer the <ExcelShape> result of invoking the Item() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

range: index
	"Answer the <ExcelShapeRange> value of the 'Range' property of the receiver.
		ShapeRange* Range"

	^ExcelShapeRange attachInterface: (self getPropertyId: 197 item: index)
!

value: index
	"Set the '_Default' property of the receiver to the <variant> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: index
! !
!ExcelGroupShapes categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelGroupShapes categoriesFor: #application!**auto generated**!properties!public! !
!ExcelGroupShapes categoriesFor: #count!**auto generated**!properties!public! !
!ExcelGroupShapes categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelGroupShapes categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelGroupShapes categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelGroupShapes categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelGroupShapes categoriesFor: #range:!**auto generated**!properties!public! !
!ExcelGroupShapes categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelGroupShapes class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelGroupShapes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelGroupShapes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

