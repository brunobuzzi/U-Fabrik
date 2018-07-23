"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelShadowFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelShadowFormat guid: (IID fromString: '{000C031B-0000-0000-C000-000000000046}')!
ExcelShadowFormat comment: '<ExcelShadowFormat> is a wrapper class for the COM interface ''Excel.ShadowFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C031B-0000-0000-C000-000000000046), 
	helpcontext(0x0001bd50), 
	nonextensible, 
	dual
]
interface ShadowFormat : _IMsoDispObj
 {
	[id(0x00000001), propget, helpcontext(0x0001bd51)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0x0000000a), helpcontext(0x0001bd64)]
	HRESULT __stdcall IncrementOffsetX(
		[in]float Increment);
	[id(0x0000000b), helpcontext(0x0001bd65)]
	HRESULT __stdcall IncrementOffsetY(
		[in]float Increment);
	[id(0x00000064), propget, helpcontext(0x0001bd52)]
	HRESULT __stdcall ForeColor(
		[out, retval]ColorFormat** ForeColor);
	[id(0x00000064), propput, helpcontext(0x0001bd52)]
	HRESULT __stdcall ForeColor(
		[in]ColorFormat* ForeColor);
	[id(0x00000065), propget, helpcontext(0x0001bd53)]
	HRESULT __stdcall Obscured(
		[out, retval]MsoTriState* Obscured);
	[id(0x00000065), propput, helpcontext(0x0001bd53)]
	HRESULT __stdcall Obscured(
		[in]MsoTriState Obscured);
	[id(0x00000066), propget, helpcontext(0x0001bd54)]
	HRESULT __stdcall OffsetX(
		[out, retval]float* OffsetX);
	[id(0x00000066), propput, helpcontext(0x0001bd54)]
	HRESULT __stdcall OffsetX(
		[in]float OffsetX);
	[id(0x00000067), propget, helpcontext(0x0001bd55)]
	HRESULT __stdcall OffsetY(
		[out, retval]float* OffsetY);
	[id(0x00000067), propput, helpcontext(0x0001bd55)]
	HRESULT __stdcall OffsetY(
		[in]float OffsetY);
	[id(0x00000068), propget, helpcontext(0x0001bd56)]
	HRESULT __stdcall Transparency(
		[out, retval]float* Transparency);
	[id(0x00000068), propput, helpcontext(0x0001bd56)]
	HRESULT __stdcall Transparency(
		[in]float Transparency);
	[id(0x00000069), propget, helpcontext(0x0001bd57)]
	HRESULT __stdcall Type(
		[out, retval]MsoShadowType* Type);
	[id(0x00000069), propput, helpcontext(0x0001bd57)]
	HRESULT __stdcall Type(
		[in]MsoShadowType Type);
	[id(0x0000006a), propget, helpcontext(0x0001bd58)]
	HRESULT __stdcall Visible(
		[out, retval]MsoTriState* Visible);
	[id(0x0000006a), propput, helpcontext(0x0001bd58)]
	HRESULT __stdcall Visible(
		[in]MsoTriState Visible);
	[id(0x0000006b), propget, helpcontext(0x0001bd59)]
	HRESULT __stdcall Style(
		[out, retval]MsoShadowStyle* ShadowStyle);
	[id(0x0000006b), propput, helpcontext(0x0001bd59)]
	HRESULT __stdcall Style(
		[in]MsoShadowStyle ShadowStyle);
	[id(0x0000006c), propget, helpcontext(0x0001bd5a)]
	HRESULT __stdcall Blur(
		[out, retval]float* Blur);
	[id(0x0000006c), propput, helpcontext(0x0001bd5a)]
	HRESULT __stdcall Blur(
		[in]float Blur);
	[id(0x0000006d), propget, helpcontext(0x0001bd5b)]
	HRESULT __stdcall Size(
		[out, retval]float* Size);
	[id(0x0000006d), propput, helpcontext(0x0001bd5b)]
	HRESULT __stdcall Size(
		[in]float Size);
	[id(0x0000006e), propget, helpcontext(0x0001bd5c)]
	HRESULT __stdcall RotateWithShape(
		[out, retval]MsoTriState* RotateWithShape);
	[id(0x0000006e), propput, helpcontext(0x0001bd5c)]
	HRESULT __stdcall RotateWithShape(
		[in]MsoTriState RotateWithShape);
};
'!
!ExcelShadowFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelShadowFormat methodsFor!

