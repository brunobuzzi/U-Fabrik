"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIShapeRange
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIShapeRange guid: (IID fromString: '{0002443B-0001-0000-C000-000000000046}')!
ExcelIShapeRange comment: '<ExcelIShapeRange> is a wrapper class for the COM interface ''Excel.IShapeRange'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002443B-0001-0000-C000-000000000046), 
	helpcontext(0x000200d1), 
	hidden
]
interface IShapeRange : IDispatch
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
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]Shape** RHS);
	[id(0000000000), helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]Shape** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000006cc), helpcontext(0x000106cc)]
	HRESULT __stdcall Align(
		[in]MsoAlignCmd AlignCmd,
		[in]MsoTriState RelativeTo);
	[id(0x0000068b), helpcontext(0x0001068b)]
	HRESULT __stdcall Apply();
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x000006ce), helpcontext(0x000106ce)]
	HRESULT __stdcall Distribute(
		[in]MsoDistributeCmd DistributeCmd,
		[in]MsoTriState RelativeTo);
	[id(0x0000040f), helpcontext(0x0001040f)]
	HRESULT __stdcall Duplicate(
		[out, retval]ShapeRange** RHS);
	[id(0x0000068c), helpcontext(0x0001068c)]
	HRESULT __stdcall Flip(
		[in]MsoFlipCmd FlipCmd);
	[id(0x0000068e), helpcontext(0x0001068e)]
	HRESULT __stdcall IncrementLeft(
		[in]float Increment);
	[id(0x00000690), helpcontext(0x00010690)]
	HRESULT __stdcall IncrementRotation(
		[in]float Increment);
	[id(0x00000691), helpcontext(0x00010691)]
	HRESULT __stdcall IncrementTop(
		[in]float Increment);
	[id(0x0000002e), helpcontext(0x0001002e)]
	HRESULT __stdcall Group(
		[out, retval]Shape** RHS);
	[id(0x00000692), helpcontext(0x00010692)]
	HRESULT __stdcall PickUp();
	[id(0x00000693), helpcontext(0x00010693)]
	HRESULT __stdcall RerouteConnections();
	[id(0x000006d0), helpcontext(0x000106d0)]
	HRESULT __stdcall Regroup(
		[out, retval]Shape** RHS);
	[id(0x00000694), helpcontext(0x00010694)]
	HRESULT __stdcall ScaleHeight(
		[in]float Factor,
		[in]MsoTriState RelativeToOriginalSize,
		[in, optional]VARIANT Scale);
	[id(0x00000698), helpcontext(0x00010698)]
	HRESULT __stdcall ScaleWidth(
		[in]float Factor,
		[in]MsoTriState RelativeToOriginalSize,
		[in, optional]VARIANT Scale);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[in, optional]VARIANT Replace);
	[id(0x00000699), helpcontext(0x00010699)]
	HRESULT __stdcall SetShapesDefaultProperties();
	[id(0x000000f4), helpcontext(0x000100f4)]
	HRESULT __stdcall Ungroup(
		[out, retval]ShapeRange** RHS);
	[id(0x0000026e), helpcontext(0x0001026e)]
	HRESULT __stdcall ZOrder(
		[in]MsoZOrderCmd ZOrderCmd);
	[id(0x0000069b), propget, helpcontext(0x0001069b)]
	HRESULT __stdcall Adjustments(
		[out, retval]Adjustments** RHS);
	[id(0x0000069c), propget, helpcontext(0x0001069c)]
	HRESULT __stdcall TextFrame(
		[out, retval]TextFrame** RHS);
	[id(0x0000069d), propget, helpcontext(0x0001069d)]
	HRESULT __stdcall AutoShapeType(
		[out, retval]MsoAutoShapeType* RHS);
	[id(0x0000069d), propput, helpcontext(0x0001069d)]
	HRESULT __stdcall AutoShapeType(
		[in]MsoAutoShapeType RHS);
	[id(0x0000069e), propget, helpcontext(0x0001069e)]
	HRESULT __stdcall Callout(
		[out, retval]CalloutFormat** RHS);
	[id(0x0000069f), propget, helpcontext(0x0001069f)]
	HRESULT __stdcall ConnectionSiteCount(
		[out, retval]long* RHS);
	[id(0x000006a0), propget, helpcontext(0x000106a0)]
	HRESULT __stdcall Connector(
		[out, retval]MsoTriState* RHS);
	[id(0x000006a1), propget, helpcontext(0x000106a1)]
	HRESULT __stdcall ConnectorFormat(
		[out, retval]ConnectorFormat** RHS);
	[id(0x0000067f), propget, helpcontext(0x0001067f)]
	HRESULT __stdcall Fill(
		[out, retval]FillFormat** RHS);
	[id(0x000006a2), propget, helpcontext(0x000106a2)]
	HRESULT __stdcall GroupItems(
		[out, retval]GroupShapes** RHS);
	[id(0x0000007b), propget, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[out, retval]float* RHS);
	[id(0x0000007b), propput, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[in]float RHS);
	[id(0x000006a3), propget, helpcontext(0x000106a3)]
	HRESULT __stdcall HorizontalFlip(
		[out, retval]MsoTriState* RHS);
	[id(0x0000007f), propget, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[out, retval]float* RHS);
	[id(0x0000007f), propput, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[in]float RHS);
	[id(0x00000331), propget, helpcontext(0x00010331)]
	HRESULT __stdcall Line(
		[out, retval]LineFormat** RHS);
	[id(0x000006a4), propget, helpcontext(0x000106a4)]
	HRESULT __stdcall LockAspectRatio(
		[out, retval]MsoTriState* RHS);
	[id(0x000006a4), propput, helpcontext(0x000106a4)]
	HRESULT __stdcall LockAspectRatio(
		[in]MsoTriState RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x000006a5), propget, helpcontext(0x000106a5)]
	HRESULT __stdcall Nodes(
		[out, retval]ShapeNodes** RHS);
	[id(0x0000003b), propget, helpcontext(0x0001003b)]
	HRESULT __stdcall Rotation(
		[out, retval]float* RHS);
	[id(0x0000003b), propput, helpcontext(0x0001003b)]
	HRESULT __stdcall Rotation(
		[in]float RHS);
	[id(0x0000065f), propget, helpcontext(0x0001065f)]
	HRESULT __stdcall PictureFormat(
		[out, retval]PictureFormat** RHS);
	[id(0x00000067), propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]ShadowFormat** RHS);
	[id(0x000006a6), propget, helpcontext(0x000106a6)]
	HRESULT __stdcall TextEffect(
		[out, retval]TextEffectFormat** RHS);
	[id(0x000006a7), propget, helpcontext(0x000106a7)]
	HRESULT __stdcall ThreeD(
		[out, retval]ThreeDFormat** RHS);
	[id(0x0000007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[out, retval]float* RHS);
	[id(0x0000007e), propput, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[in]float RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]MsoShapeType* RHS);
	[id(0x000006a8), propget, helpcontext(0x000106a8)]
	HRESULT __stdcall VerticalFlip(
		[out, retval]MsoTriState* RHS);
	[id(0x0000026d), propget, helpcontext(0x0001026d)]
	HRESULT __stdcall Vertices(
		[out, retval]VARIANT* RHS);
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[out, retval]MsoTriState* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]MsoTriState RHS);
	[id(0x0000007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[out, retval]float* RHS);
	[id(0x0000007a), propput, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[in]float RHS);
	[id(0x000006a9), propget, helpcontext(0x000106a9)]
	HRESULT __stdcall ZOrderPosition(
		[out, retval]long* RHS);
	[id(0x000006ab), propget, helpcontext(0x000106ab)]
	HRESULT __stdcall BlackWhiteMode(
		[out, retval]MsoBlackWhiteMode* RHS);
	[id(0x000006ab), propput, helpcontext(0x000106ab)]
	HRESULT __stdcall BlackWhiteMode(
		[in]MsoBlackWhiteMode RHS);
	[id(0x00000763), propget, helpcontext(0x00010763)]
	HRESULT __stdcall AlternativeText(
		[out, retval]BSTR* RHS);
	[id(0x00000763), propput, helpcontext(0x00010763)]
	HRESULT __stdcall AlternativeText(
		[in]BSTR RHS);
	[id(0x00000875), hidden, propget, helpcontext(0x00010875)]
	HRESULT __stdcall DiagramNode(
		[out, retval]DiagramNode** RHS);
	[id(0x00000876), hidden, propget, helpcontext(0x00010876)]
	HRESULT __stdcall HasDiagramNode(
		[out, retval]MsoTriState* RHS);
	[id(0x00000877), hidden, propget, helpcontext(0x00010877)]
	HRESULT __stdcall Diagram(
		[out, retval]Diagram** RHS);
	[id(0x00000878), hidden, propget, helpcontext(0x00010878)]
	HRESULT __stdcall HasDiagram(
		[out, retval]MsoTriState* RHS);
	[id(0x00000879), propget, helpcontext(0x00010879)]
	HRESULT __stdcall Child(
		[out, retval]MsoTriState* RHS);
	[id(0x0000087a), propget, helpcontext(0x0001087a)]
	HRESULT __stdcall ParentGroup(
		[out, retval]Shape** RHS);
	[id(0x0000087b), hidden, propget, helpcontext(0x0001087b)]
	HRESULT __stdcall CanvasItems(
		[out, retval]CanvasShapes** RHS);
	[id(0x0000023a), propget, helpcontext(0x0001023a)]
	HRESULT __stdcall ID(
		[out, retval]long* RHS);
	[id(0x0000087c), hidden, helpcontext(0x0001087c)]
	HRESULT __stdcall CanvasCropLeft(
		[in]float Increment);
	[id(0x0000087d), hidden, helpcontext(0x0001087d)]
	HRESULT __stdcall CanvasCropTop(
		[in]float Increment);
	[id(0x0000087e), hidden, helpcontext(0x0001087e)]
	HRESULT __stdcall CanvasCropRight(
		[in]float Increment);
	[id(0x0000087f), hidden, helpcontext(0x0001087f)]
	HRESULT __stdcall CanvasCropBottom(
		[in]float Increment);
	[id(0x00000007), propget, helpcontext(0x00010007)]
	HRESULT __stdcall Chart(
		[out, retval]Chart** RHS);
	[id(0x00000a62), propget, helpcontext(0x00010a62)]
	HRESULT __stdcall HasChart(
		[out, retval]MsoTriState* RHS);
	[id(0x00000a63), propget, helpcontext(0x00010a63)]
	HRESULT __stdcall TextFrame2(
		[out, retval]TextFrame2** RHS);
	[id(0x00000a64), propget, helpcontext(0x00010a64)]
	HRESULT __stdcall ShapeStyle(
		[out, retval]MsoShapeStyleIndex* RHS);
	[id(0x00000a64), propput, helpcontext(0x00010a64)]
	HRESULT __stdcall ShapeStyle(
		[in]MsoShapeStyleIndex RHS);
	[id(0x00000a65), propget, helpcontext(0x00010a65)]
	HRESULT __stdcall BackgroundStyle(
		[out, retval]MsoBackgroundStyleIndex* RHS);
	[id(0x00000a65), propput, helpcontext(0x00010a65)]
	HRESULT __stdcall BackgroundStyle(
		[in]MsoBackgroundStyleIndex RHS);
	[id(0x00000a66), propget, helpcontext(0x00010a66)]
	HRESULT __stdcall SoftEdge(
		[out, retval]SoftEdgeFormat** RHS);
	[id(0x00000a67), propget, helpcontext(0x00010a67)]
	HRESULT __stdcall Glow(
		[out, retval]GlowFormat** RHS);
	[id(0x00000a68), propget, helpcontext(0x00010a68)]
	HRESULT __stdcall Reflection(
		[out, retval]ReflectionFormat** RHS);
};
'!
!ExcelIShapeRange categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIShapeRange methodsFor!

