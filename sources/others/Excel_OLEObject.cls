"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #Excel_OLEObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
Excel_OLEObject guid: (IID fromString: '{000208A2-0000-0000-C000-000000000046}')!
Excel_OLEObject comment: '<Excel_OLEObject> is a wrapper class generated for the dispatch interface ''Excel._OLEObject'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208A2-0000-0000-C000-000000000046), 
	helpcontext(0x00020062)
]
dispinterface _OLEObject {
	properties:
	methods:
[id(0x80010094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x80010095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x80010096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x80010267), propget, helpcontext(0x00010267)]
		Range* BottomRightCell();
[id(0x8001025a), helpcontext(0x0001025a)]
		VARIANT BringToFront();
[id(0x80010227), helpcontext(0x00010227)]
		VARIANT Copy();
[id(0x800100d5), helpcontext(0x000100d5)]
		VARIANT CopyPicture(
			[in, defaultvalue(2)]XlPictureAppearance Appearance,
			[in, defaultvalue(-4147)]XlCopyPictureFormat Format);
[id(0x80010235), helpcontext(0x00010235)]
		VARIANT Cut();
[id(0x80010075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x8001040f), helpcontext(0x0001040f)]
		IDispatch* Duplicate();
[id(0x80010258), propget, helpcontext(0x00010258)]
		VARIANT_BOOL Enabled();
[id(0x80010258), propput, helpcontext(0x00010258)]
		void Enabled(
			[in]VARIANT_BOOL arg1);
[id(0x8001007b), propget, helpcontext(0x0001007b)]
		double Height();
[id(0x8001007b), propput, helpcontext(0x0001007b)]
		void Height(
			[in]double arg1);
[id(0x800101e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x8001007f), propget, helpcontext(0x0001007f)]
		double Left();
[id(0x8001007f), propput, helpcontext(0x0001007f)]
		void Left(
			[in]double arg1);
[id(0x8001010d), propget, helpcontext(0x0001010d)]
		VARIANT_BOOL Locked();
[id(0x8001010d), propput, helpcontext(0x0001010d)]
		void Locked(
			[in]VARIANT_BOOL arg1);
[id(0x8001006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x8001006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x80010254), hidden, propget, helpcontext(0x00010254)]
		BSTR OnAction();
[id(0x80010254), hidden, propput, helpcontext(0x00010254)]
		void OnAction(
			[in]BSTR arg1);
[id(0x80010269), propget, helpcontext(0x00010269)]
		VARIANT Placement();
[id(0x80010269), propput, helpcontext(0x00010269)]
		void Placement(
			[in]VARIANT arg1);
[id(0x8001026a), propget, helpcontext(0x0001026a)]
		VARIANT_BOOL PrintObject();
[id(0x8001026a), propput, helpcontext(0x0001026a)]
		void PrintObject(
			[in]VARIANT_BOOL arg1);
[id(0x800100eb), helpcontext(0x000100eb)]
		VARIANT Select(
			[in, optional]VARIANT Replace);
[id(0x8001025d), helpcontext(0x0001025d)]
		VARIANT SendToBack();
[id(0x8001007e), propget, helpcontext(0x0001007e)]
		double Top();
[id(0x8001007e), propput, helpcontext(0x0001007e)]
		void Top(
			[in]double arg1);
[id(0x8001026c), propget, helpcontext(0x0001026c)]
		Range* TopLeftCell();
[id(0x8001022e), propget, helpcontext(0x0001022e)]
		VARIANT_BOOL Visible();
[id(0x8001022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]VARIANT_BOOL arg1);
[id(0x8001007a), propget, helpcontext(0x0001007a)]
		double Width();
[id(0x8001007a), propput, helpcontext(0x0001007a)]
		void Width(
			[in]double arg1);
[id(0x8001026e), propget, helpcontext(0x0001026e)]
		long ZOrder();
[id(0x800105f8), propget, helpcontext(0x000105f8)]
		ShapeRange* ShapeRange();
[id(0x80010080), propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x80010081), propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x80010067), propget, helpcontext(0x00010067)]
		VARIANT_BOOL Shadow();
