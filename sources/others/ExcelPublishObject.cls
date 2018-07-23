"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPublishObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPublishObject guid: (IID fromString: '{00024444-0000-0000-C000-000000000046}')!
ExcelPublishObject comment: '<ExcelPublishObject> is a wrapper class for the COM interface ''Excel.PublishObject'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024444-0000-0000-C000-000000000046), 
	helpcontext(0x000200da), 
	nonextensible, 
	dual
]
interface PublishObject : IDispatch
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
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000767), helpcontext(0x00010767)]
	HRESULT __stdcall Publish(
		[in, optional]VARIANT Create);
	[id(0x00000766), propget, helpcontext(0x00010766)]
	HRESULT __stdcall DivID(
		[out, retval]BSTR* RHS);
	[id(0x000002ef), propget, helpcontext(0x000102ef)]
	HRESULT __stdcall Sheet(
		[out, retval]BSTR* RHS);
	[id(0x000002ad), propget, helpcontext(0x000102ad)]
	HRESULT __stdcall SourceType(
		[out, retval]XlSourceType* RHS);
	[id(0x000000de), propget, helpcontext(0x000100de)]
	HRESULT __stdcall Source(
		[out, retval]BSTR* RHS);
	[id(0x00000765), propget, helpcontext(0x00010765)]
	HRESULT __stdcall HtmlType(
		[out, retval]XlHtmlType* RHS);
	[id(0x00000765), propput, helpcontext(0x00010765)]
	HRESULT __stdcall HtmlType(
		[in]XlHtmlType RHS);
	[id(0x000000c7), propget, helpcontext(0x000100c7)]
	HRESULT __stdcall Title(
		[out, retval]BSTR* RHS);
	[id(0x000000c7), propput, helpcontext(0x000100c7)]
	HRESULT __stdcall Title(
		[in]BSTR RHS);
	[id(0x00000587), propget, helpcontext(0x00010587)]
	HRESULT __stdcall Filename(
		[out, retval]BSTR* RHS);
	[id(0x00000587), propput, helpcontext(0x00010587)]
	HRESULT __stdcall Filename(
		[in]BSTR RHS);
	[id(0x00000882), propget, helpcontext(0x00010882)]
	HRESULT __stdcall AutoRepublish(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000882), propput, helpcontext(0x00010882)]
	HRESULT __stdcall AutoRepublish(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelPublishObject categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelPublishObject methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

autoRepublish
	"Answer the <varbool> value of the 'AutoRepublish' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoRepublish: answer.
	^answer asObject
!

autoRepublish: rhs
	"Set the 'AutoRepublish' property of the receiver to the <varbool> value of the argument."

	self put_AutoRepublish: rhs
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

	<virtual stdcall: hresult 11>
	^self invalidCall!

divID
	"Answer the <bstr> value of the 'DivID' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_DivID: answer.
	^answer asObject
!

filename
	"Answer the <bstr> value of the 'Filename' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Filename: answer.
	^answer asObject
!

filename: rhs
	"Set the 'Filename' property of the receiver to the <bstr> value of the argument."

	self put_Filename: rhs
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AutoRepublish: rhs
	"Private - Get the value of the 'AutoRepublish' property of the receiver.

		HRESULT __stdcall AutoRepublish(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 23 varbool*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DivID: rhs
	"Private - Get the value of the 'DivID' property of the receiver.

		HRESULT __stdcall DivID(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_Filename: rhs
	"Private - Get the value of the 'Filename' property of the receiver.

		HRESULT __stdcall Filename(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 21 bstr*>
	^self invalidCall!

get_HtmlType: rhs
	"Private - Get the value of the 'HtmlType' property of the receiver.

		HRESULT __stdcall HtmlType(
			[out, retval]XlHtmlType* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Sheet: rhs
	"Private - Get the value of the 'Sheet' property of the receiver.

		HRESULT __stdcall Sheet(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

get_Source: rhs
	"Private - Get the value of the 'Source' property of the receiver.

		HRESULT __stdcall Source(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 16 bstr*>
	^self invalidCall!

get_SourceType: rhs
	"Private - Get the value of the 'SourceType' property of the receiver.

		HRESULT __stdcall SourceType(
			[out, retval]XlSourceType* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Title: rhs
	"Private - Get the value of the 'Title' property of the receiver.

		HRESULT __stdcall Title(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 19 bstr*>
	^self invalidCall!

htmlType
	"Answer the <sdword> value of the 'HtmlType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HtmlType: answer.
	^answer asObject
!

htmlType: rhs
	"Set the 'HtmlType' property of the receiver to the <sdword> value of the argument."

	self put_HtmlType: rhs
!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

publish
	"Invoke the Publish() method of the COM object.
	Default values are passed for all optional parameters."

	^self publish: VARIANT unspecified!

publish: create
	"Invoke the Publish() method of the COM object."

	^self Publish: create asVariant
!

Publish: create
	"Private - Invoke the Publish() method of the COM object.

		HRESULT __stdcall Publish(
			[in, optional]VARIANT Create);"

	<virtual stdcall: hresult 12 variant>
	^self invalidCall!

put_AutoRepublish: rhs
	"Private - Set the value of the 'AutoRepublish' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoRepublish(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 24 varbool>
	^self invalidCall!

put_Filename: rhs
	"Private - Set the value of the 'Filename' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Filename(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 22 bstr>
	^self invalidCall!

put_HtmlType: rhs
	"Private - Set the value of the 'HtmlType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall HtmlType(
			[in]XlHtmlType RHS);"

	<virtual stdcall: hresult 18 sdword>
	^self invalidCall!

put_Title: rhs
	"Private - Set the value of the 'Title' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Title(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 20 bstr>
	^self invalidCall!

sheet
	"Answer the <bstr> value of the 'Sheet' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Sheet: answer.
	^answer asObject
!

source
	"Answer the <bstr> value of the 'Source' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Source: answer.
	^answer asObject
!

sourceType
	"Answer the <sdword> value of the 'SourceType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SourceType: answer.
	^answer asObject
!

title
	"Answer the <bstr> value of the 'Title' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Title: answer.
	^answer asObject
!

title: rhs
	"Set the 'Title' property of the receiver to the <bstr> value of the argument."

	self put_Title: rhs
! !
!ExcelPublishObject categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #autoRepublish!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #autoRepublish:!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelPublishObject categoriesFor: #Delete!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #divID!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #filename!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #filename:!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #get_Application:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #get_AutoRepublish:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #get_DivID:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #get_Filename:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #get_HtmlType:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #get_Sheet:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #get_Source:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #get_SourceType:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #get_Title:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #htmlType!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #htmlType:!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelPublishObject categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPublishObject categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #publish!**auto generated**!methods!public! !
!ExcelPublishObject categoriesFor: #publish:!**auto generated**!methods!public! !
!ExcelPublishObject categoriesFor: #Publish:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #put_AutoRepublish:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #put_Filename:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #put_HtmlType:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #put_Title:!**auto generated**!COM Interfaces-PublishObject!private! !
!ExcelPublishObject categoriesFor: #sheet!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #source!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #sourceType!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #title!**auto generated**!properties!public! !
!ExcelPublishObject categoriesFor: #title:!**auto generated**!properties!public! !

!ExcelPublishObject class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.PublishObject'
		ExcelPublishObject defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Delete;
		defineFunction: #Publish:
			argumentTypes: 'variant';
		defineFunction: #get_DivID:
			argumentTypes: 'bstr*';
		defineFunction: #get_Sheet:
			argumentTypes: 'bstr*';
		defineFunction: #get_SourceType:
			argumentTypes: 'sdword*';
		defineFunction: #get_Source:
			argumentTypes: 'bstr*';
		defineFunction: #get_HtmlType:
			argumentTypes: 'sdword*';
		defineFunction: #put_HtmlType:
			argumentTypes: 'sdword';
		defineFunction: #get_Title:
			argumentTypes: 'bstr*';
		defineFunction: #put_Title:
			argumentTypes: 'bstr';
		defineFunction: #get_Filename:
			argumentTypes: 'bstr*';
		defineFunction: #put_Filename:
			argumentTypes: 'bstr';
		defineFunction: #get_AutoRepublish:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoRepublish:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPublishObject initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPublishObject class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelPublishObject class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

