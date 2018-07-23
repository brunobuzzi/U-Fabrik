"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPublishObjects
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPublishObjects guid: (IID fromString: '{00024443-0001-0000-C000-000000000046}')!
ExcelIPublishObjects comment: '<ExcelIPublishObjects> is a wrapper class for the COM interface ''Excel.IPublishObjects'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024443-0001-0000-C000-000000000046), 
	helpcontext(0x000200d9), 
	hidden
]
interface IPublishObjects : IDispatch
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
		[in]XlSourceType SourceType,
		[in]BSTR Filename,
		[in, optional]VARIANT Sheet,
		[in, optional]VARIANT Source,
		[in, optional]VARIANT HtmlType,
		[in, optional]VARIANT DivID,
		[in, optional]VARIANT Title,
		[out, retval]PublishObject** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]PublishObject** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]PublishObject** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000767), helpcontext(0x00010767)]
	HRESULT __stdcall Publish();
};
'!
!ExcelIPublishObjects categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPublishObjects methodsFor!

_default: index
	"Answer the <ExcelPublishObject> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelPublishObject newPointer.
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

add: sourceType filename: filename
	"Answer the <ExcelPublishObject> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: sourceType
		 filename: filename
		 sheet: VARIANT unspecified
		 source: VARIANT unspecified
		 htmlType: VARIANT unspecified
		 divID: VARIANT unspecified
		 title: VARIANT unspecified!

add: sourceType filename: filename sheet: sheet source: source htmlType: htmlType divID: divID title: title
	"Answer the <ExcelPublishObject> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelPublishObject newPointer.
	self
		Add: sourceType
		filename: filename
		sheet: sheet asVariant
		source: source asVariant
		htmlType: htmlType asVariant
		divID: divID asVariant
		title: title asVariant
		rhs: answer.
	^answer asObject
!

Add: sourceType filename: filename sheet: sheet source: source htmlType: htmlType divID: divID title: title rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]XlSourceType SourceType,
			[in]BSTR Filename,
			[in, optional]VARIANT Sheet,
			[in, optional]VARIANT Source,
			[in, optional]VARIANT HtmlType,
			[in, optional]VARIANT DivID,
			[in, optional]VARIANT Title,
			[out, retval]PublishObject** RHS);"

	<virtual stdcall: hresult 11 sdword bstr variant variant variant variant variant ExcelPublishObject**>
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
			[out, retval]PublishObject** RHS);"

	<virtual stdcall: hresult 14 variant ExcelPublishObject**>
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
			[in]VARIANT Index,
			[out, retval]PublishObject** RHS);"

	<virtual stdcall: hresult 13 variant ExcelPublishObject**>
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
	"Answer the <ExcelPublishObject> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelPublishObject newPointer.
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

publish
	"Invoke the Publish() method of the COM object."

	^self Publish
!

Publish
	"Private - Invoke the Publish() method of the COM object.

		HRESULT __stdcall Publish();"

	<virtual stdcall: hresult 17>
	^self invalidCall! !
!ExcelIPublishObjects categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIPublishObjects categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIPublishObjects categoriesFor: #add:filename:!**auto generated**!methods!public! !
!ExcelIPublishObjects categoriesFor: #add:filename:sheet:source:htmlType:divID:title:!**auto generated**!methods!public! !
!ExcelIPublishObjects categoriesFor: #Add:filename:sheet:source:htmlType:divID:title:rhs:!**auto generated**!COM Interfaces-IPublishObjects!private! !
!ExcelIPublishObjects categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPublishObjects categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIPublishObjects categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPublishObjects categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIPublishObjects categoriesFor: #Delete!**auto generated**!COM Interfaces-IPublishObjects!private! !
!ExcelIPublishObjects categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IPublishObjects!private! !
!ExcelIPublishObjects categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IPublishObjects!private! !
!ExcelIPublishObjects categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPublishObjects!private! !
!ExcelIPublishObjects categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IPublishObjects!private! !
!ExcelIPublishObjects categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPublishObjects!private! !
!ExcelIPublishObjects categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IPublishObjects!private! !
!ExcelIPublishObjects categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPublishObjects!private! !
!ExcelIPublishObjects categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIPublishObjects categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIPublishObjects categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPublishObjects categoriesFor: #publish!**auto generated**!methods!public! !
!ExcelIPublishObjects categoriesFor: #Publish!**auto generated**!COM Interfaces-IPublishObjects!private! !

!ExcelIPublishObjects class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPublishObjects'
		ExcelIPublishObjects defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:filename:sheet:source:htmlType:divID:title:rhs:
			argumentTypes: 'sdword bstr variant variant variant variant variant ExcelPublishObject**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelPublishObject**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelPublishObject**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #Delete;
		defineFunction: #Publish
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPublishObjects initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPublishObjects class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPublishObjects class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

