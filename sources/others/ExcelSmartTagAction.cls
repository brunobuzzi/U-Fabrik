"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSmartTagAction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSmartTagAction guid: (IID fromString: '{0002445E-0000-0000-C000-000000000046}')!
ExcelSmartTagAction comment: '<ExcelSmartTagAction> is a wrapper class generated for the dispatch interface ''Excel.SmartTagAction'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002445E-0000-0000-C000-000000000046), 
	helpcontext(0x000200f4)
]
dispinterface SmartTagAction {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x000008a3), helpcontext(0x000108a3)]
		void Execute();
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		XlSmartTagControlType Type();
[id(0x000008f9), propget, helpcontext(0x000108f9)]
		VARIANT_BOOL PresentInPane();
[id(0x000008fa), propget, helpcontext(0x000108fa)]
		VARIANT_BOOL ExpandHelp();
[id(0x000008fa), propput, helpcontext(0x000108fa)]
		void ExpandHelp(
			[in]VARIANT_BOOL arg1);
[id(0x000008fb), propget, helpcontext(0x000108fb)]
		VARIANT_BOOL CheckboxState();
[id(0x000008fb), propput, helpcontext(0x000108fb)]
		void CheckboxState(
			[in]VARIANT_BOOL arg1);
[id(0x000008fc), propget, helpcontext(0x000108fc)]
		BSTR TextboxText();
[id(0x000008fc), propput, helpcontext(0x000108fc)]
		void TextboxText(
			[in]BSTR arg1);
[id(0x000008fd), propget, helpcontext(0x000108fd)]
		long ListSelection();
[id(0x000008fd), propput, helpcontext(0x000108fd)]
		void ListSelection(
			[in]long arg1);
[id(0x000008fe), propget, helpcontext(0x000108fe)]
		long RadioGroupSelection();
[id(0x000008fe), propput, helpcontext(0x000108fe)]
		void RadioGroupSelection(
			[in]long arg1);
[id(0x000008ff), propget, helpcontext(0x000108ff)]
		IDispatch* ActiveXControl();
};
'!
!ExcelSmartTagAction categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSmartTagAction methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver.
		BSTR _Default"

	^(self getPropertyId: 0)
!

activeXControl
	"Answer the <IDispatch> value of the 'ActiveXControl' property of the receiver.
		IDispatch* ActiveXControl"

	^IDispatch attachInterface: (self getPropertyId: 2303)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

checkboxState
	"Answer the <varbool> value of the 'CheckboxState' property of the receiver.
		VARIANT_BOOL CheckboxState"

	^(self getPropertyId: 2299)
!

checkboxState: arg1
	"Set the 'CheckboxState' property of the receiver to the <varbool> value of the argument.
		void CheckboxState"

	self setPropertyId: 2299 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

execute
	"Invoke the Execute() method of the COM object."

	(self invokeId: 2211)
!

expandHelp
	"Answer the <varbool> value of the 'ExpandHelp' property of the receiver.
		VARIANT_BOOL ExpandHelp"

	^(self getPropertyId: 2298)
!

expandHelp: arg1
	"Set the 'ExpandHelp' property of the receiver to the <varbool> value of the argument.
		void ExpandHelp"

	self setPropertyId: 2298 value: arg1
!

listSelection
	"Answer the <sdword> value of the 'ListSelection' property of the receiver.
		long ListSelection"

	^(self getPropertyId: 2301)
!

listSelection: arg1
	"Set the 'ListSelection' property of the receiver to the <sdword> value of the argument.
		void ListSelection"

	self setPropertyId: 2301 value: arg1
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

presentInPane
	"Answer the <varbool> value of the 'PresentInPane' property of the receiver.
		VARIANT_BOOL PresentInPane"

	^(self getPropertyId: 2297)
!

radioGroupSelection
	"Answer the <sdword> value of the 'RadioGroupSelection' property of the receiver.
		long RadioGroupSelection"

	^(self getPropertyId: 2302)
!

radioGroupSelection: arg1
	"Set the 'RadioGroupSelection' property of the receiver to the <sdword> value of the argument.
		void RadioGroupSelection"

	self setPropertyId: 2302 value: arg1
!

textboxText
	"Answer the <bstr> value of the 'TextboxText' property of the receiver.
		BSTR TextboxText"

	^(self getPropertyId: 2300)
!

textboxText: arg1
	"Set the 'TextboxText' property of the receiver to the <bstr> value of the argument.
		void TextboxText"

	self setPropertyId: 2300 value: arg1
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		XlSmartTagControlType Type"

	^(self getPropertyId: 108)
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelSmartTagAction categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #activeXControl!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #checkboxState!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #checkboxState:!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #execute!**auto generated**!methods!public! !
!ExcelSmartTagAction categoriesFor: #expandHelp!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #expandHelp:!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #listSelection!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #listSelection:!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #name!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #presentInPane!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #radioGroupSelection!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #radioGroupSelection:!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #textboxText!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #textboxText:!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #type!**auto generated**!properties!public! !
!ExcelSmartTagAction categoriesFor: #value!**auto generated**!properties!public! !

!ExcelSmartTagAction class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSmartTagAction initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSmartTagAction class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

