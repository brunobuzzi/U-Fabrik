"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIXmlNamespaces
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIXmlNamespaces guid: (IID fromString: '{00024477-0001-0000-C000-000000000046}')!
ExcelIXmlNamespaces comment: '<ExcelIXmlNamespaces> is a wrapper class for the COM interface ''Excel.IXmlNamespaces'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024477-0001-0000-C000-000000000046), 
	helpcontext(0x0002010d), 
	hidden
]
interface IXmlNamespaces : IDispatch
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
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]XmlNamespace** RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]XmlNamespace** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]BSTR* RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x00000917), helpcontext(0x00010917)]
	HRESULT __stdcall InstallManifest(
		[in]BSTR Path,
		[in, optional]VARIANT InstallForAllUsers);
};
'!
!ExcelIXmlNamespaces categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIXmlNamespaces methodsFor!

_default: index
	"Answer the <ExcelXmlNamespace> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelXmlNamespace newPointer.
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
			[out, retval]XmlNamespace** RHS);"

	<virtual stdcall: hresult 11 variant ExcelXmlNamespace**>
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
			[out, retval]XmlNamespace** RHS);"

	<virtual stdcall: hresult 12 variant ExcelXmlNamespace**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

installManifest: path
	"Invoke the InstallManifest() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 installManifest: path
		 installForAllUsers: VARIANT unspecified!

installManifest: path installForAllUsers: installForAllUsers
	"Invoke the InstallManifest() method of the COM object."

	^self
		InstallManifest: path
		installForAllUsers: installForAllUsers asVariant
!

InstallManifest: path installForAllUsers: installForAllUsers
	"Private - Invoke the InstallManifest() method of the COM object.

		HRESULT __stdcall InstallManifest(
			[in]BSTR Path,
			[in, optional]VARIANT InstallForAllUsers);"

	<virtual stdcall: hresult 16 bstr variant>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelXmlNamespace> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelXmlNamespace newPointer.
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
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Value: answer.
	^answer asObject
! !
!ExcelIXmlNamespaces categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIXmlNamespaces categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIXmlNamespaces categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIXmlNamespaces categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIXmlNamespaces categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIXmlNamespaces categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IXmlNamespaces!private! !
!ExcelIXmlNamespaces categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IXmlNamespaces!private! !
!ExcelIXmlNamespaces categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IXmlNamespaces!private! !
!ExcelIXmlNamespaces categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IXmlNamespaces!private! !
!ExcelIXmlNamespaces categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IXmlNamespaces!private! !
!ExcelIXmlNamespaces categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IXmlNamespaces!private! !
!ExcelIXmlNamespaces categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IXmlNamespaces!private! !
!ExcelIXmlNamespaces categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IXmlNamespaces!private! !
!ExcelIXmlNamespaces categoriesFor: #installManifest:!**auto generated**!methods!public! !
!ExcelIXmlNamespaces categoriesFor: #installManifest:installForAllUsers:!**auto generated**!methods!public! !
!ExcelIXmlNamespaces categoriesFor: #InstallManifest:installForAllUsers:!**auto generated**!COM Interfaces-IXmlNamespaces!private! !
!ExcelIXmlNamespaces categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIXmlNamespaces categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIXmlNamespaces categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIXmlNamespaces categoriesFor: #value!**auto generated**!properties!public! !

!ExcelIXmlNamespaces class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IXmlNamespaces'
		ExcelIXmlNamespaces defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelXmlNamespace**';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelXmlNamespace**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Value:
			argumentTypes: 'bstr*';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #InstallManifest:installForAllUsers:
			argumentTypes: 'bstr variant'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIXmlNamespaces initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIXmlNamespaces class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIXmlNamespaces class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

