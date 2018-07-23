"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIToolbarButtons
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIToolbarButtons guid: (IID fromString: '{0002085F-0001-0000-C000-000000000046}')!
ExcelIToolbarButtons comment: '<ExcelIToolbarButtons> is a wrapper class for the COM interface ''Excel.IToolbarButtons'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002085F-0001-0000-C000-000000000046), 
	helpcontext(0x0002001f), 
	hidden
]
interface IToolbarButtons : IDispatch
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
		[in, optional]VARIANT Button,
		[in, optional]VARIANT Before,
		[in, optional]VARIANT OnAction,
		[in, optional]VARIANT Pushed,
		[in, optional]VARIANT Enabled,
		[in, optional]VARIANT StatusBar,
		[in, optional]VARIANT HelpFile,
		[in, optional]VARIANT HelpContextID,
		[out, retval]ToolbarButton** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]long Index,
		[out, retval]ToolbarButton** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]long Index,
		[out, retval]ToolbarButton** RHS);
};
'!
!ExcelIToolbarButtons categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIToolbarButtons methodsFor!

_default: index
	"Answer the <ExcelToolbarButton> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelToolbarButton newPointer.
	self
		get__Default: index
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

add
	"Answer the <ExcelToolbarButton> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: VARIANT unspecified
		 before: VARIANT unspecified
		 onAction: VARIANT unspecified
		 pushed: VARIANT unspecified
		 enabled: VARIANT unspecified
		 statusBar: VARIANT unspecified
		 helpFile: VARIANT unspecified
		 helpContextID: VARIANT unspecified!

add: button before: before onAction: onAction pushed: pushed enabled: enabled statusBar: statusBar helpFile: helpFile helpContextID: helpContextID
	"Answer the <ExcelToolbarButton> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelToolbarButton newPointer.
	self
		Add: button asVariant
		before: before asVariant
		onAction: onAction asVariant
		pushed: pushed asVariant
		enabled: enabled asVariant
		statusBar: statusBar asVariant
		helpFile: helpFile asVariant
		helpContextID: helpContextID asVariant
		rhs: answer.
	^answer asObject
!

Add: button before: before onAction: onAction pushed: pushed enabled: enabled statusBar: statusBar helpFile: helpFile helpContextID: helpContextID rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in, optional]VARIANT Button,
			[in, optional]VARIANT Before,
			[in, optional]VARIANT OnAction,
			[in, optional]VARIANT Pushed,
			[in, optional]VARIANT Enabled,
			[in, optional]VARIANT StatusBar,
			[in, optional]VARIANT HelpFile,
			[in, optional]VARIANT HelpContextID,
			[out, retval]ToolbarButton** RHS);"

	<virtual stdcall: hresult 11 variant variant variant variant variant variant variant variant ExcelToolbarButton**>
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
			[in]long Index,
			[out, retval]ToolbarButton** RHS);"

	<virtual stdcall: hresult 15 sdword ExcelToolbarButton**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 14 IUnknown**>
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

	<virtual stdcall: hresult 12 sdword*>
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
			[in]long Index,
			[out, retval]ToolbarButton** RHS);"

	<virtual stdcall: hresult 13 sdword ExcelToolbarButton**>
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
	"Answer the <ExcelToolbarButton> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelToolbarButton newPointer.
	self
		get_Item: index
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
!ExcelIToolbarButtons categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIToolbarButtons categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIToolbarButtons categoriesFor: #add!**auto generated**!methods!public! !
!ExcelIToolbarButtons categoriesFor: #add:before:onAction:pushed:enabled:statusBar:helpFile:helpContextID:!**auto generated**!methods!public! !
!ExcelIToolbarButtons categoriesFor: #Add:before:onAction:pushed:enabled:statusBar:helpFile:helpContextID:rhs:!**auto generated**!COM Interfaces-IToolbarButtons!private! !
!ExcelIToolbarButtons categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIToolbarButtons categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIToolbarButtons categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIToolbarButtons categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IToolbarButtons!private! !
!ExcelIToolbarButtons categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IToolbarButtons!private! !
!ExcelIToolbarButtons categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IToolbarButtons!private! !
!ExcelIToolbarButtons categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IToolbarButtons!private! !
!ExcelIToolbarButtons categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IToolbarButtons!private! !
!ExcelIToolbarButtons categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IToolbarButtons!private! !
!ExcelIToolbarButtons categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IToolbarButtons!private! !
!ExcelIToolbarButtons categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIToolbarButtons categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIToolbarButtons categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIToolbarButtons class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IToolbarButtons'
		ExcelIToolbarButtons defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:before:onAction:pushed:enabled:statusBar:helpFile:helpContextID:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant ExcelToolbarButton**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'sdword ExcelToolbarButton**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'sdword ExcelToolbarButton**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIToolbarButtons initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIToolbarButtons class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIToolbarButtons class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