blur
	"Answer the <float> value of the 'Blur' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Blur: answer.
	^answer asObject
!

blur: blur
	"Set the 'Blur' property of the receiver to the <float> value of the argument."

	self put_Blur: blur
!

foreColor
	"Answer the <ExcelColorFormat> value of the 'ForeColor' property of the receiver."

	| answer |
	answer := ExcelColorFormat newPointer.
	self get_ForeColor: answer.
	^answer asObject
!

foreColor: foreColor
	"Set the 'ForeColor' property of the receiver to the <ExcelColorFormat*> value of the argument."

	self put_ForeColor: foreColor
!

get_Blur: blur
	"Private - Get the value of the 'Blur' property of the receiver.

		HRESULT __stdcall Blur(
			[out, retval]float* Blur);"

	<virtual stdcall: hresult 29 float*>
	^self invalidCall!

get_ForeColor: foreColor
	"Private - Get the value of the 'ForeColor' property of the receiver.

		HRESULT __stdcall ForeColor(
			[out, retval]ColorFormat** ForeColor);"

	<virtual stdcall: hresult 13 ExcelColorFormat**>
	^self invalidCall!

get_Obscured: obscured
	"Private - Get the value of the 'Obscured' property of the receiver.

		HRESULT __stdcall Obscured(
			[out, retval]MsoTriState* Obscured);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_OffsetX: offsetX
	"Private - Get the value of the 'OffsetX' property of the receiver.

		HRESULT __stdcall OffsetX(
			[out, retval]float* OffsetX);"

	<virtual stdcall: hresult 17 float*>
	^self invalidCall!

get_OffsetY: offsetY
	"Private - Get the value of the 'OffsetY' property of the receiver.

		HRESULT __stdcall OffsetY(
			[out, retval]float* OffsetY);"

	<virtual stdcall: hresult 19 float*>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_RotateWithShape: rotateWithShape
	"Private - Get the value of the 'RotateWithShape' property of the receiver.

		HRESULT __stdcall RotateWithShape(
			[out, retval]MsoTriState* RotateWithShape);"

	<virtual stdcall: hresult 33 sdword*>
	^self invalidCall!

get_Size: size
	"Private - Get the value of the 'Size' property of the receiver.

		HRESULT __stdcall Size(
			[out, retval]float* Size);"

	<virtual stdcall: hresult 31 float*>
	^self invalidCall!

get_Style: shadowStyle
	"Private - Get the value of the 'Style' property of the receiver.

		HRESULT __stdcall Style(
			[out, retval]MsoShadowStyle* ShadowStyle);"

	<virtual stdcall: hresult 27 sdword*>
	^self invalidCall!

get_Transparency: transparency
	"Private - Get the value of the 'Transparency' property of the receiver.

		HRESULT __stdcall Transparency(
			[out, retval]float* Transparency);"

	<virtual stdcall: hresult 21 float*>
	^self invalidCall!

get_Type: type
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]MsoShadowType* Type);"

	<virtual stdcall: hresult 23 sdword*>
	^self invalidCall!

get_Visible: visible
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]MsoTriState* Visible);"

	<virtual stdcall: hresult 25 sdword*>
	^self invalidCall!

incrementOffsetX: increment
	"Invoke the IncrementOffsetX() method of the COM object."

	^self IncrementOffsetX: increment
!

IncrementOffsetX: increment
	"Private - Invoke the IncrementOffsetX() method of the COM object.

		HRESULT __stdcall IncrementOffsetX(
			[in]float Increment);"

	<virtual stdcall: hresult 11 float>
	^self invalidCall!

incrementOffsetY: increment
	"Invoke the IncrementOffsetY() method of the COM object."

	^self IncrementOffsetY: increment
!

IncrementOffsetY: increment
	"Private - Invoke the IncrementOffsetY() method of the COM object.

		HRESULT __stdcall IncrementOffsetY(
			[in]float Increment);"

	<virtual stdcall: hresult 12 float>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

obscured
	"Answer the <sdword> value of the 'Obscured' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Obscured: answer.
	^answer asObject
