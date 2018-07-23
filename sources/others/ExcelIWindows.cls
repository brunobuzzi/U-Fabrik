"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIWindows
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIWindows guid: (IID fromString: '{00020892-0001-0000-C000-000000000046}')!
ExcelIWindows comment: '<ExcelIWindows> is a wrapper class for the COM interface ''Excel.IWindows'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020892-0001-0000-C000-000000000046), 
	helpcontext(0x00020052), 
	hidden
]
interface IWindows : IDispatch
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
	[id(0x0000027e), helpcontext(0x0001027e)]
	HRESULT __stdcall Arrange(
		[in, defaultvalue(1)]XlArrangeStyle ArrangeStyle,
		[in, optional]VARIANT ActiveWorkbook,
		[in, optional]VARIANT SyncHorizontal,
		[in, optional]VARIANT SyncVertical,
		[out, retval]VARIANT* RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]Window** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]Window** RHS);
	[id(0x000008c6), helpcontext(0x000108c6)]
	HRESULT __stdcall CompareSideBySideWith(
		[in]VARIANT WindowName,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008c8), helpcontext(0x000108c8)]
	HRESULT __stdcall BreakSideBySide(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008c9), propget, helpcontext(0x000108c9)]
	HRESULT __stdcall SyncScrollingSideBySide(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008c9), propput, helpcontext(0x000108c9)]
	HRESULT __stdcall SyncScrollingSideBySide(
		[in]VARIANT_BOOL RHS);
	[id(0x000008ca), helpcontext(0x000108ca)]
	HRESULT __stdcall ResetPositionsSideBySide();
};
'!
!ExcelIWindows categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIWindows methodsFor!

_default: index
	"Answer the <ExcelWindow> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelWindow newPointer.
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

arrange
	"Answer the <VARIANT> result of invoking the Arrange() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 arrange: 1
		 activeWorkbook: VARIANT unspecified
		 syncHorizontal: VARIANT unspecified
		 syncVertical: VARIANT unspecified!

arrange: arrangeStyle activeWorkbook: activeWorkbook syncHorizontal: syncHorizontal syncVertical: syncVertical
	"Answer the <VARIANT> result of invoking the Arrange() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Arrange: arrangeStyle
		activeWorkbook: activeWorkbook asVariant
		syncHorizontal: syncHorizontal asVariant
		syncVertical: syncVertical asVariant
		rhs: answer.
	^answer asObject
!

Arrange: arrangeStyle activeWorkbook: activeWorkbook syncHorizontal: syncHorizontal syncVertical: syncVertical rhs: rhs
	"Private - Invoke the Arrange() method of the COM object.

		HRESULT __stdcall Arrange(
			[in, defaultvalue(1)]XlArrangeStyle ArrangeStyle,
			[in, optional]VARIANT ActiveWorkbook,
			[in, optional]VARIANT SyncHorizontal,
			[in, optional]VARIANT SyncVertical,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 sdword variant variant variant variant*>
	^self invalidCall!

breakSideBySide
	"Answer the <VARIANT_BOOL> result of invoking the BreakSideBySide() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self BreakSideBySide: answer.
	^answer asObject
!

BreakSideBySide: rhs
	"Private - Invoke the BreakSideBySide() method of the COM object.

		HRESULT __stdcall BreakSideBySide(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

compareSideBySideWith: windowName
	"Answer the <VARIANT_BOOL> result of invoking the CompareSideBySideWith() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		CompareSideBySideWith: windowName asVariant
		rhs: answer.
	^answer asObject
!

CompareSideBySideWith: windowName rhs: rhs
	"Private - Invoke the CompareSideBySideWith() method of the COM object.

		HRESULT __stdcall CompareSideBySideWith(
			[in]VARIANT WindowName,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 16 variant varbool*>
	^self invalidCall!

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
			[out, retval]Window** RHS);"

	<virtual stdcall: hresult 15 variant ExcelWindow**>
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
			[in]VARIANT Index,
			[out, retval]Window** RHS);"

	<virtual stdcall: hresult 13 variant ExcelWindow**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_SyncScrollingSideBySide: rhs
	"Private - Get the value of the 'SyncScrollingSideBySide' property of the receiver.

		HRESULT __stdcall SyncScrollingSideBySide(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 18 varbool*>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelWindow> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelWindow newPointer.
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

put_SyncScrollingSideBySide: rhs
	"Private - Set the value of the 'SyncScrollingSideBySide' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SyncScrollingSideBySide(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 19 varbool>
	^self invalidCall!

resetPositionsSideBySide
	"Invoke the ResetPositionsSideBySide() method of the COM object."

	^self ResetPositionsSideBySide
!

ResetPositionsSideBySide
	"Private - Invoke the ResetPositionsSideBySide() method of the COM object.

		HRESULT __stdcall ResetPositionsSideBySide();"

	<virtual stdcall: hresult 20>
	^self invalidCall!

syncScrollingSideBySide
	"Answer the <varbool> value of the 'SyncScrollingSideBySide' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_SyncScrollingSideBySide: answer.
	^answer asObject
!

syncScrollingSideBySide: rhs
	"Set the 'SyncScrollingSideBySide' property of the receiver to the <varbool> value of the argument."

	self put_SyncScrollingSideBySide: rhs
! !
!ExcelIWindows categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIWindows categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIWindows categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIWindows categoriesFor: #arrange!**auto generated**!methods!public! !
!ExcelIWindows categoriesFor: #arrange:activeWorkbook:syncHorizontal:syncVertical:!**auto generated**!methods!public! !
!ExcelIWindows categoriesFor: #Arrange:activeWorkbook:syncHorizontal:syncVertical:rhs:!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #breakSideBySide!**auto generated**!methods!public! !
!ExcelIWindows categoriesFor: #BreakSideBySide:!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #compareSideBySideWith:!**auto generated**!methods!public! !
!ExcelIWindows categoriesFor: #CompareSideBySideWith:rhs:!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIWindows categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIWindows categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #get_SyncScrollingSideBySide:!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIWindows categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIWindows categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIWindows categoriesFor: #put_SyncScrollingSideBySide:!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #resetPositionsSideBySide!**auto generated**!methods!public! !
!ExcelIWindows categoriesFor: #ResetPositionsSideBySide!**auto generated**!COM Interfaces-IWindows!private! !
!ExcelIWindows categoriesFor: #syncScrollingSideBySide!**auto generated**!properties!public! !
!ExcelIWindows categoriesFor: #syncScrollingSideBySide:!**auto generated**!properties!public! !

!ExcelIWindows class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IWindows'
		ExcelIWindows defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Arrange:activeWorkbook:syncHorizontal:syncVertical:rhs:
			argumentTypes: 'sdword variant variant variant variant*';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelWindow**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelWindow**';
		defineFunction: #CompareSideBySideWith:rhs:
			argumentTypes: 'variant varbool*';
		defineFunction: #BreakSideBySide:
			argumentTypes: 'varbool*';
		defineFunction: #get_SyncScrollingSideBySide:
			argumentTypes: 'varbool*';
		defineFunction: #put_SyncScrollingSideBySide:
			argumentTypes: 'varbool';
		defineFunction: #ResetPositionsSideBySide
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIWindows initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIWindows class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIWindows class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

