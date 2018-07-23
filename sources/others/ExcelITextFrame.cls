"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelITextFrame
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelITextFrame guid: (IID fromString: '{0002443D-0001-0000-C000-000000000046}')!
ExcelITextFrame comment: '<ExcelITextFrame> is a wrapper class for the COM interface ''Excel.ITextFrame'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002443D-0001-0000-C000-000000000046), 
	helpcontext(0x000200d3), 
	hidden
]
interface ITextFrame : IDispatch
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
	[id(0x000006d1), propget, helpcontext(0x000106d1)]
	HRESULT __stdcall MarginBottom(
		[out, retval]float* RHS);
	[id(0x000006d1), propput, helpcontext(0x000106d1)]
	HRESULT __stdcall MarginBottom(
		[in]float RHS);
	[id(0x000006d2), propget, helpcontext(0x000106d2)]
	HRESULT __stdcall MarginLeft(
		[out, retval]float* RHS);
	[id(0x000006d2), propput, helpcontext(0x000106d2)]
	HRESULT __stdcall MarginLeft(
		[in]float RHS);
	[id(0x000006d3), propget, helpcontext(0x000106d3)]
	HRESULT __stdcall MarginRight(
		[out, retval]float* RHS);
	[id(0x000006d3), propput, helpcontext(0x000106d3)]
	HRESULT __stdcall MarginRight(
		[in]float RHS);
	[id(0x000006d4), propget, helpcontext(0x000106d4)]
	HRESULT __stdcall MarginTop(
		[out, retval]float* RHS);
	[id(0x000006d4), propput, helpcontext(0x000106d4)]
	HRESULT __stdcall MarginTop(
		[in]float RHS);
	[id(0x00000086), propget, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[out, retval]MsoTextOrientation* RHS);
	[id(0x00000086), propput, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[in]MsoTextOrientation RHS);
	[id(0x0000025b), helpcontext(0x0001025b)]
	HRESULT __stdcall Characters(
		[in, optional]VARIANT Start,
		[in, optional]VARIANT Length,
		[out, retval]Characters** RHS);
	[id(0x00000088), propget, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[out, retval]XlHAlign* RHS);
	[id(0x00000088), propput, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[in]XlHAlign RHS);
	[id(0x00000089), propget, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[out, retval]XlVAlign* RHS);
	[id(0x00000089), propput, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[in]XlVAlign RHS);
	[id(0x00000266), propget, helpcontext(0x00010266)]
	HRESULT __stdcall AutoSize(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000266), propput, helpcontext(0x00010266)]
	HRESULT __stdcall AutoSize(
		[in]VARIANT_BOOL RHS);
	[id(0x000003cf), propget, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[out, retval]long* RHS);
	[id(0x000003cf), propput, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[in]long RHS);
	[id(0x000006d5), propget, helpcontext(0x000106d5)]
	HRESULT __stdcall AutoMargins(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000006d5), propput, helpcontext(0x000106d5)]
	HRESULT __stdcall AutoMargins(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelITextFrame categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelITextFrame methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

autoMargins
	"Answer the <varbool> value of the 'AutoMargins' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoMargins: answer.
	^answer asObject
!

autoMargins: rhs
	"Set the 'AutoMargins' property of the receiver to the <varbool> value of the argument."

	self put_AutoMargins: rhs
!

autoSize
	"Answer the <varbool> value of the 'AutoSize' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoSize: answer.
	^answer asObject
!

autoSize: rhs
	"Set the 'AutoSize' property of the receiver to the <varbool> value of the argument."

	self put_AutoSize: rhs
!

characters
	"Answer the <ExcelCharacters> result of invoking the Characters() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 characters: VARIANT unspecified
		 length: VARIANT unspecified!

characters: start length: length
	"Answer the <ExcelCharacters> result of invoking the Characters() method of the COM object."

	| answer |
	answer := ExcelCharacters newPointer.
	self
		Characters: start asVariant
		length: length asVariant
		rhs: answer.
	^answer asObject
!

Characters: start length: length rhs: rhs
	"Private - Invoke the Characters() method of the COM object.

		HRESULT __stdcall Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length,
			[out, retval]Characters** RHS);"

	<virtual stdcall: hresult 21 variant variant ExcelCharacters**>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AutoMargins: rhs
	"Private - Get the value of the 'AutoMargins' property of the receiver.

		HRESULT __stdcall AutoMargins(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 30 varbool*>
	^self invalidCall!

get_AutoSize: rhs
	"Private - Get the value of the 'AutoSize' property of the receiver.

		HRESULT __stdcall AutoSize(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 26 varbool*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_HorizontalAlignment: rhs
	"Private - Get the value of the 'HorizontalAlignment' property of the receiver.

		HRESULT __stdcall HorizontalAlignment(
			[out, retval]XlHAlign* RHS);"

	<virtual stdcall: hresult 22 sdword*>
	^self invalidCall!

get_MarginBottom: rhs
	"Private - Get the value of the 'MarginBottom' property of the receiver.

		HRESULT __stdcall MarginBottom(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 11 float*>
	^self invalidCall!

get_MarginLeft: rhs
	"Private - Get the value of the 'MarginLeft' property of the receiver.

		HRESULT __stdcall MarginLeft(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 13 float*>
	^self invalidCall!

get_MarginRight: rhs
	"Private - Get the value of the 'MarginRight' property of the receiver.

		HRESULT __stdcall MarginRight(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 15 float*>
	^self invalidCall!

get_MarginTop: rhs
	"Private - Get the value of the 'MarginTop' property of the receiver.

		HRESULT __stdcall MarginTop(
			[out, retval]float* RHS);"

	<virtual stdcall: hresult 17 float*>
	^self invalidCall!

get_Orientation: rhs
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]MsoTextOrientation* RHS);"

	<virtual stdcall: hresult 19 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ReadingOrder: rhs
	"Private - Get the value of the 'ReadingOrder' property of the receiver.

		HRESULT __stdcall ReadingOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 28 sdword*>
	^self invalidCall!

get_VerticalAlignment: rhs
	"Private - Get the value of the 'VerticalAlignment' property of the receiver.

		HRESULT __stdcall VerticalAlignment(
			[out, retval]XlVAlign* RHS);"

	<virtual stdcall: hresult 24 sdword*>
	^self invalidCall!

horizontalAlignment
	"Answer the <sdword> value of the 'HorizontalAlignment' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HorizontalAlignment: answer.
	^answer asObject
!

horizontalAlignment: rhs
	"Set the 'HorizontalAlignment' property of the receiver to the <sdword> value of the argument."

	self put_HorizontalAlignment: rhs
!

marginBottom
	"Answer the <float> value of the 'MarginBottom' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_MarginBottom: answer.
	^answer asObject
!

marginBottom: rhs
	"Set the 'MarginBottom' property of the receiver to the <float> value of the argument."

	self put_MarginBottom: rhs
!

marginLeft
	"Answer the <float> value of the 'MarginLeft' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_MarginLeft: answer.
	^answer asObject
!

marginLeft: rhs
	"Set the 'MarginLeft' property of the receiver to the <float> value of the argument."

	self put_MarginLeft: rhs
!

marginRight
	"Answer the <float> value of the 'MarginRight' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_MarginRight: answer.
	^answer asObject
!

marginRight: rhs
	"Set the 'MarginRight' property of the receiver to the <float> value of the argument."

	self put_MarginRight: rhs
!

marginTop
	"Answer the <float> value of the 'MarginTop' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_MarginTop: answer.
	^answer asObject
!

marginTop: rhs
	"Set the 'MarginTop' property of the receiver to the <float> value of the argument."

	self put_MarginTop: rhs
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Orientation: answer.
	^answer asObject
!

orientation: rhs
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument."

	self put_Orientation: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_AutoMargins: rhs
	"Private - Set the value of the 'AutoMargins' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoMargins(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 31 varbool>
	^self invalidCall!

put_AutoSize: rhs
	"Private - Set the value of the 'AutoSize' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoSize(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 27 varbool>
	^self invalidCall!

put_HorizontalAlignment: rhs
	"Private - Set the value of the 'HorizontalAlignment' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall HorizontalAlignment(
			[in]XlHAlign RHS);"

	<virtual stdcall: hresult 23 sdword>
	^self invalidCall!

put_MarginBottom: rhs
	"Private - Set the value of the 'MarginBottom' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall MarginBottom(
			[in]float RHS);"

	<virtual stdcall: hresult 12 float>
	^self invalidCall!

put_MarginLeft: rhs
	"Private - Set the value of the 'MarginLeft' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall MarginLeft(
			[in]float RHS);"

	<virtual stdcall: hresult 14 float>
	^self invalidCall!

