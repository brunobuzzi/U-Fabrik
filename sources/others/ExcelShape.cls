"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelShape
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelShape guid: (IID fromString: '{00024439-0000-0000-C000-000000000046}')!
ExcelShape comment: '<ExcelShape> is a wrapper class generated for the dispatch interface ''Excel.Shape'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024439-0000-0000-C000-000000000046), 
	helpcontext(0x000200cf)
]
dispinterface Shape {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000068b), helpcontext(0x0001068b)]
		void Apply();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x0000040f), helpcontext(0x0001040f)]
		Shape* Duplicate();
[id(0x0000068c), helpcontext(0x0001068c)]
		void Flip(
			[in]MsoFlipCmd FlipCmd);
[id(0x0000068e), helpcontext(0x0001068e)]
		void IncrementLeft(
			[in]float Increment);
[id(0x00000690), helpcontext(0x00010690)]
		void IncrementRotation(
			[in]float Increment);
[id(0x00000691), helpcontext(0x00010691)]
		void IncrementTop(
			[in]float Increment);
[id(0x00000692), helpcontext(0x00010692)]
		void PickUp();
[id(0x00000693), helpcontext(0x00010693)]
		void RerouteConnections();
[id(0x00000694), helpcontext(0x00010694)]
		void ScaleHeight(
			[in]float Factor,
			[in]MsoTriState RelativeToOriginalSize,
			[in, optional]VARIANT Scale);
[id(0x00000698), helpcontext(0x00010698)]
		void ScaleWidth(
			[in]float Factor,
			[in]MsoTriState RelativeToOriginalSize,
			[in, optional]VARIANT Scale);
[id(0x000000eb), helpcontext(0x000100eb)]
		void Select(
			[in, optional]VARIANT Replace);
[id(0x00000699), helpcontext(0x00010699)]
		void SetShapesDefaultProperties();
[id(0x000000f4), helpcontext(0x000100f4)]
		ShapeRange* Ungroup();
[id(0x0000026e), helpcontext(0x0001026e)]
		void ZOrder(
			[in]MsoZOrderCmd ZOrderCmd);
[id(0x0000069b), propget, helpcontext(0x0001069b)]
		Adjustments* Adjustments();
[id(0x0000069c), propget, helpcontext(0x0001069c)]
		TextFrame* TextFrame();
[id(0x0000069d), propget, helpcontext(0x0001069d)]
		MsoAutoShapeType AutoShapeType();
[id(0x0000069d), propput, helpcontext(0x0001069d)]
		void AutoShapeType(
			[in]MsoAutoShapeType arg1);
[id(0x0000069e), propget, helpcontext(0x0001069e)]
		CalloutFormat* Callout();
[id(0x0000069f), propget, helpcontext(0x0001069f)]
		long ConnectionSiteCount();
[id(0x000006a0), propget, helpcontext(0x000106a0)]
		MsoTriState Connector();
[id(0x000006a1), propget, helpcontext(0x000106a1)]
		ConnectorFormat* ConnectorFormat();
[id(0x0000067f), propget, helpcontext(0x0001067f)]
		FillFormat* Fill();
[id(0x000006a2), propget, helpcontext(0x000106a2)]
		GroupShapes* GroupItems();
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		float Height();
[id(0x0000007b), propput, helpcontext(0x0001007b)]
		void Height(
			[in]float arg1);
[id(0x000006a3), propget, helpcontext(0x000106a3)]
		MsoTriState HorizontalFlip();
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		float Left();
[id(0x0000007f), propput, helpcontext(0x0001007f)]
		void Left(
			[in]float arg1);
[id(0x00000331), propget, helpcontext(0x00010331)]
		LineFormat* Line();
[id(0x000006a4), propget, helpcontext(0x000106a4)]
		MsoTriState LockAspectRatio();
[id(0x000006a4), propput, helpcontext(0x000106a4)]
		void LockAspectRatio(
			[in]MsoTriState arg1);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x000006a5), propget, helpcontext(0x000106a5)]
		ShapeNodes* Nodes();
[id(0x0000003b), propget, helpcontext(0x0001003b)]
		float Rotation();
[id(0x0000003b), propput, helpcontext(0x0001003b)]
		void Rotation(
			[in]float arg1);
