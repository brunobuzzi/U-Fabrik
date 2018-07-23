"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelShapes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelShapes guid: (IID fromString: '{0002443A-0000-0000-C000-000000000046}')!
ExcelShapes comment: '<ExcelShapes> is a wrapper class generated for the dispatch interface ''Excel.Shapes'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002443A-0000-0000-C000-000000000046), 
	helpcontext(0x000200d0)
]
dispinterface Shapes {
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
[id(0x000006b1), helpcontext(0x000106b1)]
		Shape* AddCallout(
			[in]MsoCalloutType Type,
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height);
[id(0x000006b2), helpcontext(0x000106b2)]
		Shape* AddConnector(
			[in]MsoConnectorType Type,
			[in]float BeginX,
			[in]float BeginY,
			[in]float EndX,
			[in]float EndY);
[id(0x000006b7), helpcontext(0x000106b7)]
		Shape* AddCurve(
			[in]VARIANT SafeArrayOfPoints);
[id(0x000006b9), helpcontext(0x000106b9)]
		Shape* AddLabel(
			[in]MsoTextOrientation Orientation,
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height);
[id(0x000006ba), helpcontext(0x000106ba)]
		Shape* AddLine(
			[in]float BeginX,
			[in]float BeginY,
			[in]float EndX,
			[in]float EndY);
[id(0x000006bb), helpcontext(0x000106bb)]
		Shape* AddPicture(
			[in]BSTR Filename,
			[in]MsoTriState LinkToFile,
			[in]MsoTriState SaveWithDocument,
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height);
[id(0x000006be), helpcontext(0x000106be)]
		Shape* AddPolyline(
			[in]VARIANT SafeArrayOfPoints);
[id(0x000006bf), helpcontext(0x000106bf)]
		Shape* AddShape(
			[in]MsoAutoShapeType Type,
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height);
[id(0x000006c0), helpcontext(0x000106c0)]
		Shape* AddTextEffect(
			[in]MsoPresetTextEffect PresetTextEffect,
			[in]BSTR Text,
			[in]BSTR FontName,
			[in]float FontSize,
			[in]MsoTriState FontBold,
			[in]MsoTriState FontItalic,
			[in]float Left,
			[in]float Top);
[id(0x000006c6), helpcontext(0x000106c6)]
		Shape* AddTextbox(
			[in]MsoTextOrientation Orientation,
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height);
[id(0x000006c7), helpcontext(0x000106c7)]
		FreeformBuilder* BuildFreeform(
			[in]MsoEditingType EditingType,
			[in]float X1,
			[in]float Y1);
[id(0x000000c5), propget, helpcontext(0x000100c5)]
		ShapeRange* Range(
			[in]VARIANT Index);
[id(0x000006c9), helpcontext(0x000106c9)]
		void SelectAll();
[id(0x000006ca), helpcontext(0x000106ca)]
		Shape* AddFormControl(
			[in]XlFormControl Type,
			[in]long Left,
			[in]long Top,
			[in]long Width,
			[in]long Height);
[id(0x000006cb), helpcontext(0x000106cb)]
		Shape* AddOLEObject(
			[in, optional]VARIANT ClassType,
			[in, optional]VARIANT Filename,
			[in, optional]VARIANT Link,
			[in, optional]VARIANT DisplayAsIcon,
			[in, optional]VARIANT IconFileName,
			[in, optional]VARIANT IconIndex,
			[in, optional]VARIANT IconLabel,
			[in, optional]VARIANT Left,
			[in, optional]VARIANT Top,
			[in, optional]VARIANT Width,
			[in, optional]VARIANT Height);
[id(0x00000880), hidden, helpcontext(0x00010880)]
		Shape* AddDiagram(
			[in]MsoDiagramType Type,
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height);
[id(0x00000881), hidden, helpcontext(0x00010881)]
		Shape* AddCanvas(
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height);
[id(0x00000a69), helpcontext(0x00010a69)]
		Shape* AddChart(
			[in, optional]VARIANT XlChartType,
			[in, optional]VARIANT Left,
			[in, optional]VARIANT Top,
			[in, optional]VARIANT Width,
			[in, optional]VARIANT Height);
};
'!
!ExcelShapes categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelShapes methodsFor!