put_MarginRight: rhs
	"Private - Set the value of the 'MarginRight' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall MarginRight(
			[in]float RHS);"

	<virtual stdcall: hresult 16 float>
	^self invalidCall!

put_MarginTop: rhs
	"Private - Set the value of the 'MarginTop' property of the object wrapped by the 
	 receiver to the <float> argument, rhs.

		HRESULT __stdcall MarginTop(
			[in]float RHS);"

	<virtual stdcall: hresult 18 float>
	^self invalidCall!

put_Orientation: rhs
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Orientation(
			[in]MsoTextOrientation RHS);"

	<virtual stdcall: hresult 20 sdword>
	^self invalidCall!

put_ReadingOrder: rhs
	"Private - Set the value of the 'ReadingOrder' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ReadingOrder(
			[in]long RHS);"

	<virtual stdcall: hresult 29 sdword>
	^self invalidCall!

put_VerticalAlignment: rhs
	"Private - Set the value of the 'VerticalAlignment' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall VerticalAlignment(
			[in]XlVAlign RHS);"

	<virtual stdcall: hresult 25 sdword>
	^self invalidCall!

readingOrder
	"Answer the <sdword> value of the 'ReadingOrder' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ReadingOrder: answer.
	^answer asObject
!

readingOrder: rhs
	"Set the 'ReadingOrder' property of the receiver to the <sdword> value of the argument."

	self put_ReadingOrder: rhs