_default: index
	"Answer the <ExcelShape> result of invoking the _Default() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		_Default: index asVariant
		rhs: answer.
	^answer asObject
!

_Default: index rhs: rhs
	"Private - Invoke the _Default() method of the COM object.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 13 variant ExcelShape**>
	^self invalidCall!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

adjustments
	"Answer the <ExcelAdjustments> value of the 'Adjustments' property of the receiver."

	| answer |
	answer := ExcelAdjustments newPointer.
	self get_Adjustments: answer.
	^answer asObject
!

align: alignCmd relativeTo: relativeTo
	"Invoke the Align() method of the COM object."

	^self
		Align: alignCmd
		relativeTo: relativeTo
!

Align: alignCmd relativeTo: relativeTo
	"Private - Invoke the Align() method of the COM object.

		HRESULT __stdcall Align(
			[in]MsoAlignCmd AlignCmd,
			[in]MsoTriState RelativeTo);"

	<virtual stdcall: hresult 15 sdword sdword>
	^self invalidCall!

alternativeText
	"Answer the <bstr> value of the 'AlternativeText' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_AlternativeText: answer.
	^answer asObject
!

alternativeText: rhs
	"Set the 'AlternativeText' property of the receiver to the <bstr> value of the argument."

	self put_AlternativeText: rhs
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

apply
	"Invoke the Apply() method of the COM object."

	^self Apply
