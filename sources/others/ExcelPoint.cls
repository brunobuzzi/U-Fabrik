"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPoint
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPoint guid: (IID fromString: '{0002086A-0000-0000-C000-000000000046}')!
ExcelPoint comment: '<ExcelPoint> is a wrapper class generated for the dispatch interface ''Excel.Point'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002086A-0000-0000-C000-000000000046), 
	helpcontext(0x0002002a)
]
dispinterface Point {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000097), hidden, helpcontext(0x00010097)]
		VARIANT _ApplyDataLabels(
			[in, defaultvalue(2)]XlDataLabelsType Type,
			[in, optional]VARIANT LegendKey,
			[in, optional]VARIANT AutoText,
			[in, optional]VARIANT HasLeaderLines);
[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000070), helpcontext(0x00010070)]
		VARIANT ClearFormats();
[id(0x00000227), helpcontext(0x00010227)]
		VARIANT Copy();
[id(0x0000009e), propget, helpcontext(0x0001009e)]
		DataLabel* DataLabel();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x000000b6), propget, helpcontext(0x000100b6)]
		long Explosion();
[id(0x000000b6), propput, helpcontext(0x000100b6)]
		void Explosion(
			[in]long arg1);
[id(0x0000004d), propget, helpcontext(0x0001004d)]
		VARIANT_BOOL HasDataLabel();
[id(0x0000004d), propput, helpcontext(0x0001004d)]
		void HasDataLabel(
			[in]VARIANT_BOOL arg1);
[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x00000084), propget, helpcontext(0x00010084)]
		VARIANT_BOOL InvertIfNegative();
[id(0x00000084), propput, helpcontext(0x00010084)]
		void InvertIfNegative(
			[in]VARIANT_BOOL arg1);
[id(0x00000049), propget, helpcontext(0x00010049)]
		long MarkerBackgroundColor();
[id(0x00000049), propput, helpcontext(0x00010049)]
		void MarkerBackgroundColor(
			[in]long arg1);
[id(0x0000004a), propget, helpcontext(0x0001004a)]
		XlColorIndex MarkerBackgroundColorIndex();
[id(0x0000004a), propput, helpcontext(0x0001004a)]
		void MarkerBackgroundColorIndex(
			[in]XlColorIndex arg1);
[id(0x0000004b), propget, helpcontext(0x0001004b)]
		long MarkerForegroundColor();
[id(0x0000004b), propput, helpcontext(0x0001004b)]
		void MarkerForegroundColor(
			[in]long arg1);
[id(0x0000004c), propget, helpcontext(0x0001004c)]
		XlColorIndex MarkerForegroundColorIndex();
[id(0x0000004c), propput, helpcontext(0x0001004c)]
		void MarkerForegroundColorIndex(
			[in]XlColorIndex arg1);
[id(0x000000e7), propget, helpcontext(0x000100e7)]
		long MarkerSize();
[id(0x000000e7), propput, helpcontext(0x000100e7)]
		void MarkerSize(
			[in]long arg1);
[id(0x00000048), propget, helpcontext(0x00010048)]
		XlMarkerStyle MarkerStyle();
[id(0x00000048), propput, helpcontext(0x00010048)]
		void MarkerStyle(
			[in]XlMarkerStyle arg1);
[id(0x000000d3), helpcontext(0x000100d3)]
		VARIANT Paste();
[id(0x000000a1), propget, helpcontext(0x000100a1)]
		XlChartPictureType PictureType();
[id(0x000000a1), propput, helpcontext(0x000100a1)]
		void PictureType(
			[in]XlChartPictureType arg1);
[id(0x000000a2), hidden, propget, helpcontext(0x000100a2)]
		long PictureUnit();
[id(0x000000a2), hidden, propput, helpcontext(0x000100a2)]
		void PictureUnit(
			[in]long arg1);
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x0000067b), propget, helpcontext(0x0001067b)]
		VARIANT_BOOL ApplyPictToSides();
[id(0x0000067b), propput, helpcontext(0x0001067b)]
		void ApplyPictToSides(
			[in]VARIANT_BOOL arg1);
[id(0x0000067c), propget, helpcontext(0x0001067c)]
		VARIANT_BOOL ApplyPictToFront();
[id(0x0000067c), propput, helpcontext(0x0001067c)]
		void ApplyPictToFront(
			[in]VARIANT_BOOL arg1);
[id(0x0000067d), propget, helpcontext(0x0001067d)]
		VARIANT_BOOL ApplyPictToEnd();