!

obscured: obscured
	"Set the 'Obscured' property of the receiver to the <sdword> value of the argument."

	self put_Obscured: obscured
!

offsetX
	"Answer the <float> value of the 'OffsetX' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_OffsetX: answer.
	^answer asObject
!

offsetX: offsetX
	"Set the 'OffsetX' property of the receiver to the <float> value of the argument."

	self put_OffsetX: offsetX
!

offsetY
	"Answer the <float> value of the 'OffsetY' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_OffsetY: answer.
	^answer asObject
!

offsetY: offsetY
	"Set the 'OffsetY' property of the receiver to the <float> value of the argument."

	self put_OffsetY: offsetY
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Blur: blur
	"Private - Set the value of the 'Blur' property of the object wrapped by the 
	 receiver to the <float> argument, blur.

		HRESULT __stdcall Blur(
			[in]float Blur);"

	<virtual stdcall: hresult 30 float>
	^self invalidCall!

put_ForeColor: foreColor
	"Private - Set the value of the 'ForeColor' property of the object wrapped by the 
	 receiver to the <ExcelColorFormat*> argument, foreColor.

		HRESULT __stdcall ForeColor(
			[in]ColorFormat* ForeColor);"

	<virtual stdcall: hresult 14 ExcelColorFormat*>
	^self invalidCall!

put_Obscured: obscured
	"Private - Set the value of the 'Obscured' property of the object wrapped by the 
	 receiver to the <sdword> argument, obscured.

		HRESULT __stdcall Obscured(
			[in]MsoTriState Obscured);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

put_OffsetX: offsetX
	"Private - Set the value of the 'OffsetX' property of the object wrapped by the 
	 receiver to the <float> argument, offsetX.

		HRESULT __stdcall OffsetX(
			[in]float OffsetX);"

	<virtual stdcall: hresult 18 float>
	^self invalidCall!

put_OffsetY: offsetY
	"Private - Set the value of the 'OffsetY' property of the object wrapped by the 
	 receiver to the <float> argument, offsetY.

		HRESULT __stdcall OffsetY(
			[in]float OffsetY);"

	<virtual stdcall: hresult 20 float>
	^self invalidCall!

put_RotateWithShape: rotateWithShape
	"Private - Set the value of the 'RotateWithShape' property of the object wrapped by the 
	 receiver to the <sdword> argument, rotateWithShape.

		HRESULT __stdcall RotateWithShape(
			[in]MsoTriState RotateWithShape);"

	<virtual stdcall: hresult 34 sdword>
	^self invalidCall!

put_Size: size
	"Private - Set the value of the 'Size' property of the object wrapped by the 
	 receiver to the <float> argument, size.

		HRESULT __stdcall Size(
			[in]float Size);"

	<virtual stdcall: hresult 32 float>
	^self invalidCall!

put_Style: shadowStyle
	"Private - Set the value of the 'Style' property of the object wrapped by the 
	 receiver to the <sdword> argument, shadowStyle.

		HRESULT __stdcall Style(
			[in]MsoShadowStyle ShadowStyle);"

	<virtual stdcall: hresult 28 sdword>
	^self invalidCall!

put_Transparency: transparency
	"Private - Set the value of the 'Transparency' property of the object wrapped by the 
	 receiver to the <float> argument, transparency.

		HRESULT __stdcall Transparency(
			[in]float Transparency);"

	<virtual stdcall: hresult 22 float>
	^self invalidCall!

put_Type: type
	"Private - Set the value of the 'Type' property of the object wrapped by the 
	 receiver to the <sdword> argument, type.

		HRESULT __stdcall Type(
			[in]MsoShadowType Type);"

	<virtual stdcall: hresult 24 sdword>
	^self invalidCall!

put_Visible: visible
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <sdword> argument, visible.

		HRESULT __stdcall Visible(
			[in]MsoTriState Visible);"

	<virtual stdcall: hresult 26 sdword>
	^self invalidCall!

rotateWithShape
	"Answer the <sdword> value of the 'RotateWithShape' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_RotateWithShape: answer.
	^answer asObject
!

rotateWithShape: rotateWithShape
	"Set the 'RotateWithShape' property of the receiver to the <sdword> value of the argument."

	self put_RotateWithShape: rotateWithShape