!

Apply
	"Private - Invoke the Apply() method of the COM object.

		HRESULT __stdcall Apply();"

	<virtual stdcall: hresult 16>
	^self invalidCall!

autoShapeType
	"Answer the <sdword> value of the 'AutoShapeType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AutoShapeType: answer.
	^answer asObject
!

autoShapeType: rhs
	"Set the 'AutoShapeType' property of the receiver to the <sdword> value of the argument."

	self put_AutoShapeType: rhs
!

backgroundStyle
	"Answer the <sdword> value of the 'BackgroundStyle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BackgroundStyle: answer.
	^answer asObject
!

backgroundStyle: rhs
	"Set the 'BackgroundStyle' property of the receiver to the <sdword> value of the argument."

	self put_BackgroundStyle: rhs
!

blackWhiteMode
	"Answer the <sdword> value of the 'BlackWhiteMode' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BlackWhiteMode: answer.
	^answer asObject
!

blackWhiteMode: rhs
	"Set the 'BlackWhiteMode' property of the receiver to the <sdword> value of the argument."

	self put_BlackWhiteMode: rhs
!

callout
	"Answer the <ExcelCalloutFormat> value of the 'Callout' property of the receiver."

	| answer |
	answer := ExcelCalloutFormat newPointer.
	self get_Callout: answer.
	^answer asObject
!

canvasCropBottom: increment
	"Invoke the CanvasCropBottom() method of the COM object."

	^self CanvasCropBottom: increment
!

CanvasCropBottom: increment
	"Private - Invoke the CanvasCropBottom() method of the COM object.

		HRESULT __stdcall CanvasCropBottom(
			[in]float Increment);"

	<virtual stdcall: hresult 86 float>
	^self invalidCall!

canvasCropLeft: increment
	"Invoke the CanvasCropLeft() method of the COM object."

	^self CanvasCropLeft: increment
!

CanvasCropLeft: increment
	"Private - Invoke the CanvasCropLeft() method of the COM object.

		HRESULT __stdcall CanvasCropLeft(
			[in]float Increment);"

	<virtual stdcall: hresult 83 float>
	^self invalidCall!

canvasCropRight: increment
	"Invoke the CanvasCropRight() method of the COM object."

	^self CanvasCropRight: increment
!

CanvasCropRight: increment
	"Private - Invoke the CanvasCropRight() method of the COM object.

		HRESULT __stdcall CanvasCropRight(
			[in]float Increment);"

	<virtual stdcall: hresult 85 float>
	^self invalidCall!

canvasCropTop: increment
	"Invoke the CanvasCropTop() method of the COM object."

	^self CanvasCropTop: increment
!

CanvasCropTop: increment
	"Private - Invoke the CanvasCropTop() method of the COM object.

		HRESULT __stdcall CanvasCropTop(
			[in]float Increment);"

	<virtual stdcall: hresult 84 float>
	^self invalidCall!

canvasItems
	"Answer the <OfficeCanvasShapes> value of the 'CanvasItems' property of the receiver."

	| answer |
	answer := OfficeCanvasShapes newPointer.
	self get_CanvasItems: answer.
	^answer asObject
!

chart
	"Answer the <Excel_Chart> value of the 'Chart' property of the receiver."

	| answer |
	answer := Excel_Chart newPointer.
	self get_Chart: answer.
	^answer asObject
!

child
	"Answer the <sdword> value of the 'Child' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Child: answer.
	^answer asObject
!

connectionSiteCount
	"Answer the <sdword> value of the 'ConnectionSiteCount' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ConnectionSiteCount: answer.
	^answer asObject
!

connector
	"Answer the <sdword> value of the 'Connector' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Connector: answer.
	^answer asObject
!

connectorFormat
	"Answer the <ExcelConnectorFormat> value of the 'ConnectorFormat' property of the receiver."

	| answer |
	answer := ExcelConnectorFormat newPointer.
	self get_ConnectorFormat: answer.
	^answer asObject
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 17>
	^self invalidCall!

diagram
	"Answer the <ExcelDiagram> value of the 'Diagram' property of the receiver."

	| answer |
	answer := ExcelDiagram newPointer.
	self get_Diagram: answer.
	^answer asObject
!

diagramNode
	"Answer the <ExcelDiagramNode> value of the 'DiagramNode' property of the receiver."

	| answer |
	answer := ExcelDiagramNode newPointer.
	self get_DiagramNode: answer.
	^answer asObject
!

distribute: distributeCmd relativeTo: relativeTo
	"Invoke the Distribute() method of the COM object."

	^self
		Distribute: distributeCmd
		relativeTo: relativeTo
!

Distribute: distributeCmd relativeTo: relativeTo
	"Private - Invoke the Distribute() method of the COM object.

		HRESULT __stdcall Distribute(
			[in]MsoDistributeCmd DistributeCmd,
			[in]MsoTriState RelativeTo);"

	<virtual stdcall: hresult 18 sdword sdword>
	^self invalidCall!

duplicate
	"Answer the <ExcelShapeRange> result of invoking the Duplicate() method of the COM object."

	| answer |
	answer := ExcelShapeRange newPointer.
	self Duplicate: answer.
	^answer asObject
!

