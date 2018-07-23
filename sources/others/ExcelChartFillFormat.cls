"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelChartFillFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelChartFillFormat guid: (IID fromString: '{00024435-0000-0000-C000-000000000046}')!
ExcelChartFillFormat comment: '<ExcelChartFillFormat> is a wrapper class generated for the dispatch interface ''Excel.ChartFillFormat'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024435-0000-0000-C000-000000000046), 
	helpcontext(0x000200cb), 
	hidden
]
dispinterface ChartFillFormat {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000655), helpcontext(0x00010655)]
		void OneColorGradient(
			[in]MsoGradientStyle Style,
			[in]long Variant,
			[in]float Degree);
[id(0x00000658), helpcontext(0x00010658)]
		void TwoColorGradient(
			[in]MsoGradientStyle Style,
			[in]long Variant);
[id(0x00000659), helpcontext(0x00010659)]
		void PresetTextured(
			[in]MsoPresetTexture PresetTexture);
[id(0x0000065b), helpcontext(0x0001065b)]
		void Solid();
[id(0x0000065c), helpcontext(0x0001065c)]
		void Patterned(
			[in]MsoPatternType Pattern);
[id(0x0000065d), helpcontext(0x0001065d)]
		void UserPicture(
			[in, optional]VARIANT PictureFile,
			[in, optional]VARIANT PictureFormat,
			[in, optional]VARIANT PictureStackUnit,
			[in, optional]VARIANT PicturePlacement);
[id(0x00000662), helpcontext(0x00010662)]
		void UserTextured(
			[in]BSTR TextureFile);
[id(0x00000664), helpcontext(0x00010664)]
		void PresetGradient(
			[in]MsoGradientStyle Style,
			[in]long Variant,
			[in]MsoPresetGradientType PresetGradientType);
[id(0x00000666), propget, helpcontext(0x00010666)]
		ChartColorFormat* BackColor();
[id(0x00000667), propget, helpcontext(0x00010667)]
		ChartColorFormat* ForeColor();
[id(0x00000668), propget, helpcontext(0x00010668)]
		MsoGradientColorType GradientColorType();
[id(0x00000669), propget, helpcontext(0x00010669)]
		float GradientDegree();
[id(0x0000066a), propget, helpcontext(0x0001066a)]
		MsoGradientStyle GradientStyle();
[id(0x0000066b), propget, helpcontext(0x0001066b)]
		long GradientVariant();
[id(0x0000005f), propget, helpcontext(0x0001005f)]
		MsoPatternType Pattern();
[id(0x00000665), propget, helpcontext(0x00010665)]
		MsoPresetGradientType PresetGradientType();
[id(0x0000065a), propget, helpcontext(0x0001065a)]
		MsoPresetTexture PresetTexture();
[id(0x0000066c), propget, helpcontext(0x0001066c)]
		BSTR TextureName();
[id(0x0000066d), propget, helpcontext(0x0001066d)]
		MsoTextureType TextureType();
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		MsoFillType Type();
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		MsoTriState Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]MsoTriState arg1);
};
'!
!ExcelChartFillFormat categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelChartFillFormat methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

backColor
	"Answer the <ExcelChartColorFormat> value of the 'BackColor' property of the receiver.
		ChartColorFormat* BackColor"

	^ExcelChartColorFormat attachInterface: (self getPropertyId: 1638)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

foreColor
	"Answer the <ExcelChartColorFormat> value of the 'ForeColor' property of the receiver.
		ChartColorFormat* ForeColor"

	^ExcelChartColorFormat attachInterface: (self getPropertyId: 1639)
!

gradientColorType
	"Answer the <sdword> value of the 'GradientColorType' property of the receiver.
		MsoGradientColorType GradientColorType"

	^(self getPropertyId: 1640)
!

gradientDegree
	"Answer the <float> value of the 'GradientDegree' property of the receiver.
		float GradientDegree"

	^(self getPropertyId: 1641)
!

gradientStyle
	"Answer the <sdword> value of the 'GradientStyle' property of the receiver.
		MsoGradientStyle GradientStyle"

	^(self getPropertyId: 1642)
!

gradientVariant
	"Answer the <sdword> value of the 'GradientVariant' property of the receiver.
		long GradientVariant"

	^(self getPropertyId: 1643)