!

verticalAlignment
	"Answer the <sdword> value of the 'VerticalAlignment' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_VerticalAlignment: answer.
	^answer asObject
!

verticalAlignment: rhs
	"Set the 'VerticalAlignment' property of the receiver to the <sdword> value of the argument."

	self put_VerticalAlignment: rhs
! !
!ExcelITextFrame categoriesFor: #application!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #autoMargins!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #autoMargins:!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #autoSize!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #autoSize:!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #characters!**auto generated**!methods!public! !
!ExcelITextFrame categoriesFor: #characters:length:!**auto generated**!methods!public! !
!ExcelITextFrame categoriesFor: #Characters:length:rhs:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #get_AutoMargins:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #get_AutoSize:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #get_HorizontalAlignment:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #get_MarginBottom:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #get_MarginLeft:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #get_MarginRight:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #get_MarginTop:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #get_ReadingOrder:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #get_VerticalAlignment:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #marginBottom!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #marginBottom:!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #marginLeft!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #marginLeft:!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #marginRight!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #marginRight:!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #marginTop!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #marginTop:!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #put_AutoMargins:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #put_AutoSize:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #put_HorizontalAlignment:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #put_MarginBottom:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #put_MarginLeft:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #put_MarginRight:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #put_MarginTop:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #put_ReadingOrder:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #put_VerticalAlignment:!**auto generated**!COM Interfaces-ITextFrame!private! !
!ExcelITextFrame categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelITextFrame categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !

!ExcelITextFrame class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ITextFrame'
		ExcelITextFrame defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_MarginBottom:
			argumentTypes: 'float*';
		defineFunction: #put_MarginBottom:
			argumentTypes: 'float';
		defineFunction: #get_MarginLeft:
			argumentTypes: 'float*';
		defineFunction: #put_MarginLeft:
			argumentTypes: 'float';
		defineFunction: #get_MarginRight:
			argumentTypes: 'float*';
		defineFunction: #put_MarginRight:
			argumentTypes: 'float';
		defineFunction: #get_MarginTop:
			argumentTypes: 'float*';
		defineFunction: #put_MarginTop:
			argumentTypes: 'float';
		defineFunction: #get_Orientation:
			argumentTypes: 'sdword*';
		defineFunction: #put_Orientation:
			argumentTypes: 'sdword';
		defineFunction: #Characters:length:rhs:
			argumentTypes: 'variant variant ExcelCharacters**';
		defineFunction: #get_HorizontalAlignment:
			argumentTypes: 'sdword*';
		defineFunction: #put_HorizontalAlignment:
			argumentTypes: 'sdword';
		defineFunction: #get_VerticalAlignment:
			argumentTypes: 'sdword*';
		defineFunction: #put_VerticalAlignment:
			argumentTypes: 'sdword';
		defineFunction: #get_AutoSize:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoSize:
			argumentTypes: 'varbool';
		defineFunction: #get_ReadingOrder:
			argumentTypes: 'sdword*';
		defineFunction: #put_ReadingOrder:
			argumentTypes: 'sdword';
		defineFunction: #get_AutoMargins:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoMargins:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelITextFrame initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelITextFrame class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelITextFrame class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