_default: index
	"Answer the <ExcelShape> result of invoking the _Default() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 0 with: index)
!

addCallout: type left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddCallout() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1713 withArguments:
			((Array new: 5)
				basicAt: 1 put: type;
				basicAt: 2 put: left;
				basicAt: 3 put: top;
				basicAt: 4 put: width;
				basicAt: 5 put: height;
				yourself))
!

addCanvas: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddCanvas() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 2177 withArguments:
			((Array new: 4)
				basicAt: 1 put: left;
				basicAt: 2 put: top;
				basicAt: 3 put: width;
				basicAt: 4 put: height;
				yourself))
!

addChart
	"Answer the <ExcelShape> result of invoking the AddChart() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addChart: VARIANT unspecified
		 left: VARIANT unspecified
		 top: VARIANT unspecified
		 width: VARIANT unspecified
		 height: VARIANT unspecified!

addChart: xlChartType left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddChart() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 2665 withArguments:
			((Array new: 5)
				basicAt: 1 put: xlChartType;
				basicAt: 2 put: left;
				basicAt: 3 put: top;
				basicAt: 4 put: width;
				basicAt: 5 put: height;
				yourself))
!

addConnector: type beginX: beginX beginY: beginY endX: endX endY: endY
	"Answer the <ExcelShape> result of invoking the AddConnector() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1714 withArguments:
			((Array new: 5)
				basicAt: 1 put: type;
				basicAt: 2 put: beginX;
				basicAt: 3 put: beginY;
				basicAt: 4 put: endX;
				basicAt: 5 put: endY;
				yourself))
!

addCurve: safeArrayOfPoints
	"Answer the <ExcelShape> result of invoking the AddCurve() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1719 with: safeArrayOfPoints)
!

addDiagram: type left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddDiagram() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 2176 withArguments:
			((Array new: 5)
				basicAt: 1 put: type;
				basicAt: 2 put: left;
				basicAt: 3 put: top;
				basicAt: 4 put: width;
				basicAt: 5 put: height;
				yourself))
!

addFormControl: type left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddFormControl() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1738 withArguments:
			((Array new: 5)
				basicAt: 1 put: type;
				basicAt: 2 put: left;
				basicAt: 3 put: top;
				basicAt: 4 put: width;
				basicAt: 5 put: height;
				yourself))
!

addLabel: orientation left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddLabel() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1721 withArguments:
			((Array new: 5)
				basicAt: 1 put: orientation;
				basicAt: 2 put: left;
				basicAt: 3 put: top;
				basicAt: 4 put: width;
				basicAt: 5 put: height;
				yourself))
!

addLine: beginX beginY: beginY endX: endX endY: endY
	"Answer the <ExcelShape> result of invoking the AddLine() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1722 withArguments:
			((Array new: 4)
				basicAt: 1 put: beginX;
				basicAt: 2 put: beginY;
				basicAt: 3 put: endX;
				basicAt: 4 put: endY;
				yourself))
!

addOLEObject
	"Answer the <ExcelShape> result of invoking the AddOLEObject() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addOLEObject: VARIANT unspecified
		 filename: VARIANT unspecified
		 link: VARIANT unspecified
		 displayAsIcon: VARIANT unspecified
		 iconFileName: VARIANT unspecified
		 iconIndex: VARIANT unspecified
		 iconLabel: VARIANT unspecified
		 left: VARIANT unspecified
		 top: VARIANT unspecified
		 width: VARIANT unspecified
		 height: VARIANT unspecified!

