"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelTreeviewControl
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelTreeviewControl guid: (IID fromString: '{0002444B-0000-0000-C000-000000000046}')!
ExcelTreeviewControl comment: '<ExcelTreeviewControl> is a wrapper class for the COM interface ''Excel.TreeviewControl'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002444B-0000-0000-C000-000000000046), 
	helpcontext(0x000200e1), 
	nonextensible, 
	dual
]
interface TreeviewControl : IDispatch
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
	[id(0x0000010c), propget, helpcontext(0x0001010c)]
	HRESULT __stdcall Hidden(
		[out, retval]VARIANT* RHS);
	[id(0x0000010c), propput, helpcontext(0x0001010c)]
	HRESULT __stdcall Hidden(
		[in]VARIANT RHS);
	[id(0x0000077d), propget, helpcontext(0x0001077d)]
	HRESULT __stdcall Drilled(
		[out, retval]VARIANT* RHS);
	[id(0x0000077d), propput, helpcontext(0x0001077d)]
	HRESULT __stdcall Drilled(
		[in]VARIANT RHS);
};
'!
!ExcelTreeviewControl categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelTreeviewControl methodsFor!

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

drilled
	"Answer the <variant> value of the 'Drilled' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Drilled: answer.
	^answer asObject
!

drilled: rhs
	"Set the 'Drilled' property of the receiver to the <variant> value of the argument."

	self put_Drilled: rhs asVariant
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

get_Drilled: rhs
	"Private - Get the value of the 'Drilled' property of the receiver.

		HRESULT __stdcall Drilled(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

get_Hidden: rhs
	"Private - Get the value of the 'Hidden' property of the receiver.

		HRESULT __stdcall Hidden(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 variant*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

hidden
	"Answer the <variant> value of the 'Hidden' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Hidden: answer.
	^answer asObject
!

hidden: rhs
	"Set the 'Hidden' property of the receiver to the <variant> value of the argument."

	self put_Hidden: rhs asVariant
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

put_Drilled: rhs
	"Private - Set the value of the 'Drilled' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Drilled(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 14 variant>
	^self invalidCall!

put_Hidden: rhs
	"Private - Set the value of the 'Hidden' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Hidden(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 12 variant>
	^self invalidCall! !
!ExcelTreeviewControl categoriesFor: #application!**auto generated**!properties!public! !
!ExcelTreeviewControl categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelTreeviewControl categoriesFor: #drilled!**auto generated**!properties!public! !
!ExcelTreeviewControl categoriesFor: #drilled:!**auto generated**!properties!public! !
!ExcelTreeviewControl categoriesFor: #get_Application:!**auto generated**!COM Interfaces-TreeviewControl!private! !
!ExcelTreeviewControl categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-TreeviewControl!private! !
!ExcelTreeviewControl categoriesFor: #get_Drilled:!**auto generated**!COM Interfaces-TreeviewControl!private! !
!ExcelTreeviewControl categoriesFor: #get_Hidden:!**auto generated**!COM Interfaces-TreeviewControl!private! !
!ExcelTreeviewControl categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-TreeviewControl!private! !
!ExcelTreeviewControl categoriesFor: #hidden!**auto generated**!properties!public! !
!ExcelTreeviewControl categoriesFor: #hidden:!**auto generated**!properties!public! !
!ExcelTreeviewControl categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelTreeviewControl categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelTreeviewControl categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelTreeviewControl categoriesFor: #put_Drilled:!**auto generated**!COM Interfaces-TreeviewControl!private! !
!ExcelTreeviewControl categoriesFor: #put_Hidden:!**auto generated**!COM Interfaces-TreeviewControl!private! !

!ExcelTreeviewControl class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.TreeviewControl'
		ExcelTreeviewControl defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Hidden:
			argumentTypes: 'variant*';
		defineFunction: #put_Hidden:
			argumentTypes: 'variant';
		defineFunction: #get_Drilled:
			argumentTypes: 'variant*';
		defineFunction: #put_Drilled:
			argumentTypes: 'variant'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelTreeviewControl initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelTreeviewControl class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelTreeviewControl class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

