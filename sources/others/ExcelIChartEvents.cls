"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIChartEvents
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIChartEvents guid: (IID fromString: '{0002440F-0001-0000-C000-000000000046}')!
ExcelIChartEvents comment: '<ExcelIChartEvents> is a wrapper class for the COM interface ''Excel.IChartEvents'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002440F-0001-0000-C000-000000000046), 
	helpcontext(0x000200a5), 
	hidden
]
interface IChartEvents : IDispatch
 {
	[id(0x00000130), helpcontext(0x00010130)]
	HRESULT __stdcall Activate();
	[id(0x000005fa), helpcontext(0x000105fa)]
	HRESULT __stdcall Deactivate();
	[id(0x00000100), helpcontext(0x00010100)]
	HRESULT __stdcall Resize();
	[id(0x000005fb), helpcontext(0x000105fb)]
	HRESULT __stdcall MouseDown(
		[in]long Button,
		[in]long Shift,
		[in]long x,
		[in]long y);
	[id(0x000005fc), helpcontext(0x000105fc)]
	HRESULT __stdcall MouseUp(
		[in]long Button,
		[in]long Shift,
		[in]long x,
		[in]long y);
	[id(0x000005fd), helpcontext(0x000105fd)]
	HRESULT __stdcall MouseMove(
		[in]long Button,
		[in]long Shift,
		[in]long x,
		[in]long y);
	[id(0x000005fe), helpcontext(0x000105fe)]
	HRESULT __stdcall BeforeRightClick(
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x000005ff), hidden, helpcontext(0x000105ff)]
	HRESULT __stdcall DragPlot();
	[id(0x00000600), hidden, helpcontext(0x00010600)]
	HRESULT __stdcall DragOver();
	[id(0x00000601), helpcontext(0x00010601)]
	HRESULT __stdcall BeforeDoubleClick(
		[in]long ElementID,
		[in]long Arg1,
		[in]long Arg2,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[in]long ElementID,
		[in]long Arg1,
		[in]long Arg2);
	[id(0x00000602), helpcontext(0x00010602)]
	HRESULT __stdcall SeriesChange(
		[in]long SeriesIndex,
		[in]long PointIndex);
	[id(0x00000117), helpcontext(0x00010117)]
	HRESULT __stdcall Calculate();
};
'!
!ExcelIChartEvents categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIChartEvents methodsFor!

activate
	"Invoke the Activate() method of the COM object."

	^self Activate
!

Activate
	"Private - Invoke the Activate() method of the COM object.

		HRESULT __stdcall Activate();"

	<virtual stdcall: hresult 8>
	^self invalidCall!

beforeDoubleClick: elementID arg1: arg1 arg2: arg2 cancel: cancel
	"Invoke the BeforeDoubleClick() method of the COM object."

	^self
		BeforeDoubleClick: elementID
		arg1: arg1
		arg2: arg2
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