!

size
	"Answer the <float> value of the 'Size' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Size: answer.
	^answer asObject
!

size: size
	"Set the 'Size' property of the receiver to the <float> value of the argument."

	self put_Size: size
!

style
	"Answer the <sdword> value of the 'Style' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Style: answer.
	^answer asObject
!

style: shadowStyle
	"Set the 'Style' property of the receiver to the <sdword> value of the argument."

	self put_Style: shadowStyle
!

transparency
	"Answer the <float> value of the 'Transparency' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Transparency: answer.
	^answer asObject
!

transparency: transparency
	"Set the 'Transparency' property of the receiver to the <float> value of the argument."

	self put_Transparency: transparency
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

type: type
	"Set the 'Type' property of the receiver to the <sdword> value of the argument."

	self put_Type: type
!

visible
	"Answer the <sdword> value of the 'Visible' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Visible: answer.
	^answer asObject
!

visible: visible
	"Set the 'Visible' property of the receiver to the <sdword> value of the argument."

	self put_Visible: visible
! !
!ExcelShadowFormat categoriesFor: #blur!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #blur:!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #foreColor!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #foreColor:!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #get_Blur:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #get_ForeColor:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #get_Obscured:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #get_OffsetX:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #get_OffsetY:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #get_RotateWithShape:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #get_Size:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #get_Style:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #get_Transparency:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #get_Type:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #incrementOffsetX:!**auto generated**!methods!public! !
!ExcelShadowFormat categoriesFor: #IncrementOffsetX:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #incrementOffsetY:!**auto generated**!methods!public! !
!ExcelShadowFormat categoriesFor: #IncrementOffsetY:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelShadowFormat categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelShadowFormat categoriesFor: #obscured!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #obscured:!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #offsetX!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #offsetX:!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #offsetY!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #offsetY:!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #put_Blur:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #put_ForeColor:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #put_Obscured:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #put_OffsetX:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #put_OffsetY:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #put_RotateWithShape:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #put_Size:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #put_Style:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #put_Transparency:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #put_Type:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-ShadowFormat!private! !
!ExcelShadowFormat categoriesFor: #rotateWithShape!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #rotateWithShape:!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #size!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #size:!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #style!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #style:!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #transparency!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #transparency:!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #type!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #type:!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelShadowFormat categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelShadowFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ShadowFormat'
		ExcelShadowFormat defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #IncrementOffsetX:
			argumentTypes: 'float';
		defineFunction: #IncrementOffsetY:
			argumentTypes: 'float';
		defineFunction: #get_ForeColor:
			argumentTypes: 'ExcelColorFormat**';
		defineFunction: #put_ForeColor:
			argumentTypes: 'ExcelColorFormat*';
		defineFunction: #get_Obscured:
			argumentTypes: 'sdword*';
		defineFunction: #put_Obscured:
			argumentTypes: 'sdword';
		defineFunction: #get_OffsetX:
			argumentTypes: 'float*';
		defineFunction: #put_OffsetX:
			argumentTypes: 'float';
		defineFunction: #get_OffsetY:
			argumentTypes: 'float*';
		defineFunction: #put_OffsetY:
			argumentTypes: 'float';
		defineFunction: #get_Transparency:
			argumentTypes: 'float*';
		defineFunction: #put_Transparency:
			argumentTypes: 'float';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #put_Type:
			argumentTypes: 'sdword';
		defineFunction: #get_Visible:
			argumentTypes: 'sdword*';
		defineFunction: #put_Visible:
			argumentTypes: 'sdword';
		defineFunction: #get_Style:
			argumentTypes: 'sdword*';
		defineFunction: #put_Style:
			argumentTypes: 'sdword';
		defineFunction: #get_Blur:
			argumentTypes: 'float*';
		defineFunction: #put_Blur:
			argumentTypes: 'float';
		defineFunction: #get_Size:
			argumentTypes: 'float*';
		defineFunction: #put_Size:
			argumentTypes: 'float';
		defineFunction: #get_RotateWithShape:
			argumentTypes: 'sdword*';
		defineFunction: #put_RotateWithShape:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelShadowFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelShadowFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelShadowFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