[id(0x0000065f), propget, helpcontext(0x0001065f)]
		PictureFormat* PictureFormat();
[id(0x00000067), propget, helpcontext(0x00010067)]
		ShadowFormat* Shadow();
[id(0x000006a6), propget, helpcontext(0x000106a6)]
		TextEffectFormat* TextEffect();
[id(0x000006a7), propget, helpcontext(0x000106a7)]
		ThreeDFormat* ThreeD();
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		float Top();
[id(0x0000007e), propput, helpcontext(0x0001007e)]
		void Top(
			[in]float arg1);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		MsoShapeType Type();
[id(0x000006a8), propget, helpcontext(0x000106a8)]
		MsoTriState VerticalFlip();
[id(0x0000026d), propget, helpcontext(0x0001026d)]
		VARIANT Vertices();
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		MsoTriState Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]MsoTriState arg1);
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		float Width();
[id(0x0000007a), propput, helpcontext(0x0001007a)]
		void Width(
			[in]float arg1);
[id(0x000006a9), propget, helpcontext(0x000106a9)]
		long ZOrderPosition();
[id(0x000006aa), propget, helpcontext(0x000106aa)]
		Hyperlink* Hyperlink();
[id(0x000006ab), propget, helpcontext(0x000106ab)]
		MsoBlackWhiteMode BlackWhiteMode();
[id(0x000006ab), propput, helpcontext(0x000106ab)]
		void BlackWhiteMode(
			[in]MsoBlackWhiteMode arg1);
[id(0x000006ac), hidden, propget, helpcontext(0x000106ac)]
		IDispatch* DrawingObject();
[id(0x00000254), propget, helpcontext(0x00010254)]
		BSTR OnAction();
[id(0x00000254), propput, helpcontext(0x00010254)]
		void OnAction(
			[in]BSTR arg1);
[id(0x0000010d), propget, helpcontext(0x0001010d)]
		VARIANT_BOOL Locked();
[id(0x0000010d), propput, helpcontext(0x0001010d)]
		void Locked(
			[in]VARIANT_BOOL arg1);
[id(0x0000026c), propget, helpcontext(0x0001026c)]
		Range* TopLeftCell();
[id(0x00000267), propget, helpcontext(0x00010267)]
		Range* BottomRightCell();
[id(0x00000269), propget, helpcontext(0x00010269)]
		XlPlacement Placement();
[id(0x00000269), propput, helpcontext(0x00010269)]
		void Placement(
			[in]XlPlacement arg1);
[id(0x00000227), helpcontext(0x00010227)]
		void Copy();
[id(0x00000235), helpcontext(0x00010235)]
		void Cut();
[id(0x000000d5), helpcontext(0x000100d5)]
		void CopyPicture(
			[in, optional]VARIANT Appearance,
			[in, optional]VARIANT Format);
[id(0x000006ad), propget, helpcontext(0x000106ad)]
		ControlFormat* ControlFormat();
[id(0x000006ae), propget, helpcontext(0x000106ae)]
		LinkFormat* LinkFormat();
[id(0x000006af), propget, helpcontext(0x000106af)]
		OLEFormat* OLEFormat();
[id(0x000006b0), propget, helpcontext(0x000106b0)]
		XlFormControl FormControlType();
[id(0x00000763), propget, helpcontext(0x00010763)]
		BSTR AlternativeText();
[id(0x00000763), propput, helpcontext(0x00010763)]
		void AlternativeText(
			[in]BSTR arg1);
[id(0x00000764), hidden, propget, helpcontext(0x00010764)]
		Script* Script();
[id(0x00000875), hidden, propget, helpcontext(0x00010875)]
		DiagramNode* DiagramNode();
[id(0x00000876), hidden, propget, helpcontext(0x00010876)]
		MsoTriState HasDiagramNode();
[id(0x00000877), hidden, propget, helpcontext(0x00010877)]
		Diagram* Diagram();
[id(0x00000878), hidden, propget, helpcontext(0x00010878)]
		MsoTriState HasDiagram();
[id(0x00000879), propget, helpcontext(0x00010879)]
		MsoTriState Child();
[id(0x0000087a), propget, helpcontext(0x0001087a)]
		Shape* ParentGroup();
