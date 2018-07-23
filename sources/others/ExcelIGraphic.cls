"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIGraphic
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIGraphic guid: (IID fromString: '{00024459-0001-0000-C000-000000000046}')!
ExcelIGraphic comment: '<ExcelIGraphic> is a wrapper class for the COM interface ''Excel.IGraphic'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024459-0001-0000-C000-000000000046), 
	helpcontext(0x000200ef), 
	hidden
]
interface IGraphic : IDispatch
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
	[id(0x00000892), propget, helpcontext(0x00010892)]
	HRESULT __stdcall Brightness(
		[out, retval]float* RHS);
	[id(0x00000892), propput, helpcontext(0x00010892)]
	HRESULT __stdcall Brightness(
		[in]float RHS);
	[id(0x00000893), propget, helpcontext(0x00010893)]
	HRESULT __stdcall ColorType(
		[out, retval]MsoPictureColorType* RHS);
	[id(0x00000893), propput, helpcontext(0x00010893)]
	HRESULT __stdcall ColorType(
		[in]MsoPictureColorType RHS);
	[id(0x00000894), propget, helpcontext(0x00010894)]
	HRESULT __stdcall Contrast(
		[out, retval]float* RHS);
	[id(0x00000894), propput, helpcontext(0x00010894)]
	HRESULT __stdcall Contrast(
		[in]float RHS);
	[id(0x00000895), propget, helpcontext(0x00010895)]
	HRESULT __stdcall CropBottom(
		[out, retval]float* RHS);
	[id(0x00000895), propput, helpcontext(0x00010895)]
	HRESULT __stdcall CropBottom(
		[in]float RHS);
	[id(0x00000896), propget, helpcontext(0x00010896)]
	HRESULT __stdcall CropLeft(
		[out, retval]float* RHS);
	[id(0x00000896), propput, helpcontext(0x00010896)]
	HRESULT __stdcall CropLeft(
		[in]float RHS);
	[id(0x00000897), propget, helpcontext(0x00010897)]
	HRESULT __stdcall CropRight(
		[out, retval]float* RHS);
	[id(0x00000897), propput, helpcontext(0x00010897)]
	HRESULT __stdcall CropRight(
		[in]float RHS);
	[id(0x00000898), propget, helpcontext(0x00010898)]
	HRESULT __stdcall CropTop(
		[out, retval]float* RHS);
	[id(0x00000898), propput, helpcontext(0x00010898)]
	HRESULT __stdcall CropTop(
		[in]float RHS);
	[id(0x00000587), propget, helpcontext(0x00010587)]
	HRESULT __stdcall Filename(
		[out, retval]BSTR* RHS);
	[id(0x00000587), propput, helpcontext(0x00010587)]
	HRESULT __stdcall Filename(
		[in]BSTR RHS);
	[id(0x0000007b), propget, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[out, retval]float* RHS);
	[id(0x0000007b), propput, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[in]float RHS);
	[id(0x000006a4), propget, helpcontext(0x000106a4)]
	HRESULT __stdcall LockAspectRatio(
		[out, retval]MsoTriState* RHS);
	[id(0x000006a4), propput, helpcontext(0x000106a4)]
	HRESULT __stdcall LockAspectRatio(
		[in]MsoTriState RHS);
	[id(0x0000007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[out, retval]float* RHS);
	[id(0x0000007a), propput, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[in]float RHS);
};
'!
!ExcelIGraphic categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIGraphic methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

brightness
	"Answer the <float> value of the 'Brightness' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Brightness: answer.
	^answer asObject
!

brightness: rhs
	"Set the 'Brightness' property of the receiver to the <float> value of the argument."

	self put_Brightness: rhs
!

colorType
	"Answer the <sdword> value of the 'ColorType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ColorType: answer.
	^answer asObject
!

colorType: rhs
	"Set the 'ColorType' property of the receiver to the <sdword> value of the argument."

	self put_ColorType: rhs
!

contrast
	"Answer the <float> value of the 'Contrast' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Contrast: answer.
	^answer asObject
!

contrast: rhs
	"Set the 'Contrast' property of the receiver to the <float> value of the argument."

	self put_Contrast: rhs
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

cropBottom
	"Answer the <float> value of the 'CropBottom' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_CropBottom: answer.
	^answer asObject
!

cropBottom: rhs
	"Set the 'CropBottom' property of the receiver to the <float> value of the argument."

	self put_CropBottom: rhs
!

cropLeft
	"Answer the <float> value of the 'CropLeft' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_CropLeft: answer.
	^answer asObject
!

cropLeft: rhs
	"Set the 'CropLeft' property of the receiver to the <float> value of the argument."

	self put_CropLeft: rhs
!

cropRight
	"Answer the <float> value of the 'CropRight' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_CropRight: answer.
	^answer asObject
!

cropRight: rhs
	"Set the 'CropRight' property of the receiver to the <float> value of the argument."

	self put_CropRight: rhs
!

cropTop
	"Answer the <float> value of the 'CropTop' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_CropTop: answer.
	^answer asObject
!

cropTop: rhs
	"Set the 'CropTop' property of the receiver to the <float> value of the argument."

	self put_CropTop: rhs
!

filename
	"Answer the <bstr> value of the 'Filename' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Filename: answer.
	^answer asObject
!

