"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPane
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPane guid: (IID fromString: '{00020895-0000-0000-C000-000000000046}')!
ExcelPane comment: '<ExcelPane> is a wrapper class generated for the dispatch interface ''Excel.Pane'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020895-0000-0000-C000-000000000046), 
	helpcontext(0x00020055)
]
dispinterface Pane {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000130), helpcontext(0x00010130)]
		VARIANT_BOOL Activate();
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x00000223), helpcontext(0x00010223)]
		VARIANT LargeScroll(
			[in, optional]VARIANT Down,
			[in, optional]VARIANT Up,
			[in, optional]VARIANT ToRight,
			[in, optional]VARIANT ToLeft);
[id(0x0000028e), propget, helpcontext(0x0001028e)]
		long ScrollColumn();
[id(0x0000028e), propput, helpcontext(0x0001028e)]
		void ScrollColumn(
			[in]long arg1);
[id(0x0000028f), propget, helpcontext(0x0001028f)]
		long ScrollRow();
[id(0x0000028f), propput, helpcontext(0x0001028f)]
		void ScrollRow(
			[in]long arg1);
[id(0x00000224), helpcontext(0x00010224)]
		VARIANT SmallScroll(
			[in, optional]VARIANT Down,
			[in, optional]VARIANT Up,
			[in, optional]VARIANT ToRight,
			[in, optional]VARIANT ToLeft);
[id(0x0000045e), propget, helpcontext(0x0001045e)]
		Range* VisibleRange();
[id(0x000006f5), helpcontext(0x000106f5)]
		void ScrollIntoView(
			[in]long Left,
			[in]long Top,
			[in]long Width,
			[in]long Height,
			[in, optional]VARIANT Start);
[id(0x000006f0), helpcontext(0x000106f0)]
		long PointsToScreenPixelsX(
			[in]long Points);
[id(0x000006f1), helpcontext(0x000106f1)]
		long PointsToScreenPixelsY(
			[in]long Points);
};
'!
!ExcelPane categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPane methodsFor!

activate
	"Answer the <VARIANT_BOOL> result of invoking the Activate() method of the COM object."

	^(self invokeId: 304)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

largeScroll
	"Answer the <VARIANT> result of invoking the LargeScroll() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 largeScroll: VARIANT unspecified
		 up: VARIANT unspecified
		 toRight: VARIANT unspecified
		 toLeft: VARIANT unspecified!

largeScroll: down up: up toRight: toRight toLeft: toLeft
	"Answer the <VARIANT> result of invoking the LargeScroll() method of the COM object."

	^(self invokeId: 547 withArguments:
			((Array new: 4)
				basicAt: 1 put: down;
				basicAt: 2 put: up;
				basicAt: 3 put: toRight;
				basicAt: 4 put: toLeft;
				yourself))
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

pointsToScreenPixelsX: points
	"Answer the <SDWORD> result of invoking the PointsToScreenPixelsX() method of the COM object."

	^(self invokeId: 1776 with: points)
!

pointsToScreenPixelsY: points
	"Answer the <SDWORD> result of invoking the PointsToScreenPixelsY() method of the COM object."

	^(self invokeId: 1777 with: points)
!

scrollColumn
	"Answer the <sdword> value of the 'ScrollColumn' property of the receiver.
		long ScrollColumn"

	^(self getPropertyId: 654)
!

scrollColumn: arg1
	"Set the 'ScrollColumn' property of the receiver to the <sdword> value of the argument.
		void ScrollColumn"

	self setPropertyId: 654 value: arg1
!

scrollIntoView: left top: top width: width height: height
	"Invoke the ScrollIntoView() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 scrollIntoView: left
		 top: top
		 width: width
		 height: height
		 start: VARIANT unspecified!

scrollIntoView: left top: top width: width height: height start: start
	"Invoke the ScrollIntoView() method of the COM object."

	(self invokeId: 1781 withArguments:
			((Array new: 5)
				basicAt: 1 put: left;
				basicAt: 2 put: top;
				basicAt: 3 put: width;
				basicAt: 4 put: height;
				basicAt: 5 put: start;
				yourself))
!

scrollRow
	"Answer the <sdword> value of the 'ScrollRow' property of the receiver.
		long ScrollRow"

	^(self getPropertyId: 655)
!

scrollRow: arg1
	"Set the 'ScrollRow' property of the receiver to the <sdword> value of the argument.
		void ScrollRow"

	self setPropertyId: 655 value: arg1
!

smallScroll
	"Answer the <VARIANT> result of invoking the SmallScroll() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 smallScroll: VARIANT unspecified
		 up: VARIANT unspecified
		 toRight: VARIANT unspecified
		 toLeft: VARIANT unspecified!

smallScroll: down up: up toRight: toRight toLeft: toLeft
	"Answer the <VARIANT> result of invoking the SmallScroll() method of the COM object."

	^(self invokeId: 548 withArguments:
			((Array new: 4)
				basicAt: 1 put: down;
				basicAt: 2 put: up;
				basicAt: 3 put: toRight;
				basicAt: 4 put: toLeft;
				yourself))
!

visibleRange
	"Answer the <ExcelRange> value of the 'VisibleRange' property of the receiver.
		Range* VisibleRange"

	^ExcelRange attachInterface: (self getPropertyId: 1118)
! !
!ExcelPane categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelPane categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPane categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPane categoriesFor: #index!**auto generated**!properties!public! !
!ExcelPane categoriesFor: #largeScroll!**auto generated**!methods!public! !
!ExcelPane categoriesFor: #largeScroll:up:toRight:toLeft:!**auto generated**!methods!public! !
!ExcelPane categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPane categoriesFor: #pointsToScreenPixelsX:!**auto generated**!methods!public! !
!ExcelPane categoriesFor: #pointsToScreenPixelsY:!**auto generated**!methods!public! !
!ExcelPane categoriesFor: #scrollColumn!**auto generated**!properties!public! !
!ExcelPane categoriesFor: #scrollColumn:!**auto generated**!properties!public! !
!ExcelPane categoriesFor: #scrollIntoView:top:width:height:!**auto generated**!methods!public! !
!ExcelPane categoriesFor: #scrollIntoView:top:width:height:start:!**auto generated**!methods!public! !
!ExcelPane categoriesFor: #scrollRow!**auto generated**!properties!public! !
!ExcelPane categoriesFor: #scrollRow:!**auto generated**!properties!public! !
!ExcelPane categoriesFor: #smallScroll!**auto generated**!methods!public! !
!ExcelPane categoriesFor: #smallScroll:up:toRight:toLeft:!**auto generated**!methods!public! !
!ExcelPane categoriesFor: #visibleRange!**auto generated**!properties!public! !

!ExcelPane class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPane initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPane class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

