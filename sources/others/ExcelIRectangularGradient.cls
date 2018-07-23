"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIRectangularGradient
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIRectangularGradient guid: (IID fromString: '{000244B0-0001-0000-C000-000000000046}')!
ExcelIRectangularGradient comment: '<ExcelIRectangularGradient> is a wrapper class for the COM interface ''Excel.IRectangularGradient'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244B0-0001-0000-C000-000000000046), 
	helpcontext(0x00020146), 
	hidden
]
interface IRectangularGradient : IDispatch
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
	[id(0x00000ac9), propget, helpcontext(0x00010ac9)]
	HRESULT __stdcall ColorStops(
		[out, retval]ColorStops** RHS);
	[id(0x00000aca), propget, helpcontext(0x00010aca)]
	HRESULT __stdcall RectangleTop(
		[out, retval]double* RHS);
	[id(0x00000aca), propput, helpcontext(0x00010aca)]
	HRESULT __stdcall RectangleTop(
		[in]double RHS);
	[id(0x00000acb), propget, helpcontext(0x00010acb)]
	HRESULT __stdcall RectangleBottom(
		[out, retval]double* RHS);
	[id(0x00000acb), propput, helpcontext(0x00010acb)]
	HRESULT __stdcall RectangleBottom(
		[in]double RHS);
	[id(0x00000acc), propget, helpcontext(0x00010acc)]
	HRESULT __stdcall RectangleLeft(
		[out, retval]double* RHS);
	[id(0x00000acc), propput, helpcontext(0x00010acc)]
	HRESULT __stdcall RectangleLeft(
		[in]double RHS);
	[id(0x00000acd), propget, helpcontext(0x00010acd)]
	HRESULT __stdcall RectangleRight(
		[out, retval]double* RHS);
	[id(0x00000acd), propput, helpcontext(0x00010acd)]
	HRESULT __stdcall RectangleRight(
		[in]double RHS);
};
'!
!ExcelIRectangularGradient categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIRectangularGradient methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

colorStops
	"Answer the <ExcelColorStops> value of the 'ColorStops' property of the receiver."

	| answer |
	answer := ExcelColorStops newPointer.
	self get_ColorStops: answer.
	^answer asObject
!

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

get_ColorStops: rhs
	"Private - Get the value of the 'ColorStops' property of the receiver.

		HRESULT __stdcall ColorStops(
			[out, retval]ColorStops** RHS);"

	<virtual stdcall: hresult 11 ExcelColorStops**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_RectangleBottom: rhs
	"Private - Get the value of the 'RectangleBottom' property of the receiver.

		HRESULT __stdcall RectangleBottom(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 14 double*>
	^self invalidCall!

get_RectangleLeft: rhs
	"Private - Get the value of the 'RectangleLeft' property of the receiver.

		HRESULT __stdcall RectangleLeft(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 16 double*>
	^self invalidCall!

get_RectangleRight: rhs
	"Private - Get the value of the 'RectangleRight' property of the receiver.

		HRESULT __stdcall RectangleRight(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 18 double*>
	^self invalidCall!

get_RectangleTop: rhs
	"Private - Get the value of the 'RectangleTop' property of the receiver.

		HRESULT __stdcall RectangleTop(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 12 double*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_RectangleBottom: rhs
	"Private - Set the value of the 'RectangleBottom' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall RectangleBottom(
			[in]double RHS);"

	<virtual stdcall: hresult 15 double>
	^self invalidCall!

put_RectangleLeft: rhs
	"Private - Set the value of the 'RectangleLeft' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall RectangleLeft(
			[in]double RHS);"

	<virtual stdcall: hresult 17 double>
	^self invalidCall!

put_RectangleRight: rhs
	"Private - Set the value of the 'RectangleRight' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall RectangleRight(
			[in]double RHS);"

	<virtual stdcall: hresult 19 double>
	^self invalidCall!

put_RectangleTop: rhs
	"Private - Set the value of the 'RectangleTop' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall RectangleTop(
			[in]double RHS);"

	<virtual stdcall: hresult 13 double>
	^self invalidCall!

rectangleBottom
	"Answer the <double> value of the 'RectangleBottom' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_RectangleBottom: answer.
	^answer asObject
!

rectangleBottom: rhs
	"Set the 'RectangleBottom' property of the receiver to the <double> value of the argument."

	self put_RectangleBottom: rhs