[id(0x0000067d), propput, helpcontext(0x0001067d)]
		void ApplyPictToEnd(
			[in]VARIANT_BOOL arg1);
[id(0x00000067), propget, helpcontext(0x00010067)]
		VARIANT_BOOL Shadow();
[id(0x00000067), propput, helpcontext(0x00010067)]
		void Shadow(
			[in]VARIANT_BOOL arg1);
[id(0x0000067e), propget, helpcontext(0x0001067e)]
		VARIANT_BOOL SecondaryPlot();
[id(0x0000067e), propput, helpcontext(0x0001067e)]
		void SecondaryPlot(
			[in]VARIANT_BOOL arg1);
[id(0x0000067f), hidden, propget, helpcontext(0x0001067f)]
		ChartFillFormat* Fill();
[id(0x00000782), helpcontext(0x00010782)]
		VARIANT ApplyDataLabels(
			[in, defaultvalue(2)]XlDataLabelsType Type,
			[in, optional]VARIANT LegendKey,
			[in, optional]VARIANT AutoText,
			[in, optional]VARIANT HasLeaderLines,
			[in, optional]VARIANT ShowSeriesName,
			[in, optional]VARIANT ShowCategoryName,
			[in, optional]VARIANT ShowValue,
			[in, optional]VARIANT ShowPercentage,
			[in, optional]VARIANT ShowBubbleSize,
			[in, optional]VARIANT Separator);
[id(0x00000681), propget, helpcontext(0x00010681)]
		VARIANT_BOOL Has3DEffect();
[id(0x00000681), propput, helpcontext(0x00010681)]
		void Has3DEffect(
			[in]VARIANT_BOOL arg1);
[id(0x00000a59), propget, helpcontext(0x00010a59)]
		double PictureUnit2();
