"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIShapes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIShapes guid: (IID fromString: '{0002443A-0001-0000-C000-000000000046}')!
ExcelIShapes comment: '<ExcelIShapes> is a wrapper class for the COM interface ''Excel.IShapes'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002443A-0001-0000-C000-000000000046), 
	helpcontext(0x000200d0), 
	hidden
]
interface IShapes : IDispatch
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
	[id(0x000006b1), helpcontext(0x000106b1)]
	HRESULT __stdcall AddCallout(
		[in]MsoCalloutType Type,
		[in]float Left,
		[in]float Top,
		[in]float Width,
		[in]float Height,
		[out, retval]Shape** RHS);
	[id(0x000006b2), helpcontext(0x000106b2)]
	HRESULT __stdcall AddConnector(
		[in]MsoConnectorType Type,
		[in]float BeginX,
		[in]float BeginY,
		[in]float EndX,
		[in]float EndY,
		[out, retval]Shape** RHS);
	[id(0x000006b7), helpcontext(0x000106b7)]
	HRESULT __stdcall AddCurve(
		[in]VARIANT SafeArrayOfPoints,
		[out, retval]Shape** RHS);
	[id(0x000006b9), helpcontext(0x000106b9)]
	HRESULT __stdcall AddLabel(
		[in]MsoTextOrientation Orientation,
		[in]float Left,
		[in]float Top,
		[in]float Width,
		[in]float Height,
		[out, retval]Shape** RHS);
	[id(0x000006ba), helpcontext(0x000106ba)]
	HRESULT __stdcall AddLine(
		[in]float BeginX,
		[in]float BeginY,
		[in]float EndX,
		[in]float EndY,
		[out, retval]Shape** RHS);
	[id(0x000006bb), helpcontext(0x000106bb)]
	HRESULT __stdcall AddPicture(
		[in]BSTR Filename,
		[in]MsoTriState LinkToFile,
		[in]MsoTriState SaveWithDocument,
		[in]float Left,
		[in]float Top,
		[in]float Width,
		[in]float Height,
		[out, retval]Shape** RHS);
	[id(0x000006be), helpcontext(0x000106be)]
	HRESULT __stdcall AddPolyline(
		[in]VARIANT SafeArrayOfPoints,
		[out, retval]Shape** RHS);
	[id(0x000006bf), helpcontext(0x000106bf)]
	HRESULT __stdcall AddShape(
		[in]MsoAutoShapeType Type,
		[in]float Left,
		[in]float Top,
		[in]float Width,
		[in]float Height,
		[out, retval]Shape** RHS);
	[id(0x000006c0), helpcontext(0x000106c0)]
	HRESULT __stdcall AddTextEffect(
		[in]MsoPresetTextEffect PresetTextEffect,
		[in]BSTR Text,
		[in]BSTR FontName,
		[in]float FontSize,
		[in]MsoTriState FontBold,
		[in]MsoTriState FontItalic,
		[in]float Left,
		[in]float Top,
		[out, retval]Shape** RHS);
	[id(0x000006c6), helpcontext(0x000106c6)]
	HRESULT __stdcall AddTextbox(
		[in]MsoTextOrientation Orientation,
		[in]float Left,
		[in]float Top,
		[in]float Width,
		[in]float Height,
		[out, retval]Shape** RHS);
	[id(0x000006c7), helpcontext(0x000106c7)]
	HRESULT __stdcall BuildFreeform(
		[in]MsoEditingType EditingType,
		[in]float X1,
		[in]float Y1,
		[out, retval]FreeformBuilder** RHS);
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[in]VARIANT Index,
		[out, retval]ShapeRange** RHS);
	[id(0x000006c9), helpcontext(0x000106c9)]
	HRESULT __stdcall SelectAll();
	[id(0x000006ca), helpcontext(0x000106ca)]
	HRESULT __stdcall AddFormControl(
		[in]XlFormControl Type,
		[in]long Left,
		[in]long Top,
		[in]long Width,
		[in]long Height,
		[out, retval]Shape** RHS);
	[id(0x000006cb), helpcontext(0x000106cb)]
	HRESULT __stdcall AddOLEObject(
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
		[in, optional]VARIANT Height,
		[out, retval]Shape** RHS);
	[id(0x00000880), hidden, helpcontext(0x00010880)]
	HRESULT __stdcall AddDiagram(
		[in]MsoDiagramType Type,
		[in]float Left,
		[in]float Top,
		[in]float Width,
		[in]float Height,
		[out, retval]Shape** RHS);
	[id(0x00000881), hidden, helpcontext(0x00010881)]
	HRESULT __stdcall AddCanvas(
		[in]float Left,
		[in]float Top,
		[in]float Width,
		[in]float Height,
		[out, retval]Shape** RHS);
	[id(0x00000a69), helpcontext(0x00010a69)]
	HRESULT __stdcall AddChart(
		[in, optional]VARIANT XlChartType,
		[in, optional]VARIANT Left,
		[in, optional]VARIANT Top,
		[in, optional]VARIANT Width,
		[in, optional]VARIANT Height,
		[out, retval]Shape** RHS);
};
'!
!ExcelIShapes categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIShapes methodsFor!

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

