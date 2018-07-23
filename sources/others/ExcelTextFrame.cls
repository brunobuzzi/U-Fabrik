"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelTextFrame
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelTextFrame guid: (IID fromString: '{0002443D-0000-0000-C000-000000000046}')!
ExcelTextFrame comment: '<ExcelTextFrame> is a wrapper class generated for the dispatch interface ''Excel.TextFrame'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002443D-0000-0000-C000-000000000046), 
	helpcontext(0x000200d3)
]
dispinterface TextFrame {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000006d1), propget, helpcontext(0x000106d1)]
		float MarginBottom();
[id(0x000006d1), propput, helpcontext(0x000106d1)]
		void MarginBottom(
			[in]float arg1);
[id(0x000006d2), propget, helpcontext(0x000106d2)]
		float MarginLeft();
[id(0x000006d2), propput, helpcontext(0x000106d2)]
		void MarginLeft(
			[in]float arg1);
[id(0x000006d3), propget, helpcontext(0x000106d3)]
		float MarginRight();
[id(0x000006d3), propput, helpcontext(0x000106d3)]
		void MarginRight(
			[in]float arg1);
[id(0x000006d4), propget, helpcontext(0x000106d4)]
		float MarginTop();
[id(0x000006d4), propput, helpcontext(0x000106d4)]
		void MarginTop(
			[in]float arg1);
[id(0x00000086), propget, helpcontext(0x00010086)]
		MsoTextOrientation Orientation();
[id(0x00000086), propput, helpcontext(0x00010086)]
		void Orientation(
			[in]MsoTextOrientation arg1);
[id(0x0000025b), helpcontext(0x0001025b)]
		Characters* Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length);
[id(0x00000088), propget, helpcontext(0x00010088)]
		XlHAlign HorizontalAlignment();
[id(0x00000088), propput, helpcontext(0x00010088)]
		void HorizontalAlignment(
			[in]XlHAlign arg1);
[id(0x00000089), propget, helpcontext(0x00010089)]
		XlVAlign VerticalAlignment();
[id(0x00000089), propput, helpcontext(0x00010089)]
		void VerticalAlignment(
			[in]XlVAlign arg1);
[id(0x00000266), propget, helpcontext(0x00010266)]
		VARIANT_BOOL AutoSize();
[id(0x00000266), propput, helpcontext(0x00010266)]
		void AutoSize(
			[in]VARIANT_BOOL arg1);
[id(0x000003cf), propget, helpcontext(0x000103cf)]
		long ReadingOrder();
[id(0x000003cf), propput, helpcontext(0x000103cf)]
		void ReadingOrder(
			[in]long arg1);
[id(0x000006d5), propget, helpcontext(0x000106d5)]
		VARIANT_BOOL AutoMargins();
[id(0x000006d5), propput, helpcontext(0x000106d5)]
		void AutoMargins(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelTextFrame categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelTextFrame methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

autoMargins
	"Answer the <varbool> value of the 'AutoMargins' property of the receiver.
		VARIANT_BOOL AutoMargins"

	^(self getPropertyId: 1749)
!

autoMargins: arg1
	"Set the 'AutoMargins' property of the receiver to the <varbool> value of the argument.
		void AutoMargins"

	self setPropertyId: 1749 value: arg1
!

autoSize
	"Answer the <varbool> value of the 'AutoSize' property of the receiver.
		VARIANT_BOOL AutoSize"

	^(self getPropertyId: 614)
!

autoSize: arg1
	"Set the 'AutoSize' property of the receiver to the <varbool> value of the argument.
		void AutoSize"

	self setPropertyId: 614 value: arg1
!

characters
	"Answer the <ExcelCharacters> result of invoking the Characters() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 characters: VARIANT unspecified
		 length: VARIANT unspecified!

characters: start length: length
	"Answer the <ExcelCharacters> result of invoking the Characters() method of the COM object."

	^ExcelCharacters attachInterface: (self invokeId: 603 with: start with: length)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

horizontalAlignment
	"Answer the <sdword> value of the 'HorizontalAlignment' property of the receiver.
		XlHAlign HorizontalAlignment"

	^(self getPropertyId: 136)
!

horizontalAlignment: arg1
	"Set the 'HorizontalAlignment' property of the receiver to the <sdword> value of the argument.
		void HorizontalAlignment"

	self setPropertyId: 136 value: arg1
!

marginBottom
	"Answer the <float> value of the 'MarginBottom' property of the receiver.
		float MarginBottom"

	^(self getPropertyId: 1745)
!

marginBottom: arg1
	"Set the 'MarginBottom' property of the receiver to the <float> value of the argument.
		void MarginBottom"

	self setPropertyId: 1745 value: arg1
!

marginLeft
	"Answer the <float> value of the 'MarginLeft' property of the receiver.
		float MarginLeft"

	^(self getPropertyId: 1746)
!

marginLeft: arg1
	"Set the 'MarginLeft' property of the receiver to the <float> value of the argument.
		void MarginLeft"

	self setPropertyId: 1746 value: arg1
!

marginRight
	"Answer the <float> value of the 'MarginRight' property of the receiver.
		float MarginRight"

	^(self getPropertyId: 1747)
!

marginRight: arg1
	"Set the 'MarginRight' property of the receiver to the <float> value of the argument.
		void MarginRight"

	self setPropertyId: 1747 value: arg1
!

marginTop
	"Answer the <float> value of the 'MarginTop' property of the receiver.
		float MarginTop"

	^(self getPropertyId: 1748)
!

marginTop: arg1
	"Set the 'MarginTop' property of the receiver to the <float> value of the argument.
		void MarginTop"

	self setPropertyId: 1748 value: arg1
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver.
		MsoTextOrientation Orientation"

	^(self getPropertyId: 134)
!

orientation: arg1
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument.
		void Orientation"

	self setPropertyId: 134 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

readingOrder
	"Answer the <sdword> value of the 'ReadingOrder' property of the receiver.
		long ReadingOrder"

	^(self getPropertyId: 975)
!

readingOrder: arg1
	"Set the 'ReadingOrder' property of the receiver to the <sdword> value of the argument.
		void ReadingOrder"

	self setPropertyId: 975 value: arg1
!

verticalAlignment
	"Answer the <sdword> value of the 'VerticalAlignment' property of the receiver.
		XlVAlign VerticalAlignment"

	^(self getPropertyId: 137)
!

verticalAlignment: arg1
	"Set the 'VerticalAlignment' property of the receiver to the <sdword> value of the argument.
		void VerticalAlignment"

	self setPropertyId: 137 value: arg1
! !
!ExcelTextFrame categoriesFor: #application!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #autoMargins!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #autoMargins:!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #autoSize!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #autoSize:!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #characters!**auto generated**!methods!public! !
!ExcelTextFrame categoriesFor: #characters:length:!**auto generated**!methods!public! !
!ExcelTextFrame categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #marginBottom!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #marginBottom:!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #marginLeft!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #marginLeft:!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #marginRight!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #marginRight:!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #marginTop!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #marginTop:!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelTextFrame categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !

!ExcelTextFrame class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelTextFrame initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelTextFrame class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

