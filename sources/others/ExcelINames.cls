"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelINames
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelINames guid: (IID fromString: '{000208B8-0001-0000-C000-000000000046}')!
ExcelINames comment: '<ExcelINames> is a wrapper class for the COM interface ''Excel.INames'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208B8-0001-0000-C000-000000000046), 
	helpcontext(0x00020078), 
	hidden
]
interface INames : IDispatch
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
		[in, optional]VARIANT Name,
		[in, optional]VARIANT RefersTo,
		[in, optional]VARIANT Visible,
		[in, optional]VARIANT MacroType,
		[in, optional]VARIANT ShortcutKey,
		[in, optional]VARIANT Category,
		[in, optional]VARIANT NameLocal,
		[in, optional]VARIANT RefersToLocal,
		[in, optional]VARIANT CategoryLocal,
		[in, optional]VARIANT RefersToR1C1,
		[in, optional]VARIANT RefersToR1C1Local,
		[out, retval]Name** RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in, optional]VARIANT Index,
		[in, optional]VARIANT IndexLocal,
		[in, optional]VARIANT RefersTo,
		[in]long lcid,
		[out, retval]Name** RHS);
	[id(0000000000), helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in, optional]VARIANT Index,
		[in, optional]VARIANT IndexLocal,
		[in, optional]VARIANT RefersTo,
		[in]long lcid,
		[out, retval]Name** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelINames categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelINames methodsFor!

_default: lcid
	"Answer the <ExcelName> result of invoking the _Default() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _default: VARIANT unspecified
		 indexLocal: VARIANT unspecified
		 refersTo: VARIANT unspecified
		 lcid: lcid!

_default: index indexLocal: indexLocal refersTo: refersTo lcid: lcid
	"Answer the <ExcelName> result of invoking the _Default() method of the COM object."

	| answer |
	answer := ExcelName newPointer.
	self
		_Default: index asVariant
		indexLocal: indexLocal asVariant
		refersTo: refersTo asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

_Default: index indexLocal: indexLocal refersTo: refersTo lcid: lcid rhs: rhs
	"Private - Invoke the _Default() method of the COM object.

		HRESULT __stdcall _Default(
			[in, optional]VARIANT Index,
			[in, optional]VARIANT IndexLocal,
			[in, optional]VARIANT RefersTo,
			[in]long lcid,
			[out, retval]Name** RHS);"

	<virtual stdcall: hresult 13 variant variant variant sdword ExcelName**>
	^self invalidCall!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

add
	"Answer the <ExcelName> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: VARIANT unspecified
		 refersTo: VARIANT unspecified
		 visible: VARIANT unspecified
		 macroType: VARIANT unspecified
		 shortcutKey: VARIANT unspecified
		 category: VARIANT unspecified
		 nameLocal: VARIANT unspecified
		 refersToLocal: VARIANT unspecified
		 categoryLocal: VARIANT unspecified
		 refersToR1C1: VARIANT unspecified
		 refersToR1C1Local: VARIANT unspecified!

add: name refersTo: refersTo visible: visible macroType: macroType shortcutKey: shortcutKey category: category nameLocal: nameLocal refersToLocal: refersToLocal categoryLocal: categoryLocal refersToR1C1: refersToR1C1 refersToR1C1Local: refersToR1C1Local
	"Answer the <ExcelName> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelName newPointer.
	self
		Add: name asVariant
		refersTo: refersTo asVariant
		visible: visible asVariant
		macroType: macroType asVariant
		shortcutKey: shortcutKey asVariant
		category: category asVariant
		nameLocal: nameLocal asVariant
		refersToLocal: refersToLocal asVariant
		categoryLocal: categoryLocal asVariant
		refersToR1C1: refersToR1C1 asVariant
		refersToR1C1Local: refersToR1C1Local asVariant
		rhs: answer.
	^answer asObject
!

