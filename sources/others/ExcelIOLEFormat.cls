"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIOLEFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIOLEFormat guid: (IID fromString: '{00024441-0001-0000-C000-000000000046}')!
ExcelIOLEFormat comment: '<ExcelIOLEFormat> is a wrapper class for the COM interface ''Excel.IOLEFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024441-0001-0000-C000-000000000046), 
	helpcontext(0x000200d7), 
	hidden
]
interface IOLEFormat : IDispatch
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
	[id(0x00000130), helpcontext(0x00010130)]
	HRESULT __stdcall Activate();
	[id(0x00000419), propget, helpcontext(0x00010419)]
	HRESULT __stdcall Object(
		[out, retval]IDispatch** RHS);
	[id(0x000005f3), propget, helpcontext(0x000105f3)]
	HRESULT __stdcall progID(
		[out, retval]BSTR* RHS);
	[id(0x0000025e), helpcontext(0x0001025e)]
	HRESULT __stdcall Verb(
		[in, optional]VARIANT Verb);
};
'!
!ExcelIOLEFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIOLEFormat methodsFor!

activate
	"Invoke the Activate() method of the COM object."

	^self Activate
!

Activate
	"Private - Invoke the Activate() method of the COM object.

		HRESULT __stdcall Activate();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

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

get_Object: rhs
	"Private - Get the value of the 'Object' property of the receiver.

		HRESULT __stdcall Object(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 12 IDispatch**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_progID: rhs
	"Private - Get the value of the 'progID' property of the receiver.

		HRESULT __stdcall progID(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

object
	"Answer the <IDispatch> value of the 'Object' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Object: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

progID
	"Answer the <bstr> value of the 'progID' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_progID: answer.
	^answer asObject
!

verb
	"Invoke the Verb() method of the COM object.
	Default values are passed for all optional parameters."

	^self verb: VARIANT unspecified!

verb: verb
	"Invoke the Verb() method of the COM object."

	^self Verb: verb asVariant
!

Verb: verb
	"Private - Invoke the Verb() method of the COM object.

		HRESULT __stdcall Verb(
			[in, optional]VARIANT Verb);"

	<virtual stdcall: hresult 14 variant>
	^self invalidCall! !
!ExcelIOLEFormat categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelIOLEFormat categoriesFor: #Activate!**auto generated**!COM Interfaces-IOLEFormat!private! !
!ExcelIOLEFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIOLEFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIOLEFormat categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IOLEFormat!private! !
!ExcelIOLEFormat categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IOLEFormat!private! !
!ExcelIOLEFormat categoriesFor: #get_Object:!**auto generated**!COM Interfaces-IOLEFormat!private! !
!ExcelIOLEFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IOLEFormat!private! !
!ExcelIOLEFormat categoriesFor: #get_progID:!**auto generated**!COM Interfaces-IOLEFormat!private! !
!ExcelIOLEFormat categoriesFor: #object!**auto generated**!properties!public! !
!ExcelIOLEFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIOLEFormat categoriesFor: #progID!**auto generated**!properties!public! !
!ExcelIOLEFormat categoriesFor: #verb!**auto generated**!methods!public! !
!ExcelIOLEFormat categoriesFor: #verb:!**auto generated**!methods!public! !
!ExcelIOLEFormat categoriesFor: #Verb:!**auto generated**!COM Interfaces-IOLEFormat!private! !

!ExcelIOLEFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IOLEFormat'
		ExcelIOLEFormat defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Activate;
		defineFunction: #get_Object:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_progID:
			argumentTypes: 'bstr*';
		defineFunction: #Verb:
			argumentTypes: 'variant'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIOLEFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIOLEFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIOLEFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

