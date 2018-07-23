"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIChartFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIChartFormat guid: (IID fromString: '{000244B2-0001-0000-C000-000000000046}')!
ExcelIChartFormat comment: '<ExcelIChartFormat> is a wrapper class for the COM interface ''Excel.IChartFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244B2-0001-0000-C000-000000000046), 
	helpcontext(0x00020148), 
	hidden
]
interface IChartFormat : IDispatch
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
	[id(0x0000067f), propget, helpcontext(0x0001067f)]
	HRESULT __stdcall Fill(
		[out, retval]FillFormat** RHS);
	[id(0x00000a67), propget, helpcontext(0x00010a67)]
	HRESULT __stdcall Glow(
		[out, retval]GlowFormat** RHS);
	[id(0x00000331), propget, helpcontext(0x00010331)]
	HRESULT __stdcall Line(
		[out, retval]LineFormat** RHS);
	[id(0x0000065f), propget, helpcontext(0x0001065f)]
	HRESULT __stdcall PictureFormat(
		[out, retval]PictureFormat** RHS);
	[id(0x00000067), propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]ShadowFormat** RHS);
	[id(0x00000a66), propget, helpcontext(0x00010a66)]
	HRESULT __stdcall SoftEdge(
		[out, retval]SoftEdgeFormat** RHS);
	[id(0x00000a63), propget, helpcontext(0x00010a63)]
	HRESULT __stdcall TextFrame2(
		[out, retval]TextFrame2** RHS);
	[id(0x000006a7), propget, helpcontext(0x000106a7)]
	HRESULT __stdcall ThreeD(
		[out, retval]ThreeDFormat** RHS);
};
'!
!ExcelIChartFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIChartFormat methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

fill
	"Answer the <ExcelFillFormat> value of the 'Fill' property of the receiver."

	| answer |
	answer := ExcelFillFormat newPointer.
	self get_Fill: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Fill: rhs
	"Private - Get the value of the 'Fill' property of the receiver.

		HRESULT __stdcall Fill(
			[out, retval]FillFormat** RHS);"

	<virtual stdcall: hresult 11 ExcelFillFormat**>
	^self invalidCall!

get_Glow: rhs
	"Private - Get the value of the 'Glow' property of the receiver.

		HRESULT __stdcall Glow(
			[out, retval]GlowFormat** RHS);"

	<virtual stdcall: hresult 12 OfficeGlowFormat**>
	^self invalidCall!

get_Line: rhs
	"Private - Get the value of the 'Line' property of the receiver.

		HRESULT __stdcall Line(
			[out, retval]LineFormat** RHS);"

	<virtual stdcall: hresult 13 ExcelLineFormat**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PictureFormat: rhs
	"Private - Get the value of the 'PictureFormat' property of the receiver.

		HRESULT __stdcall PictureFormat(
			[out, retval]PictureFormat** RHS);"

	<virtual stdcall: hresult 14 ExcelPictureFormat**>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]ShadowFormat** RHS);"

	<virtual stdcall: hresult 15 ExcelShadowFormat**>
	^self invalidCall!

get_SoftEdge: rhs
	"Private - Get the value of the 'SoftEdge' property of the receiver.

		HRESULT __stdcall SoftEdge(
			[out, retval]SoftEdgeFormat** RHS);"

	<virtual stdcall: hresult 16 OfficeSoftEdgeFormat**>
	^self invalidCall!

get_TextFrame2: rhs
	"Private - Get the value of the 'TextFrame2' property of the receiver.

		HRESULT __stdcall TextFrame2(
			[out, retval]TextFrame2** RHS);"

	<virtual stdcall: hresult 17 ExcelTextFrame2**>
	^self invalidCall!

get_ThreeD: rhs
	"Private - Get the value of the 'ThreeD' property of the receiver.

		HRESULT __stdcall ThreeD(
			[out, retval]ThreeDFormat** RHS);"

	<virtual stdcall: hresult 18 ExcelThreeDFormat**>
	^self invalidCall!

glow
	"Answer the <OfficeGlowFormat> value of the 'Glow' property of the receiver."

	| answer |
	answer := OfficeGlowFormat newPointer.
	self get_Glow: answer.
	^answer asObject
