"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIChartFillFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIChartFillFormat guid: (IID fromString: '{00024435-0001-0000-C000-000000000046}')!
ExcelIChartFillFormat comment: '<ExcelIChartFillFormat> is a wrapper class for the COM interface ''Excel.IChartFillFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024435-0001-0000-C000-000000000046), 
	helpcontext(0x000200cb), 
	hidden
]
interface IChartFillFormat : IDispatch
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
	[id(0x00000655), helpcontext(0x00010655)]
	HRESULT __stdcall OneColorGradient(
		[in]MsoGradientStyle Style,
		[in]long Variant,
		[in]float Degree);
	[id(0x00000658), helpcontext(0x00010658)]
	HRESULT __stdcall TwoColorGradient(
		[in]MsoGradientStyle Style,
		[in]long Variant);
	[id(0x00000659), helpcontext(0x00010659)]
	HRESULT __stdcall PresetTextured(
		[in]MsoPresetTexture PresetTexture);
	[id(0x0000065b), helpcontext(0x0001065b)]
	HRESULT __stdcall Solid();
	[id(0x0000065c), helpcontext(0x0001065c)]
	HRESULT __stdcall Patterned(
		[in]MsoPatternType Pattern);
	[id(0x0000065d), helpcontext(0x0001065d)]
	HRESULT __stdcall UserPicture(
		[in, optional]VARIANT PictureFile,
		[in, optional]VARIANT PictureFormat,
		[in, optional]VARIANT PictureStackUnit,
		[in, optional]VARIANT PicturePlacement);
	[id(0x00000662), helpcontext(0x00010662)]
	HRESULT __stdcall UserTextured(
		[in]BSTR TextureFile);
	[id(0x00000664), helpcontext(0x00010664)]
	HRESULT __stdcall PresetGradient(
		[in]MsoGradientStyle Style,
		[in]long Variant,
		[in]MsoPresetGradientType PresetGradientType);
	[id(0x00000666), propget, helpcontext(0x00010666)]
	HRESULT __stdcall BackColor(
		[out, retval]ChartColorFormat** RHS);
	[id(0x00000667), propget, helpcontext(0x00010667)]
	HRESULT __stdcall ForeColor(
		[out, retval]ChartColorFormat** RHS);
	[id(0x00000668), propget, helpcontext(0x00010668)]
	HRESULT __stdcall GradientColorType(
		[out, retval]MsoGradientColorType* RHS);
	[id(0x00000669), propget, helpcontext(0x00010669)]
	HRESULT __stdcall GradientDegree(
		[out, retval]float* RHS);
	[id(0x0000066a), propget, helpcontext(0x0001066a)]
	HRESULT __stdcall GradientStyle(
		[out, retval]MsoGradientStyle* RHS);
	[id(0x0000066b), propget, helpcontext(0x0001066b)]
	HRESULT __stdcall GradientVariant(
		[out, retval]long* RHS);
	[id(0x0000005f), propget, helpcontext(0x0001005f)]
	HRESULT __stdcall Pattern(
		[out, retval]MsoPatternType* RHS);
	[id(0x00000665), propget, helpcontext(0x00010665)]
	HRESULT __stdcall PresetGradientType(
		[out, retval]MsoPresetGradientType* RHS);
	[id(0x0000065a), propget, helpcontext(0x0001065a)]
	HRESULT __stdcall PresetTexture(
		[out, retval]MsoPresetTexture* RHS);
	[id(0x0000066c), propget, helpcontext(0x0001066c)]
	HRESULT __stdcall TextureName(
		[out, retval]BSTR* RHS);
	[id(0x0000066d), propget, helpcontext(0x0001066d)]
	HRESULT __stdcall TextureType(
		[out, retval]MsoTextureType* RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]MsoFillType* RHS);
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[out, retval]MsoTriState* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]MsoTriState RHS);
};
'!
!ExcelIChartFillFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIChartFillFormat methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

backColor
	"Answer the <ExcelChartColorFormat> value of the 'BackColor' property of the receiver."

	| answer |
	answer := ExcelChartColorFormat newPointer.
	self get_BackColor: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

