"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSeriesCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSeriesCollection guid: (IID fromString: '{0002086C-0000-0000-C000-000000000046}')!
ExcelSeriesCollection comment: '<ExcelSeriesCollection> is a wrapper class generated for the dispatch interface ''Excel.SeriesCollection'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002086C-0000-0000-C000-000000000046), 
	helpcontext(0x0002002c)
]
dispinterface SeriesCollection {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		Series* Add(
			[in]VARIANT Source,
			[in, defaultvalue(-4105)]XlRowCol Rowcol,
			[in, optional]VARIANT SeriesLabels,
			[in, optional]VARIANT CategoryLabels,
			[in, optional]VARIANT Replace);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000e3), helpcontext(0x000100e3)]
		VARIANT Extend(
			[in]VARIANT Source,
			[in, optional]VARIANT Rowcol,
			[in, optional]VARIANT CategoryLabels);
[id(0x000000aa), helpcontext(0x000100aa)]
		Series* Item(
			[in]VARIANT Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000d3), helpcontext(0x000100d3)]
		VARIANT Paste(
			[in, defaultvalue(-4105)]XlRowCol Rowcol,
			[in, optional]VARIANT SeriesLabels,
			[in, optional]VARIANT CategoryLabels,
			[in, optional]VARIANT Replace,
			[in, optional]VARIANT NewSeries);
[id(0x0000045d), helpcontext(0x0001045d)]
		Series* NewSeries();
[id(0000000000), helpcontext(0x00010000)]
		Series* _Default(
			[in]VARIANT Index);
};
'!
!ExcelSeriesCollection categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSeriesCollection methodsFor!

_default: index
	"Answer the <ExcelSeries> result of invoking the _Default() method of the COM object."

	^ExcelSeries attachInterface: (self invokeId: 0 with: index)
!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	!

add: source
	"Answer the <ExcelSeries> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: source
		 rowcol: -4105
		 seriesLabels: VARIANT unspecified
		 categoryLabels: VARIANT unspecified
		 replace: VARIANT unspecified!

add: source rowcol: rowcol seriesLabels: seriesLabels categoryLabels: categoryLabels replace: replace
	"Answer the <ExcelSeries> result of invoking the Add() method of the COM object."

	^ExcelSeries attachInterface: (self invokeId: 181 withArguments:
			((Array new: 5)
				basicAt: 1 put: source;
				basicAt: 2 put: rowcol;
				basicAt: 3 put: seriesLabels;
				basicAt: 4 put: categoryLabels;
				basicAt: 5 put: replace;
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

extend: source
	"Answer the <VARIANT> result of invoking the Extend() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 extend: source
		 rowcol: VARIANT unspecified
		 categoryLabels: VARIANT unspecified!

extend: source rowcol: rowcol categoryLabels: categoryLabels
	"Answer the <VARIANT> result of invoking the Extend() method of the COM object."

	^(self invokeId: 227 withArguments:
			((Array new: 3)
				basicAt: 1 put: source;
				basicAt: 2 put: rowcol;
				basicAt: 3 put: categoryLabels;
				yourself))
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelSeries> result of invoking the Item() method of the COM object."

	^ExcelSeries attachInterface: (self invokeId: 170 with: index)
!

newSeries
	"Answer the <ExcelSeries> result of invoking the NewSeries() method of the COM object."

	^ExcelSeries attachInterface: (self invokeId: 1117)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

paste
	"Answer the <VARIANT> result of invoking the Paste() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 paste: -4105
		 seriesLabels: VARIANT unspecified
		 categoryLabels: VARIANT unspecified
		 replace: VARIANT unspecified
		 newSeries: VARIANT unspecified!

paste: rowcol seriesLabels: seriesLabels categoryLabels: categoryLabels replace: replace newSeries: newSeries
	"Answer the <VARIANT> result of invoking the Paste() method of the COM object."

	^(self invokeId: 211 withArguments:
			((Array new: 5)
				basicAt: 1 put: rowcol;
				basicAt: 2 put: seriesLabels;
				basicAt: 3 put: categoryLabels;
				basicAt: 4 put: replace;
				basicAt: 5 put: newSeries;
				yourself))
!

value: index
	"Set the '_Default' property of the receiver to the <variant> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: index
! !
!ExcelSeriesCollection categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelSeriesCollection categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelSeriesCollection categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelSeriesCollection categoriesFor: #add:rowcol:seriesLabels:categoryLabels:replace:!**auto generated**!methods!public! !
!ExcelSeriesCollection categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSeriesCollection categoriesFor: #count!**auto generated**!properties!public! !
!ExcelSeriesCollection categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSeriesCollection categoriesFor: #extend:!**auto generated**!methods!public! !
!ExcelSeriesCollection categoriesFor: #extend:rowcol:categoryLabels:!**auto generated**!methods!public! !
!ExcelSeriesCollection categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelSeriesCollection categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelSeriesCollection categoriesFor: #newSeries!**auto generated**!methods!public! !
!ExcelSeriesCollection categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelSeriesCollection categoriesFor: #paste!**auto generated**!methods!public! !
!ExcelSeriesCollection categoriesFor: #paste:seriesLabels:categoryLabels:replace:newSeries:!**auto generated**!methods!public! !
!ExcelSeriesCollection categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelSeriesCollection class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSeriesCollection initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSeriesCollection class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