[id(0x80010067), propput, helpcontext(0x00010067)]
		void Shadow(
			[in]VARIANT_BOOL arg1);
[id(0x80010130), helpcontext(0x00010130)]
		VARIANT Activate();
[id(0x800104a2), propget, helpcontext(0x000104a2)]
		VARIANT_BOOL AutoLoad();
[id(0x800104a2), propput, helpcontext(0x000104a2)]
		void AutoLoad(
			[in]VARIANT_BOOL arg1);
[id(0x80010418), propget, helpcontext(0x00010418)]
		VARIANT_BOOL AutoUpdate();
[id(0x80010418), propput, helpcontext(0x00010418)]
		void AutoUpdate(
			[in]VARIANT_BOOL arg1);
[id(0x80010419), propget, helpcontext(0x00010419)]
		IDispatch* Object();
[id(0x8001041e), propget, helpcontext(0x0001041e)]
		VARIANT OLEType();
[id(0x800102d1), propget, helpcontext(0x000102d1)]
		BSTR SourceName();
[id(0x800102d1), propput, helpcontext(0x000102d1)]
		void SourceName(
			[in]BSTR arg1);
[id(0x800102a8), helpcontext(0x000102a8)]
		VARIANT Update();
[id(0x8001025e), helpcontext(0x0001025e)]
		VARIANT Verb(
			[in, defaultvalue(1)]XlOLEVerb Verb);
[id(0x80010422), propget, helpcontext(0x00010422)]
		BSTR LinkedCell();
[id(0x80010422), propput, helpcontext(0x00010422)]
		void LinkedCell(
			[in]BSTR arg1);
[id(0x8001034f), propget, helpcontext(0x0001034f)]
		BSTR ListFillRange();
[id(0x8001034f), propput, helpcontext(0x0001034f)]
		void ListFillRange(
			[in]BSTR arg1);
[id(0x800105f3), propget, helpcontext(0x000105f3)]
		BSTR progID();
[id(0x8001073d), hidden, propget, helpcontext(0x0001073d)]
		BSTR AltHTML();
[id(0x8001073d), hidden, propput, helpcontext(0x0001073d)]
		void AltHTML(
			[in]BSTR arg1);
};
'!
!Excel_OLEObject categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!Excel_OLEObject methodsFor!

activate
	"Answer the <VARIANT> result of invoking the Activate() method of the COM object."

	^(self invokeId: -2147417808)
!

altHTML
	"Answer the <bstr> value of the 'AltHTML' property of the receiver.
		BSTR AltHTML"

	^(self getPropertyId: -2147416259)
!

altHTML: arg1
	"Set the 'AltHTML' property of the receiver to the <bstr> value of the argument.
		void AltHTML"

	self setPropertyId: -2147416259 value: arg1
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: -2147417964)
!

autoLoad
	"Answer the <varbool> value of the 'AutoLoad' property of the receiver.
		VARIANT_BOOL AutoLoad"

	^(self getPropertyId: -2147416926)
!

autoLoad: arg1
	"Set the 'AutoLoad' property of the receiver to the <varbool> value of the argument.
		void AutoLoad"

	self setPropertyId: -2147416926 value: arg1
!

autoUpdate
	"Answer the <varbool> value of the 'AutoUpdate' property of the receiver.
		VARIANT_BOOL AutoUpdate"

	^(self getPropertyId: -2147417064)
!

autoUpdate: arg1
	"Set the 'AutoUpdate' property of the receiver to the <varbool> value of the argument.
		void AutoUpdate"

	self setPropertyId: -2147417064 value: arg1
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: -2147417984)
!

bottomRightCell
	"Answer the <ExcelRange> value of the 'BottomRightCell' property of the receiver.
		Range* BottomRightCell"

	^ExcelRange attachInterface: (self getPropertyId: -2147417497)
!

bringToFront
	"Answer the <VARIANT> result of invoking the BringToFront() method of the COM object."

	^(self invokeId: -2147417510)
!

copy
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object."

	^(self invokeId: -2147417561)
!

copyPicture
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copyPicture: 2
		 format: -4147!

copyPicture: appearance format: format
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object."

	^(self invokeId: -2147417899 with: appearance with: format)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: -2147417963)
