"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISortField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISortField guid: (IID fromString: '{000244A9-0001-0000-C000-000000000046}')!
ExcelISortField comment: '<ExcelISortField> is a wrapper class for the COM interface ''Excel.ISortField'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244A9-0001-0000-C000-000000000046), 
	helpcontext(0x0002013f), 
	hidden
]
interface ISortField : IDispatch
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
	[id(0x00000ab5), propget, helpcontext(0x00010ab5)]
	HRESULT __stdcall SortOn(
		[out, retval]XlSortOn* RHS);
	[id(0x00000ab5), propput, helpcontext(0x00010ab5)]
	HRESULT __stdcall SortOn(
		[in]XlSortOn RHS);
	[id(0x00000ab6), propget, helpcontext(0x00010ab6)]
	HRESULT __stdcall SortOnValue(
		[out, retval]IDispatch** RHS);
	[id(0x0000009b), propget, helpcontext(0x0001009b)]
	HRESULT __stdcall Key(
		[out, retval]Range** RHS);
	[id(0x000000c0), propget, helpcontext(0x000100c0)]
	HRESULT __stdcall Order(
		[out, retval]XlSortOrder* RHS);
	[id(0x000000c0), propput, helpcontext(0x000100c0)]
	HRESULT __stdcall Order(
		[in]XlSortOrder RHS);
	[id(0x00000ab7), propget, helpcontext(0x00010ab7)]
	HRESULT __stdcall CustomOrder(
		[out, retval]VARIANT* RHS);
	[id(0x00000ab7), propput, helpcontext(0x00010ab7)]
	HRESULT __stdcall CustomOrder(
		[in]VARIANT RHS);
	[id(0x00000ab8), propget, helpcontext(0x00010ab8)]
	HRESULT __stdcall DataOption(
		[out, retval]XlSortDataOption* RHS);
	[id(0x00000ab8), propput, helpcontext(0x00010ab8)]
	HRESULT __stdcall DataOption(
		[in]XlSortDataOption RHS);
	[id(0x000003d9), propget, helpcontext(0x000103d9)]
	HRESULT __stdcall Priority(
		[out, retval]long* RHS);
	[id(0x000003d9), propput, helpcontext(0x000103d9)]
	HRESULT __stdcall Priority(
		[in]long RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000ab9), helpcontext(0x00010ab9)]
	HRESULT __stdcall ModifyKey(
		[in]Range* Key);
	[id(0x00000aba), helpcontext(0x00010aba)]
	HRESULT __stdcall SetIcon(
		[in]Icon* Icon);
};
'!
!ExcelISortField categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISortField methodsFor!

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

customOrder
	"Answer the <variant> value of the 'CustomOrder' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_CustomOrder: answer.
	^answer asObject
!

customOrder: rhs
	"Set the 'CustomOrder' property of the receiver to the <variant> value of the argument."

	self put_CustomOrder: rhs asVariant
!

dataOption
	"Answer the <sdword> value of the 'DataOption' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DataOption: answer.
	^answer asObject
!

dataOption: rhs
	"Set the 'DataOption' property of the receiver to the <sdword> value of the argument."

	self put_DataOption: rhs
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 23>
	^self invalidCall!

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