Add: name refersTo: refersTo visible: visible macroType: macroType shortcutKey: shortcutKey category: category nameLocal: nameLocal refersToLocal: refersToLocal categoryLocal: categoryLocal refersToR1C1: refersToR1C1 refersToR1C1Local: refersToR1C1Local rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in, optional]VARIANT Name,
			[in, optional]VARIANT RefersTo,
			[in, optional]VARIANT Visible,
			[in, optional]VARIANT MacroType,
			[in, optional]VARIANT ShortcutKey,
			[in, optional]VARIANT Category,
			[in, optional]VARIANT NameLocal,
			[in, optional]VARIANT RefersToLocal,
			[in, optional]VARIANT CategoryLocal,
			[in, optional]VARIANT RefersToR1C1,
			[in, optional]VARIANT RefersToR1C1Local,
			[out, retval]Name** RHS);"

	<virtual stdcall: hresult 11 variant variant variant variant variant variant variant variant variant variant variant ExcelName**>
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

	<virtual stdcall: hresult 14 sdword*>
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

item: lcid
	"Answer the <ExcelName> result of invoking the Item() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 item: VARIANT unspecified
		 indexLocal: VARIANT unspecified
		 refersTo: VARIANT unspecified
		 lcid: lcid!

item: index indexLocal: indexLocal refersTo: refersTo lcid: lcid
	"Answer the <ExcelName> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelName newPointer.
	self
		Item: index asVariant
		indexLocal: indexLocal asVariant
		refersTo: refersTo asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Item: index indexLocal: indexLocal refersTo: refersTo lcid: lcid rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in, optional]VARIANT Index,
			[in, optional]VARIANT IndexLocal,
			[in, optional]VARIANT RefersTo,
			[in]long lcid,
			[out, retval]Name** RHS);"

	<virtual stdcall: hresult 12 variant variant variant sdword ExcelName**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelINames categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelINames categoriesFor: #_default:indexLocal:refersTo:lcid:!**auto generated**!methods!public! !
!ExcelINames categoriesFor: #_Default:indexLocal:refersTo:lcid:rhs:!**auto generated**!COM Interfaces-INames!private! !
!ExcelINames categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelINames categoriesFor: #add!**auto generated**!methods!public! !
!ExcelINames categoriesFor: #add:refersTo:visible:macroType:shortcutKey:category:nameLocal:refersToLocal:categoryLocal:refersToR1C1:refersToR1C1Local:!**auto generated**!methods!public! !
!ExcelINames categoriesFor: #Add:refersTo:visible:macroType:shortcutKey:category:nameLocal:refersToLocal:categoryLocal:refersToR1C1:refersToR1C1Local:rhs:!**auto generated**!COM Interfaces-INames!private! !
!ExcelINames categoriesFor: #application!**auto generated**!properties!public! !
!ExcelINames categoriesFor: #count!**auto generated**!properties!public! !
!ExcelINames categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelINames categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-INames!private! !
!ExcelINames categoriesFor: #get_Application:!**auto generated**!COM Interfaces-INames!private! !
!ExcelINames categoriesFor: #get_Count:!**auto generated**!COM Interfaces-INames!private! !
!ExcelINames categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-INames!private! !
!ExcelINames categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-INames!private! !
!ExcelINames categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelINames categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelINames categoriesFor: #item:indexLocal:refersTo:lcid:!**auto generated**!methods!public! !
!ExcelINames categoriesFor: #Item:indexLocal:refersTo:lcid:rhs:!**auto generated**!COM Interfaces-INames!private! !
!ExcelINames categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelINames class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.INames'
		ExcelINames defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:refersTo:visible:macroType:shortcutKey:category:nameLocal:refersToLocal:categoryLocal:refersToR1C1:refersToR1C1Local:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant ExcelName**';
		defineFunction: #Item:indexLocal:refersTo:lcid:rhs:
			argumentTypes: 'variant variant variant sdword ExcelName**';
		defineFunction: #_Default:indexLocal:refersTo:lcid:rhs:
			argumentTypes: 'variant variant variant sdword ExcelName**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelINames initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelINames class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelINames class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

