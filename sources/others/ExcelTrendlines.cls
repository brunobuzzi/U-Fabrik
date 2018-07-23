"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelTrendlines
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelTrendlines guid: (IID fromString: '{000208BD-0000-0000-C000-000000000046}')!
ExcelTrendlines comment: '<ExcelTrendlines> is a wrapper class generated for the dispatch interface ''Excel.Trendlines'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208BD-0000-0000-C000-000000000046), 
	helpcontext(0x0002007d)
]
dispinterface Trendlines {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		Trendline* Add(
			[in, defaultvalue(-4132)]XlTrendlineType Type,
			[in, optional]VARIANT Order,
			[in, optional]VARIANT Period,
			[in, optional]VARIANT Forward,
			[in, optional]VARIANT Backward,
			[in, optional]VARIANT Intercept,
			[in, optional]VARIANT DisplayEquation,
			[in, optional]VARIANT DisplayRSquared,
			[in, optional]VARIANT Name);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), helpcontext(0x000100aa)]
		Trendline* Item(
			[in, optional]VARIANT Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0000000000), helpcontext(0x00010000)]
		Trendline* _Default(
			[in, optional]VARIANT Index);
};
'!
!ExcelTrendlines categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelTrendlines methodsFor!

_default
	"Answer the <ExcelTrendline> result of invoking the _Default() method of the COM object.
	Default values are passed for all optional parameters."

	^self _default: VARIANT unspecified!

_default: index
	"Answer the <ExcelTrendline> result of invoking the _Default() method of the COM object."

	^ExcelTrendline attachInterface: (self invokeId: 0 with: index)
!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	!

add
	"Answer the <ExcelTrendline> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: -4132
		 order: VARIANT unspecified
		 period: VARIANT unspecified
		 forward: VARIANT unspecified
		 backward: VARIANT unspecified
		 intercept: VARIANT unspecified
		 displayEquation: VARIANT unspecified
		 displayRSquared: VARIANT unspecified
		 name: VARIANT unspecified!

add: type order: order period: period forward: forward backward: backward intercept: intercept displayEquation: displayEquation displayRSquared: displayRSquared name: name
	"Answer the <ExcelTrendline> result of invoking the Add() method of the COM object."

	^ExcelTrendline attachInterface: (self invokeId: 181 withArguments:
			((Array new: 9)
				basicAt: 1 put: type;
				basicAt: 2 put: order;
				basicAt: 3 put: period;
				basicAt: 4 put: forward;
				basicAt: 5 put: backward;
				basicAt: 6 put: intercept;
				basicAt: 7 put: displayEquation;
				basicAt: 8 put: displayRSquared;
				basicAt: 9 put: name;
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

item
	"Answer the <ExcelTrendline> result of invoking the Item() method of the COM object.
	Default values are passed for all optional parameters."

	^self item: VARIANT unspecified!

item: index
	"Answer the <ExcelTrendline> result of invoking the Item() method of the COM object."

	^ExcelTrendline attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

value: index
	"Set the '_Default' property of the receiver to the <variant> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: index
! !
!ExcelTrendlines categoriesFor: #_default!**auto generated**!methods!public! !
!ExcelTrendlines categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelTrendlines categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelTrendlines categoriesFor: #add!**auto generated**!methods!public! !
!ExcelTrendlines categoriesFor: #add:order:period:forward:backward:intercept:displayEquation:displayRSquared:name:!**auto generated**!methods!public! !
!ExcelTrendlines categoriesFor: #application!**auto generated**!properties!public! !
!ExcelTrendlines categoriesFor: #count!**auto generated**!properties!public! !
!ExcelTrendlines categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelTrendlines categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelTrendlines categoriesFor: #item!**auto generated**!methods!public! !
!ExcelTrendlines categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelTrendlines categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelTrendlines categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelTrendlines class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelTrendlines initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelTrendlines class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