[id(0x0000087b), hidden, propget, helpcontext(0x0001087b)]
		CanvasShapes* CanvasItems();
[id(0x0000023a), propget, helpcontext(0x0001023a)]
		long ID();
[id(0x0000087c), hidden, helpcontext(0x0001087c)]
		void CanvasCropLeft(
			[in]float Increment);
[id(0x0000087d), hidden, helpcontext(0x0001087d)]
		void CanvasCropTop(
			[in]float Increment);
[id(0x0000087e), hidden, helpcontext(0x0001087e)]
		void CanvasCropRight(
			[in]float Increment);
[id(0x0000087f), hidden, helpcontext(0x0001087f)]
		void CanvasCropBottom(
			[in]float Increment);
[id(0x00000007), propget, helpcontext(0x00010007)]
		Chart* Chart();
[id(0x00000a62), propget, helpcontext(0x00010a62)]
		MsoTriState HasChart();
[id(0x00000a63), propget, helpcontext(0x00010a63)]
		TextFrame2* TextFrame2();
[id(0x00000a64), propget, helpcontext(0x00010a64)]
		MsoShapeStyleIndex ShapeStyle();
[id(0x00000a64), propput, helpcontext(0x00010a64)]
		void ShapeStyle(
			[in]MsoShapeStyleIndex arg1);
[id(0x00000a65), propget, helpcontext(0x00010a65)]
		MsoBackgroundStyleIndex BackgroundStyle();
[id(0x00000a65), propput, helpcontext(0x00010a65)]
		void BackgroundStyle(
			[in]MsoBackgroundStyleIndex arg1);
[id(0x00000a66), propget, helpcontext(0x00010a66)]
		SoftEdgeFormat* SoftEdge();
[id(0x00000a67), propget, helpcontext(0x00010a67)]
		GlowFormat* Glow();
[id(0x00000a68), propget, helpcontext(0x00010a68)]
		ReflectionFormat* Reflection();
};
'!
!ExcelShape categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelShape methodsFor!

adjustments
	"Answer the <ExcelAdjustments> value of the 'Adjustments' property of the receiver.
		Adjustments* Adjustments"

	^ExcelAdjustments attachInterface: (self getPropertyId: 1691)
!

alternativeText
	"Answer the <bstr> value of the 'AlternativeText' property of the receiver.
		BSTR AlternativeText"

	^(self getPropertyId: 1891)
!

alternativeText: arg1
	"Set the 'AlternativeText' property of the receiver to the <bstr> value of the argument.
		void AlternativeText"

	self setPropertyId: 1891 value: arg1
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

apply
	"Invoke the Apply() method of the COM object."

	(self invokeId: 1675)
!

autoShapeType
	"Answer the <sdword> value of the 'AutoShapeType' property of the receiver.
		MsoAutoShapeType AutoShapeType"

	^(self getPropertyId: 1693)
!

autoShapeType: arg1
	"Set the 'AutoShapeType' property of the receiver to the <sdword> value of the argument.
		void AutoShapeType"

	self setPropertyId: 1693 value: arg1
!

backgroundStyle
	"Answer the <sdword> value of the 'BackgroundStyle' property of the receiver.
		MsoBackgroundStyleIndex BackgroundStyle"

	^(self getPropertyId: 2661)
!

backgroundStyle: arg1
	"Set the 'BackgroundStyle' property of the receiver to the <sdword> value of the argument.
		void BackgroundStyle"

	self setPropertyId: 2661 value: arg1
!

blackWhiteMode
	"Answer the <sdword> value of the 'BlackWhiteMode' property of the receiver.
		MsoBlackWhiteMode BlackWhiteMode"

	^(self getPropertyId: 1707)
!

blackWhiteMode: arg1
	"Set the 'BlackWhiteMode' property of the receiver to the <sdword> value of the argument.
		void BlackWhiteMode"

	self setPropertyId: 1707 value: arg1
!

bottomRightCell
	"Answer the <ExcelRange> value of the 'BottomRightCell' property of the receiver.
		Range* BottomRightCell"

	^ExcelRange attachInterface: (self getPropertyId: 615)
!

callout
	"Answer the <ExcelCalloutFormat> value of the 'Callout' property of the receiver.
		CalloutFormat* Callout"

	^ExcelCalloutFormat attachInterface: (self getPropertyId: 1694)