get_CustomOrder: rhs
	"Private - Get the value of the 'CustomOrder' property of the receiver.

		HRESULT __stdcall CustomOrder(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 17 variant*>
	^self invalidCall!

get_DataOption: rhs
	"Private - Get the value of the 'DataOption' property of the receiver.

		HRESULT __stdcall DataOption(
			[out, retval]XlSortDataOption* RHS);"

	<virtual stdcall: hresult 19 sdword*>
	^self invalidCall!

get_Key: rhs
	"Private - Get the value of the 'Key' property of the receiver.

		HRESULT __stdcall Key(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 14 ExcelRange**>
	^self invalidCall!

get_Order: rhs
	"Private - Get the value of the 'Order' property of the receiver.

		HRESULT __stdcall Order(
			[out, retval]XlSortOrder* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Priority: rhs
	"Private - Get the value of the 'Priority' property of the receiver.

		HRESULT __stdcall Priority(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

get_SortOn: rhs
	"Private - Get the value of the 'SortOn' property of the receiver.

		HRESULT __stdcall SortOn(
			[out, retval]XlSortOn* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_SortOnValue: rhs
	"Private - Get the value of the 'SortOnValue' property of the receiver.

		HRESULT __stdcall SortOnValue(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 13 IDispatch**>
	^self invalidCall!

key
	"Answer the <ExcelRange> value of the 'Key' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Key: answer.
	^answer asObject
!

modifyKey: key
	"Invoke the ModifyKey() method of the COM object."

	^self ModifyKey: key
!

ModifyKey: key
	"Private - Invoke the ModifyKey() method of the COM object.

		HRESULT __stdcall ModifyKey(
			[in]Range* Key);"

	<virtual stdcall: hresult 24 ExcelRange*>
	^self invalidCall!

order
	"Answer the <sdword> value of the 'Order' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Order: answer.
	^answer asObject
!

order: rhs
	"Set the 'Order' property of the receiver to the <sdword> value of the argument."

	self put_Order: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

priority
	"Answer the <sdword> value of the 'Priority' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Priority: answer.
	^answer asObject
!

priority: rhs
	"Set the 'Priority' property of the receiver to the <sdword> value of the argument."

	self put_Priority: rhs
!

put_CustomOrder: rhs
	"Private - Set the value of the 'CustomOrder' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall CustomOrder(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 18 variant>
	^self invalidCall!

put_DataOption: rhs
	"Private - Set the value of the 'DataOption' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DataOption(
			[in]XlSortDataOption RHS);"

	<virtual stdcall: hresult 20 sdword>
	^self invalidCall!

put_Order: rhs
	"Private - Set the value of the 'Order' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Order(
			[in]XlSortOrder RHS);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

put_Priority: rhs
	"Private - Set the value of the 'Priority' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Priority(
			[in]long RHS);"

	<virtual stdcall: hresult 22 sdword>
	^self invalidCall!

put_SortOn: rhs
	"Private - Set the value of the 'SortOn' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SortOn(
			[in]XlSortOn RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

setIcon: icon
	"Invoke the SetIcon() method of the COM object."

	^self SetIcon: icon
!

SetIcon: icon
	"Private - Invoke the SetIcon() method of the COM object.

		HRESULT __stdcall SetIcon(
			[in]Icon* Icon);"

	<virtual stdcall: hresult 25 ExcelIcon*>
	^self invalidCall!

sortOn
	"Answer the <sdword> value of the 'SortOn' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SortOn: answer.
	^answer asObject
!

sortOn: rhs
	"Set the 'SortOn' property of the receiver to the <sdword> value of the argument."

	self put_SortOn: rhs
!

sortOnValue
	"Answer the <IDispatch> value of the 'SortOnValue' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_SortOnValue: answer.
	^answer asObject
! !
!ExcelISortField categoriesFor: #application!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #customOrder!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #customOrder:!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #dataOption!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #dataOption:!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelISortField categoriesFor: #Delete!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #get_CustomOrder:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #get_DataOption:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #get_Key:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #get_Order:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #get_Priority:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #get_SortOn:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #get_SortOnValue:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #key!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #modifyKey:!**auto generated**!methods!public! !
!ExcelISortField categoriesFor: #ModifyKey:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #order!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #order:!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #priority!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #priority:!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #put_CustomOrder:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #put_DataOption:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #put_Order:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #put_Priority:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #put_SortOn:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #setIcon:!**auto generated**!methods!public! !
!ExcelISortField categoriesFor: #SetIcon:!**auto generated**!COM Interfaces-ISortField!private! !
!ExcelISortField categoriesFor: #sortOn!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #sortOn:!**auto generated**!properties!public! !
!ExcelISortField categoriesFor: #sortOnValue!**auto generated**!properties!public! !

!ExcelISortField class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISortField'
		ExcelISortField defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_SortOn:
			argumentTypes: 'sdword*';
		defineFunction: #put_SortOn:
			argumentTypes: 'sdword';
		defineFunction: #get_SortOnValue:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Key:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Order:
			argumentTypes: 'sdword*';
		defineFunction: #put_Order:
			argumentTypes: 'sdword';
		defineFunction: #get_CustomOrder:
			argumentTypes: 'variant*';
		defineFunction: #put_CustomOrder:
			argumentTypes: 'variant';
		defineFunction: #get_DataOption:
			argumentTypes: 'sdword*';
		defineFunction: #put_DataOption:
			argumentTypes: 'sdword';
		defineFunction: #get_Priority:
			argumentTypes: 'sdword*';
		defineFunction: #put_Priority:
			argumentTypes: 'sdword';
		defineFunction: #Delete;
		defineFunction: #ModifyKey:
			argumentTypes: 'ExcelRange*';
		defineFunction: #SetIcon:
			argumentTypes: 'ExcelIcon*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISortField initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISortField class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISortField class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

