"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPane
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPane guid: (IID fromString: '{00020895-0001-0000-C000-000000000046}')!
ExcelIPane comment: '<ExcelIPane> is a wrapper class for the COM interface ''Excel.IPane'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020895-0001-0000-C000-000000000046), 
	helpcontext(0x00020055), 
	hidden
]
interface IPane : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** RHS);
	[id(0x00000130), helpcontext(0x00010130)]
	HRESULT __stdcall Activate(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x00000223), helpcontext(0x00010223)]
	HRESULT __stdcall LargeScroll(
		[in, optional]VARIANT Down,
		[in, optional]VARIANT Up,
		[in, optional]VARIANT ToRight,
		[in, optional]VARIANT ToLeft,
		[out, retval]VARIANT* RHS);
	[id(0x0000028e), propget, helpcontext(0x0001028e)]
	HRESULT __stdcall ScrollColumn(
		[out, retval]long* RHS);
	[id(0x0000028e), propput, helpcontext(0x0001028e)]
	HRESULT __stdcall ScrollColumn(
		[in]long RHS);
	[id(0x0000028f), propget, helpcontext(0x0001028f)]
	HRESULT __stdcall ScrollRow(
		[out, retval]long* RHS);
	[id(0x0000028f), propput, helpcontext(0x0001028f)]
	HRESULT __stdcall ScrollRow(
		[in]long RHS);
	[id(0x00000224), helpcontext(0x00010224)]
	HRESULT __stdcall SmallScroll(
		[in, optional]VARIANT Down,
		[in, optional]VARIANT Up,
		[in, optional]VARIANT ToRight,
		[in, optional]VARIANT ToLeft,
		[out, retval]VARIANT* RHS);
	[id(0x0000045e), propget, helpcontext(0x0001045e)]
	HRESULT __stdcall VisibleRange(
		[out, retval]Range** RHS);
	[id(0x000006f5), helpcontext(0x000106f5)]
	HRESULT __stdcall ScrollIntoView(
		[in]long Left,
		[in]long Top,
		[in]long Width,
		[in]long Height,
		[in, optional]VARIANT Start);
	[id(0x000006f0), helpcontext(0x000106f0)]
	HRESULT __stdcall PointsToScreenPixelsX(
		[in]long Points,
		[out, retval]long* RHS);
	[id(0x000006f1), helpcontext(0x000106f1)]
	HRESULT __stdcall PointsToScreenPixelsY(
		[in]long Points,
		[out, retval]long* RHS);
};
'!
!ExcelIPane categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPane methodsFor!

activate
	"Answer the <VARIANT_BOOL> result of invoking the Activate() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self Activate: answer.
	^answer asObject
!