foreColor
	"Answer the <ExcelChartColorFormat> value of the 'ForeColor' property of the receiver."

	| answer |
	answer := ExcelChartColorFormat newPointer.
	self get_ForeColor: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_BackColor: rhs
	"Private - Get the value of the 'BackColor' property of the receiver.

		HRESULT __stdcall BackColor(
			[out, retval]ChartColorFormat** RHS);"

	<virtual stdcall: hresult 19 ExcelChartColorFormat**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_ForeColor: rhs
	"Private - Get the value of the 'ForeColor' property of the receiver.

		HRESULT __stdcall ForeColor(
			[out, retval]ChartColorFormat** RHS);"

	<virtual stdcall: hresult 20 ExcelChartColorFormat**>
	^self invalidCall!

get_GradientColorType: rhs
	"Private - Get the value of the 'GradientColorType' property of the receiver.

		HRESULT __stdcall GradientColorType(
			[out, retval]MsoGradientColorType* RHS);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

get_GradientDegree: rhs
	"Private - Get the value of the 'GradientDegree' property of the receiver.

		HRESULT __stdcall GradientDegree(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 22 float*>
	^self invalidCall!

get_GradientStyle: rhs
	"Private - Get the value of the 'GradientStyle' property of the receiver.

		HRESULT __stdcall GradientStyle(
			[out, retval]MsoGradientStyle* RHS);"

	<virtual stdcall: hresult 23 sdword*>
	^self invalidCall!

get_GradientVariant: rhs
	"Private - Get the value of the 'GradientVariant' property of the receiver.

		HRESULT __stdcall GradientVariant(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 24 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Pattern: rhs
	"Private - Get the value of the 'Pattern' property of the receiver.

		HRESULT __stdcall Pattern(
			[out, retval]MsoPatternType* RHS);"

	<virtual stdcall: hresult 25 sdword*>
	^self invalidCall!

get_PresetGradientType: rhs
	"Private - Get the value of the 'PresetGradientType' property of the receiver.

		HRESULT __stdcall PresetGradientType(
			[out, retval]MsoPresetGradientType* RHS);"

	<virtual stdcall: hresult 26 sdword*>
	^self invalidCall!

get_PresetTexture: rhs
	"Private - Get the value of the 'PresetTexture' property of the receiver.

		HRESULT __stdcall PresetTexture(
			[out, retval]MsoPresetTexture* RHS);"

	<virtual stdcall: hresult 27 sdword*>
	^self invalidCall!

get_TextureName: rhs
	"Private - Get the value of the 'TextureName' property of the receiver.

		HRESULT __stdcall TextureName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 28 bstr*>
	^self invalidCall!

get_TextureType: rhs
	"Private - Get the value of the 'TextureType' property of the receiver.

		HRESULT __stdcall TextureType(
			[out, retval]MsoTextureType* RHS);"

	<virtual stdcall: hresult 29 sdword*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]MsoFillType* RHS);"

	<virtual stdcall: hresult 30 sdword*>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 31 sdword*>
	^self invalidCall!

gradientColorType
	"Answer the <sdword> value of the 'GradientColorType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_GradientColorType: answer.
	^answer asObject
!

gradientDegree
	"Answer the <float> value of the 'GradientDegree' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_GradientDegree: answer.
	^answer asObject
!

gradientStyle
	"Answer the <sdword> value of the 'GradientStyle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_GradientStyle: answer.
	^answer asObject
!

gradientVariant
	"Answer the <sdword> value of the 'GradientVariant' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_GradientVariant: answer.
	^answer asObject
!

oneColorGradient: style variant: variant degree: degree
	"Invoke the OneColorGradient() method of the COM object."

	^self
		OneColorGradient: style
		variant: variant
		degree: degree
!

OneColorGradient: style variant: variant degree: degree
	"Private - Invoke the OneColorGradient() method of the COM object.

		HRESULT __stdcall OneColorGradient(
			[in]MsoGradientStyle Style,
			[in]long Variant,
			[in]float Degree);"

	<virtual stdcall: hresult 11 sdword sdword float>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pattern
	"Answer the <sdword> value of the 'Pattern' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Pattern: answer.
	^answer asObject