!

canvasCropBottom: increment
	"Invoke the CanvasCropBottom() method of the COM object."

	(self invokeId: 2175 with: increment)
!

canvasCropLeft: increment
	"Invoke the CanvasCropLeft() method of the COM object."

	(self invokeId: 2172 with: increment)
!

canvasCropRight: increment
	"Invoke the CanvasCropRight() method of the COM object."

	(self invokeId: 2174 with: increment)
!

canvasCropTop: increment
	"Invoke the CanvasCropTop() method of the COM object."

	(self invokeId: 2173 with: increment)
!

canvasItems
	"Answer the <OfficeCanvasShapes> value of the 'CanvasItems' property of the receiver.
		CanvasShapes* CanvasItems"

	^OfficeCanvasShapes attachInterface: (self getPropertyId: 2171)
!

chart
	"Answer the <Excel_Chart> value of the 'Chart' property of the receiver.
		Chart* Chart"

	^Excel_Chart attachInterface: (self getPropertyId: 7)
!

child
	"Answer the <sdword> value of the 'Child' property of the receiver.
		MsoTriState Child"

	^(self getPropertyId: 2169)
!

connectionSiteCount
	"Answer the <sdword> value of the 'ConnectionSiteCount' property of the receiver.
		long ConnectionSiteCount"

	^(self getPropertyId: 1695)
!

connector
	"Answer the <sdword> value of the 'Connector' property of the receiver.
		MsoTriState Connector"

	^(self getPropertyId: 1696)
!

connectorFormat
	"Answer the <ExcelConnectorFormat> value of the 'ConnectorFormat' property of the receiver.
		ConnectorFormat* ConnectorFormat"

	^ExcelConnectorFormat attachInterface: (self getPropertyId: 1697)
!

controlFormat
	"Answer the <ExcelControlFormat> value of the 'ControlFormat' property of the receiver.
		ControlFormat* ControlFormat"

	^ExcelControlFormat attachInterface: (self getPropertyId: 1709)
!

copy
	"Invoke the Copy() method of the COM object."

	(self invokeId: 551)
!

copyPicture
	"Invoke the CopyPicture() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 copyPicture: VARIANT unspecified
		 format: VARIANT unspecified!

copyPicture: appearance format: format
	"Invoke the CopyPicture() method of the COM object."

	(self invokeId: 213 with: appearance with: format)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

cut
	"Invoke the Cut() method of the COM object."

	(self invokeId: 565)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

diagram
	"Answer the <ExcelDiagram> value of the 'Diagram' property of the receiver.
		Diagram* Diagram"

	^ExcelDiagram attachInterface: (self getPropertyId: 2167)
!

diagramNode
	"Answer the <ExcelDiagramNode> value of the 'DiagramNode' property of the receiver.
		DiagramNode* DiagramNode"

	^ExcelDiagramNode attachInterface: (self getPropertyId: 2165)
!

drawingObject
	"Answer the <IDispatch> value of the 'DrawingObject' property of the receiver.
		IDispatch* DrawingObject"

	^IDispatch attachInterface: (self getPropertyId: 1708)
!

duplicate
	"Answer the <ExcelShape> result of invoking the Duplicate() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1039)
!

fill
	"Answer the <ExcelFillFormat> value of the 'Fill' property of the receiver.
		FillFormat* Fill"

	^ExcelFillFormat attachInterface: (self getPropertyId: 1663)
!

flip: flipCmd
	"Invoke the Flip() method of the COM object."

	(self invokeId: 1676 with: flipCmd)
!

formControlType
	"Answer the <sdword> value of the 'FormControlType' property of the receiver.
		XlFormControl FormControlType"

	^(self getPropertyId: 1712)
!

glow
	"Answer the <OfficeGlowFormat> value of the 'Glow' property of the receiver.
		GlowFormat* Glow"

	^OfficeGlowFormat attachInterface: (self getPropertyId: 2663)
!

groupItems
	"Answer the <ExcelGroupShapes> value of the 'GroupItems' property of the receiver.
		GroupShapes* GroupItems"

	^ExcelGroupShapes attachInterface: (self getPropertyId: 1698)
!