[id(0x00000a59), propput, helpcontext(0x00010a59)]
		void PictureUnit2(
			[in]double arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelPoint categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPoint methodsFor!

_applyDataLabels
	"Answer the <VARIANT> result of invoking the _ApplyDataLabels() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _applyDataLabels: 2
		 legendKey: VARIANT unspecified
		 autoText: VARIANT unspecified
		 hasLeaderLines: VARIANT unspecified!

_applyDataLabels: type legendKey: legendKey autoText: autoText hasLeaderLines: hasLeaderLines
	"Answer the <VARIANT> result of invoking the _ApplyDataLabels() method of the COM object."

	^(self invokeId: 151 withArguments:
			((Array new: 4)
				basicAt: 1 put: type;
				basicAt: 2 put: legendKey;
				basicAt: 3 put: autoText;
				basicAt: 4 put: hasLeaderLines;
				yourself))
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

applyDataLabels
	"Answer the <VARIANT> result of invoking the ApplyDataLabels() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 applyDataLabels: 2
		 legendKey: VARIANT unspecified
		 autoText: VARIANT unspecified
		 hasLeaderLines: VARIANT unspecified
		 showSeriesName: VARIANT unspecified
		 showCategoryName: VARIANT unspecified
		 showValue: VARIANT unspecified
		 showPercentage: VARIANT unspecified
		 showBubbleSize: VARIANT unspecified
		 separator: VARIANT unspecified!

applyDataLabels: type legendKey: legendKey autoText: autoText hasLeaderLines: hasLeaderLines showSeriesName: showSeriesName showCategoryName: showCategoryName showValue: showValue showPercentage: showPercentage showBubbleSize: showBubbleSize separator: separator
	"Answer the <VARIANT> result of invoking the ApplyDataLabels() method of the COM object."

	^(self invokeId: 1922 withArguments:
			((Array new: 10)
				basicAt: 1 put: type;
				basicAt: 2 put: legendKey;
				basicAt: 3 put: autoText;
				basicAt: 4 put: hasLeaderLines;
				basicAt: 5 put: showSeriesName;
				basicAt: 6 put: showCategoryName;
				basicAt: 7 put: showValue;
				basicAt: 8 put: showPercentage;
				basicAt: 9 put: showBubbleSize;
				basicAt: 10 put: separator;
				yourself))
!

applyPictToEnd
	"Answer the <varbool> value of the 'ApplyPictToEnd' property of the receiver.
		VARIANT_BOOL ApplyPictToEnd"

	^(self getPropertyId: 1661)
!

applyPictToEnd: arg1
	"Set the 'ApplyPictToEnd' property of the receiver to the <varbool> value of the argument.
		void ApplyPictToEnd"

	self setPropertyId: 1661 value: arg1
!

applyPictToFront
	"Answer the <varbool> value of the 'ApplyPictToFront' property of the receiver.
		VARIANT_BOOL ApplyPictToFront"

	^(self getPropertyId: 1660)
!

applyPictToFront: arg1
	"Set the 'ApplyPictToFront' property of the receiver to the <varbool> value of the argument.
		void ApplyPictToFront"

	self setPropertyId: 1660 value: arg1
!

applyPictToSides
	"Answer the <varbool> value of the 'ApplyPictToSides' property of the receiver.
		VARIANT_BOOL ApplyPictToSides"

	^(self getPropertyId: 1659)
!

applyPictToSides: arg1
	"Set the 'ApplyPictToSides' property of the receiver to the <varbool> value of the argument.
		void ApplyPictToSides"

	self setPropertyId: 1659 value: arg1
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

copy
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object."

	^(self invokeId: 551)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

dataLabel
	"Answer the <ExcelDataLabel> value of the 'DataLabel' property of the receiver.
		DataLabel* DataLabel"

	^ExcelDataLabel attachInterface: (self getPropertyId: 158)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

explosion
	"Answer the <sdword> value of the 'Explosion' property of the receiver.
		long Explosion"

	^(self getPropertyId: 182)
!

explosion: arg1
	"Set the 'Explosion' property of the receiver to the <sdword> value of the argument.
		void Explosion"

	self setPropertyId: 182 value: arg1
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

has3DEffect
	"Answer the <varbool> value of the 'Has3DEffect' property of the receiver.
		VARIANT_BOOL Has3DEffect"

	^(self getPropertyId: 1665)
!

has3DEffect: arg1
	"Set the 'Has3DEffect' property of the receiver to the <varbool> value of the argument.
		void Has3DEffect"

	self setPropertyId: 1665 value: arg1
!

hasDataLabel
	"Answer the <varbool> value of the 'HasDataLabel' property of the receiver.
		VARIANT_BOOL HasDataLabel"

	^(self getPropertyId: 77)
!

hasDataLabel: arg1
	"Set the 'HasDataLabel' property of the receiver to the <varbool> value of the argument.
		void HasDataLabel"

	self setPropertyId: 77 value: arg1
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
!

invertIfNegative
	"Answer the <varbool> value of the 'InvertIfNegative' property of the receiver.
		VARIANT_BOOL InvertIfNegative"

	^(self getPropertyId: 132)
!

invertIfNegative: arg1
	"Set the 'InvertIfNegative' property of the receiver to the <varbool> value of the argument.
		void InvertIfNegative"

	self setPropertyId: 132 value: arg1
!

markerBackgroundColor
	"Answer the <sdword> value of the 'MarkerBackgroundColor' property of the receiver.
		long MarkerBackgroundColor"

	^(self getPropertyId: 73)
!

markerBackgroundColor: arg1
	"Set the 'MarkerBackgroundColor' property of the receiver to the <sdword> value of the argument.
		void MarkerBackgroundColor"

	self setPropertyId: 73 value: arg1
!

markerBackgroundColorIndex
	"Answer the <sdword> value of the 'MarkerBackgroundColorIndex' property of the receiver.
		XlColorIndex MarkerBackgroundColorIndex"

	^(self getPropertyId: 74)
!

markerBackgroundColorIndex: arg1
	"Set the 'MarkerBackgroundColorIndex' property of the receiver to the <sdword> value of the argument.
		void MarkerBackgroundColorIndex"

	self setPropertyId: 74 value: arg1
!

markerForegroundColor
	"Answer the <sdword> value of the 'MarkerForegroundColor' property of the receiver.
		long MarkerForegroundColor"

	^(self getPropertyId: 75)
!

markerForegroundColor: arg1
	"Set the 'MarkerForegroundColor' property of the receiver to the <sdword> value of the argument.
		void MarkerForegroundColor"

	self setPropertyId: 75 value: arg1
!

markerForegroundColorIndex
	"Answer the <sdword> value of the 'MarkerForegroundColorIndex' property of the receiver.
		XlColorIndex MarkerForegroundColorIndex"

	^(self getPropertyId: 76)
!

markerForegroundColorIndex: arg1
	"Set the 'MarkerForegroundColorIndex' property of the receiver to the <sdword> value of the argument.
		void MarkerForegroundColorIndex"

	self setPropertyId: 76 value: arg1
!

markerSize
	"Answer the <sdword> value of the 'MarkerSize' property of the receiver.
		long MarkerSize"

	^(self getPropertyId: 231)
!

markerSize: arg1
	"Set the 'MarkerSize' property of the receiver to the <sdword> value of the argument.
		void MarkerSize"

	self setPropertyId: 231 value: arg1
!

markerStyle
	"Answer the <sdword> value of the 'MarkerStyle' property of the receiver.
		XlMarkerStyle MarkerStyle"

	^(self getPropertyId: 72)
!

markerStyle: arg1
	"Set the 'MarkerStyle' property of the receiver to the <sdword> value of the argument.
		void MarkerStyle"

	self setPropertyId: 72 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

paste
	"Answer the <VARIANT> result of invoking the Paste() method of the COM object."

	^(self invokeId: 211)
!

pictureType
	"Answer the <sdword> value of the 'PictureType' property of the receiver.
		XlChartPictureType PictureType"

	^(self getPropertyId: 161)
!

pictureType: arg1
	"Set the 'PictureType' property of the receiver to the <sdword> value of the argument.
		void PictureType"

	self setPropertyId: 161 value: arg1
!

pictureUnit
	"Answer the <sdword> value of the 'PictureUnit' property of the receiver.
		long PictureUnit"

	^(self getPropertyId: 162)
!

pictureUnit: arg1
	"Set the 'PictureUnit' property of the receiver to the <sdword> value of the argument.
		void PictureUnit"

	self setPropertyId: 162 value: arg1
!

pictureUnit2
	"Answer the <double> value of the 'PictureUnit2' property of the receiver.
		double PictureUnit2"

	^(self getPropertyId: 2649)
!

pictureUnit2: arg1
	"Set the 'PictureUnit2' property of the receiver to the <double> value of the argument.
		void PictureUnit2"

	self setPropertyId: 2649 value: arg1
!

secondaryPlot
	"Answer the <varbool> value of the 'SecondaryPlot' property of the receiver.
		VARIANT_BOOL SecondaryPlot"

	^(self getPropertyId: 1662)
!

secondaryPlot: arg1
	"Set the 'SecondaryPlot' property of the receiver to the <varbool> value of the argument.
		void SecondaryPlot"

	self setPropertyId: 1662 value: arg1
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
!

shadow
	"Answer the <varbool> value of the 'Shadow' property of the receiver.
		VARIANT_BOOL Shadow"

	^(self getPropertyId: 103)
!

shadow: arg1
	"Set the 'Shadow' property of the receiver to the <varbool> value of the argument.
		void Shadow"

	self setPropertyId: 103 value: arg1
! !
!ExcelPoint categoriesFor: #_applyDataLabels!**auto generated**!methods!public! !
!ExcelPoint categoriesFor: #_applyDataLabels:legendKey:autoText:hasLeaderLines:!**auto generated**!methods!public! !
!ExcelPoint categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #applyDataLabels!**auto generated**!methods!public! !
!ExcelPoint categoriesFor: #applyDataLabels:legendKey:autoText:hasLeaderLines:showSeriesName:showCategoryName:showValue:showPercentage:showBubbleSize:separator:!**auto generated**!methods!public! !
!ExcelPoint categoriesFor: #applyPictToEnd!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #applyPictToEnd:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #applyPictToFront!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #applyPictToFront:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #applyPictToSides!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #applyPictToSides:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #border!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelPoint categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelPoint categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #dataLabel!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelPoint categoriesFor: #explosion!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #explosion:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #format!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #has3DEffect!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #has3DEffect:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #hasDataLabel!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #hasDataLabel:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #invertIfNegative!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #invertIfNegative:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #markerBackgroundColor!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #markerBackgroundColor:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #markerBackgroundColorIndex!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #markerBackgroundColorIndex:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #markerForegroundColor!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #markerForegroundColor:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #markerForegroundColorIndex!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #markerForegroundColorIndex:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #markerSize!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #markerSize:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #markerStyle!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #markerStyle:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #paste!**auto generated**!methods!public! !
!ExcelPoint categoriesFor: #pictureType!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #pictureType:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #pictureUnit!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #pictureUnit:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #pictureUnit2!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #pictureUnit2:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #secondaryPlot!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #secondaryPlot:!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #select!**auto generated**!methods!public! !
!ExcelPoint categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelPoint categoriesFor: #shadow:!**auto generated**!properties!public! !

!ExcelPoint class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPoint initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPoint class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

