"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISmartTagOptions
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISmartTagOptions guid: (IID fromString: '{00024464-0001-0000-C000-000000000046}')!
ExcelISmartTagOptions comment: '<ExcelISmartTagOptions> is a wrapper class for the COM interface ''Excel.ISmartTagOptions'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024464-0001-0000-C000-000000000046), 
	helpcontext(0x000200fa), 
	hidden
]
interface ISmartTagOptions : IDispatch
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
	[id(0x000008aa), propget, helpcontext(0x000108aa)]
	HRESULT __stdcall DisplaySmartTags(
		[out, retval]XlSmartTagDisplayMode* RHS);
	[id(0x000008aa), propput, helpcontext(0x000108aa)]
	HRESULT __stdcall DisplaySmartTags(
		[in]XlSmartTagDisplayMode RHS);
	[id(0x000008ab), propget, helpcontext(0x000108ab)]
	HRESULT __stdcall EmbedSmartTags(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008ab), propput, helpcontext(0x000108ab)]
	HRESULT __stdcall EmbedSmartTags(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelISmartTagOptions categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISmartTagOptions methodsFor!

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

displaySmartTags
	"Answer the <sdword> value of the 'DisplaySmartTags' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DisplaySmartTags: answer.
	^answer asObject
!

displaySmartTags: rhs
	"Set the 'DisplaySmartTags' property of the receiver to the <sdword> value of the argument."

	self put_DisplaySmartTags: rhs
!

embedSmartTags
	"Answer the <varbool> value of the 'EmbedSmartTags' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EmbedSmartTags: answer.
	^answer asObject
!

embedSmartTags: rhs
	"Set the 'EmbedSmartTags' property of the receiver to the <varbool> value of the argument."

	self put_EmbedSmartTags: rhs
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

get_DisplaySmartTags: rhs
	"Private - Get the value of the 'DisplaySmartTags' property of the receiver.

		HRESULT __stdcall DisplaySmartTags(
			[out, retval]XlSmartTagDisplayMode* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_EmbedSmartTags: rhs
	"Private - Get the value of the 'EmbedSmartTags' property of the receiver.

		HRESULT __stdcall EmbedSmartTags(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
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
!

put_DisplaySmartTags: rhs
	"Private - Set the value of the 'DisplaySmartTags' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DisplaySmartTags(
			[in]XlSmartTagDisplayMode RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

put_EmbedSmartTags: rhs
	"Private - Set the value of the 'EmbedSmartTags' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EmbedSmartTags(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 14 varbool>
	^self invalidCall! !
!ExcelISmartTagOptions categoriesFor: #application!**auto generated**!properties!public! !
!ExcelISmartTagOptions categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelISmartTagOptions categoriesFor: #displaySmartTags!**auto generated**!properties!public! !
!ExcelISmartTagOptions categoriesFor: #displaySmartTags:!**auto generated**!properties!public! !
!ExcelISmartTagOptions categoriesFor: #embedSmartTags!**auto generated**!properties!public! !
!ExcelISmartTagOptions categoriesFor: #embedSmartTags:!**auto generated**!properties!public! !
!ExcelISmartTagOptions categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ISmartTagOptions!private! !
!ExcelISmartTagOptions categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ISmartTagOptions!private! !
!ExcelISmartTagOptions categoriesFor: #get_DisplaySmartTags:!**auto generated**!COM Interfaces-ISmartTagOptions!private! !
!ExcelISmartTagOptions categoriesFor: #get_EmbedSmartTags:!**auto generated**!COM Interfaces-ISmartTagOptions!private! !
!ExcelISmartTagOptions categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ISmartTagOptions!private! !
!ExcelISmartTagOptions categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelISmartTagOptions categoriesFor: #put_DisplaySmartTags:!**auto generated**!COM Interfaces-ISmartTagOptions!private! !
!ExcelISmartTagOptions categoriesFor: #put_EmbedSmartTags:!**auto generated**!COM Interfaces-ISmartTagOptions!private! !

!ExcelISmartTagOptions class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISmartTagOptions'
		ExcelISmartTagOptions defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_DisplaySmartTags:
			argumentTypes: 'sdword*';
		defineFunction: #put_DisplaySmartTags:
			argumentTypes: 'sdword';
		defineFunction: #get_EmbedSmartTags:
			argumentTypes: 'varbool*';
		defineFunction: #put_EmbedSmartTags:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISmartTagOptions initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISmartTagOptions class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISmartTagOptions class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

