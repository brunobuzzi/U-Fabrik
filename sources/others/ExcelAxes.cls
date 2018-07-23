"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelAxes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelAxes guid: (IID fromString: '{0002085B-0000-0000-C000-000000000046}')!
ExcelAxes comment: '<ExcelAxes> is a wrapper class generated for the dispatch interface ''Excel.Axes'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002085B-0000-0000-C000-000000000046), 
	helpcontext(0x0002001b)
]
dispinterface Axes {
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
		Axis* Item(
			[in]XlAxisType Type,
			[in, defaultvalue(1)]XlAxisGroup AxisGroup);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0000000000), helpcontext(0x00010000)]
		Axis* _Default(
			[in]XlAxisType Type,
			[in, defaultvalue(1)]XlAxisGroup AxisGroup);
};
'!
!ExcelAxes categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelAxes methodsFor!

_default: type
	"Answer the <ExcelAxis> result of invoking the _Default() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _default: type
		 axisGroup: 1!

_default: type axisGroup: axisGroup
	"Answer the <ExcelAxis> result of invoking the _Default() method of the COM object."

	^ExcelAxis attachInterface: (self invokeId: 0 with: type with: axisGroup)
!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

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

item: type
	"Answer the <ExcelAxis> result of invoking the Item() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 item: type
		 axisGroup: 1!

item: type axisGroup: axisGroup
	"Answer the <ExcelAxis> result of invoking the Item() method of the COM object."

	^ExcelAxis attachInterface: (self invokeId: 170 with: type with: axisGroup)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelAxes categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelAxes categoriesFor: #_default:axisGroup:!**auto generated**!methods!public! !
!ExcelAxes categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelAxes categoriesFor: #application!**auto generated**!properties!public! !
!ExcelAxes categoriesFor: #count!**auto generated**!properties!public! !
!ExcelAxes categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelAxes categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelAxes categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelAxes categoriesFor: #item:axisGroup:!**auto generated**!methods!public! !
!ExcelAxes categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelAxes class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelAxes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelAxes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