!

line
	"Answer the <ExcelLineFormat> value of the 'Line' property of the receiver."

	| answer |
	answer := ExcelLineFormat newPointer.
	self get_Line: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pictureFormat
	"Answer the <ExcelPictureFormat> value of the 'PictureFormat' property of the receiver."

	| answer |
	answer := ExcelPictureFormat newPointer.
	self get_PictureFormat: answer.
	^answer asObject
!

shadow
	"Answer the <ExcelShadowFormat> value of the 'Shadow' property of the receiver."

	| answer |
	answer := ExcelShadowFormat newPointer.
	self get_Shadow: answer.
	^answer asObject
!

softEdge
	"Answer the <OfficeSoftEdgeFormat> value of the 'SoftEdge' property of the receiver."

	| answer |
	answer := OfficeSoftEdgeFormat newPointer.
	self get_SoftEdge: answer.
	^answer asObject
!

textFrame2
	"Answer the <ExcelTextFrame2> value of the 'TextFrame2' property of the receiver."

	| answer |
	answer := ExcelTextFrame2 newPointer.
	self get_TextFrame2: answer.
	^answer asObject
!

threeD
	"Answer the <ExcelThreeDFormat> value of the 'ThreeD' property of the receiver."

	| answer |
	answer := ExcelThreeDFormat newPointer.
	self get_ThreeD: answer.
	^answer asObject
! !
!ExcelIChartFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIChartFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIChartFormat categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelIChartFormat categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IChartFormat!private! !
!ExcelIChartFormat categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IChartFormat!private! !
!ExcelIChartFormat categoriesFor: #get_Fill:!**auto generated**!COM Interfaces-IChartFormat!private! !
!ExcelIChartFormat categoriesFor: #get_Glow:!**auto generated**!COM Interfaces-IChartFormat!private! !
!ExcelIChartFormat categoriesFor: #get_Line:!**auto generated**!COM Interfaces-IChartFormat!private! !
!ExcelIChartFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IChartFormat!private! !
!ExcelIChartFormat categoriesFor: #get_PictureFormat:!**auto generated**!COM Interfaces-IChartFormat!private! !
!ExcelIChartFormat categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-IChartFormat!private! !
!ExcelIChartFormat categoriesFor: #get_SoftEdge:!**auto generated**!COM Interfaces-IChartFormat!private! !
!ExcelIChartFormat categoriesFor: #get_TextFrame2:!**auto generated**!COM Interfaces-IChartFormat!private! !
!ExcelIChartFormat categoriesFor: #get_ThreeD:!**auto generated**!COM Interfaces-IChartFormat!private! !
!ExcelIChartFormat categoriesFor: #glow!**auto generated**!properties!public! !
!ExcelIChartFormat categoriesFor: #line!**auto generated**!properties!public! !
!ExcelIChartFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIChartFormat categoriesFor: #pictureFormat!**auto generated**!properties!public! !
!ExcelIChartFormat categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelIChartFormat categoriesFor: #softEdge!**auto generated**!properties!public! !
!ExcelIChartFormat categoriesFor: #textFrame2!**auto generated**!properties!public! !
!ExcelIChartFormat categoriesFor: #threeD!**auto generated**!properties!public! !

!ExcelIChartFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IChartFormat'
		ExcelIChartFormat defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Fill:
			argumentTypes: 'ExcelFillFormat**';
		defineFunction: #get_Glow:
			argumentTypes: 'OfficeGlowFormat**';
		defineFunction: #get_Line:
			argumentTypes: 'ExcelLineFormat**';
		defineFunction: #get_PictureFormat:
			argumentTypes: 'ExcelPictureFormat**';
		defineFunction: #get_Shadow:
			argumentTypes: 'ExcelShadowFormat**';
		defineFunction: #get_SoftEdge:
			argumentTypes: 'OfficeSoftEdgeFormat**';
		defineFunction: #get_TextFrame2:
			argumentTypes: 'ExcelTextFrame2**';
		defineFunction: #get_ThreeD:
			argumentTypes: 'ExcelThreeDFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIChartFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIChartFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIChartFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

