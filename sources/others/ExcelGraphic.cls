"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelGraphic
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelGraphic guid: (IID fromString: '{00024459-0000-0000-C000-000000000046}')!
ExcelGraphic comment: '<ExcelGraphic> is a wrapper class generated for the dispatch interface ''Excel.Graphic'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024459-0000-0000-C000-000000000046), 
	helpcontext(0x000200ef)
]
dispinterface Graphic {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000892), propget, helpcontext(0x00010892)]
		float Brightness();
[id(0x00000892), propput, helpcontext(0x00010892)]
		void Brightness(
			[in]float arg1);
[id(0x00000893), propget, helpcontext(0x00010893)]
		MsoPictureColorType ColorType();
[id(0x00000893), propput, helpcontext(0x00010893)]
		void ColorType(
			[in]MsoPictureColorType arg1);
[id(0x00000894), propget, helpcontext(0x00010894)]
		float Contrast();
[id(0x00000894), propput, helpcontext(0x00010894)]
		void Contrast(
			[in]float arg1);
[id(0x00000895), propget, helpcontext(0x00010895)]
		float CropBottom();
[id(0x00000895), propput, helpcontext(0x00010895)]
		void CropBottom(
			[in]float arg1);
[id(0x00000896), propget, helpcontext(0x00010896)]
		float CropLeft();
[id(0x00000896), propput, helpcontext(0x00010896)]
		void CropLeft(
			[in]float arg1);
[id(0x00000897), propget, helpcontext(0x00010897)]
		float CropRight();
[id(0x00000897), propput, helpcontext(0x00010897)]
		void CropRight(
			[in]float arg1);
[id(0x00000898), propget, helpcontext(0x00010898)]
		float CropTop();
[id(0x00000898), propput, helpcontext(0x00010898)]
		void CropTop(
			[in]float arg1);
[id(0x00000587), propget, helpcontext(0x00010587)]
		BSTR Filename();
[id(0x00000587), propput, helpcontext(0x00010587)]
		void Filename(
			[in]BSTR arg1);
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		float Height();
[id(0x0000007b), propput, helpcontext(0x0001007b)]
		void Height(
			[in]float arg1);
[id(0x000006a4), propget, helpcontext(0x000106a4)]
		MsoTriState LockAspectRatio();
[id(0x000006a4), propput, helpcontext(0x000106a4)]
		void LockAspectRatio(
			[in]MsoTriState arg1);
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		float Width();
[id(0x0000007a), propput, helpcontext(0x0001007a)]
		void Width(
			[in]float arg1);
};
'!
!ExcelGraphic categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelGraphic methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

brightness
	"Answer the <float> value of the 'Brightness' property of the receiver.
		float Brightness"

	^(self getPropertyId: 2194)
!

brightness: arg1
	"Set the 'Brightness' property of the receiver to the <float> value of the argument.
		void Brightness"

	self setPropertyId: 2194 value: arg1
!

colorType
	"Answer the <sdword> value of the 'ColorType' property of the receiver.
		MsoPictureColorType ColorType"

	^(self getPropertyId: 2195)
!

colorType: arg1
	"Set the 'ColorType' property of the receiver to the <sdword> value of the argument.
		void ColorType"

	self setPropertyId: 2195 value: arg1
!

contrast
	"Answer the <float> value of the 'Contrast' property of the receiver.
		float Contrast"

	^(self getPropertyId: 2196)
!

contrast: arg1
	"Set the 'Contrast' property of the receiver to the <float> value of the argument.
		void Contrast"

	self setPropertyId: 2196 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

cropBottom
	"Answer the <float> value of the 'CropBottom' property of the receiver.
		float CropBottom"

	^(self getPropertyId: 2197)
!

cropBottom: arg1
	"Set the 'CropBottom' property of the receiver to the <float> value of the argument.
		void CropBottom"

	self setPropertyId: 2197 value: arg1
!

cropLeft
	"Answer the <float> value of the 'CropLeft' property of the receiver.
		float CropLeft"

	^(self getPropertyId: 2198)
!

cropLeft: arg1
	"Set the 'CropLeft' property of the receiver to the <float> value of the argument.
		void CropLeft"

	self setPropertyId: 2198 value: arg1
!

cropRight
	"Answer the <float> value of the 'CropRight' property of the receiver.
		float CropRight"

	^(self getPropertyId: 2199)
!

cropRight: arg1
	"Set the 'CropRight' property of the receiver to the <float> value of the argument.
		void CropRight"

	self setPropertyId: 2199 value: arg1
!

cropTop
	"Answer the <float> value of the 'CropTop' property of the receiver.
		float CropTop"

	^(self getPropertyId: 2200)
!

cropTop: arg1
	"Set the 'CropTop' property of the receiver to the <float> value of the argument.
		void CropTop"

	self setPropertyId: 2200 value: arg1
!

filename
	"Answer the <bstr> value of the 'Filename' property of the receiver.
		BSTR Filename"

	^(self getPropertyId: 1415)
!

filename: arg1
	"Set the 'Filename' property of the receiver to the <bstr> value of the argument.
		void Filename"

	self setPropertyId: 1415 value: arg1
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
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
! !
!ExcelGraphic categoriesFor: #application!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #brightness!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #brightness:!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #colorType!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #colorType:!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #contrast!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #contrast:!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #cropBottom!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #cropBottom:!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #cropLeft!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #cropLeft:!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #cropRight!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #cropRight:!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #cropTop!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #cropTop:!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #filename!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #filename:!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #height!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #lockAspectRatio!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #lockAspectRatio:!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #width!**auto generated**!properties!public! !
!ExcelGraphic categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelGraphic class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelGraphic initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelGraphic class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

