"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPlotArea
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPlotArea guid: (IID fromString: '{000208CB-0000-0000-C000-000000000046}')!
ExcelPlotArea comment: '<ExcelPlotArea> is a wrapper class generated for the dispatch interface ''Excel.PlotArea'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208CB-0000-0000-C000-000000000046), 
	helpcontext(0x0002008a)
]
dispinterface PlotArea {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000070), helpcontext(0x00010070)]
		VARIANT ClearFormats();
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		double Height();
[id(0x0000007b), propput, helpcontext(0x0001007b)]
		void Height(
			[in]double arg1);
[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x0000067f), hidden, propget, helpcontext(0x0001067f)]
		ChartFillFormat* Fill();
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		double Left();
[id(0x0000007f), propput, helpcontext(0x0001007f)]
		void Left(
			[in]double arg1);
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		double Top();
[id(0x0000007e), propput, helpcontext(0x0001007e)]
		void Top(
			[in]double arg1);
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		double Width();
[id(0x0000007a), propput, helpcontext(0x0001007a)]
		void Width(
			[in]double arg1);
[id(0x00000a5e), hidden, propget, helpcontext(0x00010a5e)]
		double _InsideLeft();
[id(0x00000a5f), hidden, propget, helpcontext(0x00010a5f)]
		double _InsideTop();
[id(0x00000a60), hidden, propget, helpcontext(0x00010a60)]
		double _InsideWidth();
[id(0x00000a61), hidden, propget, helpcontext(0x00010a61)]
		double _InsideHeight();
[id(0x00000683), propget, helpcontext(0x00010683)]
		double InsideLeft();
[id(0x00000683), propput, helpcontext(0x00010683)]
		void InsideLeft(
			[in]double arg1);
[id(0x00000684), propget, helpcontext(0x00010684)]
		double InsideTop();
[id(0x00000684), propput, helpcontext(0x00010684)]
		void InsideTop(
			[in]double arg1);
[id(0x00000685), propget, helpcontext(0x00010685)]
		double InsideWidth();
[id(0x00000685), propput, helpcontext(0x00010685)]
		void InsideWidth(
			[in]double arg1);
[id(0x00000686), propget, helpcontext(0x00010686)]
		double InsideHeight();
[id(0x00000686), propput, helpcontext(0x00010686)]
		void InsideHeight(
			[in]double arg1);
[id(0x00000085), propget, helpcontext(0x00010085)]
		XlChartElementPosition Position();
[id(0x00000085), propput, helpcontext(0x00010085)]
		void Position(
			[in]XlChartElementPosition arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelPlotArea categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPlotArea methodsFor!

_insideHeight
	"Answer the <double> value of the '_InsideHeight' property of the receiver.
		double _InsideHeight"

	^(self getPropertyId: 2657)
!

_insideLeft
	"Answer the <double> value of the '_InsideLeft' property of the receiver.
		double _InsideLeft"

	^(self getPropertyId: 2654)
!

_insideTop
	"Answer the <double> value of the '_InsideTop' property of the receiver.
		double _InsideTop"

	^(self getPropertyId: 2655)
!

_insideWidth
	"Answer the <double> value of the '_InsideWidth' property of the receiver.
		double _InsideWidth"

	^(self getPropertyId: 2656)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
!

clearFormats
	"Answer the <VARIANT> result of invoking the ClearFormats() method of the COM object."

	^(self invokeId: 112)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

fill
	"Answer the <ExcelChartFillFormat> value of the 'Fill' property of the receiver.
		ChartFillFormat* Fill"

	^ExcelChartFillFormat attachInterface: (self getPropertyId: 1663)
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver.
		ChartFormat* Format"

	^ExcelChartFormat attachInterface: (self getPropertyId: 116)
!

height
	"Answer the <double> value of the 'Height' property of the receiver.
		double Height"

	^(self getPropertyId: 123)
!

height: arg1
	"Set the 'Height' property of the receiver to the <double> value of the argument.
		void Height"

	self setPropertyId: 123 value: arg1
!

insideHeight
	"Answer the <double> value of the 'InsideHeight' property of the receiver.
		double InsideHeight"

	^(self getPropertyId: 1670)
!

insideHeight: arg1
	"Set the 'InsideHeight' property of the receiver to the <double> value of the argument.
		void InsideHeight"

	self setPropertyId: 1670 value: arg1
!

insideLeft
	"Answer the <double> value of the 'InsideLeft' property of the receiver.
		double InsideLeft"

	^(self getPropertyId: 1667)
!

insideLeft: arg1
	"Set the 'InsideLeft' property of the receiver to the <double> value of the argument.
		void InsideLeft"

	self setPropertyId: 1667 value: arg1
!

insideTop
	"Answer the <double> value of the 'InsideTop' property of the receiver.
		double InsideTop"

	^(self getPropertyId: 1668)
!

insideTop: arg1
	"Set the 'InsideTop' property of the receiver to the <double> value of the argument.
		void InsideTop"

	self setPropertyId: 1668 value: arg1
!

insideWidth
	"Answer the <double> value of the 'InsideWidth' property of the receiver.
		double InsideWidth"

	^(self getPropertyId: 1669)
!

insideWidth: arg1
	"Set the 'InsideWidth' property of the receiver to the <double> value of the argument.
		void InsideWidth"

	self setPropertyId: 1669 value: arg1
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
!

left
	"Answer the <double> value of the 'Left' property of the receiver.
		double Left"

	^(self getPropertyId: 127)
!

left: arg1
	"Set the 'Left' property of the receiver to the <double> value of the argument.
		void Left"

	self setPropertyId: 127 value: arg1
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

position
	"Answer the <sdword> value of the 'Position' property of the receiver.
		XlChartElementPosition Position"

	^(self getPropertyId: 133)
!

position: arg1
	"Set the 'Position' property of the receiver to the <sdword> value of the argument.
		void Position"

	self setPropertyId: 133 value: arg1
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
!

top
	"Answer the <double> value of the 'Top' property of the receiver.
		double Top"

	^(self getPropertyId: 126)
!

top: arg1
	"Set the 'Top' property of the receiver to the <double> value of the argument.
		void Top"

	self setPropertyId: 126 value: arg1
!

width
	"Answer the <double> value of the 'Width' property of the receiver.
		double Width"

	^(self getPropertyId: 122)
!

width: arg1
	"Set the 'Width' property of the receiver to the <double> value of the argument.
		void Width"

	self setPropertyId: 122 value: arg1
! !
!ExcelPlotArea categoriesFor: #_insideHeight!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #_insideLeft!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #_insideTop!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #_insideWidth!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #border!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelPlotArea categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #format!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #height!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #insideHeight!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #insideHeight:!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #insideLeft!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #insideLeft:!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #insideTop!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #insideTop:!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #insideWidth!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #insideWidth:!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #left!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #name!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #position!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #select!**auto generated**!methods!public! !
!ExcelPlotArea categoriesFor: #top!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #width!**auto generated**!properties!public! !
!ExcelPlotArea categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelPlotArea class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPlotArea initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPlotArea class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

