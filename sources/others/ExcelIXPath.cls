"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIXPath
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIXPath guid: (IID fromString: '{0002447E-0001-0000-C000-000000000046}')!
ExcelIXPath comment: '<ExcelIXPath> is a wrapper class for the COM interface ''Excel.IXPath'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002447E-0001-0000-C000-000000000046), 
	helpcontext(0x00020114), 
	hidden
]
interface IXPath : IDispatch
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
		[out, retval]BSTR* RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]BSTR* RHS);
	[id(0x000008d6), propget, helpcontext(0x000108d6)]
	HRESULT __stdcall Map(
		[out, retval]XmlMap** RHS);
	[id(0x00000936), helpcontext(0x00010936)]
	HRESULT __stdcall SetValue(
		[in]XmlMap* Map,
		[in]BSTR XPath,
		[in, optional]VARIANT SelectionNamespace,
		[in, optional]VARIANT Repeating);
	[id(0x0000006f), helpcontext(0x0001006f)]
	HRESULT __stdcall Clear();
	[id(0x00000938), propget, helpcontext(0x00010938)]
	HRESULT __stdcall Repeating(
		[out, retval]VARIANT_BOOL* RHS);
};
'!
!ExcelIXPath categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIXPath methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

clear
	"Invoke the Clear() method of the COM object."

	^self Clear
!

Clear
	"Private - Invoke the Clear() method of the COM object.

		HRESULT __stdcall Clear();"

	<virtual stdcall: hresult 15>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
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

get_Map: rhs
	"Private - Get the value of the 'Map' property of the receiver.

		HRESULT __stdcall Map(
			[out, retval]XmlMap** RHS);"

	<virtual stdcall: hresult 13 ExcelXmlMap**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Repeating: rhs
	"Private - Get the value of the 'Repeating' property of the receiver.

		HRESULT __stdcall Repeating(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 16 varbool*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

map
	"Answer the <ExcelXmlMap> value of the 'Map' property of the receiver."

	| answer |
	answer := ExcelXmlMap newPointer.
	self get_Map: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

repeating
	"Answer the <varbool> value of the 'Repeating' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Repeating: answer.
	^answer asObject
!

setValue: map xPath: xPath
	"Invoke the SetValue() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 setValue: map
		 xPath: xPath
		 selectionNamespace: VARIANT unspecified
		 repeating: VARIANT unspecified!

setValue: map xPath: xPath selectionNamespace: selectionNamespace repeating: repeating
	"Invoke the SetValue() method of the COM object."

	^self
		SetValue: map
		xPath: xPath
		selectionNamespace: selectionNamespace asVariant
		repeating: repeating asVariant
!

SetValue: map xPath: xPath selectionNamespace: selectionNamespace repeating: repeating
	"Private - Invoke the SetValue() method of the COM object.

		HRESULT __stdcall SetValue(
			[in]XmlMap* Map,
			[in]BSTR XPath,
			[in, optional]VARIANT SelectionNamespace,
			[in, optional]VARIANT Repeating);"

	<virtual stdcall: hresult 14 ExcelXmlMap* bstr variant variant>
	^self invalidCall!

value
	"Answer the <bstr> value of the 'Value' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Value: answer.
	^answer asObject
! !
!ExcelIXPath categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIXPath categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIXPath categoriesFor: #clear!**auto generated**!methods!public! !
!ExcelIXPath categoriesFor: #Clear!**auto generated**!COM Interfaces-IXPath!private! !
!ExcelIXPath categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIXPath categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IXPath!private! !
!ExcelIXPath categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IXPath!private! !
!ExcelIXPath categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IXPath!private! !
!ExcelIXPath categoriesFor: #get_Map:!**auto generated**!COM Interfaces-IXPath!private! !
!ExcelIXPath categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IXPath!private! !
!ExcelIXPath categoriesFor: #get_Repeating:!**auto generated**!COM Interfaces-IXPath!private! !
!ExcelIXPath categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IXPath!private! !
!ExcelIXPath categoriesFor: #map!**auto generated**!properties!public! !
!ExcelIXPath categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIXPath categoriesFor: #repeating!**auto generated**!properties!public! !
!ExcelIXPath categoriesFor: #setValue:xPath:!**auto generated**!methods!public! !
!ExcelIXPath categoriesFor: #setValue:xPath:selectionNamespace:repeating:!**auto generated**!methods!public! !
!ExcelIXPath categoriesFor: #SetValue:xPath:selectionNamespace:repeating:!**auto generated**!COM Interfaces-IXPath!private! !
!ExcelIXPath categoriesFor: #value!**auto generated**!properties!public! !

!ExcelIXPath class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IXPath'
		ExcelIXPath defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #get_Value:
			argumentTypes: 'bstr*';
		defineFunction: #get_Map:
			argumentTypes: 'ExcelXmlMap**';
		defineFunction: #SetValue:xPath:selectionNamespace:repeating:
			argumentTypes: 'ExcelXmlMap* bstr variant variant';
		defineFunction: #Clear;
		defineFunction: #get_Repeating:
			argumentTypes: 'varbool*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIXPath initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIXPath class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIXPath class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