Activate: rhs
	"Private - Invoke the Activate() method of the COM object.

		HRESULT __stdcall Activate(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ScrollColumn: rhs
	"Private - Get the value of the 'ScrollColumn' property of the receiver.

		HRESULT __stdcall ScrollColumn(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 14 sdword*>
	^self invalidCall!

get_ScrollRow: rhs
	"Private - Get the value of the 'ScrollRow' property of the receiver.

		HRESULT __stdcall ScrollRow(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 16 sdword*>
	^self invalidCall!

get_VisibleRange: rhs
	"Private - Get the value of the 'VisibleRange' property of the receiver.

		HRESULT __stdcall VisibleRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 19 ExcelRange**>
	^self invalidCall!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
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

	| answer |
	answer := VARIANT new.
	self
		LargeScroll: down asVariant
		up: up asVariant
		toRight: toRight asVariant
		toLeft: toLeft asVariant
		rhs: answer.
	^answer asObject
!

LargeScroll: down up: up toRight: toRight toLeft: toLeft rhs: rhs
	"Private - Invoke the LargeScroll() method of the COM object.

		HRESULT __stdcall LargeScroll(
			[in, optional]VARIANT Down,
			[in, optional]VARIANT Up,
			[in, optional]VARIANT ToRight,
			[in, optional]VARIANT ToLeft,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant variant variant variant variant*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pointsToScreenPixelsX: points
	"Answer the <SDWORD> result of invoking the PointsToScreenPixelsX() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self
		PointsToScreenPixelsX: points
		rhs: answer.
	^answer asObject
!

PointsToScreenPixelsX: points rhs: rhs
	"Private - Invoke the PointsToScreenPixelsX() method of the COM object.

		HRESULT __stdcall PointsToScreenPixelsX(
			[in]long Points,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 21 sdword sdword*>
	^self invalidCall!

pointsToScreenPixelsY: points
	"Answer the <SDWORD> result of invoking the PointsToScreenPixelsY() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self
		PointsToScreenPixelsY: points
		rhs: answer.
	^answer asObject
!

PointsToScreenPixelsY: points rhs: rhs
	"Private - Invoke the PointsToScreenPixelsY() method of the COM object.

		HRESULT __stdcall PointsToScreenPixelsY(
			[in]long Points,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 22 sdword sdword*>
	^self invalidCall!

put_ScrollColumn: rhs
	"Private - Set the value of the 'ScrollColumn' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ScrollColumn(
			[in]long RHS);"

	<virtual stdcall: hresult 15 sdword>
	^self invalidCall!

put_ScrollRow: rhs
	"Private - Set the value of the 'ScrollRow' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ScrollRow(
			[in]long RHS);"

	<virtual stdcall: hresult 17 sdword>
	^self invalidCall!

scrollColumn
	"Answer the <sdword> value of the 'ScrollColumn' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ScrollColumn: answer.
	^answer asObject
!

scrollColumn: rhs
	"Set the 'ScrollColumn' property of the receiver to the <sdword> value of the argument."

	self put_ScrollColumn: rhs
!

scrollIntoView: left top: top width: width height: height
	"Invoke the ScrollIntoView() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 scrollIntoView: left
		 top: top
		 width: width
		 height: height
		 start: VARIANT unspecified!

scrollIntoView: left top: top width: width height: height start: start
	"Invoke the ScrollIntoView() method of the COM object."

	^self
		ScrollIntoView: left
		top: top
		width: width
		height: height
		start: start asVariant
!

ScrollIntoView: left top: top width: width height: height start: start
	"Private - Invoke the ScrollIntoView() method of the COM object.

		HRESULT __stdcall ScrollIntoView(
			[in]long Left,
			[in]long Top,
			[in]long Width,
			[in]long Height,
			[in, optional]VARIANT Start);"

	<virtual stdcall: hresult 20 sdword sdword sdword sdword variant>
	^self invalidCall!

scrollRow
	"Answer the <sdword> value of the 'ScrollRow' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ScrollRow: answer.
	^answer asObject
!

scrollRow: rhs
	"Set the 'ScrollRow' property of the receiver to the <sdword> value of the argument."

	self put_ScrollRow: rhs
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

	| answer |
	answer := VARIANT new.
	self
		SmallScroll: down asVariant
		up: up asVariant
		toRight: toRight asVariant
		toLeft: toLeft asVariant
		rhs: answer.
	^answer asObject
!

SmallScroll: down up: up toRight: toRight toLeft: toLeft rhs: rhs
	"Private - Invoke the SmallScroll() method of the COM object.

		HRESULT __stdcall SmallScroll(
			[in, optional]VARIANT Down,
			[in, optional]VARIANT Up,
			[in, optional]VARIANT ToRight,
			[in, optional]VARIANT ToLeft,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 18 variant variant variant variant variant*>
	^self invalidCall!

visibleRange
	"Answer the <ExcelRange> value of the 'VisibleRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_VisibleRange: answer.
	^answer asObject
! !
!ExcelIPane categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelIPane categoriesFor: #Activate:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPane categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPane categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #get_ScrollColumn:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #get_ScrollRow:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #get_VisibleRange:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIPane categoriesFor: #largeScroll!**auto generated**!methods!public! !
!ExcelIPane categoriesFor: #largeScroll:up:toRight:toLeft:!**auto generated**!methods!public! !
!ExcelIPane categoriesFor: #LargeScroll:up:toRight:toLeft:rhs:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPane categoriesFor: #pointsToScreenPixelsX:!**auto generated**!methods!public! !
!ExcelIPane categoriesFor: #PointsToScreenPixelsX:rhs:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #pointsToScreenPixelsY:!**auto generated**!methods!public! !
!ExcelIPane categoriesFor: #PointsToScreenPixelsY:rhs:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #put_ScrollColumn:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #put_ScrollRow:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #scrollColumn!**auto generated**!properties!public! !
!ExcelIPane categoriesFor: #scrollColumn:!**auto generated**!properties!public! !
!ExcelIPane categoriesFor: #scrollIntoView:top:width:height:!**auto generated**!methods!public! !
!ExcelIPane categoriesFor: #scrollIntoView:top:width:height:start:!**auto generated**!methods!public! !
!ExcelIPane categoriesFor: #ScrollIntoView:top:width:height:start:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #scrollRow!**auto generated**!properties!public! !
!ExcelIPane categoriesFor: #scrollRow:!**auto generated**!properties!public! !
!ExcelIPane categoriesFor: #smallScroll!**auto generated**!methods!public! !
!ExcelIPane categoriesFor: #smallScroll:up:toRight:toLeft:!**auto generated**!methods!public! !
!ExcelIPane categoriesFor: #SmallScroll:up:toRight:toLeft:rhs:!**auto generated**!COM Interfaces-IPane!private! !
!ExcelIPane categoriesFor: #visibleRange!**auto generated**!properties!public! !

!ExcelIPane class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPane'
		ExcelIPane defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Activate:
			argumentTypes: 'varbool*';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #LargeScroll:up:toRight:toLeft:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #get_ScrollColumn:
			argumentTypes: 'sdword*';
		defineFunction: #put_ScrollColumn:
			argumentTypes: 'sdword';
		defineFunction: #get_ScrollRow:
			argumentTypes: 'sdword*';
		defineFunction: #put_ScrollRow:
			argumentTypes: 'sdword';
		defineFunction: #SmallScroll:up:toRight:toLeft:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #get_VisibleRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #ScrollIntoView:top:width:height:start:
			argumentTypes: 'sdword sdword sdword sdword variant';
		defineFunction: #PointsToScreenPixelsX:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #PointsToScreenPixelsY:rhs:
			argumentTypes: 'sdword sdword*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPane initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPane class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPane class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

