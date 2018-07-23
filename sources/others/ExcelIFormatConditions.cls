"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIFormatConditions
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIFormatConditions guid: (IID fromString: '{00024424-0001-0000-C000-000000000046}')!
ExcelIFormatConditions comment: '<ExcelIFormatConditions> is a wrapper class for the COM interface ''Excel.IFormatConditions'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024424-0001-0000-C000-000000000046), 
	helpcontext(0x000200ba), 
	hidden
]
interface IFormatConditions : IDispatch
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
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]XlFormatConditionType Type,
		[in, optional]VARIANT Operator,
		[in, optional]VARIANT Formula1,
		[in, optional]VARIANT Formula2,
		[in, optional]VARIANT String,
		[in, optional]VARIANT TextOperator,
		[in, optional]VARIANT DateOperator,
		[in, optional]VARIANT ScopeType,
		[out, retval]IDispatch** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000a38), helpcontext(0x00010a38)]
	HRESULT __stdcall AddColorScale(
		[in]long ColorScaleType,
		[out, retval]IDispatch** RHS);
	[id(0x00000a3a), helpcontext(0x00010a3a)]
	HRESULT __stdcall AddDatabar(
		[out, retval]IDispatch** RHS);
	[id(0x00000a3b), helpcontext(0x00010a3b)]
	HRESULT __stdcall AddIconSetCondition(
		[out, retval]IDispatch** RHS);
	[id(0x00000a3c), helpcontext(0x00010a3c)]
	HRESULT __stdcall AddTop10(
		[out, retval]IDispatch** RHS);
	[id(0x00000a3d), helpcontext(0x00010a3d)]
	HRESULT __stdcall AddAboveAverage(
		[out, retval]IDispatch** RHS);
	[id(0x00000a3e), helpcontext(0x00010a3e)]
	HRESULT __stdcall AddUniqueValues(
		[out, retval]IDispatch** RHS);
};
'!
!ExcelIFormatConditions categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIFormatConditions methodsFor!

_default: index
	"Answer the <IDispatch> value of the '_Default' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get__Default: index asVariant
		rhs: answer.
	^answer asObject
!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

add: type
	"Answer the <IDispatch> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: type
		 operator: VARIANT unspecified
		 formula1: VARIANT unspecified
		 formula2: VARIANT unspecified
		 string: VARIANT unspecified
		 textOperator: VARIANT unspecified
		 dateOperator: VARIANT unspecified
		 scopeType: VARIANT unspecified!

add: type operator: operator formula1: formula1 formula2: formula2 string: string textOperator: textOperator dateOperator: dateOperator scopeType: scopeType
	"Answer the <IDispatch> result of invoking the Add() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Add: type
		operator: operator asVariant
		formula1: formula1 asVariant
		formula2: formula2 asVariant
		string: string asVariant
		textOperator: textOperator asVariant
		dateOperator: dateOperator asVariant
		scopeType: scopeType asVariant
		rhs: answer.
	^answer asObject
!

Add: type operator: operator formula1: formula1 formula2: formula2 string: string textOperator: textOperator dateOperator: dateOperator scopeType: scopeType rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]XlFormatConditionType Type,
			[in, optional]VARIANT Operator,
			[in, optional]VARIANT Formula1,
			[in, optional]VARIANT Formula2,
			[in, optional]VARIANT String,
			[in, optional]VARIANT TextOperator,
			[in, optional]VARIANT DateOperator,
			[in, optional]VARIANT ScopeType,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 13 sdword variant variant variant variant variant variant variant IDispatch**>
	^self invalidCall!

addAboveAverage
	"Answer the <IDispatch> result of invoking the AddAboveAverage() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self AddAboveAverage: answer.
	^answer asObject
!