!

patterned: pattern
	"Invoke the Patterned() method of the COM object."

	^self Patterned: pattern
!

Patterned: pattern
	"Private - Invoke the Patterned() method of the COM object.

		HRESULT __stdcall Patterned(
			[in]MsoPatternType Pattern);"

	<virtual stdcall: hresult 15 sdword>
	^self invalidCall!

presetGradient: style variant: variant presetGradientType: presetGradientType
	"Invoke the PresetGradient() method of the COM object."

	^self
		PresetGradient: style
		variant: variant
		presetGradientType: presetGradientType
!

PresetGradient: style variant: variant presetGradientType: presetGradientType
	"Private - Invoke the PresetGradient() method of the COM object.

		HRESULT __stdcall PresetGradient(
			[in]MsoGradientStyle Style,
			[in]long Variant,
			[in]MsoPresetGradientType PresetGradientType);"

	<virtual stdcall: hresult 18 sdword sdword sdword>
	^self invalidCall!

presetGradientType
	"Answer the <sdword> value of the 'PresetGradientType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetGradientType: answer.
	^answer asObject
!

presetTexture
	"Answer the <sdword> value of the 'PresetTexture' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetTexture: answer.
	^answer asObject
!

presetTextured: presetTexture
	"Invoke the PresetTextured() method of the COM object."

	^self PresetTextured: presetTexture
!

PresetTextured: presetTexture
	"Private - Invoke the PresetTextured() method of the COM object.

		HRESULT __stdcall PresetTextured(
			[in]MsoPresetTexture PresetTexture);"

	<virtual stdcall: hresult 13 sdword>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Visible(
			[in]MsoTriState RHS);"

	<virtual stdcall: hresult 32 sdword>
	^self invalidCall!

solid
	"Invoke the Solid() method of the COM object."

	^self Solid
!

Solid
	"Private - Invoke the Solid() method of the COM object.

		HRESULT __stdcall Solid();"

	<virtual stdcall: hresult 14>
	^self invalidCall!

textureName
	"Answer the <bstr> value of the 'TextureName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_TextureName: answer.
	^answer asObject
!

textureType
	"Answer the <sdword> value of the 'TextureType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TextureType: answer.
	^answer asObject
!

twoColorGradient: style variant: variant
	"Invoke the TwoColorGradient() method of the COM object."

	^self
		TwoColorGradient: style
		variant: variant
!

TwoColorGradient: style variant: variant
	"Private - Invoke the TwoColorGradient() method of the COM object.

		HRESULT __stdcall TwoColorGradient(
			[in]MsoGradientStyle Style,
			[in]long Variant);"

	<virtual stdcall: hresult 12 sdword sdword>
	^self invalidCall!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

userPicture
	"Invoke the UserPicture() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 userPicture: VARIANT unspecified
		 pictureFormat: VARIANT unspecified
		 pictureStackUnit: VARIANT unspecified
		 picturePlacement: VARIANT unspecified!

userPicture: pictureFile pictureFormat: pictureFormat pictureStackUnit: pictureStackUnit picturePlacement: picturePlacement
	"Invoke the UserPicture() method of the COM object."

	^self
		UserPicture: pictureFile asVariant
		pictureFormat: pictureFormat asVariant
		pictureStackUnit: pictureStackUnit asVariant
		picturePlacement: picturePlacement asVariant
!

UserPicture: pictureFile pictureFormat: pictureFormat pictureStackUnit: pictureStackUnit picturePlacement: picturePlacement
	"Private - Invoke the UserPicture() method of the COM object.

		HRESULT __stdcall UserPicture(
			[in, optional]VARIANT PictureFile,
			[in, optional]VARIANT PictureFormat,
			[in, optional]VARIANT PictureStackUnit,
			[in, optional]VARIANT PicturePlacement);"

	<virtual stdcall: hresult 16 variant variant variant variant>
	^self invalidCall!

userTextured: textureFile
	"Invoke the UserTextured() method of the COM object."

	^self UserTextured: textureFile