!

cut
	"Answer the <VARIANT> result of invoking the Cut() method of the COM object."

	^(self invokeId: -2147417547)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: -2147417995)
!

duplicate
	"Answer the <IDispatch> result of invoking the Duplicate() method of the COM object."

	^IDispatch attachInterface: (self invokeId: -2147417073)
!

enabled
	"Answer the <varbool> value of the 'Enabled' property of the receiver.
		VARIANT_BOOL Enabled"

	^(self getPropertyId: -2147417512)
!

enabled: arg1
	"Set the 'Enabled' property of the receiver to the <varbool> value of the argument.
		void Enabled"

	self setPropertyId: -2147417512 value: arg1
!

height
	"Answer the <double> value of the 'Height' property of the receiver.
		double Height"

	^(self getPropertyId: -2147417989)
!

height: arg1
	"Set the 'Height' property of the receiver to the <double> value of the argument.
		void Height"

	self setPropertyId: -2147417989 value: arg1
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: -2147417626)
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: -2147417983)
!

left
	"Answer the <double> value of the 'Left' property of the receiver.
		double Left"

	^(self getPropertyId: -2147417985)
!

left: arg1
	"Set the 'Left' property of the receiver to the <double> value of the argument.
		void Left"

	self setPropertyId: -2147417985 value: arg1
!

linkedCell
	"Answer the <bstr> value of the 'LinkedCell' property of the receiver.
		BSTR LinkedCell"

	^(self getPropertyId: -2147417054)
!

linkedCell: arg1
	"Set the 'LinkedCell' property of the receiver to the <bstr> value of the argument.
		void LinkedCell"

	self setPropertyId: -2147417054 value: arg1
!

listFillRange
	"Answer the <bstr> value of the 'ListFillRange' property of the receiver.
		BSTR ListFillRange"

	^(self getPropertyId: -2147417265)
!

listFillRange: arg1
	"Set the 'ListFillRange' property of the receiver to the <bstr> value of the argument.
		void ListFillRange"

	self setPropertyId: -2147417265 value: arg1
!

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver.
		VARIANT_BOOL Locked"

	^(self getPropertyId: -2147417843)
!

locked: arg1
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument.
		void Locked"

	self setPropertyId: -2147417843 value: arg1
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: -2147418002)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: -2147418002 value: arg1
!

object
	"Answer the <IDispatch> value of the 'Object' property of the receiver.
		IDispatch* Object"

	^IDispatch attachInterface: (self getPropertyId: -2147417063)
!

oleType
	"Answer the <variant> value of the 'OLEType' property of the receiver.
		VARIANT OLEType"

	^(self getPropertyId: -2147417058)
!

onAction
	"Answer the <bstr> value of the 'OnAction' property of the receiver.
		BSTR OnAction"

	^(self getPropertyId: -2147417516)
!

onAction: arg1
	"Set the 'OnAction' property of the receiver to the <bstr> value of the argument.
		void OnAction"

	self setPropertyId: -2147417516 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: -2147417962)
!

placement
	"Answer the <variant> value of the 'Placement' property of the receiver.
		VARIANT Placement"

	^(self getPropertyId: -2147417495)
!

placement: arg1
	"Set the 'Placement' property of the receiver to the <variant> value of the argument.
		void Placement"

	self setPropertyId: -2147417495 value: arg1
!

printObject
	"Answer the <varbool> value of the 'PrintObject' property of the receiver.
		VARIANT_BOOL PrintObject"

	^(self getPropertyId: -2147417494)
!

printObject: arg1
	"Set the 'PrintObject' property of the receiver to the <varbool> value of the argument.
		void PrintObject"

	self setPropertyId: -2147417494 value: arg1
!

progID
	"Answer the <bstr> value of the 'progID' property of the receiver.
		BSTR progID"

	^(self getPropertyId: -2147416589)
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object.
	Default values are passed for all optional parameters."

	^self select: VARIANT unspecified!

select: replace
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: -2147417877 with: replace)
!

sendToBack
	"Answer the <VARIANT> result of invoking the SendToBack() method of the COM object."

	^(self invokeId: -2147417507)
