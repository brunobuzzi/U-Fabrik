"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelPictureFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPictureFormat guid: (IID fromString: '{000C031A-0000-0000-C000-000000000046}')!
ExcelPictureFormat comment: '<ExcelPictureFormat> is a wrapper class for the COM interface ''Excel.PictureFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C031A-0000-0000-C000-000000000046), 
	helpcontext(0x0001b968), 
	nonextensible, 
	dual
]
interface PictureFormat : _IMsoDispObj
 {
	[id(0x00000001), propget, helpcontext(0x0001b969)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0x0000000a), helpcontext(0x0001b97c)]
	HRESULT __stdcall IncrementBrightness(
		[in]float Increment);
	[id(0x0000000b), helpcontext(0x0001b97d)]
	HRESULT __stdcall IncrementContrast(
		[in]float Increment);
	[id(0x00000064), propget, helpcontext(0x0001b96a)]
	HRESULT __stdcall Brightness(
		[out, retval]float* Brightness);
	[id(0x00000064), propput, helpcontext(0x0001b96a)]
	HRESULT __stdcall Brightness(
		[in]float Brightness);
	[id(0x00000065), propget, helpcontext(0x0001b96b)]
	HRESULT __stdcall ColorType(
		[out, retval]MsoPictureColorType* ColorType);
	[id(0x00000065), propput, helpcontext(0x0001b96b)]
	HRESULT __stdcall ColorType(
		[in]MsoPictureColorType ColorType);
	[id(0x00000066), propget, helpcontext(0x0001b96c)]
	HRESULT __stdcall Contrast(
		[out, retval]float* Contrast);
	[id(0x00000066), propput, helpcontext(0x0001b96c)]
	HRESULT __stdcall Contrast(
		[in]float Contrast);
	[id(0x00000067), propget, helpcontext(0x0001b96d)]
	HRESULT __stdcall CropBottom(
		[out, retval]float* CropBottom);
	[id(0x00000067), propput, helpcontext(0x0001b96d)]
	HRESULT __stdcall CropBottom(
		[in]float CropBottom);
	[id(0x00000068), propget, helpcontext(0x0001b96e)]
	HRESULT __stdcall CropLeft(
		[out, retval]float* CropLeft);
	[id(0x00000068), propput, helpcontext(0x0001b96e)]
	HRESULT __stdcall CropLeft(
		[in]float CropLeft);
	[id(0x00000069), propget, helpcontext(0x0001b96f)]
	HRESULT __stdcall CropRight(
		[out, retval]float* CropRight);
	[id(0x00000069), propput, helpcontext(0x0001b96f)]
	HRESULT __stdcall CropRight(
		[in]float CropRight);
	[id(0x0000006a), propget, helpcontext(0x0001b970)]
	HRESULT __stdcall CropTop(
		[out, retval]float* CropTop);
	[id(0x0000006a), propput, helpcontext(0x0001b970)]
	HRESULT __stdcall CropTop(
		[in]float CropTop);
	[id(0x0000006b), propget, helpcontext(0x0001b971)]
	HRESULT __stdcall TransparencyColor(
		[out, retval]MsoRGBType* TransparencyColor);
	[id(0x0000006b), propput, helpcontext(0x0001b971)]
	HRESULT __stdcall TransparencyColor(
		[in]MsoRGBType TransparencyColor);
	[id(0x0000006c), propget, helpcontext(0x0001b972)]
	HRESULT __stdcall TransparentBackground(
		[out, retval]MsoTriState* TransparentBackground);
	[id(0x0000006c), propput, helpcontext(0x0001b972)]
	HRESULT __stdcall TransparentBackground(
		[in]MsoTriState TransparentBackground);
};
'!
!ExcelPictureFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelPictureFormat methodsFor!

brightness
	"Answer the <float> value of the 'Brightness' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Brightness: answer.
	^answer asObject
!

brightness: brightness
	"Set the 'Brightness' property of the receiver to the <float> value of the argument."

	self put_Brightness: brightness
!

colorType
	"Answer the <sdword> value of the 'ColorType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ColorType: answer.
	^answer asObject
!

colorType: colorType
	"Set the 'ColorType' property of the receiver to the <sdword> value of the argument."

	self put_ColorType: colorType
!

contrast
	"Answer the <float> value of the 'Contrast' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Contrast: answer.
	^answer asObject
!

contrast: contrast
	"Set the 'Contrast' property of the receiver to the <float> value of the argument."

	self put_Contrast: contrast
!

cropBottom
	"Answer the <float> value of the 'CropBottom' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_CropBottom: answer.
	^answer asObject
!

cropBottom: cropBottom
	"Set the 'CropBottom' property of the receiver to the <float> value of the argument."

	self put_CropBottom: cropBottom
!

cropLeft
	"Answer the <float> value of the 'CropLeft' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_CropLeft: answer.
	^answer asObject
!

cropLeft: cropLeft
	"Set the 'CropLeft' property of the receiver to the <float> value of the argument."

	self put_CropLeft: cropLeft
