"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIMenuItems
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIMenuItems guid: (IID fromString: '{00020867-0001-0000-C000-000000000046}')!
ExcelIMenuItems comment: '<ExcelIMenuItems> is a wrapper class for the COM interface ''Excel.IMenuItems'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020867-0001-0000-C000-000000000046), 
	helpcontext(0x00020027), 
	hidden
]
interface IMenuItems : IDispatch
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
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Caption,
		[in, optional]VARIANT OnAction,
		[in, optional]VARIANT ShortcutKey,
		[in, optional]VARIANT Before,
		[in, optional]VARIANT Restore,
		[in, optional]VARIANT StatusBar,
		[in, optional]VARIANT HelpFile,
		[in, optional]VARIANT HelpContextID,
		[out, retval]MenuItem** RHS);
	[id(0x00000256), helpcontext(0x00010256)]
	HRESULT __stdcall AddMenu(
		[in]BSTR Caption,
		[in, optional]VARIANT Before,
		[in, optional]VARIANT Restore,
		[out, retval]Menu** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIMenuItems categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIMenuItems methodsFor!

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

add: caption
	"Answer the <ExcelMenuItem> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: caption
		 onAction: VARIANT unspecified
		 shortcutKey: VARIANT unspecified
		 before: VARIANT unspecified
		 restore: VARIANT unspecified
		 statusBar: VARIANT unspecified
		 helpFile: VARIANT unspecified
		 helpContextID: VARIANT unspecified!

add: caption onAction: onAction shortcutKey: shortcutKey before: before restore: restore statusBar: statusBar helpFile: helpFile helpContextID: helpContextID
	"Answer the <ExcelMenuItem> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelMenuItem newPointer.
	self
		Add: caption
		onAction: onAction asVariant
		shortcutKey: shortcutKey asVariant
		before: before asVariant
		restore: restore asVariant
		statusBar: statusBar asVariant
		helpFile: helpFile asVariant
		helpContextID: helpContextID asVariant
		rhs: answer.
	^answer asObject
!

Add: caption onAction: onAction shortcutKey: shortcutKey before: before restore: restore statusBar: statusBar helpFile: helpFile helpContextID: helpContextID rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]BSTR Caption,
			[in, optional]VARIANT OnAction,
			[in, optional]VARIANT ShortcutKey,
			[in, optional]VARIANT Before,
			[in, optional]VARIANT Restore,
			[in, optional]VARIANT StatusBar,
			[in, optional]VARIANT HelpFile,
			[in, optional]VARIANT HelpContextID,
			[out, retval]MenuItem** RHS);"

	<virtual stdcall: hresult 11 bstr variant variant variant variant variant variant variant ExcelMenuItem**>
	^self invalidCall!

addMenu: caption
	"Answer the <ExcelMenu> result of invoking the AddMenu() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addMenu: caption
		 before: VARIANT unspecified
		 restore: VARIANT unspecified!

addMenu: caption before: before restore: restore
	"Answer the <ExcelMenu> result of invoking the AddMenu() method of the COM object."

	| answer |
	answer := ExcelMenu newPointer.
	self
		AddMenu: caption
		before: before asVariant
		restore: restore asVariant
		rhs: answer.
	^answer asObject
!

AddMenu: caption before: before restore: restore rhs: rhs
	"Private - Invoke the AddMenu() method of the COM object.

		HRESULT __stdcall AddMenu(
			[in]BSTR Caption,
			[in, optional]VARIANT Before,
			[in, optional]VARIANT Restore,
			[out, retval]Menu** RHS);"

	<virtual stdcall: hresult 12 bstr variant variant ExcelMenu**>
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

	<virtual stdcall: hresult 16 IUnknown**>
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

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 15 variant IDispatch**>
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
	"Answer the <IDispatch> value of the 'Item' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIMenuItems categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIMenuItems categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIMenuItems categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelIMenuItems categoriesFor: #add:onAction:shortcutKey:before:restore:statusBar:helpFile:helpContextID:!**auto generated**!methods!public! !
!ExcelIMenuItems categoriesFor: #Add:onAction:shortcutKey:before:restore:statusBar:helpFile:helpContextID:rhs:!**auto generated**!COM Interfaces-IMenuItems!private! !
!ExcelIMenuItems categoriesFor: #addMenu:!**auto generated**!methods!public! !
!ExcelIMenuItems categoriesFor: #addMenu:before:restore:!**auto generated**!methods!public! !
!ExcelIMenuItems categoriesFor: #AddMenu:before:restore:rhs:!**auto generated**!COM Interfaces-IMenuItems!private! !
!ExcelIMenuItems categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIMenuItems categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIMenuItems categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIMenuItems categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IMenuItems!private! !
!ExcelIMenuItems categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IMenuItems!private! !
!ExcelIMenuItems categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IMenuItems!private! !
!ExcelIMenuItems categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IMenuItems!private! !
!ExcelIMenuItems categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IMenuItems!private! !
!ExcelIMenuItems categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IMenuItems!private! !
!ExcelIMenuItems categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IMenuItems!private! !
!ExcelIMenuItems categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIMenuItems categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIMenuItems categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIMenuItems class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IMenuItems'
		ExcelIMenuItems defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:onAction:shortcutKey:before:restore:statusBar:helpFile:helpContextID:rhs:
			argumentTypes: 'bstr variant variant variant variant variant variant variant ExcelMenuItem**';
		defineFunction: #AddMenu:before:restore:rhs:
			argumentTypes: 'bstr variant variant ExcelMenu**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIMenuItems initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIMenuItems class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIMenuItems class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