Duplicate: rhs
	"Private - Invoke the Duplicate() method of the COM object.

		HRESULT __stdcall Duplicate(
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 19 ExcelShapeRange**>
	^self invalidCall!

fill
	"Answer the <ExcelFillFormat> value of the 'Fill' property of the receiver."

	| answer |
	answer := ExcelFillFormat newPointer.
	self get_Fill: answer.
	^answer asObject
!

flip: flipCmd
	"Invoke the Flip() method of the COM object."

	^self Flip: flipCmd
!

Flip: flipCmd
	"Private - Invoke the Flip() method of the COM object.

		HRESULT __stdcall Flip(
			[in]MsoFlipCmd FlipCmd);"

	<virtual stdcall: hresult 20 sdword>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 14 IUnknown**>
	^self invalidCall!

get_Adjustments: rhs
	"Private - Get the value of the 'Adjustments' property of the receiver.

		HRESULT __stdcall Adjustments(
			[out, retval]Adjustments** RHS);"

	<virtual stdcall: hresult 34 ExcelAdjustments**>
	^self invalidCall!

get_AlternativeText: rhs
	"Private - Get the value of the 'AlternativeText' property of the receiver.

		HRESULT __stdcall AlternativeText(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 73 bstr*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AutoShapeType: rhs
	"Private - Get the value of the 'AutoShapeType' property of the receiver.

		HRESULT __stdcall AutoShapeType(
			[out, retval]MsoAutoShapeType* RHS);"

	<virtual stdcall: hresult 36 sdword*>
	^self invalidCall!

get_BackgroundStyle: rhs
	"Private - Get the value of the 'BackgroundStyle' property of the receiver.

		HRESULT __stdcall BackgroundStyle(
			[out, retval]MsoBackgroundStyleIndex* RHS);"

	<virtual stdcall: hresult 92 sdword*>
	^self invalidCall!

get_BlackWhiteMode: rhs
	"Private - Get the value of the 'BlackWhiteMode' property of the receiver.

		HRESULT __stdcall BlackWhiteMode(
			[out, retval]MsoBlackWhiteMode* RHS);"

	<virtual stdcall: hresult 71 sdword*>
	^self invalidCall!

get_Callout: rhs
	"Private - Get the value of the 'Callout' property of the receiver.

		HRESULT __stdcall Callout(
			[out, retval]CalloutFormat** RHS);"

	<virtual stdcall: hresult 38 ExcelCalloutFormat**>
	^self invalidCall!

get_CanvasItems: rhs
	"Private - Get the value of the 'CanvasItems' property of the receiver.

		HRESULT __stdcall CanvasItems(
			[out, retval]CanvasShapes** RHS);"

	<virtual stdcall: hresult 81 OfficeCanvasShapes**>
	^self invalidCall!

get_Chart: rhs
	"Private - Get the value of the 'Chart' property of the receiver.

		HRESULT __stdcall Chart(
			[out, retval]Chart** RHS);"

	<virtual stdcall: hresult 87 Excel_Chart**>
	^self invalidCall!

get_Child: rhs
	"Private - Get the value of the 'Child' property of the receiver.

		HRESULT __stdcall Child(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 79 sdword*>
	^self invalidCall!

get_ConnectionSiteCount: rhs
	"Private - Get the value of the 'ConnectionSiteCount' property of the receiver.

		HRESULT __stdcall ConnectionSiteCount(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 39 sdword*>
	^self invalidCall!

get_Connector: rhs
	"Private - Get the value of the 'Connector' property of the receiver.

		HRESULT __stdcall Connector(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 40 sdword*>
	^self invalidCall!

get_ConnectorFormat: rhs
	"Private - Get the value of the 'ConnectorFormat' property of the receiver.

		HRESULT __stdcall ConnectorFormat(
			[out, retval]ConnectorFormat** RHS);"

	<virtual stdcall: hresult 41 ExcelConnectorFormat**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Diagram: rhs
	"Private - Get the value of the 'Diagram' property of the receiver.

		HRESULT __stdcall Diagram(
			[out, retval]Diagram** RHS);"

	<virtual stdcall: hresult 77 ExcelDiagram**>
	^self invalidCall!

get_DiagramNode: rhs
	"Private - Get the value of the 'DiagramNode' property of the receiver.

		HRESULT __stdcall DiagramNode(
			[out, retval]DiagramNode** RHS);"

	<virtual stdcall: hresult 75 ExcelDiagramNode**>
	^self invalidCall!

get_Fill: rhs
	"Private - Get the value of the 'Fill' property of the receiver.

		HRESULT __stdcall Fill(
			[out, retval]FillFormat** RHS);"

	<virtual stdcall: hresult 42 ExcelFillFormat**>
	^self invalidCall!

get_Glow: rhs
	"Private - Get the value of the 'Glow' property of the receiver.

		HRESULT __stdcall Glow(
			[out, retval]GlowFormat** RHS);"

	<virtual stdcall: hresult 95 OfficeGlowFormat**>
	^self invalidCall!

get_GroupItems: rhs
	"Private - Get the value of the 'GroupItems' property of the receiver.

		HRESULT __stdcall GroupItems(
			[out, retval]GroupShapes** RHS);"

	<virtual stdcall: hresult 43 ExcelGroupShapes**>
	^self invalidCall!

get_HasChart: rhs
	"Private - Get the value of the 'HasChart' property of the receiver.

		HRESULT __stdcall HasChart(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 88 sdword*>
	^self invalidCall!

get_HasDiagram: rhs
	"Private - Get the value of the 'HasDiagram' property of the receiver.

		HRESULT __stdcall HasDiagram(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 78 sdword*>
	^self invalidCall!

get_HasDiagramNode: rhs
	"Private - Get the value of the 'HasDiagramNode' property of the receiver.

		HRESULT __stdcall HasDiagramNode(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 76 sdword*>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 44 float*>
	^self invalidCall!

get_HorizontalFlip: rhs
	"Private - Get the value of the 'HorizontalFlip' property of the receiver.

		HRESULT __stdcall HorizontalFlip(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 46 sdword*>
	^self invalidCall!

get_ID: rhs
	"Private - Get the value of the 'ID' property of the receiver.

		HRESULT __stdcall ID(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 82 sdword*>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 47 float*>
	^self invalidCall!

get_Line: rhs
	"Private - Get the value of the 'Line' property of the receiver.

		HRESULT __stdcall Line(
			[out, retval]LineFormat** RHS);"

	<virtual stdcall: hresult 49 ExcelLineFormat**>
	^self invalidCall!

get_LockAspectRatio: rhs
	"Private - Get the value of the 'LockAspectRatio' property of the receiver.

		HRESULT __stdcall LockAspectRatio(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 50 sdword*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 52 bstr*>
	^self invalidCall!

get_Nodes: rhs
	"Private - Get the value of the 'Nodes' property of the receiver.

		HRESULT __stdcall Nodes(
			[out, retval]ShapeNodes** RHS);"

	<virtual stdcall: hresult 54 ExcelShapeNodes**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ParentGroup: rhs
	"Private - Get the value of the 'ParentGroup' property of the receiver.

		HRESULT __stdcall ParentGroup(
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 80 ExcelShape**>
	^self invalidCall!

get_PictureFormat: rhs
	"Private - Get the value of the 'PictureFormat' property of the receiver.

		HRESULT __stdcall PictureFormat(
			[out, retval]PictureFormat** RHS);"

	<virtual stdcall: hresult 57 ExcelPictureFormat**>
	^self invalidCall!

get_Reflection: rhs
	"Private - Get the value of the 'Reflection' property of the receiver.

		HRESULT __stdcall Reflection(
			[out, retval]ReflectionFormat** RHS);"

	<virtual stdcall: hresult 96 OfficeReflectionFormat**>
	^self invalidCall!

get_Rotation: rhs
	"Private - Get the value of the 'Rotation' property of the receiver.

		HRESULT __stdcall Rotation(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 55 float*>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]ShadowFormat** RHS);"

	<virtual stdcall: hresult 58 ExcelShadowFormat**>
	^self invalidCall!

get_ShapeStyle: rhs
	"Private - Get the value of the 'ShapeStyle' property of the receiver.

		HRESULT __stdcall ShapeStyle(
			[out, retval]MsoShapeStyleIndex* RHS);"

	<virtual stdcall: hresult 90 sdword*>
	^self invalidCall!

get_SoftEdge: rhs
	"Private - Get the value of the 'SoftEdge' property of the receiver.

		HRESULT __stdcall SoftEdge(
			[out, retval]SoftEdgeFormat** RHS);"

	<virtual stdcall: hresult 94 OfficeSoftEdgeFormat**>
	^self invalidCall!

get_TextEffect: rhs
	"Private - Get the value of the 'TextEffect' property of the receiver.

		HRESULT __stdcall TextEffect(
			[out, retval]TextEffectFormat** RHS);"

	<virtual stdcall: hresult 59 ExcelTextEffectFormat**>
	^self invalidCall!

get_TextFrame: rhs
	"Private - Get the value of the 'TextFrame' property of the receiver.

		HRESULT __stdcall TextFrame(
			[out, retval]TextFrame** RHS);"

	<virtual stdcall: hresult 35 ExcelTextFrame**>
	^self invalidCall!

get_TextFrame2: rhs
	"Private - Get the value of the 'TextFrame2' property of the receiver.

		HRESULT __stdcall TextFrame2(
			[out, retval]TextFrame2** RHS);"

	<virtual stdcall: hresult 89 ExcelTextFrame2**>
	^self invalidCall!

get_ThreeD: rhs
	"Private - Get the value of the 'ThreeD' property of the receiver.

		HRESULT __stdcall ThreeD(
			[out, retval]ThreeDFormat** RHS);"

	<virtual stdcall: hresult 60 ExcelThreeDFormat**>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 61 float*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]MsoShapeType* RHS);"

	<virtual stdcall: hresult 63 sdword*>
	^self invalidCall!

get_VerticalFlip: rhs
	"Private - Get the value of the 'VerticalFlip' property of the receiver.

		HRESULT __stdcall VerticalFlip(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 64 sdword*>
	^self invalidCall!

get_Vertices: rhs
	"Private - Get the value of the 'Vertices' property of the receiver.

		HRESULT __stdcall Vertices(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 65 variant*>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 66 sdword*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 68 float*>
	^self invalidCall!

get_ZOrderPosition: rhs
	"Private - Get the value of the 'ZOrderPosition' property of the receiver.

		HRESULT __stdcall ZOrderPosition(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 70 sdword*>
	^self invalidCall!

glow
	"Answer the <OfficeGlowFormat> value of the 'Glow' property of the receiver."

	| answer |
	answer := OfficeGlowFormat newPointer.
	self get_Glow: answer.
	^answer asObject
!

group
	"Answer the <ExcelShape> result of invoking the Group() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self Group: answer.
	^answer asObject
!

Group: rhs
	"Private - Invoke the Group() method of the COM object.

		HRESULT __stdcall Group(
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 24 ExcelShape**>
	^self invalidCall!

groupItems
	"Answer the <ExcelGroupShapes> value of the 'GroupItems' property of the receiver."

	| answer |
	answer := ExcelGroupShapes newPointer.
	self get_GroupItems: answer.
	^answer asObject
!

hasChart
	"Answer the <sdword> value of the 'HasChart' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HasChart: answer.
	^answer asObject
!

hasDiagram
	"Answer the <sdword> value of the 'HasDiagram' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HasDiagram: answer.
	^answer asObject
!

hasDiagramNode
	"Answer the <sdword> value of the 'HasDiagramNode' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HasDiagramNode: answer.
	^answer asObject
!

height
	"Answer the <float> value of the 'Height' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Height: answer.
	^answer asObject
!

height: rhs
	"Set the 'Height' property of the receiver to the <float> value of the argument."

	self put_Height: rhs
!

horizontalFlip
	"Answer the <sdword> value of the 'HorizontalFlip' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HorizontalFlip: answer.
	^answer asObject
!

id
	"Answer the <sdword> value of the 'ID' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ID: answer.
	^answer asObject
!

incrementLeft: increment
	"Invoke the IncrementLeft() method of the COM object."

	^self IncrementLeft: increment
!

IncrementLeft: increment
	"Private - Invoke the IncrementLeft() method of the COM object.

		HRESULT __stdcall IncrementLeft(
			[in]float Increment);"

	<virtual stdcall: hresult 21 float>
	^self invalidCall!

incrementRotation: increment
	"Invoke the IncrementRotation() method of the COM object."

	^self IncrementRotation: increment
!

IncrementRotation: increment
	"Private - Invoke the IncrementRotation() method of the COM object.

		HRESULT __stdcall IncrementRotation(
			[in]float Increment);"

	<virtual stdcall: hresult 22 float>
	^self invalidCall!

incrementTop: increment
	"Invoke the IncrementTop() method of the COM object."

	^self IncrementTop: increment
!

IncrementTop: increment
	"Private - Invoke the IncrementTop() method of the COM object.

		HRESULT __stdcall IncrementTop(
			[in]float Increment);"

	<virtual stdcall: hresult 23 float>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelShape> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 12 variant ExcelShape**>
	^self invalidCall!

left
	"Answer the <float> value of the 'Left' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Left: answer.
	^answer asObject
!

left: rhs
	"Set the 'Left' property of the receiver to the <float> value of the argument."

	self put_Left: rhs
!

line
	"Answer the <ExcelLineFormat> value of the 'Line' property of the receiver."

	| answer |
	answer := ExcelLineFormat newPointer.
	self get_Line: answer.
	^answer asObject
!

lockAspectRatio
	"Answer the <sdword> value of the 'LockAspectRatio' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_LockAspectRatio: answer.
	^answer asObject
!

lockAspectRatio: rhs
	"Set the 'LockAspectRatio' property of the receiver to the <sdword> value of the argument."

	self put_LockAspectRatio: rhs
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <bstr> value of the argument."

	self put_Name: rhs
!

nodes
	"Answer the <ExcelShapeNodes> value of the 'Nodes' property of the receiver."

	| answer |
	answer := ExcelShapeNodes newPointer.
	self get_Nodes: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

parentGroup
	"Answer the <ExcelShape> value of the 'ParentGroup' property of the receiver."

	| answer |
	answer := ExcelShape newPointer.
	self get_ParentGroup: answer.
	^answer asObject
!

pickUp
	"Invoke the PickUp() method of the COM object."

	^self PickUp
!

PickUp
	"Private - Invoke the PickUp() method of the COM object.

		HRESULT __stdcall PickUp();"

	<virtual stdcall: hresult 25>
	^self invalidCall!

pictureFormat
	"Answer the <ExcelPictureFormat> value of the 'PictureFormat' property of the receiver."

	| answer |
	answer := ExcelPictureFormat newPointer.
	self get_PictureFormat: answer.
	^answer asObject
!

put_AlternativeText: rhs
	"Private - Set the value of the 'AlternativeText' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall AlternativeText(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 74 bstr>
	^self invalidCall!

put_AutoShapeType: rhs
	"Private - Set the value of the 'AutoShapeType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall AutoShapeType(
			[in]MsoAutoShapeType RHS);"

	<virtual stdcall: hresult 37 sdword>
	^self invalidCall!

put_BackgroundStyle: rhs
	"Private - Set the value of the 'BackgroundStyle' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall BackgroundStyle(
			[in]MsoBackgroundStyleIndex RHS);"

	<virtual stdcall: hresult 93 sdword>
	^self invalidCall!

put_BlackWhiteMode: rhs
	"Private - Set the value of the 'BlackWhiteMode' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall BlackWhiteMode(
			[in]MsoBlackWhiteMode RHS);"

	<virtual stdcall: hresult 72 sdword>
	^self invalidCall!

put_Height: rhs
	"Private - Set the value of the 'Height' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall Height(
			[in]float RHS);"

	<virtual stdcall: hresult 45 float>
	^self invalidCall!

put_Left: rhs
	"Private - Set the value of the 'Left' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall Left(
			[in]float RHS);"

	<virtual stdcall: hresult 48 float>
	^self invalidCall!

put_LockAspectRatio: rhs
	"Private - Set the value of the 'LockAspectRatio' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall LockAspectRatio(
			[in]MsoTriState RHS);"

	<virtual stdcall: hresult 51 sdword>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 53 bstr>
	^self invalidCall!

put_Rotation: rhs
	"Private - Set the value of the 'Rotation' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall Rotation(
			[in]float RHS);"

	<virtual stdcall: hresult 56 float>
	^self invalidCall!

put_ShapeStyle: rhs
	"Private - Set the value of the 'ShapeStyle' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ShapeStyle(
			[in]MsoShapeStyleIndex RHS);"

	<virtual stdcall: hresult 91 sdword>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall Top(
			[in]float RHS);"

	<virtual stdcall: hresult 62 float>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Visible(
			[in]MsoTriState RHS);"

	<virtual stdcall: hresult 67 sdword>
	^self invalidCall!

put_Width: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall Width(
			[in]float RHS);"

	<virtual stdcall: hresult 69 float>
	^self invalidCall!

reflection
	"Answer the <OfficeReflectionFormat> value of the 'Reflection' property of the receiver."

	| answer |
	answer := OfficeReflectionFormat newPointer.
	self get_Reflection: answer.
	^answer asObject
!

regroup
	"Answer the <ExcelShape> result of invoking the Regroup() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self Regroup: answer.
	^answer asObject
!

Regroup: rhs
	"Private - Invoke the Regroup() method of the COM object.

		HRESULT __stdcall Regroup(
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 27 ExcelShape**>
	^self invalidCall!

rerouteConnections
	"Invoke the RerouteConnections() method of the COM object."

	^self RerouteConnections
!

RerouteConnections
	"Private - Invoke the RerouteConnections() method of the COM object.

		HRESULT __stdcall RerouteConnections();"

	<virtual stdcall: hresult 26>
	^self invalidCall!

rotation
	"Answer the <float> value of the 'Rotation' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Rotation: answer.
	^answer asObject
!

rotation: rhs
	"Set the 'Rotation' property of the receiver to the <float> value of the argument."

	self put_Rotation: rhs
!

scaleHeight: factor relativeToOriginalSize: relativeToOriginalSize
	"Invoke the ScaleHeight() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 scaleHeight: factor
		 relativeToOriginalSize: relativeToOriginalSize
		 scale: VARIANT unspecified!

scaleHeight: factor relativeToOriginalSize: relativeToOriginalSize scale: scale
	"Invoke the ScaleHeight() method of the COM object."

	^self
		ScaleHeight: factor
		relativeToOriginalSize: relativeToOriginalSize
		scale: scale asVariant
!

ScaleHeight: factor relativeToOriginalSize: relativeToOriginalSize scale: scale
	"Private - Invoke the ScaleHeight() method of the COM object.

		HRESULT __stdcall ScaleHeight(
			[in]float Factor,
			[in]MsoTriState RelativeToOriginalSize,
			[in, optional]VARIANT Scale);"

	<virtual stdcall: hresult 28 float sdword variant>
	^self invalidCall!

scaleWidth: factor relativeToOriginalSize: relativeToOriginalSize
	"Invoke the ScaleWidth() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 scaleWidth: factor
		 relativeToOriginalSize: relativeToOriginalSize
		 scale: VARIANT unspecified!

scaleWidth: factor relativeToOriginalSize: relativeToOriginalSize scale: scale
	"Invoke the ScaleWidth() method of the COM object."

	^self
		ScaleWidth: factor
		relativeToOriginalSize: relativeToOriginalSize
		scale: scale asVariant
!

ScaleWidth: factor relativeToOriginalSize: relativeToOriginalSize scale: scale
	"Private - Invoke the ScaleWidth() method of the COM object.

		HRESULT __stdcall ScaleWidth(
			[in]float Factor,
			[in]MsoTriState RelativeToOriginalSize,
			[in, optional]VARIANT Scale);"

	<virtual stdcall: hresult 29 float sdword variant>
	^self invalidCall!

select
	"Invoke the Select() method of the COM object.
	Default values are passed for all optional parameters."

	^self select: VARIANT unspecified!

select: replace
	"Invoke the Select() method of the COM object."

	^self Select: replace asVariant
!

Select: replace
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select(
			[in, optional]VARIANT Replace);"

	<virtual stdcall: hresult 30 variant>
	^self invalidCall!

setShapesDefaultProperties
	"Invoke the SetShapesDefaultProperties() method of the COM object."

	^self SetShapesDefaultProperties
!

SetShapesDefaultProperties
	"Private - Invoke the SetShapesDefaultProperties() method of the COM object.

		HRESULT __stdcall SetShapesDefaultProperties();"

	<virtual stdcall: hresult 31>
	^self invalidCall!

shadow
	"Answer the <ExcelShadowFormat> value of the 'Shadow' property of the receiver."

	| answer |
	answer := ExcelShadowFormat newPointer.
	self get_Shadow: answer.
	^answer asObject
!

shapeStyle
	"Answer the <sdword> value of the 'ShapeStyle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ShapeStyle: answer.
	^answer asObject
!

shapeStyle: rhs
	"Set the 'ShapeStyle' property of the receiver to the <sdword> value of the argument."

	self put_ShapeStyle: rhs
!

softEdge
	"Answer the <OfficeSoftEdgeFormat> value of the 'SoftEdge' property of the receiver."

	| answer |
	answer := OfficeSoftEdgeFormat newPointer.
	self get_SoftEdge: answer.
	^answer asObject
!

textEffect
	"Answer the <ExcelTextEffectFormat> value of the 'TextEffect' property of the receiver."

	| answer |
	answer := ExcelTextEffectFormat newPointer.
	self get_TextEffect: answer.
	^answer asObject
!

textFrame
	"Answer the <ExcelTextFrame> value of the 'TextFrame' property of the receiver."

	| answer |
	answer := ExcelTextFrame newPointer.
	self get_TextFrame: answer.
	^answer asObject
!

textFrame2
	"Answer the <ExcelTextFrame2> value of the 'TextFrame2' property of the receiver."

	| answer |
	answer := ExcelTextFrame2 newPointer.
	self get_TextFrame2: answer.
	^answer asObject
!

threeD
	"Answer the <ExcelThreeDFormat> value of the 'ThreeD' property of the receiver."

	| answer |
	answer := ExcelThreeDFormat newPointer.
	self get_ThreeD: answer.
	^answer asObject
!

top
	"Answer the <float> value of the 'Top' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Top: answer.
	^answer asObject
!

top: rhs
	"Set the 'Top' property of the receiver to the <float> value of the argument."

	self put_Top: rhs
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

ungroup
	"Answer the <ExcelShapeRange> result of invoking the Ungroup() method of the COM object."

	| answer |
	answer := ExcelShapeRange newPointer.
	self Ungroup: answer.
	^answer asObject
!

Ungroup: rhs
	"Private - Invoke the Ungroup() method of the COM object.

		HRESULT __stdcall Ungroup(
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 32 ExcelShapeRange**>
	^self invalidCall!

value: index
	"Set the '_Default' property of the receiver to the <ExcelShape**> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: index
!

verticalFlip
	"Answer the <sdword> value of the 'VerticalFlip' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_VerticalFlip: answer.
	^answer asObject
!

vertices
	"Answer the <variant> value of the 'Vertices' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Vertices: answer.
	^answer asObject
!

visible
	"Answer the <sdword> value of the 'Visible' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Visible: answer.
	^answer asObject
!

visible: rhs
	"Set the 'Visible' property of the receiver to the <sdword> value of the argument."

	self put_Visible: rhs
!

width
	"Answer the <float> value of the 'Width' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Width: answer.
	^answer asObject
!

width: rhs
	"Set the 'Width' property of the receiver to the <float> value of the argument."

	self put_Width: rhs
!

zOrder: zOrderCmd
	"Invoke the ZOrder() method of the COM object."

	^self ZOrder: zOrderCmd
!

ZOrder: zOrderCmd
	"Private - Invoke the ZOrder() method of the COM object.

		HRESULT __stdcall ZOrder(
			[in]MsoZOrderCmd ZOrderCmd);"

	<virtual stdcall: hresult 33 sdword>
	^self invalidCall!

zOrderPosition
	"Answer the <sdword> value of the 'ZOrderPosition' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ZOrderPosition: answer.
	^answer asObject
! !
!ExcelIShapeRange categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #_Default:rhs:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #adjustments!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #align:relativeTo:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #Align:relativeTo:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #alternativeText!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #alternativeText:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #apply!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #Apply!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #autoShapeType!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #autoShapeType:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #backgroundStyle!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #backgroundStyle:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #blackWhiteMode!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #blackWhiteMode:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #callout!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #canvasCropBottom:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #CanvasCropBottom:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #canvasCropLeft:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #CanvasCropLeft:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #canvasCropRight:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #CanvasCropRight:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #canvasCropTop:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #CanvasCropTop:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #canvasItems!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #chart!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #child!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #connectionSiteCount!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #connector!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #connectorFormat!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #Delete!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #diagram!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #diagramNode!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #distribute:relativeTo:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #Distribute:relativeTo:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #Duplicate:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #flip:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #Flip:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Adjustments:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_AlternativeText:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_AutoShapeType:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_BackgroundStyle:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_BlackWhiteMode:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Callout:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_CanvasItems:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Chart:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Child:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_ConnectionSiteCount:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Connector:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_ConnectorFormat:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Diagram:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_DiagramNode:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Fill:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Glow:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_GroupItems:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_HasChart:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_HasDiagram:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_HasDiagramNode:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_HorizontalFlip:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_ID:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Line:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_LockAspectRatio:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Nodes:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_ParentGroup:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_PictureFormat:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Reflection:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Rotation:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_ShapeStyle:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_SoftEdge:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_TextEffect:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_TextFrame:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_TextFrame2:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_ThreeD:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_VerticalFlip:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Vertices:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #get_ZOrderPosition:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #glow!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #group!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #Group:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #groupItems!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #hasChart!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #hasDiagram!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #hasDiagramNode!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #horizontalFlip!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #id!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #incrementLeft:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #IncrementLeft:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #incrementRotation:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #IncrementRotation:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #incrementTop:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #IncrementTop:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIShapeRange categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #line!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #lockAspectRatio!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #lockAspectRatio:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #nodes!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #parentGroup!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #pickUp!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #PickUp!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #pictureFormat!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #put_AlternativeText:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #put_AutoShapeType:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #put_BackgroundStyle:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #put_BlackWhiteMode:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #put_LockAspectRatio:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #put_Rotation:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #put_ShapeStyle:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #reflection!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #regroup!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #Regroup:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #rerouteConnections!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #RerouteConnections!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #rotation!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #rotation:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #scaleHeight:relativeToOriginalSize:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #scaleHeight:relativeToOriginalSize:scale:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #ScaleHeight:relativeToOriginalSize:scale:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #scaleWidth:relativeToOriginalSize:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #scaleWidth:relativeToOriginalSize:scale:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #ScaleWidth:relativeToOriginalSize:scale:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #Select:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #setShapesDefaultProperties!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #SetShapesDefaultProperties!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #shapeStyle!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #shapeStyle:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #softEdge!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #textEffect!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #textFrame!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #textFrame2!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #threeD!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #ungroup!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #Ungroup:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #verticalFlip!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #vertices!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelIShapeRange categoriesFor: #zOrder:!**auto generated**!methods!public! !
!ExcelIShapeRange categoriesFor: #ZOrder:!**auto generated**!COM Interfaces-IShapeRange!private! !
!ExcelIShapeRange categoriesFor: #zOrderPosition!**auto generated**!properties!public! !

!ExcelIShapeRange class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IShapeRange'
		ExcelIShapeRange defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant ExcelShape**';
		defineFunction: #_Default:rhs:
			argumentTypes: 'variant ExcelShape**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #Align:relativeTo:
			argumentTypes: 'sdword sdword';
		defineFunction: #Apply;
		defineFunction: #Delete;
		defineFunction: #Distribute:relativeTo:
			argumentTypes: 'sdword sdword';
		defineFunction: #Duplicate:
			argumentTypes: 'ExcelShapeRange**';
		defineFunction: #Flip:
			argumentTypes: 'sdword';
		defineFunction: #IncrementLeft:
			argumentTypes: 'float';
		defineFunction: #IncrementRotation:
			argumentTypes: 'float';
		defineFunction: #IncrementTop:
			argumentTypes: 'float';
		defineFunction: #Group:
			argumentTypes: 'ExcelShape**';
		defineFunction: #PickUp;
		defineFunction: #RerouteConnections;
		defineFunction: #Regroup:
			argumentTypes: 'ExcelShape**';
		defineFunction: #ScaleHeight:relativeToOriginalSize:scale:
			argumentTypes: 'float sdword variant';
		defineFunction: #ScaleWidth:relativeToOriginalSize:scale:
			argumentTypes: 'float sdword variant';
		defineFunction: #Select:
			argumentTypes: 'variant';
		defineFunction: #SetShapesDefaultProperties;
		defineFunction: #Ungroup:
			argumentTypes: 'ExcelShapeRange**';
		defineFunction: #ZOrder:
			argumentTypes: 'sdword';
		defineFunction: #get_Adjustments:
			argumentTypes: 'ExcelAdjustments**';
		defineFunction: #get_TextFrame:
			argumentTypes: 'ExcelTextFrame**';
		defineFunction: #get_AutoShapeType:
			argumentTypes: 'sdword*';
		defineFunction: #put_AutoShapeType:
			argumentTypes: 'sdword';
		defineFunction: #get_Callout:
			argumentTypes: 'ExcelCalloutFormat**';
		defineFunction: #get_ConnectionSiteCount:
			argumentTypes: 'sdword*';
		defineFunction: #get_Connector:
			argumentTypes: 'sdword*';
		defineFunction: #get_ConnectorFormat:
			argumentTypes: 'ExcelConnectorFormat**';
		defineFunction: #get_Fill:
			argumentTypes: 'ExcelFillFormat**';
		defineFunction: #get_GroupItems:
			argumentTypes: 'ExcelGroupShapes**';
		defineFunction: #get_Height:
			argumentTypes: 'float*';
		defineFunction: #put_Height:
			argumentTypes: 'float';
		defineFunction: #get_HorizontalFlip:
			argumentTypes: 'sdword*';
		defineFunction: #get_Left:
			argumentTypes: 'float*';
		defineFunction: #put_Left:
			argumentTypes: 'float';
		defineFunction: #get_Line:
			argumentTypes: 'ExcelLineFormat**';
		defineFunction: #get_LockAspectRatio:
			argumentTypes: 'sdword*';
		defineFunction: #put_LockAspectRatio:
			argumentTypes: 'sdword';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_Nodes:
			argumentTypes: 'ExcelShapeNodes**';
		defineFunction: #get_Rotation:
			argumentTypes: 'float*';
		defineFunction: #put_Rotation:
			argumentTypes: 'float';
		defineFunction: #get_PictureFormat:
			argumentTypes: 'ExcelPictureFormat**';
		defineFunction: #get_Shadow:
			argumentTypes: 'ExcelShadowFormat**';
		defineFunction: #get_TextEffect:
			argumentTypes: 'ExcelTextEffectFormat**';
		defineFunction: #get_ThreeD:
			argumentTypes: 'ExcelThreeDFormat**';
		defineFunction: #get_Top:
			argumentTypes: 'float*';
		defineFunction: #put_Top:
			argumentTypes: 'float';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_VerticalFlip:
			argumentTypes: 'sdword*';
		defineFunction: #get_Vertices:
			argumentTypes: 'variant*';
		defineFunction: #get_Visible:
			argumentTypes: 'sdword*';
		defineFunction: #put_Visible:
			argumentTypes: 'sdword';
		defineFunction: #get_Width:
			argumentTypes: 'float*';
		defineFunction: #put_Width:
			argumentTypes: 'float';
		defineFunction: #get_ZOrderPosition:
			argumentTypes: 'sdword*';
		defineFunction: #get_BlackWhiteMode:
			argumentTypes: 'sdword*';
		defineFunction: #put_BlackWhiteMode:
			argumentTypes: 'sdword';
		defineFunction: #get_AlternativeText:
			argumentTypes: 'bstr*';
		defineFunction: #put_AlternativeText:
			argumentTypes: 'bstr';
		defineFunction: #get_DiagramNode:
			argumentTypes: 'ExcelDiagramNode**';
		defineFunction: #get_HasDiagramNode:
			argumentTypes: 'sdword*';
		defineFunction: #get_Diagram:
			argumentTypes: 'ExcelDiagram**';
		defineFunction: #get_HasDiagram:
			argumentTypes: 'sdword*';
		defineFunction: #get_Child:
			argumentTypes: 'sdword*';
		defineFunction: #get_ParentGroup:
			argumentTypes: 'ExcelShape**';
		defineFunction: #get_CanvasItems:
			argumentTypes: 'OfficeCanvasShapes**';
		defineFunction: #get_ID:
			argumentTypes: 'sdword*';
		defineFunction: #CanvasCropLeft:
			argumentTypes: 'float';
		defineFunction: #CanvasCropTop:
			argumentTypes: 'float';
		defineFunction: #CanvasCropRight:
			argumentTypes: 'float';
		defineFunction: #CanvasCropBottom:
			argumentTypes: 'float';
		defineFunction: #get_Chart:
			argumentTypes: 'Excel_Chart**';
		defineFunction: #get_HasChart:
			argumentTypes: 'sdword*';
		defineFunction: #get_TextFrame2:
			argumentTypes: 'ExcelTextFrame2**';
		defineFunction: #get_ShapeStyle:
			argumentTypes: 'sdword*';
		defineFunction: #put_ShapeStyle:
			argumentTypes: 'sdword';
		defineFunction: #get_BackgroundStyle:
			argumentTypes: 'sdword*';
		defineFunction: #put_BackgroundStyle:
			argumentTypes: 'sdword';
		defineFunction: #get_SoftEdge:
			argumentTypes: 'OfficeSoftEdgeFormat**';
		defineFunction: #get_Glow:
			argumentTypes: 'OfficeGlowFormat**';
		defineFunction: #get_Reflection:
			argumentTypes: 'OfficeReflectionFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIShapeRange initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIShapeRange class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIShapeRange class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