!

cropRight
	"Answer the <float> value of the 'CropRight' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_CropRight: answer.
	^answer asObject
!

cropRight: cropRight
	"Set the 'CropRight' property of the receiver to the <float> value of the argument."

	self put_CropRight: cropRight
!

cropTop
	"Answer the <float> value of the 'CropTop' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_CropTop: answer.
	^answer asObject
!

cropTop: cropTop
	"Set the 'CropTop' property of the receiver to the <float> value of the argument."

	self put_CropTop: cropTop
!

get_Brightness: brightness
	"Private - Get the value of the 'Brightness' property of the receiver.

		HRESULT __stdcall Brightness(
			[out, retval]float* Brightness);"

	<virtual stdcall: hresult 13 float*>
	^self invalidCall!

get_ColorType: colorType
	"Private - Get the value of the 'ColorType' property of the receiver.

		HRESULT __stdcall ColorType(
			[out, retval]MsoPictureColorType* ColorType);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Contrast: contrast
	"Private - Get the value of the 'Contrast' property of the receiver.

		HRESULT __stdcall Contrast(
			[out, retval]float* Contrast);"

	<virtual stdcall: hresult 17 float*>
	^self invalidCall!

get_CropBottom: cropBottom
	"Private - Get the value of the 'CropBottom' property of the receiver.

		HRESULT __stdcall CropBottom(
			[out, retval]float* CropBottom);"

	<virtual stdcall: hresult 19 float*>
	^self invalidCall!

get_CropLeft: cropLeft
	"Private - Get the value of the 'CropLeft' property of the receiver.

		HRESULT __stdcall CropLeft(
			[out, retval]float* CropLeft);"

	<virtual stdcall: hresult 21 float*>
	^self invalidCall!

get_CropRight: cropRight
	"Private - Get the value of the 'CropRight' property of the receiver.

		HRESULT __stdcall CropRight(
			[out, retval]float* CropRight);"

	<virtual stdcall: hresult 23 float*>
	^self invalidCall!

get_CropTop: cropTop
	"Private - Get the value of the 'CropTop' property of the receiver.

		HRESULT __stdcall CropTop(
			[out, retval]float* CropTop);"

	<virtual stdcall: hresult 25 float*>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_TransparencyColor: transparencyColor
	"Private - Get the value of the 'TransparencyColor' property of the receiver.

		HRESULT __stdcall TransparencyColor(
			[out, retval]MsoRGBType* TransparencyColor);"

	<virtual stdcall: hresult 27 sdword*>
	^self invalidCall!

get_TransparentBackground: transparentBackground
	"Private - Get the value of the 'TransparentBackground' property of the receiver.

		HRESULT __stdcall TransparentBackground(
			[out, retval]MsoTriState* TransparentBackground);"

	<virtual stdcall: hresult 29 sdword*>
	^self invalidCall!

incrementBrightness: increment
	"Invoke the IncrementBrightness() method of the COM object."

	^self IncrementBrightness: increment
!

IncrementBrightness: increment
	"Private - Invoke the IncrementBrightness() method of the COM object.

		HRESULT __stdcall IncrementBrightness(
			[in]float Increment);"

	<virtual stdcall: hresult 11 float>
	^self invalidCall!

incrementContrast: increment
	"Invoke the IncrementContrast() method of the COM object."

	^self IncrementContrast: increment
!

IncrementContrast: increment
	"Private - Invoke the IncrementContrast() method of the COM object.

		HRESULT __stdcall IncrementContrast(
			[in]float Increment);"

	<virtual stdcall: hresult 12 float>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Brightness: brightness
	"Private - Set the value of the 'Brightness' property of the object wrapped by the 
	 receiver to the <float> argument, brightness.

		HRESULT __stdcall Brightness(
			[in]float Brightness);"

	<virtual stdcall: hresult 14 float>
	^self invalidCall!

put_ColorType: colorType
	"Private - Set the value of the 'ColorType' property of the object wrapped by the 
	 receiver to the <sdword> argument, colorType.

		HRESULT __stdcall ColorType(
			[in]MsoPictureColorType ColorType);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

put_Contrast: contrast
	"Private - Set the value of the 'Contrast' property of the object wrapped by the 
	 receiver to the <float> argument, contrast.

		HRESULT __stdcall Contrast(
			[in]float Contrast);"

	<virtual stdcall: hresult 18 float>
	^self invalidCall!

put_CropBottom: cropBottom
	"Private - Set the value of the 'CropBottom' property of the object wrapped by the 
	 receiver to the <float> argument, cropBottom.

		HRESULT __stdcall CropBottom(
			[in]float CropBottom);"

	<virtual stdcall: hresult 20 float>
	^self invalidCall!

put_CropLeft: cropLeft
	"Private - Set the value of the 'CropLeft' property of the object wrapped by the 
	 receiver to the <float> argument, cropLeft.

		HRESULT __stdcall CropLeft(
			[in]float CropLeft);"

	<virtual stdcall: hresult 22 float>
	^self invalidCall!