AddAboveAverage: rhs
	"Private - Invoke the AddAboveAverage() method of the COM object.

		HRESULT __stdcall AddAboveAverage(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 21 IDispatch**>
	^self invalidCall!

addColorScale: colorScaleType
	"Answer the <IDispatch> result of invoking the AddColorScale() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		AddColorScale: colorScaleType
		rhs: answer.
	^answer asObject
!

AddColorScale: colorScaleType rhs: rhs
	"Private - Invoke the AddColorScale() method of the COM object.

		HRESULT __stdcall AddColorScale(
			[in]long ColorScaleType,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 17 sdword IDispatch**>
	^self invalidCall!

addDatabar
	"Answer the <IDispatch> result of invoking the AddDatabar() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self AddDatabar: answer.
	^answer asObject
!

AddDatabar: rhs
	"Private - Invoke the AddDatabar() method of the COM object.

		HRESULT __stdcall AddDatabar(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 18 IDispatch**>
	^self invalidCall!

addIconSetCondition
	"Answer the <IDispatch> result of invoking the AddIconSetCondition() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self AddIconSetCondition: answer.
	^answer asObject
!

AddIconSetCondition: rhs
	"Private - Invoke the AddIconSetCondition() method of the COM object.

		HRESULT __stdcall AddIconSetCondition(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 19 IDispatch**>
	^self invalidCall!

addTop10
	"Answer the <IDispatch> result of invoking the AddTop10() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self AddTop10: answer.
	^answer asObject
!

AddTop10: rhs
	"Private - Invoke the AddTop10() method of the COM object.

		HRESULT __stdcall AddTop10(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 20 IDispatch**>
	^self invalidCall!

addUniqueValues
	"Answer the <IDispatch> result of invoking the AddUniqueValues() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self AddUniqueValues: answer.
	^answer asObject
!

AddUniqueValues: rhs
	"Private - Invoke the AddUniqueValues() method of the COM object.

		HRESULT __stdcall AddUniqueValues(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 22 IDispatch**>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 16>
	^self invalidCall!

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 14 variant IDispatch**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 15 IUnknown**>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 11 sdword*>
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

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <IDispatch> result of invoking the Item() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 12 variant IDispatch**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIFormatConditions categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIFormatConditions categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIFormatConditions categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelIFormatConditions categoriesFor: #add:operator:formula1:formula2:string:textOperator:dateOperator:scopeType:!**auto generated**!methods!public! !
!ExcelIFormatConditions categoriesFor: #Add:operator:formula1:formula2:string:textOperator:dateOperator:scopeType:rhs:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #addAboveAverage!**auto generated**!methods!public! !
!ExcelIFormatConditions categoriesFor: #AddAboveAverage:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #addColorScale:!**auto generated**!methods!public! !
!ExcelIFormatConditions categoriesFor: #AddColorScale:rhs:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #addDatabar!**auto generated**!methods!public! !
!ExcelIFormatConditions categoriesFor: #AddDatabar:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #addIconSetCondition!**auto generated**!methods!public! !
!ExcelIFormatConditions categoriesFor: #AddIconSetCondition:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #addTop10!**auto generated**!methods!public! !
!ExcelIFormatConditions categoriesFor: #AddTop10:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #addUniqueValues!**auto generated**!methods!public! !
!ExcelIFormatConditions categoriesFor: #AddUniqueValues:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIFormatConditions categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIFormatConditions categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIFormatConditions categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIFormatConditions categoriesFor: #Delete!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIFormatConditions categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIFormatConditions categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IFormatConditions!private! !
!ExcelIFormatConditions categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIFormatConditions class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IFormatConditions'
		ExcelIFormatConditions defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #Add:operator:formula1:formula2:string:textOperator:dateOperator:scopeType:rhs:
			argumentTypes: 'sdword variant variant variant variant variant variant variant IDispatch**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #Delete;
		defineFunction: #AddColorScale:rhs:
			argumentTypes: 'sdword IDispatch**';
		defineFunction: #AddDatabar:
			argumentTypes: 'IDispatch**';
		defineFunction: #AddIconSetCondition:
			argumentTypes: 'IDispatch**';
		defineFunction: #AddTop10:
			argumentTypes: 'IDispatch**';
		defineFunction: #AddAboveAverage:
			argumentTypes: 'IDispatch**';
		defineFunction: #AddUniqueValues:
			argumentTypes: 'IDispatch**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIFormatConditions initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIFormatConditions class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIFormatConditions class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