hasChart
	"Answer the <sdword> value of the 'HasChart' property of the receiver.
		MsoTriState HasChart"

	^(self getPropertyId: 2658)
!

hasDiagram
	"Answer the <sdword> value of the 'HasDiagram' property of the receiver.
		MsoTriState HasDiagram"

	^(self getPropertyId: 2168)
!

hasDiagramNode
	"Answer the <sdword> value of the 'HasDiagramNode' property of the receiver.
		MsoTriState HasDiagramNode"

	^(self getPropertyId: 2166)
!

height
	"Answer the <float> value of the 'Height' property of the receiver.
		float Height"

	^(self getPropertyId: 123)
!

height: arg1
	"Set the 'Height' property of the receiver to the <float> value of the argument.
		void Height"

	self setPropertyId: 123 value: arg1
!

horizontalFlip
	"Answer the <sdword> value of the 'HorizontalFlip' property of the receiver.
		MsoTriState HorizontalFlip"

	^(self getPropertyId: 1699)
!

hyperlink
	"Answer the <ExcelHyperlink> value of the 'Hyperlink' property of the receiver.
		Hyperlink* Hyperlink"

	^ExcelHyperlink attachInterface: (self getPropertyId: 1706)
!

id
	"Answer the <sdword> value of the 'ID' property of the receiver.
		long ID"

	^(self getPropertyId: 570)
!

incrementLeft: increment
	"Invoke the IncrementLeft() method of the COM object."

	(self invokeId: 1678 with: increment)
!

incrementRotation: increment
	"Invoke the IncrementRotation() method of the COM object."

	(self invokeId: 1680 with: increment)
!

incrementTop: increment
	"Invoke the IncrementTop() method of the COM object."

	(self invokeId: 1681 with: increment)
!

left
	"Answer the <float> value of the 'Left' property of the receiver.
		float Left"

	^(self getPropertyId: 127)
!

left: arg1
	"Set the 'Left' property of the receiver to the <float> value of the argument.
		void Left"

	self setPropertyId: 127 value: arg1
!

line
	"Answer the <ExcelLineFormat> value of the 'Line' property of the receiver.
		LineFormat* Line"

	^ExcelLineFormat attachInterface: (self getPropertyId: 817)
!

linkFormat
	"Answer the <ExcelLinkFormat> value of the 'LinkFormat' property of the receiver.
		LinkFormat* LinkFormat"

	^ExcelLinkFormat attachInterface: (self getPropertyId: 1710)
!

lockAspectRatio
	"Answer the <sdword> value of the 'LockAspectRatio' property of the receiver.
		MsoTriState LockAspectRatio"

	^(self getPropertyId: 1700)
!

lockAspectRatio: arg1
	"Set the 'LockAspectRatio' property of the receiver to the <sdword> value of the argument.
		void LockAspectRatio"

	self setPropertyId: 1700 value: arg1
!

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver.
		VARIANT_BOOL Locked"

	^(self getPropertyId: 269)
!

locked: arg1
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument.
		void Locked"

	self setPropertyId: 269 value: arg1
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

nodes
	"Answer the <ExcelShapeNodes> value of the 'Nodes' property of the receiver.
		ShapeNodes* Nodes"

	^ExcelShapeNodes attachInterface: (self getPropertyId: 1701)
!

oleFormat
	"Answer the <ExcelOLEFormat> value of the 'OLEFormat' property of the receiver.
		OLEFormat* OLEFormat"

	^ExcelOLEFormat attachInterface: (self getPropertyId: 1711)
!

onAction
	"Answer the <bstr> value of the 'OnAction' property of the receiver.
		BSTR OnAction"

	^(self getPropertyId: 596)
!

onAction: arg1
	"Set the 'OnAction' property of the receiver to the <bstr> value of the argument.
		void OnAction"

	self setPropertyId: 596 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

parentGroup
	"Answer the <ExcelShape> value of the 'ParentGroup' property of the receiver.
		Shape* ParentGroup"

	^ExcelShape attachInterface: (self getPropertyId: 2170)
!

pickUp
	"Invoke the PickUp() method of the COM object."

	(self invokeId: 1682)
!

pictureFormat
	"Answer the <ExcelPictureFormat> value of the 'PictureFormat' property of the receiver.
		PictureFormat* PictureFormat"

	^ExcelPictureFormat attachInterface: (self getPropertyId: 1631)