filename: rhs
	"Set the 'Filename' property of the receiver to the <bstr> value of the argument."

	self put_Filename: rhs
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Brightness: rhs
	"Private - Get the value of the 'Brightness' property of the receiver.

		HRESULT __stdcall Brightness(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 11 float*>
	^self invalidCall!

get_ColorType: rhs
	"Private - Get the value of the 'ColorType' property of the receiver.

		HRESULT __stdcall ColorType(
			[out, retval]MsoPictureColorType* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Contrast: rhs
	"Private - Get the value of the 'Contrast' property of the receiver.

		HRESULT __stdcall Contrast(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 15 float*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_CropBottom: rhs
	"Private - Get the value of the 'CropBottom' property of the receiver.

		HRESULT __stdcall CropBottom(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 17 float*>
	^self invalidCall!

get_CropLeft: rhs
	"Private - Get the value of the 'CropLeft' property of the receiver.

		HRESULT __stdcall CropLeft(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 19 float*>
	^self invalidCall!

get_CropRight: rhs
	"Private - Get the value of the 'CropRight' property of the receiver.

		HRESULT __stdcall CropRight(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 21 float*>
	^self invalidCall!

get_CropTop: rhs
	"Private - Get the value of the 'CropTop' property of the receiver.

		HRESULT __stdcall CropTop(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 23 float*>
	^self invalidCall!

get_Filename: rhs
	"Private - Get the value of the 'Filename' property of the receiver.

		HRESULT __stdcall Filename(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 25 bstr*>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 27 float*>
	^self invalidCall!

get_LockAspectRatio: rhs
	"Private - Get the value of the 'LockAspectRatio' property of the receiver.

		HRESULT __stdcall LockAspectRatio(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 29 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 31 float*>
	^self invalidCall!

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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Brightness: rhs
	"Private - Set the value of the 'Brightness' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall Brightness(
			[in]float RHS);"

	<virtual stdcall: hresult 12 float>
	^self invalidCall!

put_ColorType: rhs
	"Private - Set the value of the 'ColorType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ColorType(
			[in]MsoPictureColorType RHS);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

put_Contrast: rhs
	"Private - Set the value of the 'Contrast' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall Contrast(
			[in]float RHS);"

	<virtual stdcall: hresult 16 float>
	^self invalidCall!

put_CropBottom: rhs
	"Private - Set the value of the 'CropBottom' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall CropBottom(
			[in]float RHS);"

	<virtual stdcall: hresult 18 float>
	^self invalidCall!

put_CropLeft: rhs
	"Private - Set the value of the 'CropLeft' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall CropLeft(
			[in]float RHS);"

	<virtual stdcall: hresult 20 float>
	^self invalidCall!

put_CropRight: rhs
	"Private - Set the value of the 'CropRight' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall CropRight(
			[in]float RHS);"

	<virtual stdcall: hresult 22 float>
	^self invalidCall!

put_CropTop: rhs
	"Private - Set the value of the 'CropTop' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall CropTop(
			[in]float RHS);"

	<virtual stdcall: hresult 24 float>
	^self invalidCall!

put_Filename: rhs
	"Private - Set the value of the 'Filename' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Filename(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 26 bstr>
	^self invalidCall!

put_Height: rhs
	"Private - Set the value of the 'Height' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall Height(
			[in]float RHS);"

	<virtual stdcall: hresult 28 float>
	^self invalidCall!

put_LockAspectRatio: rhs
	"Private - Set the value of the 'LockAspectRatio' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall LockAspectRatio(
			[in]MsoTriState RHS);"

	<virtual stdcall: hresult 30 sdword>
	^self invalidCall!

put_Width: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall Width(
			[in]float RHS);"

	<virtual stdcall: hresult 32 float>
	^self invalidCall!

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
! !
!ExcelIGraphic categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #brightness!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #brightness:!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #colorType!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #colorType:!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #contrast!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #contrast:!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #cropBottom!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #cropBottom:!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #cropLeft!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #cropLeft:!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #cropRight!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #cropRight:!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #cropTop!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #cropTop:!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #filename!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #filename:!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_Brightness:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_ColorType:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_Contrast:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_CropBottom:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_CropLeft:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_CropRight:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_CropTop:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_Filename:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_LockAspectRatio:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #lockAspectRatio!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #lockAspectRatio:!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #put_Brightness:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #put_ColorType:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #put_Contrast:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #put_CropBottom:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #put_CropLeft:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #put_CropRight:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #put_CropTop:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #put_Filename:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #put_LockAspectRatio:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IGraphic!private! !
!ExcelIGraphic categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIGraphic categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelIGraphic class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IGraphic'
		ExcelIGraphic defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
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
		defineFunction: #get_Filename:
			argumentTypes: 'bstr*';
		defineFunction: #put_Filename:
			argumentTypes: 'bstr';
		defineFunction: #get_Height:
			argumentTypes: 'float*';
		defineFunction: #put_Height:
			argumentTypes: 'float';
		defineFunction: #get_LockAspectRatio:
			argumentTypes: 'sdword*';
		defineFunction: #put_LockAspectRatio:
			argumentTypes: 'sdword';
		defineFunction: #get_Width:
			argumentTypes: 'float*';
		defineFunction: #put_Width:
			argumentTypes: 'float'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIGraphic initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIGraphic class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIGraphic class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