!

shadow
	"Answer the <varbool> value of the 'Shadow' property of the receiver.
		VARIANT_BOOL Shadow"

	^(self getPropertyId: -2147418009)
!

shadow: arg1
	"Set the 'Shadow' property of the receiver to the <varbool> value of the argument.
		void Shadow"

	self setPropertyId: -2147418009 value: arg1
!

shapeRange
	"Answer the <ExcelShapeRange> value of the 'ShapeRange' property of the receiver.
		ShapeRange* ShapeRange"

	^ExcelShapeRange attachInterface: (self getPropertyId: -2147416584)
!

sourceName
	"Answer the <bstr> value of the 'SourceName' property of the receiver.
		BSTR SourceName"

	^(self getPropertyId: -2147417391)
!

sourceName: arg1
	"Set the 'SourceName' property of the receiver to the <bstr> value of the argument.
		void SourceName"

	self setPropertyId: -2147417391 value: arg1
!

top
	"Answer the <double> value of the 'Top' property of the receiver.
		double Top"

	^(self getPropertyId: -2147417986)
!

top: arg1
	"Set the 'Top' property of the receiver to the <double> value of the argument.
		void Top"

	self setPropertyId: -2147417986 value: arg1
!

topLeftCell
	"Answer the <ExcelRange> value of the 'TopLeftCell' property of the receiver.
		Range* TopLeftCell"

	^ExcelRange attachInterface: (self getPropertyId: -2147417492)
!

update
	"Answer the <VARIANT> result of invoking the Update() method of the COM object."

	^(self invokeId: -2147417432)
!

verb
	"Answer the <VARIANT> result of invoking the Verb() method of the COM object.
	Default values are passed for all optional parameters."

	^self verb: 1!

verb: verb
	"Answer the <VARIANT> result of invoking the Verb() method of the COM object."

	^(self invokeId: -2147417506 with: verb)
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver.
		VARIANT_BOOL Visible"

	^(self getPropertyId: -2147417554)
!

visible: arg1
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument.
		void Visible"

	self setPropertyId: -2147417554 value: arg1
!

width
	"Answer the <double> value of the 'Width' property of the receiver.
		double Width"

	^(self getPropertyId: -2147417990)
!

width: arg1
	"Set the 'Width' property of the receiver to the <double> value of the argument.
		void Width"

	self setPropertyId: -2147417990 value: arg1
!

zOrder
	"Answer the <sdword> value of the 'ZOrder' property of the receiver.
		long ZOrder"

	^(self getPropertyId: -2147417490)
! !
!Excel_OLEObject categoriesFor: #activate!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #altHTML!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #altHTML:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #application!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #autoLoad!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #autoLoad:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #autoUpdate!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #autoUpdate:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #border!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #bottomRightCell!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #bringToFront!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #copy!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #copyPicture!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #creator!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #cut!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #delete!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #duplicate!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #enabled!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #enabled:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #height!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #height:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #index!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #interior!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #left!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #left:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #linkedCell!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #linkedCell:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #listFillRange!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #listFillRange:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #locked!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #locked:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #name!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #name:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #object!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #oleType!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #onAction!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #onAction:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #parent!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #placement!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #placement:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #printObject!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #printObject:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #progID!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #select!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #select:!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #sendToBack!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #shadow!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #shadow:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #shapeRange!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #sourceName!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #sourceName:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #top!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #top:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #topLeftCell!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #update!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #verb!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #verb:!**auto generated**!methods!public! !
!Excel_OLEObject categoriesFor: #visible!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #visible:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #width!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #width:!**auto generated**!properties!public! !
!Excel_OLEObject categoriesFor: #zOrder!**auto generated**!properties!public! !

!Excel_OLEObject class methodsFor!

clsid
	"Private - Answer the CLSID of the coclass (OLEObject) for which the receiver is the default interface."

	^CLSID fromString: '{00020818-0000-0000-C000-000000000046}'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		Excel_OLEObject initializeTypeLib"

	typeLib := ExcelLib! !
!Excel_OLEObject class categoriesFor: #clsid!**auto generated**!constants!private! !
!Excel_OLEObject class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