!

placement
	"Answer the <sdword> value of the 'Placement' property of the receiver.
		XlPlacement Placement"

	^(self getPropertyId: 617)
!

placement: arg1
	"Set the 'Placement' property of the receiver to the <sdword> value of the argument.
		void Placement"

	self setPropertyId: 617 value: arg1
!

reflection
	"Answer the <OfficeReflectionFormat> value of the 'Reflection' property of the receiver.
		ReflectionFormat* Reflection"

	^OfficeReflectionFormat attachInterface: (self getPropertyId: 2664)
!

rerouteConnections
	"Invoke the RerouteConnections() method of the COM object."

	(self invokeId: 1683)
!

rotation
	"Answer the <float> value of the 'Rotation' property of the receiver.
		float Rotation"

	^(self getPropertyId: 59)
!

rotation: arg1
	"Set the 'Rotation' property of the receiver to the <float> value of the argument.
		void Rotation"

	self setPropertyId: 59 value: arg1
!

scaleHeight: factor relativeToOriginalSize: relativeToOriginalSize
	"Invoke the ScaleHeight() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 scaleHeight: factor
		 relativeToOriginalSize: relativeToOriginalSize
		 scale: VARIANT unspecified!

scaleHeight: factor relativeToOriginalSize: relativeToOriginalSize scale: scale
	"Invoke the ScaleHeight() method of the COM object."

	(self invokeId: 1684 withArguments:
			((Array new: 3)
				basicAt: 1 put: factor;
				basicAt: 2 put: relativeToOriginalSize;
				basicAt: 3 put: scale;
				yourself))
!

scaleWidth: factor relativeToOriginalSize: relativeToOriginalSize
	"Invoke the ScaleWidth() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 scaleWidth: factor
		 relativeToOriginalSize: relativeToOriginalSize
		 scale: VARIANT unspecified!

scaleWidth: factor relativeToOriginalSize: relativeToOriginalSize scale: scale
	"Invoke the ScaleWidth() method of the COM object."

	(self invokeId: 1688 withArguments:
			((Array new: 3)
				basicAt: 1 put: factor;
				basicAt: 2 put: relativeToOriginalSize;
				basicAt: 3 put: scale;
				yourself))
!

script
	"Answer the <OfficeScript> value of the 'Script' property of the receiver.
		Script* Script"

	^OfficeScript attachInterface: (self getPropertyId: 1892)
!

select
	"Invoke the Select() method of the COM object.
	Default values are passed for all optional parameters."

	self select: VARIANT unspecified!

select: replace
	"Invoke the Select() method of the COM object."

	(self invokeId: 235 with: replace)
!

setShapesDefaultProperties
	"Invoke the SetShapesDefaultProperties() method of the COM object."

	(self invokeId: 1689)
!

shadow
	"Answer the <ExcelShadowFormat> value of the 'Shadow' property of the receiver.
		ShadowFormat* Shadow"

	^ExcelShadowFormat attachInterface: (self getPropertyId: 103)
!

shapeStyle
	"Answer the <sdword> value of the 'ShapeStyle' property of the receiver.
		MsoShapeStyleIndex ShapeStyle"

	^(self getPropertyId: 2660)
!

shapeStyle: arg1
	"Set the 'ShapeStyle' property of the receiver to the <sdword> value of the argument.
		void ShapeStyle"

	self setPropertyId: 2660 value: arg1
!

softEdge
	"Answer the <OfficeSoftEdgeFormat> value of the 'SoftEdge' property of the receiver.
		SoftEdgeFormat* SoftEdge"

	^OfficeSoftEdgeFormat attachInterface: (self getPropertyId: 2662)
!

textEffect
	"Answer the <ExcelTextEffectFormat> value of the 'TextEffect' property of the receiver.
		TextEffectFormat* TextEffect"

	^ExcelTextEffectFormat attachInterface: (self getPropertyId: 1702)
!

textFrame
	"Answer the <ExcelTextFrame> value of the 'TextFrame' property of the receiver.
		TextFrame* TextFrame"

	^ExcelTextFrame attachInterface: (self getPropertyId: 1692)
!