!

rectangleLeft
	"Answer the <double> value of the 'RectangleLeft' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_RectangleLeft: answer.
	^answer asObject
!

rectangleLeft: rhs
	"Set the 'RectangleLeft' property of the receiver to the <double> value of the argument."

	self put_RectangleLeft: rhs
!

rectangleRight
	"Answer the <double> value of the 'RectangleRight' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_RectangleRight: answer.
	^answer asObject
!

rectangleRight: rhs
	"Set the 'RectangleRight' property of the receiver to the <double> value of the argument."

	self put_RectangleRight: rhs
!

rectangleTop
	"Answer the <double> value of the 'RectangleTop' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_RectangleTop: answer.
	^answer asObject
!

rectangleTop: rhs
	"Set the 'RectangleTop' property of the receiver to the <double> value of the argument."

	self put_RectangleTop: rhs
! !
!ExcelIRectangularGradient categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIRectangularGradient categoriesFor: #colorStops!**auto generated**!properties!public! !
!ExcelIRectangularGradient categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIRectangularGradient categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IRectangularGradient!private! !
!ExcelIRectangularGradient categoriesFor: #get_ColorStops:!**auto generated**!COM Interfaces-IRectangularGradient!private! !
!ExcelIRectangularGradient categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IRectangularGradient!private! !
!ExcelIRectangularGradient categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IRectangularGradient!private! !
!ExcelIRectangularGradient categoriesFor: #get_RectangleBottom:!**auto generated**!COM Interfaces-IRectangularGradient!private! !
!ExcelIRectangularGradient categoriesFor: #get_RectangleLeft:!**auto generated**!COM Interfaces-IRectangularGradient!private! !
!ExcelIRectangularGradient categoriesFor: #get_RectangleRight:!**auto generated**!COM Interfaces-IRectangularGradient!private! !
!ExcelIRectangularGradient categoriesFor: #get_RectangleTop:!**auto generated**!COM Interfaces-IRectangularGradient!private! !
!ExcelIRectangularGradient categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIRectangularGradient categoriesFor: #put_RectangleBottom:!**auto generated**!COM Interfaces-IRectangularGradient!private! !
!ExcelIRectangularGradient categoriesFor: #put_RectangleLeft:!**auto generated**!COM Interfaces-IRectangularGradient!private! !
!ExcelIRectangularGradient categoriesFor: #put_RectangleRight:!**auto generated**!COM Interfaces-IRectangularGradient!private! !
!ExcelIRectangularGradient categoriesFor: #put_RectangleTop:!**auto generated**!COM Interfaces-IRectangularGradient!private! !
!ExcelIRectangularGradient categoriesFor: #rectangleBottom!**auto generated**!properties!public! !
!ExcelIRectangularGradient categoriesFor: #rectangleBottom:!**auto generated**!properties!public! !
!ExcelIRectangularGradient categoriesFor: #rectangleLeft!**auto generated**!properties!public! !
!ExcelIRectangularGradient categoriesFor: #rectangleLeft:!**auto generated**!properties!public! !
!ExcelIRectangularGradient categoriesFor: #rectangleRight!**auto generated**!properties!public! !
!ExcelIRectangularGradient categoriesFor: #rectangleRight:!**auto generated**!properties!public! !
!ExcelIRectangularGradient categoriesFor: #rectangleTop!**auto generated**!properties!public! !
!ExcelIRectangularGradient categoriesFor: #rectangleTop:!**auto generated**!properties!public! !

!ExcelIRectangularGradient class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IRectangularGradient'
		ExcelIRectangularGradient defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_ColorStops:
			argumentTypes: 'ExcelColorStops**';
		defineFunction: #get_RectangleTop:
			argumentTypes: 'double*';
		defineFunction: #put_RectangleTop:
			argumentTypes: 'double';
		defineFunction: #get_RectangleBottom:
			argumentTypes: 'double*';
		defineFunction: #put_RectangleBottom:
			argumentTypes: 'double';
		defineFunction: #get_RectangleLeft:
			argumentTypes: 'double*';
		defineFunction: #put_RectangleLeft:
			argumentTypes: 'double';
		defineFunction: #get_RectangleRight:
			argumentTypes: 'double*';
		defineFunction: #put_RectangleRight:
			argumentTypes: 'double'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIRectangularGradient initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIRectangularGradient class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIRectangularGradient class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

