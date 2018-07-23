"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelRectangularGradient
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelRectangularGradient guid: (IID fromString: '{000244B0-0000-0000-C000-000000000046}')!
ExcelRectangularGradient comment: '<ExcelRectangularGradient> is a wrapper class generated for the dispatch interface ''Excel.RectangularGradient'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244B0-0000-0000-C000-000000000046), 
	helpcontext(0x00020146)
]
dispinterface RectangularGradient {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000ac9), propget, helpcontext(0x00010ac9)]
		ColorStops* ColorStops();
[id(0x00000aca), propget, helpcontext(0x00010aca)]
		double RectangleTop();
[id(0x00000aca), propput, helpcontext(0x00010aca)]
		void RectangleTop(
			[in]double arg1);
[id(0x00000acb), propget, helpcontext(0x00010acb)]
		double RectangleBottom();
[id(0x00000acb), propput, helpcontext(0x00010acb)]
		void RectangleBottom(
			[in]double arg1);
[id(0x00000acc), propget, helpcontext(0x00010acc)]
		double RectangleLeft();
[id(0x00000acc), propput, helpcontext(0x00010acc)]
		void RectangleLeft(
			[in]double arg1);
[id(0x00000acd), propget, helpcontext(0x00010acd)]
		double RectangleRight();
[id(0x00000acd), propput, helpcontext(0x00010acd)]
		void RectangleRight(
			[in]double arg1);
};
'!
!ExcelRectangularGradient categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelRectangularGradient methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

colorStops
	"Answer the <ExcelColorStops> value of the 'ColorStops' property of the receiver.
		ColorStops* ColorStops"

	^ExcelColorStops attachInterface: (self getPropertyId: 2761)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

rectangleBottom
	"Answer the <double> value of the 'RectangleBottom' property of the receiver.
		double RectangleBottom"

	^(self getPropertyId: 2763)
!

rectangleBottom: arg1
	"Set the 'RectangleBottom' property of the receiver to the <double> value of the argument.
		void RectangleBottom"

	self setPropertyId: 2763 value: arg1
!

rectangleLeft
	"Answer the <double> value of the 'RectangleLeft' property of the receiver.
		double RectangleLeft"

	^(self getPropertyId: 2764)
!

rectangleLeft: arg1
	"Set the 'RectangleLeft' property of the receiver to the <double> value of the argument.
		void RectangleLeft"

	self setPropertyId: 2764 value: arg1
!

rectangleRight
	"Answer the <double> value of the 'RectangleRight' property of the receiver.
		double RectangleRight"

	^(self getPropertyId: 2765)
!

rectangleRight: arg1
	"Set the 'RectangleRight' property of the receiver to the <double> value of the argument.
		void RectangleRight"

	self setPropertyId: 2765 value: arg1
!

rectangleTop
	"Answer the <double> value of the 'RectangleTop' property of the receiver.
		double RectangleTop"

	^(self getPropertyId: 2762)
!

rectangleTop: arg1
	"Set the 'RectangleTop' property of the receiver to the <double> value of the argument.
		void RectangleTop"

	self setPropertyId: 2762 value: arg1
! !
!ExcelRectangularGradient categoriesFor: #application!**auto generated**!properties!public! !
!ExcelRectangularGradient categoriesFor: #colorStops!**auto generated**!properties!public! !
!ExcelRectangularGradient categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelRectangularGradient categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelRectangularGradient categoriesFor: #rectangleBottom!**auto generated**!properties!public! !
!ExcelRectangularGradient categoriesFor: #rectangleBottom:!**auto generated**!properties!public! !
!ExcelRectangularGradient categoriesFor: #rectangleLeft!**auto generated**!properties!public! !
!ExcelRectangularGradient categoriesFor: #rectangleLeft:!**auto generated**!properties!public! !
!ExcelRectangularGradient categoriesFor: #rectangleRight!**auto generated**!properties!public! !
!ExcelRectangularGradient categoriesFor: #rectangleRight:!**auto generated**!properties!public! !
!ExcelRectangularGradient categoriesFor: #rectangleTop!**auto generated**!properties!public! !
!ExcelRectangularGradient categoriesFor: #rectangleTop:!**auto generated**!properties!public! !

!ExcelRectangularGradient class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelRectangularGradient initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelRectangularGradient class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