textFrame2
	"Answer the <ExcelTextFrame2> value of the 'TextFrame2' property of the receiver.
		TextFrame2* TextFrame2"

	^ExcelTextFrame2 attachInterface: (self getPropertyId: 2659)
!

threeD
	"Answer the <ExcelThreeDFormat> value of the 'ThreeD' property of the receiver.
		ThreeDFormat* ThreeD"

	^ExcelThreeDFormat attachInterface: (self getPropertyId: 1703)
!

top
	"Answer the <float> value of the 'Top' property of the receiver.
		float Top"

	^(self getPropertyId: 126)
!

top: arg1
	"Set the 'Top' property of the receiver to the <float> value of the argument.
		void Top"

	self setPropertyId: 126 value: arg1
!

topLeftCell
	"Answer the <ExcelRange> value of the 'TopLeftCell' property of the receiver.
		Range* TopLeftCell"

	^ExcelRange attachInterface: (self getPropertyId: 620)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		MsoShapeType Type"

	^(self getPropertyId: 108)
!

ungroup
	"Answer the <ExcelShapeRange> result of invoking the Ungroup() method of the COM object."

	^ExcelShapeRange attachInterface: (self invokeId: 244)
!

verticalFlip
	"Answer the <sdword> value of the 'VerticalFlip' property of the receiver.
		MsoTriState VerticalFlip"

	^(self getPropertyId: 1704)
!

vertices
	"Answer the <variant> value of the 'Vertices' property of the receiver.
		VARIANT Vertices"

	^(self getPropertyId: 621)
!

visible
	"Answer the <sdword> value of the 'Visible' property of the receiver.
		MsoTriState Visible"

	^(self getPropertyId: 558)
!

visible: arg1
	"Set the 'Visible' property of the receiver to the <sdword> value of the argument.
		void Visible"

	self setPropertyId: 558 value: arg1
!

width
	"Answer the <float> value of the 'Width' property of the receiver.
		float Width"

	^(self getPropertyId: 122)
!

width: arg1
	"Set the 'Width' property of the receiver to the <float> value of the argument.
		void Width"

	self setPropertyId: 122 value: arg1
!

zOrder: zOrderCmd
	"Invoke the ZOrder() method of the COM object."

	(self invokeId: 622 with: zOrderCmd)
!

zOrderPosition
	"Answer the <sdword> value of the 'ZOrderPosition' property of the receiver.
		long ZOrderPosition"

	^(self getPropertyId: 1705)
! !
!ExcelShape categoriesFor: #adjustments!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #alternativeText!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #alternativeText:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #application!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #apply!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #autoShapeType!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #autoShapeType:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #backgroundStyle!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #backgroundStyle:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #blackWhiteMode!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #blackWhiteMode:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #bottomRightCell!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #callout!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #canvasCropBottom:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #canvasCropLeft:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #canvasCropRight:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #canvasCropTop:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #canvasItems!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #chart!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #child!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #connectionSiteCount!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #connector!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #connectorFormat!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #controlFormat!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #diagram!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #diagramNode!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #drawingObject!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #flip:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #formControlType!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #glow!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #groupItems!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #hasChart!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #hasDiagram!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #hasDiagramNode!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #height!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #horizontalFlip!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #hyperlink!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #id!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #incrementLeft:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #incrementRotation:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #incrementTop:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #left!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #line!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #linkFormat!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #lockAspectRatio!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #lockAspectRatio:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #name!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #nodes!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #oleFormat!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #parentGroup!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #pickUp!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #pictureFormat!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #reflection!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #rerouteConnections!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #rotation!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #rotation:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #scaleHeight:relativeToOriginalSize:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #scaleHeight:relativeToOriginalSize:scale:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #scaleWidth:relativeToOriginalSize:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #scaleWidth:relativeToOriginalSize:scale:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #script!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #select!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #setShapesDefaultProperties!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #shapeStyle!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #shapeStyle:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #softEdge!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #textEffect!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #textFrame!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #textFrame2!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #threeD!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #top!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #topLeftCell!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #type!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #ungroup!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #verticalFlip!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #vertices!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #width!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelShape categoriesFor: #zOrder:!**auto generated**!methods!public! !
!ExcelShape categoriesFor: #zOrderPosition!**auto generated**!properties!public! !

!ExcelShape class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelShape initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelShape class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