put_CropRight: cropRight
	"Private - Set the value of the 'CropRight' property of the object wrapped by the 
	 receiver to the <float> argument, cropRight.

		HRESULT __stdcall CropRight(
			[in]float CropRight);"

	<virtual stdcall: hresult 24 float>
	^self invalidCall!

put_CropTop: cropTop
	"Private - Set the value of the 'CropTop' property of the object wrapped by the 
	 receiver to the <float> argument, cropTop.

		HRESULT __stdcall CropTop(
			[in]float CropTop);"

	<virtual stdcall: hresult 26 float>
	^self invalidCall!

put_TransparencyColor: transparencyColor
	"Private - Set the value of the 'TransparencyColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, transparencyColor.

		HRESULT __stdcall TransparencyColor(
			[in]MsoRGBType TransparencyColor);"

	<virtual stdcall: hresult 28 sdword>
	^self invalidCall!

put_TransparentBackground: transparentBackground
	"Private - Set the value of the 'TransparentBackground' property of the object wrapped by the 
	 receiver to the <sdword> argument, transparentBackground.

		HRESULT __stdcall TransparentBackground(
			[in]MsoTriState TransparentBackground);"

	<virtual stdcall: hresult 30 sdword>
	^self invalidCall!

transparencyColor
	"Answer the <sdword> value of the 'TransparencyColor' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TransparencyColor: answer.
	^answer asObject
!

transparencyColor: transparencyColor
	"Set the 'TransparencyColor' property of the receiver to the <sdword> value of the argument."

	self put_TransparencyColor: transparencyColor
!

transparentBackground
	"Answer the <sdword> value of the 'TransparentBackground' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TransparentBackground: answer.
	^answer asObject
!

transparentBackground: transparentBackground
	"Set the 'TransparentBackground' property of the receiver to the <sdword> value of the argument."

	self put_TransparentBackground: transparentBackground
! !
!ExcelPictureFormat categoriesFor: #brightness!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #brightness:!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #colorType!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #colorType:!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #contrast!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #contrast:!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #cropBottom!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #cropBottom:!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #cropLeft!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #cropLeft:!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #cropRight!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #cropRight:!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #cropTop!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #cropTop:!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #get_Brightness:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #get_ColorType:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #get_Contrast:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #get_CropBottom:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #get_CropLeft:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #get_CropRight:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #get_CropTop:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #get_TransparencyColor:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #get_TransparentBackground:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #incrementBrightness:!**auto generated**!methods!public! !
!ExcelPictureFormat categoriesFor: #IncrementBrightness:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #incrementContrast:!**auto generated**!methods!public! !
!ExcelPictureFormat categoriesFor: #IncrementContrast:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelPictureFormat categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPictureFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #put_Brightness:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #put_ColorType:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #put_Contrast:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #put_CropBottom:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #put_CropLeft:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #put_CropRight:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #put_CropTop:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #put_TransparencyColor:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #put_TransparentBackground:!**auto generated**!COM Interfaces-PictureFormat!private! !
!ExcelPictureFormat categoriesFor: #transparencyColor!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #transparencyColor:!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #transparentBackground!**auto generated**!properties!public! !
!ExcelPictureFormat categoriesFor: #transparentBackground:!**auto generated**!properties!public! !

!ExcelPictureFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.PictureFormat'
		ExcelPictureFormat defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #IncrementBrightness:
			argumentTypes: 'float';
		defineFunction: #IncrementContrast:
			argumentTypes: 'float';
		defineFunction: #get_Brightness:
			argumentTypes: 'float*';
		defineFunction: #put_Brightness:
			argumentTypes: 'float';
		defineFunction: #get_ColorType:
			argumentTypes: 'sdword*';
		defineFunction: #put_ColorType:
			argumentTypes: 'sdword';
		defineFunction: #get_Contrast:
			argumentTypes: 'float*';
		defineFunction: #put_Contrast:
			argumentTypes: 'float';
		defineFunction: #get_CropBottom:
			argumentTypes: 'float*';
		defineFunction: #put_CropBottom:
			argumentTypes: 'float';
		defineFunction: #get_CropLeft:
			argumentTypes: 'float*';
		defineFunction: #put_CropLeft:
			argumentTypes: 'float';
		defineFunction: #get_CropRight:
			argumentTypes: 'float*';
		defineFunction: #put_CropRight:
			argumentTypes: 'float';
		defineFunction: #get_CropTop:
			argumentTypes: 'float*';
		defineFunction: #put_CropTop:
			argumentTypes: 'float';
		defineFunction: #get_TransparencyColor:
			argumentTypes: 'sdword*';
		defineFunction: #put_TransparencyColor:
			argumentTypes: 'sdword';
		defineFunction: #get_TransparentBackground:
			argumentTypes: 'sdword*';
		defineFunction: #put_TransparentBackground:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPictureFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPictureFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelPictureFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