BeforeDoubleClick: elementID arg1: arg1 arg2: arg2 cancel: cancel
	"Private - Invoke the BeforeDoubleClick() method of the COM object.

		HRESULT __stdcall BeforeDoubleClick(
			[in]long ElementID,
			[in]long Arg1,
			[in]long Arg2,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 17 sdword sdword sdword varbool*>
	^self invalidCall!

beforeRightClick: cancel
	"Invoke the BeforeRightClick() method of the COM object."

	^self BeforeRightClick: (VARIANT_BOOL new value: cancel; yourself)
!

BeforeRightClick: cancel
	"Private - Invoke the BeforeRightClick() method of the COM object.

		HRESULT __stdcall BeforeRightClick(
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 14 varbool*>
	^self invalidCall!

calculate
	"Invoke the Calculate() method of the COM object."

	^self Calculate
!

Calculate
	"Private - Invoke the Calculate() method of the COM object.

		HRESULT __stdcall Calculate();"

	<virtual stdcall: hresult 20>
	^self invalidCall!

deactivate
	"Invoke the Deactivate() method of the COM object."

	^self Deactivate
!

Deactivate
	"Private - Invoke the Deactivate() method of the COM object.

		HRESULT __stdcall Deactivate();"

	<virtual stdcall: hresult 9>
	^self invalidCall!

dragOver
	"Invoke the DragOver() method of the COM object."

	^self DragOver
!

DragOver
	"Private - Invoke the DragOver() method of the COM object.

		HRESULT __stdcall DragOver();"

	<virtual stdcall: hresult 16>
	^self invalidCall!

dragPlot
	"Invoke the DragPlot() method of the COM object."

	^self DragPlot
!

DragPlot
	"Private - Invoke the DragPlot() method of the COM object.

		HRESULT __stdcall DragPlot();"

	<virtual stdcall: hresult 15>
	^self invalidCall!

mouseDown: button shift: shift x: x y: y
	"Invoke the MouseDown() method of the COM object."

	^self
		MouseDown: button
		shift: shift
		x: x
		y: y
!

MouseDown: button shift: shift x: x y: y
	"Private - Invoke the MouseDown() method of the COM object.

		HRESULT __stdcall MouseDown(
			[in]long Button,
			[in]long Shift,
			[in]long x,
			[in]long y);"

	<virtual stdcall: hresult 11 sdword sdword sdword sdword>
	^self invalidCall!

mouseMove: button shift: shift x: x y: y
	"Invoke the MouseMove() method of the COM object."

	^self
		MouseMove: button
		shift: shift
		x: x
		y: y
!

MouseMove: button shift: shift x: x y: y
	"Private - Invoke the MouseMove() method of the COM object.

		HRESULT __stdcall MouseMove(
			[in]long Button,
			[in]long Shift,
			[in]long x,
			[in]long y);"

	<virtual stdcall: hresult 13 sdword sdword sdword sdword>
	^self invalidCall!

mouseUp: button shift: shift x: x y: y
	"Invoke the MouseUp() method of the COM object."

	^self
		MouseUp: button
		shift: shift
		x: x
		y: y
!

MouseUp: button shift: shift x: x y: y
	"Private - Invoke the MouseUp() method of the COM object.

		HRESULT __stdcall MouseUp(
			[in]long Button,
			[in]long Shift,
			[in]long x,
			[in]long y);"

	<virtual stdcall: hresult 12 sdword sdword sdword sdword>
	^self invalidCall!

resize
	"Invoke the Resize() method of the COM object."

	^self Resize
!

Resize
	"Private - Invoke the Resize() method of the COM object.

		HRESULT __stdcall Resize();"

	<virtual stdcall: hresult 10>
	^self invalidCall!

select: elementID arg1: arg1 arg2: arg2
	"Invoke the Select() method of the COM object."

	^self
		Select: elementID
		arg1: arg1
		arg2: arg2
!

Select: elementID arg1: arg1 arg2: arg2
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select(
			[in]long ElementID,
			[in]long Arg1,
			[in]long Arg2);"

	<virtual stdcall: hresult 18 sdword sdword sdword>
	^self invalidCall!

seriesChange: seriesIndex pointIndex: pointIndex
	"Invoke the SeriesChange() method of the COM object."

	^self
		SeriesChange: seriesIndex
		pointIndex: pointIndex
!

SeriesChange: seriesIndex pointIndex: pointIndex
	"Private - Invoke the SeriesChange() method of the COM object.

		HRESULT __stdcall SeriesChange(
			[in]long SeriesIndex,
			[in]long PointIndex);"

	<virtual stdcall: hresult 19 sdword sdword>
	^self invalidCall! !
!ExcelIChartEvents categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #Activate!**auto generated**!COM Interfaces-IChartEvents!private! !
!ExcelIChartEvents categoriesFor: #beforeDoubleClick:arg1:arg2:cancel:!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #BeforeDoubleClick:arg1:arg2:cancel:!**auto generated**!COM Interfaces-IChartEvents!private! !
!ExcelIChartEvents categoriesFor: #beforeRightClick:!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #BeforeRightClick:!**auto generated**!COM Interfaces-IChartEvents!private! !
!ExcelIChartEvents categoriesFor: #calculate!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #Calculate!**auto generated**!COM Interfaces-IChartEvents!private! !
!ExcelIChartEvents categoriesFor: #deactivate!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #Deactivate!**auto generated**!COM Interfaces-IChartEvents!private! !
!ExcelIChartEvents categoriesFor: #dragOver!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #DragOver!**auto generated**!COM Interfaces-IChartEvents!private! !
!ExcelIChartEvents categoriesFor: #dragPlot!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #DragPlot!**auto generated**!COM Interfaces-IChartEvents!private! !
!ExcelIChartEvents categoriesFor: #mouseDown:shift:x:y:!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #MouseDown:shift:x:y:!**auto generated**!COM Interfaces-IChartEvents!private! !
!ExcelIChartEvents categoriesFor: #mouseMove:shift:x:y:!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #MouseMove:shift:x:y:!**auto generated**!COM Interfaces-IChartEvents!private! !
!ExcelIChartEvents categoriesFor: #mouseUp:shift:x:y:!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #MouseUp:shift:x:y:!**auto generated**!COM Interfaces-IChartEvents!private! !
!ExcelIChartEvents categoriesFor: #resize!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #Resize!**auto generated**!COM Interfaces-IChartEvents!private! !
!ExcelIChartEvents categoriesFor: #select:arg1:arg2:!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #Select:arg1:arg2:!**auto generated**!COM Interfaces-IChartEvents!private! !
!ExcelIChartEvents categoriesFor: #seriesChange:pointIndex:!**auto generated**!methods!public! !
!ExcelIChartEvents categoriesFor: #SeriesChange:pointIndex:!**auto generated**!COM Interfaces-IChartEvents!private! !

!ExcelIChartEvents class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IChartEvents'
		ExcelIChartEvents defineTemplate"

	self
		defineFunction: #Activate;
		defineFunction: #Deactivate;
		defineFunction: #Resize;
		defineFunction: #MouseDown:shift:x:y:
			argumentTypes: 'sdword sdword sdword sdword';
		defineFunction: #MouseUp:shift:x:y:
			argumentTypes: 'sdword sdword sdword sdword';
		defineFunction: #MouseMove:shift:x:y:
			argumentTypes: 'sdword sdword sdword sdword';
		defineFunction: #BeforeRightClick:
			argumentTypes: 'varbool*';
		defineFunction: #DragPlot;
		defineFunction: #DragOver;
		defineFunction: #BeforeDoubleClick:arg1:arg2:cancel:
			argumentTypes: 'sdword sdword sdword varbool*';
		defineFunction: #Select:arg1:arg2:
			argumentTypes: 'sdword sdword sdword';
		defineFunction: #SeriesChange:pointIndex:
			argumentTypes: 'sdword sdword';
		defineFunction: #Calculate
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIChartEvents initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIChartEvents class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIChartEvents class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