!

UserTextured: textureFile
	"Private - Invoke the UserTextured() method of the COM object.

		HRESULT __stdcall UserTextured(
			[in]BSTR TextureFile);"

	<virtual stdcall: hresult 17 bstr>
	^self invalidCall!

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
! !
!ExcelIChartFillFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #backColor!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #foreColor!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_BackColor:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_ForeColor:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_GradientColorType:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_GradientDegree:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_GradientStyle:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_GradientVariant:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_Pattern:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_PresetGradientType:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_PresetTexture:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_TextureName:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_TextureType:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #gradientColorType!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #gradientDegree!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #gradientStyle!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #gradientVariant!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #oneColorGradient:variant:degree:!**auto generated**!methods!public! !
!ExcelIChartFillFormat categoriesFor: #OneColorGradient:variant:degree:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #pattern!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #patterned:!**auto generated**!methods!public! !
!ExcelIChartFillFormat categoriesFor: #Patterned:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #presetGradient:variant:presetGradientType:!**auto generated**!methods!public! !
!ExcelIChartFillFormat categoriesFor: #PresetGradient:variant:presetGradientType:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #presetGradientType!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #presetTexture!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #presetTextured:!**auto generated**!methods!public! !
!ExcelIChartFillFormat categoriesFor: #PresetTextured:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #solid!**auto generated**!methods!public! !
!ExcelIChartFillFormat categoriesFor: #Solid!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #textureName!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #textureType!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #twoColorGradient:variant:!**auto generated**!methods!public! !
!ExcelIChartFillFormat categoriesFor: #TwoColorGradient:variant:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #userPicture!**auto generated**!methods!public! !
!ExcelIChartFillFormat categoriesFor: #userPicture:pictureFormat:pictureStackUnit:picturePlacement:!**auto generated**!methods!public! !
!ExcelIChartFillFormat categoriesFor: #UserPicture:pictureFormat:pictureStackUnit:picturePlacement:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #userTextured:!**auto generated**!methods!public! !
!ExcelIChartFillFormat categoriesFor: #UserTextured:!**auto generated**!COM Interfaces-IChartFillFormat!private! !
!ExcelIChartFillFormat categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIChartFillFormat categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelIChartFillFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IChartFillFormat'
		ExcelIChartFillFormat defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #OneColorGradient:variant:degree:
			argumentTypes: 'sdword sdword float';
		defineFunction: #TwoColorGradient:variant:
			argumentTypes: 'sdword sdword';
		defineFunction: #PresetTextured:
			argumentTypes: 'sdword';
		defineFunction: #Solid;
		defineFunction: #Patterned:
			argumentTypes: 'sdword';
		defineFunction: #UserPicture:pictureFormat:pictureStackUnit:picturePlacement:
			argumentTypes: 'variant variant variant variant';
		defineFunction: #UserTextured:
			argumentTypes: 'bstr';
		defineFunction: #PresetGradient:variant:presetGradientType:
			argumentTypes: 'sdword sdword sdword';
		defineFunction: #get_BackColor:
			argumentTypes: 'ExcelChartColorFormat**';
		defineFunction: #get_ForeColor:
			argumentTypes: 'ExcelChartColorFormat**';
		defineFunction: #get_GradientColorType:
			argumentTypes: 'sdword*';
		defineFunction: #get_GradientDegree:
			argumentTypes: 'float*';
		defineFunction: #get_GradientStyle:
			argumentTypes: 'sdword*';
		defineFunction: #get_GradientVariant:
			argumentTypes: 'sdword*';
		defineFunction: #get_Pattern:
			argumentTypes: 'sdword*';
		defineFunction: #get_PresetGradientType:
			argumentTypes: 'sdword*';
		defineFunction: #get_PresetTexture:
			argumentTypes: 'sdword*';
		defineFunction: #get_TextureName:
			argumentTypes: 'bstr*';
		defineFunction: #get_TextureType:
			argumentTypes: 'sdword*';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_Visible:
			argumentTypes: 'sdword*';
		defineFunction: #put_Visible:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIChartFillFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIChartFillFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIChartFillFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