!

oneColorGradient: style variant: variant degree: degree
	"Invoke the OneColorGradient() method of the COM object."

	(self invokeId: 1621 withArguments:
			((Array new: 3)
				basicAt: 1 put: style;
				basicAt: 2 put: variant;
				basicAt: 3 put: degree;
				yourself))
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

pattern
	"Answer the <sdword> value of the 'Pattern' property of the receiver.
		MsoPatternType Pattern"

	^(self getPropertyId: 95)
!

patterned: pattern
	"Invoke the Patterned() method of the COM object."

	(self invokeId: 1628 with: pattern)
!

presetGradient: style variant: variant presetGradientType: presetGradientType
	"Invoke the PresetGradient() method of the COM object."

	(self invokeId: 1636 withArguments:
			((Array new: 3)
				basicAt: 1 put: style;
				basicAt: 2 put: variant;
				basicAt: 3 put: presetGradientType;
				yourself))
!

presetGradientType
	"Answer the <sdword> value of the 'PresetGradientType' property of the receiver.
		MsoPresetGradientType PresetGradientType"

	^(self getPropertyId: 1637)
!

presetTexture
	"Answer the <sdword> value of the 'PresetTexture' property of the receiver.
		MsoPresetTexture PresetTexture"

	^(self getPropertyId: 1626)
!

presetTextured: presetTexture
	"Invoke the PresetTextured() method of the COM object."

	(self invokeId: 1625 with: presetTexture)
!

solid
	"Invoke the Solid() method of the COM object."

	(self invokeId: 1627)
!

textureName
	"Answer the <bstr> value of the 'TextureName' property of the receiver.
		BSTR TextureName"

	^(self getPropertyId: 1644)
!

textureType
	"Answer the <sdword> value of the 'TextureType' property of the receiver.
		MsoTextureType TextureType"

	^(self getPropertyId: 1645)
!

twoColorGradient: style variant: variant
	"Invoke the TwoColorGradient() method of the COM object."

	(self invokeId: 1624 with: style with: variant)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		MsoFillType Type"

	^(self getPropertyId: 108)
!

userPicture
	"Invoke the UserPicture() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 userPicture: VARIANT unspecified
		 pictureFormat: VARIANT unspecified
		 pictureStackUnit: VARIANT unspecified
		 picturePlacement: VARIANT unspecified!

userPicture: pictureFile pictureFormat: pictureFormat pictureStackUnit: pictureStackUnit picturePlacement: picturePlacement
	"Invoke the UserPicture() method of the COM object."

	(self invokeId: 1629 withArguments:
			((Array new: 4)
				basicAt: 1 put: pictureFile;
				basicAt: 2 put: pictureFormat;
				basicAt: 3 put: pictureStackUnit;
				basicAt: 4 put: picturePlacement;
				yourself))
!

userTextured: textureFile
	"Invoke the UserTextured() method of the COM object."

	(self invokeId: 1634 with: textureFile)
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
! !
!ExcelChartFillFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #backColor!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #foreColor!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #gradientColorType!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #gradientDegree!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #gradientStyle!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #gradientVariant!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #oneColorGradient:variant:degree:!**auto generated**!methods!public! !
!ExcelChartFillFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #pattern!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #patterned:!**auto generated**!methods!public! !
!ExcelChartFillFormat categoriesFor: #presetGradient:variant:presetGradientType:!**auto generated**!methods!public! !
!ExcelChartFillFormat categoriesFor: #presetGradientType!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #presetTexture!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #presetTextured:!**auto generated**!methods!public! !
!ExcelChartFillFormat categoriesFor: #solid!**auto generated**!methods!public! !
!ExcelChartFillFormat categoriesFor: #textureName!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #textureType!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #twoColorGradient:variant:!**auto generated**!methods!public! !
!ExcelChartFillFormat categoriesFor: #type!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #userPicture!**auto generated**!methods!public! !
!ExcelChartFillFormat categoriesFor: #userPicture:pictureFormat:pictureStackUnit:picturePlacement:!**auto generated**!methods!public! !
!ExcelChartFillFormat categoriesFor: #userTextured:!**auto generated**!methods!public! !
!ExcelChartFillFormat categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelChartFillFormat categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelChartFillFormat class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelChartFillFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelChartFillFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

