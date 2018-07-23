"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelChartFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelChartFormat guid: (IID fromString: '{000244B2-0000-0000-C000-000000000046}')!
ExcelChartFormat comment: '<ExcelChartFormat> is a wrapper class generated for the dispatch interface ''Excel.ChartFormat'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244B2-0000-0000-C000-000000000046), 
	helpcontext(0x00020148)
]
dispinterface ChartFormat {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000067f), propget, helpcontext(0x0001067f)]
		FillFormat* Fill();
[id(0x00000a67), propget, helpcontext(0x00010a67)]
		GlowFormat* Glow();
[id(0x00000331), propget, helpcontext(0x00010331)]
		LineFormat* Line();
[id(0x0000065f), propget, helpcontext(0x0001065f)]
		PictureFormat* PictureFormat();
[id(0x00000067), propget, helpcontext(0x00010067)]
		ShadowFormat* Shadow();
[id(0x00000a66), propget, helpcontext(0x00010a66)]
		SoftEdgeFormat* SoftEdge();
[id(0x00000a63), propget, helpcontext(0x00010a63)]
		TextFrame2* TextFrame2();
[id(0x000006a7), propget, helpcontext(0x000106a7)]
		ThreeDFormat* ThreeD();
};
'!
!ExcelChartFormat categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelChartFormat methodsFor!

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

fill
	"Answer the <ExcelFillFormat> value of the 'Fill' property of the receiver.
		FillFormat* Fill"

	^ExcelFillFormat attachInterface: (self getPropertyId: 1663)
!

glow
	"Answer the <OfficeGlowFormat> value of the 'Glow' property of the receiver.
		GlowFormat* Glow"

	^OfficeGlowFormat attachInterface: (self getPropertyId: 2663)
!

line
	"Answer the <ExcelLineFormat> value of the 'Line' property of the receiver.
		LineFormat* Line"

	^ExcelLineFormat attachInterface: (self getPropertyId: 817)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

pictureFormat
	"Answer the <ExcelPictureFormat> value of the 'PictureFormat' property of the receiver.
		PictureFormat* PictureFormat"

	^ExcelPictureFormat attachInterface: (self getPropertyId: 1631)
!

shadow
	"Answer the <ExcelShadowFormat> value of the 'Shadow' property of the receiver.
		ShadowFormat* Shadow"

	^ExcelShadowFormat attachInterface: (self getPropertyId: 103)
!

softEdge
	"Answer the <OfficeSoftEdgeFormat> value of the 'SoftEdge' property of the receiver.
		SoftEdgeFormat* SoftEdge"

	^OfficeSoftEdgeFormat attachInterface: (self getPropertyId: 2662)
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
! !
!ExcelChartFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelChartFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelChartFormat categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelChartFormat categoriesFor: #glow!**auto generated**!properties!public! !
!ExcelChartFormat categoriesFor: #line!**auto generated**!properties!public! !
!ExcelChartFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelChartFormat categoriesFor: #pictureFormat!**auto generated**!properties!public! !
!ExcelChartFormat categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelChartFormat categoriesFor: #softEdge!**auto generated**!properties!public! !
!ExcelChartFormat categoriesFor: #textFrame2!**auto generated**!properties!public! !
!ExcelChartFormat categoriesFor: #threeD!**auto generated**!properties!public! !

!ExcelChartFormat class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelChartFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelChartFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