addOLEObject: classType filename: filename link: link displayAsIcon: displayAsIcon iconFileName: iconFileName iconIndex: iconIndex iconLabel: iconLabel left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddOLEObject() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1739 withArguments:
			((Array new: 11)
				basicAt: 1 put: classType;
				basicAt: 2 put: filename;
				basicAt: 3 put: link;
				basicAt: 4 put: displayAsIcon;
				basicAt: 5 put: iconFileName;
				basicAt: 6 put: iconIndex;
				basicAt: 7 put: iconLabel;
				basicAt: 8 put: left;
				basicAt: 9 put: top;
				basicAt: 10 put: width;
				basicAt: 11 put: height;
				yourself))
!

addPicture: filename linkToFile: linkToFile saveWithDocument: saveWithDocument left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddPicture() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1723 withArguments:
			((Array new: 7)
				basicAt: 1 put: filename;
				basicAt: 2 put: linkToFile;
				basicAt: 3 put: saveWithDocument;
				basicAt: 4 put: left;
				basicAt: 5 put: top;
				basicAt: 6 put: width;
				basicAt: 7 put: height;
				yourself))
!

addPolyline: safeArrayOfPoints
	"Answer the <ExcelShape> result of invoking the AddPolyline() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1726 with: safeArrayOfPoints)
!

addShape: type left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddShape() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1727 withArguments:
			((Array new: 5)
				basicAt: 1 put: type;
				basicAt: 2 put: left;
				basicAt: 3 put: top;
				basicAt: 4 put: width;
				basicAt: 5 put: height;
				yourself))
!

addTextbox: orientation left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddTextbox() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1734 withArguments:
			((Array new: 5)
				basicAt: 1 put: orientation;
				basicAt: 2 put: left;
				basicAt: 3 put: top;
				basicAt: 4 put: width;
				basicAt: 5 put: height;
				yourself))
!

addTextEffect: presetTextEffect text: text fontName: fontName fontSize: fontSize fontBold: fontBold fontItalic: fontItalic left: left top: top
	"Answer the <ExcelShape> result of invoking the AddTextEffect() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1728 withArguments:
			((Array new: 8)
				basicAt: 1 put: presetTextEffect;
				basicAt: 2 put: text;
				basicAt: 3 put: fontName;
				basicAt: 4 put: fontSize;
				basicAt: 5 put: fontBold;
				basicAt: 6 put: fontItalic;
				basicAt: 7 put: left;
				basicAt: 8 put: top;
				yourself))
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

buildFreeform: editingType x1: x1 y1: y1
	"Answer the <ExcelFreeformBuilder> result of invoking the BuildFreeform() method of the COM object."

	^ExcelFreeformBuilder attachInterface: (self invokeId: 1735 withArguments:
			((Array new: 3)
				basicAt: 1 put: editingType;
				basicAt: 2 put: x1;
				basicAt: 3 put: y1;
				yourself))
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

selectAll
	"Invoke the SelectAll() method of the COM object."

	(self invokeId: 1737)
!

value: index
	"Set the '_Default' property of the receiver to the <variant> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: index
! !
!ExcelShapes categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addCallout:left:top:width:height:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addCanvas:top:width:height:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addChart!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addChart:left:top:width:height:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addConnector:beginX:beginY:endX:endY:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addCurve:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addDiagram:left:top:width:height:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addFormControl:left:top:width:height:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addLabel:left:top:width:height:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addLine:beginY:endX:endY:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addOLEObject!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addOLEObject:filename:link:displayAsIcon:iconFileName:iconIndex:iconLabel:left:top:width:height:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addPicture:linkToFile:saveWithDocument:left:top:width:height:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addPolyline:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addShape:left:top:width:height:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addTextbox:left:top:width:height:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #addTextEffect:text:fontName:fontSize:fontBold:fontItalic:left:top:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #application!**auto generated**!properties!public! !
!ExcelShapes categoriesFor: #buildFreeform:x1:y1:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #count!**auto generated**!properties!public! !
!ExcelShapes categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelShapes categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelShapes categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelShapes categoriesFor: #range:!**auto generated**!properties!public! !
!ExcelShapes categoriesFor: #selectAll!**auto generated**!methods!public! !
!ExcelShapes categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelShapes class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelShapes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelShapes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