addCallout: type left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddCallout() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddCallout: type
		left: left
		top: top
		width: width
		height: height
		rhs: answer.
	^answer asObject
!

AddCallout: type left: left top: top width: width height: height rhs: rhs
	"Private - Invoke the AddCallout() method of the COM object.

		HRESULT __stdcall AddCallout(
			[in]MsoCalloutType Type,
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 15 sdword float float float float ExcelShape**>
	^self invalidCall!

addCanvas: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddCanvas() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddCanvas: left
		top: top
		width: width
		height: height
		rhs: answer.
	^answer asObject
!

AddCanvas: left top: top width: width height: height rhs: rhs
	"Private - Invoke the AddCanvas() method of the COM object.

		HRESULT __stdcall AddCanvas(
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 31 float float float float ExcelShape**>
	^self invalidCall!

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

	| answer |
	answer := ExcelShape newPointer.
	self
		AddChart: xlChartType asVariant
		left: left asVariant
		top: top asVariant
		width: width asVariant
		height: height asVariant
		rhs: answer.
	^answer asObject
!

AddChart: xlChartType left: left top: top width: width height: height rhs: rhs
	"Private - Invoke the AddChart() method of the COM object.

		HRESULT __stdcall AddChart(
			[in, optional]VARIANT XlChartType,
			[in, optional]VARIANT Left,
			[in, optional]VARIANT Top,
			[in, optional]VARIANT Width,
			[in, optional]VARIANT Height,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 32 variant variant variant variant variant ExcelShape**>
	^self invalidCall!

addConnector: type beginX: beginX beginY: beginY endX: endX endY: endY
	"Answer the <ExcelShape> result of invoking the AddConnector() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddConnector: type
		beginX: beginX
		beginY: beginY
		endX: endX
		endY: endY
		rhs: answer.
	^answer asObject
!

AddConnector: type beginX: beginX beginY: beginY endX: endX endY: endY rhs: rhs
	"Private - Invoke the AddConnector() method of the COM object.

		HRESULT __stdcall AddConnector(
			[in]MsoConnectorType Type,
			[in]float BeginX,
			[in]float BeginY,
			[in]float EndX,
			[in]float EndY,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 16 sdword float float float float ExcelShape**>
	^self invalidCall!

addCurve: safeArrayOfPoints
	"Answer the <ExcelShape> result of invoking the AddCurve() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddCurve: safeArrayOfPoints asVariant
		rhs: answer.
	^answer asObject
!

AddCurve: safeArrayOfPoints rhs: rhs
	"Private - Invoke the AddCurve() method of the COM object.

		HRESULT __stdcall AddCurve(
			[in]VARIANT SafeArrayOfPoints,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 17 variant ExcelShape**>
	^self invalidCall!

addDiagram: type left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddDiagram() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddDiagram: type
		left: left
		top: top
		width: width
		height: height
		rhs: answer.
	^answer asObject
!

AddDiagram: type left: left top: top width: width height: height rhs: rhs
	"Private - Invoke the AddDiagram() method of the COM object.

		HRESULT __stdcall AddDiagram(
			[in]MsoDiagramType Type,
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 30 sdword float float float float ExcelShape**>
	^self invalidCall!

addFormControl: type left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddFormControl() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddFormControl: type
		left: left
		top: top
		width: width
		height: height
		rhs: answer.
	^answer asObject
!

AddFormControl: type left: left top: top width: width height: height rhs: rhs
	"Private - Invoke the AddFormControl() method of the COM object.

		HRESULT __stdcall AddFormControl(
			[in]XlFormControl Type,
			[in]long Left,
			[in]long Top,
			[in]long Width,
			[in]long Height,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 28 sdword sdword sdword sdword sdword ExcelShape**>
	^self invalidCall!

addLabel: orientation left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddLabel() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddLabel: orientation
		left: left
		top: top
		width: width
		height: height
		rhs: answer.
	^answer asObject
!

AddLabel: orientation left: left top: top width: width height: height rhs: rhs
	"Private - Invoke the AddLabel() method of the COM object.

		HRESULT __stdcall AddLabel(
			[in]MsoTextOrientation Orientation,
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 18 sdword float float float float ExcelShape**>
	^self invalidCall!

addLine: beginX beginY: beginY endX: endX endY: endY
	"Answer the <ExcelShape> result of invoking the AddLine() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddLine: beginX
		beginY: beginY
		endX: endX
		endY: endY
		rhs: answer.
	^answer asObject
!

AddLine: beginX beginY: beginY endX: endX endY: endY rhs: rhs
	"Private - Invoke the AddLine() method of the COM object.

		HRESULT __stdcall AddLine(
			[in]float BeginX,
			[in]float BeginY,
			[in]float EndX,
			[in]float EndY,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 19 float float float float ExcelShape**>
	^self invalidCall!

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

	| answer |
	answer := ExcelShape newPointer.
	self
		AddOLEObject: classType asVariant
		filename: filename asVariant
		link: link asVariant
		displayAsIcon: displayAsIcon asVariant
		iconFileName: iconFileName asVariant
		iconIndex: iconIndex asVariant
		iconLabel: iconLabel asVariant
		left: left asVariant
		top: top asVariant
		width: width asVariant
		height: height asVariant
		rhs: answer.
	^answer asObject
!

AddOLEObject: classType filename: filename link: link displayAsIcon: displayAsIcon iconFileName: iconFileName iconIndex: iconIndex iconLabel: iconLabel left: left top: top width: width height: height rhs: rhs
	"Private - Invoke the AddOLEObject() method of the COM object.

		HRESULT __stdcall AddOLEObject(
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
			[in, optional]VARIANT Height,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 29 variant variant variant variant variant variant variant variant variant variant variant ExcelShape**>
	^self invalidCall!

addPicture: filename linkToFile: linkToFile saveWithDocument: saveWithDocument left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddPicture() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddPicture: filename
		linkToFile: linkToFile
		saveWithDocument: saveWithDocument
		left: left
		top: top
		width: width
		height: height
		rhs: answer.
	^answer asObject
!

AddPicture: filename linkToFile: linkToFile saveWithDocument: saveWithDocument left: left top: top width: width height: height rhs: rhs
	"Private - Invoke the AddPicture() method of the COM object.

		HRESULT __stdcall AddPicture(
			[in]BSTR Filename,
			[in]MsoTriState LinkToFile,
			[in]MsoTriState SaveWithDocument,
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 20 bstr sdword sdword float float float float ExcelShape**>
	^self invalidCall!

addPolyline: safeArrayOfPoints
	"Answer the <ExcelShape> result of invoking the AddPolyline() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddPolyline: safeArrayOfPoints asVariant
		rhs: answer.
	^answer asObject
!

AddPolyline: safeArrayOfPoints rhs: rhs
	"Private - Invoke the AddPolyline() method of the COM object.

		HRESULT __stdcall AddPolyline(
			[in]VARIANT SafeArrayOfPoints,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 21 variant ExcelShape**>
	^self invalidCall!

addShape: type left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddShape() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddShape: type
		left: left
		top: top
		width: width
		height: height
		rhs: answer.
	^answer asObject
!

AddShape: type left: left top: top width: width height: height rhs: rhs
	"Private - Invoke the AddShape() method of the COM object.

		HRESULT __stdcall AddShape(
			[in]MsoAutoShapeType Type,
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 22 sdword float float float float ExcelShape**>
	^self invalidCall!

addTextbox: orientation left: left top: top width: width height: height
	"Answer the <ExcelShape> result of invoking the AddTextbox() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddTextbox: orientation
		left: left
		top: top
		width: width
		height: height
		rhs: answer.
	^answer asObject
!

AddTextbox: orientation left: left top: top width: width height: height rhs: rhs
	"Private - Invoke the AddTextbox() method of the COM object.

		HRESULT __stdcall AddTextbox(
			[in]MsoTextOrientation Orientation,
			[in]float Left,
			[in]float Top,
			[in]float Width,
			[in]float Height,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 24 sdword float float float float ExcelShape**>
	^self invalidCall!

addTextEffect: presetTextEffect text: text fontName: fontName fontSize: fontSize fontBold: fontBold fontItalic: fontItalic left: left top: top
	"Answer the <ExcelShape> result of invoking the AddTextEffect() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self
		AddTextEffect: presetTextEffect
		text: text
		fontName: fontName
		fontSize: fontSize
		fontBold: fontBold
		fontItalic: fontItalic
		left: left
		top: top
		rhs: answer.
	^answer asObject
!

AddTextEffect: presetTextEffect text: text fontName: fontName fontSize: fontSize fontBold: fontBold fontItalic: fontItalic left: left top: top rhs: rhs
	"Private - Invoke the AddTextEffect() method of the COM object.

		HRESULT __stdcall AddTextEffect(
			[in]MsoPresetTextEffect PresetTextEffect,
			[in]BSTR Text,
			[in]BSTR FontName,
			[in]float FontSize,
			[in]MsoTriState FontBold,
			[in]MsoTriState FontItalic,
			[in]float Left,
			[in]float Top,
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 23 sdword bstr bstr float sdword sdword float float ExcelShape**>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

buildFreeform: editingType x1: x1 y1: y1
	"Answer the <ExcelFreeformBuilder> result of invoking the BuildFreeform() method of the COM object."

	| answer |
	answer := ExcelFreeformBuilder newPointer.
	self
		BuildFreeform: editingType
		x1: x1
		y1: y1
		rhs: answer.
	^answer asObject
!

BuildFreeform: editingType x1: x1 y1: y1 rhs: rhs
	"Private - Invoke the BuildFreeform() method of the COM object.

		HRESULT __stdcall BuildFreeform(
			[in]MsoEditingType EditingType,
			[in]float X1,
			[in]float Y1,
			[out, retval]FreeformBuilder** RHS);"

	<virtual stdcall: hresult 25 sdword float float ExcelFreeformBuilder**>
	^self invalidCall!

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

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 14 IUnknown**>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
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

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Range: index rhs: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[in]VARIANT Index,
			[out, retval]ShapeRange** RHS);"

	<virtual stdcall: hresult 26 variant ExcelShapeRange**>
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

range: index
	"Answer the <ExcelShapeRange> value of the 'Range' property of the receiver."

	| answer |
	answer := ExcelShapeRange newPointer.
	self
		get_Range: index asVariant
		rhs: answer.
	^answer asObject
!

selectAll
	"Invoke the SelectAll() method of the COM object."

	^self SelectAll
!

SelectAll
	"Private - Invoke the SelectAll() method of the COM object.

		HRESULT __stdcall SelectAll();"

	<virtual stdcall: hresult 27>
	^self invalidCall!

value: index
	"Set the '_Default' property of the receiver to the <ExcelShape**> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: index
! !
!ExcelIShapes categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #_Default:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIShapes categoriesFor: #addCallout:left:top:width:height:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddCallout:left:top:width:height:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addCanvas:top:width:height:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddCanvas:top:width:height:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addChart!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #addChart:left:top:width:height:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddChart:left:top:width:height:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addConnector:beginX:beginY:endX:endY:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddConnector:beginX:beginY:endX:endY:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addCurve:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddCurve:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addDiagram:left:top:width:height:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddDiagram:left:top:width:height:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addFormControl:left:top:width:height:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddFormControl:left:top:width:height:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addLabel:left:top:width:height:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddLabel:left:top:width:height:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addLine:beginY:endX:endY:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddLine:beginY:endX:endY:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addOLEObject!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #addOLEObject:filename:link:displayAsIcon:iconFileName:iconIndex:iconLabel:left:top:width:height:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddOLEObject:filename:link:displayAsIcon:iconFileName:iconIndex:iconLabel:left:top:width:height:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addPicture:linkToFile:saveWithDocument:left:top:width:height:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddPicture:linkToFile:saveWithDocument:left:top:width:height:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addPolyline:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddPolyline:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addShape:left:top:width:height:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddShape:left:top:width:height:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addTextbox:left:top:width:height:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddTextbox:left:top:width:height:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #addTextEffect:text:fontName:fontSize:fontBold:fontItalic:left:top:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #AddTextEffect:text:fontName:fontSize:fontBold:fontItalic:left:top:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIShapes categoriesFor: #buildFreeform:x1:y1:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #BuildFreeform:x1:y1:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIShapes categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIShapes categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #get_Range:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIShapes categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIShapes categoriesFor: #range:!**auto generated**!properties!public! !
!ExcelIShapes categoriesFor: #selectAll!**auto generated**!methods!public! !
!ExcelIShapes categoriesFor: #SelectAll!**auto generated**!COM Interfaces-IShapes!private! !
!ExcelIShapes categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelIShapes class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IShapes'
		ExcelIShapes defineTemplate"

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
		defineFunction: #AddCallout:left:top:width:height:rhs:
			argumentTypes: 'sdword float float float float ExcelShape**';
		defineFunction: #AddConnector:beginX:beginY:endX:endY:rhs:
			argumentTypes: 'sdword float float float float ExcelShape**';
		defineFunction: #AddCurve:rhs:
			argumentTypes: 'variant ExcelShape**';
		defineFunction: #AddLabel:left:top:width:height:rhs:
			argumentTypes: 'sdword float float float float ExcelShape**';
		defineFunction: #AddLine:beginY:endX:endY:rhs:
			argumentTypes: 'float float float float ExcelShape**';
		defineFunction: #AddPicture:linkToFile:saveWithDocument:left:top:width:height:rhs:
			argumentTypes: 'bstr sdword sdword float float float float ExcelShape**';
		defineFunction: #AddPolyline:rhs:
			argumentTypes: 'variant ExcelShape**';
		defineFunction: #AddShape:left:top:width:height:rhs:
			argumentTypes: 'sdword float float float float ExcelShape**';
		defineFunction: #AddTextEffect:text:fontName:fontSize:fontBold:fontItalic:left:top:rhs:
			argumentTypes: 'sdword bstr bstr float sdword sdword float float ExcelShape**';
		defineFunction: #AddTextbox:left:top:width:height:rhs:
			argumentTypes: 'sdword float float float float ExcelShape**';
		defineFunction: #BuildFreeform:x1:y1:rhs:
			argumentTypes: 'sdword float float ExcelFreeformBuilder**';
		defineFunction: #get_Range:rhs:
			argumentTypes: 'variant ExcelShapeRange**';
		defineFunction: #SelectAll;
		defineFunction: #AddFormControl:left:top:width:height:rhs:
			argumentTypes: 'sdword sdword sdword sdword sdword ExcelShape**';
		defineFunction: #AddOLEObject:filename:link:displayAsIcon:iconFileName:iconIndex:iconLabel:left:top:width:height:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant ExcelShape**';
		defineFunction: #AddDiagram:left:top:width:height:rhs:
			argumentTypes: 'sdword float float float float ExcelShape**';
		defineFunction: #AddCanvas:top:width:height:rhs:
			argumentTypes: 'float float float float ExcelShape**';
		defineFunction: #AddChart:left:top:width:height:rhs:
			argumentTypes: 'variant variant variant variant variant ExcelShape**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIShapes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIShapes class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIShapes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

