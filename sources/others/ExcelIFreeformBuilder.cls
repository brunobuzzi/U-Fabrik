"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIFreeformBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIFreeformBuilder guid: (IID fromString: '{0002443F-0001-0000-C000-000000000046}')!
ExcelIFreeformBuilder comment: '<ExcelIFreeformBuilder> is a wrapper class for the COM interface ''Excel.IFreeformBuilder'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002443F-0001-0000-C000-000000000046), 
	helpcontext(0x000200d5), 
	hidden
]
interface IFreeformBuilder : IDispatch
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
	[id(0x000006e2), helpcontext(0x000106e2)]
	HRESULT __stdcall AddNodes(
		[in]MsoSegmentType SegmentType,
		[in]MsoEditingType EditingType,
		[in]float X1,
		[in]float Y1,
		[in, optional]VARIANT X2,
		[in, optional]VARIANT Y2,
		[in, optional]VARIANT X3,
		[in, optional]VARIANT Y3);
	[id(0x000006e6), helpcontext(0x000106e6)]
	HRESULT __stdcall ConvertToShape(
		[out, retval]Shape** RHS);
};
'!
!ExcelIFreeformBuilder categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIFreeformBuilder methodsFor!

addNodes: segmentType editingType: editingType x1: x1 y1: y1
	"Invoke the AddNodes() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addNodes: segmentType
		 editingType: editingType
		 x1: x1
		 y1: y1
		 x2: VARIANT unspecified
		 y2: VARIANT unspecified
		 x3: VARIANT unspecified
		 y3: VARIANT unspecified!

addNodes: segmentType editingType: editingType x1: x1 y1: y1 x2: x2 y2: y2 x3: x3 y3: y3
	"Invoke the AddNodes() method of the COM object."

	^self
		AddNodes: segmentType
		editingType: editingType
		x1: x1
		y1: y1
		x2: x2 asVariant
		y2: y2 asVariant
		x3: x3 asVariant
		y3: y3 asVariant
!

AddNodes: segmentType editingType: editingType x1: x1 y1: y1 x2: x2 y2: y2 x3: x3 y3: y3
	"Private - Invoke the AddNodes() method of the COM object.

		HRESULT __stdcall AddNodes(
			[in]MsoSegmentType SegmentType,
			[in]MsoEditingType EditingType,
			[in]float X1,
			[in]float Y1,
			[in, optional]VARIANT X2,
			[in, optional]VARIANT Y2,
			[in, optional]VARIANT X3,
			[in, optional]VARIANT Y3);"

	<virtual stdcall: hresult 11 sdword sdword float float variant variant variant variant>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

convertToShape
	"Answer the <ExcelShape> result of invoking the ConvertToShape() method of the COM object."

	| answer |
	answer := ExcelShape newPointer.
	self ConvertToShape: answer.
	^answer asObject
!

ConvertToShape: rhs
	"Private - Invoke the ConvertToShape() method of the COM object.

		HRESULT __stdcall ConvertToShape(
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 12 ExcelShape**>
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIFreeformBuilder categoriesFor: #addNodes:editingType:x1:y1:!**auto generated**!methods!public! !
!ExcelIFreeformBuilder categoriesFor: #addNodes:editingType:x1:y1:x2:y2:x3:y3:!**auto generated**!methods!public! !
!ExcelIFreeformBuilder categoriesFor: #AddNodes:editingType:x1:y1:x2:y2:x3:y3:!**auto generated**!COM Interfaces-IFreeformBuilder!private! !
!ExcelIFreeformBuilder categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIFreeformBuilder categoriesFor: #convertToShape!**auto generated**!methods!public! !
!ExcelIFreeformBuilder categoriesFor: #ConvertToShape:!**auto generated**!COM Interfaces-IFreeformBuilder!private! !
!ExcelIFreeformBuilder categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIFreeformBuilder categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IFreeformBuilder!private! !
!ExcelIFreeformBuilder categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IFreeformBuilder!private! !
!ExcelIFreeformBuilder categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IFreeformBuilder!private! !
!ExcelIFreeformBuilder categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIFreeformBuilder class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IFreeformBuilder'
		ExcelIFreeformBuilder defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #AddNodes:editingType:x1:y1:x2:y2:x3:y3:
			argumentTypes: 'sdword sdword float float variant variant variant variant';
		defineFunction: #ConvertToShape:
			argumentTypes: 'ExcelShape**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIFreeformBuilder initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIFreeformBuilder class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIFreeformBuilder class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

