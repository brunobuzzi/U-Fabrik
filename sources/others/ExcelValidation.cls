"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelValidation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelValidation guid: (IID fromString: '{0002442F-0000-0000-C000-000000000046}')!
ExcelValidation comment: '<ExcelValidation> is a wrapper class generated for the dispatch interface ''Excel.Validation'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002442F-0000-0000-C000-000000000046), 
	helpcontext(0x000200c5)
]
dispinterface Validation {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		void Add(
			[in]XlDVType Type,
			[in, optional]VARIANT AlertStyle,
			[in, optional]VARIANT Operator,
			[in, optional]VARIANT Formula1,
			[in, optional]VARIANT Formula2);
[id(0x00000645), propget, helpcontext(0x00010645)]
		long AlertStyle();
[id(0x00000646), propget, helpcontext(0x00010646)]
		VARIANT_BOOL IgnoreBlank();
[id(0x00000646), propput, helpcontext(0x00010646)]
		void IgnoreBlank(
			[in]VARIANT_BOOL arg1);
[id(0x00000647), propget, helpcontext(0x00010647)]
		long IMEMode();
[id(0x00000647), propput, helpcontext(0x00010647)]
		void IMEMode(
			[in]long arg1);
[id(0x00000648), propget, helpcontext(0x00010648)]
		VARIANT_BOOL InCellDropdown();
[id(0x00000648), propput, helpcontext(0x00010648)]
		void InCellDropdown(
			[in]VARIANT_BOOL arg1);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000649), propget, helpcontext(0x00010649)]
		BSTR ErrorMessage();
[id(0x00000649), propput, helpcontext(0x00010649)]
		void ErrorMessage(
			[in]BSTR arg1);
[id(0x0000064a), propget, helpcontext(0x0001064a)]
		BSTR ErrorTitle();
[id(0x0000064a), propput, helpcontext(0x0001064a)]
		void ErrorTitle(
			[in]BSTR arg1);
[id(0x0000064b), propget, helpcontext(0x0001064b)]
		BSTR InputMessage();
[id(0x0000064b), propput, helpcontext(0x0001064b)]
		void InputMessage(
			[in]BSTR arg1);
[id(0x0000064c), propget, helpcontext(0x0001064c)]
		BSTR InputTitle();
[id(0x0000064c), propput, helpcontext(0x0001064c)]
		void InputTitle(
			[in]BSTR arg1);
[id(0x0000062b), propget, helpcontext(0x0001062b)]
		BSTR Formula1();
[id(0x0000062c), propget, helpcontext(0x0001062c)]
		BSTR Formula2();
[id(0x0000062d), helpcontext(0x0001062d)]
		void Modify(
			[in, optional]VARIANT Type,
			[in, optional]VARIANT AlertStyle,
			[in, optional]VARIANT Operator,
			[in, optional]VARIANT Formula1,
			[in, optional]VARIANT Formula2);
[id(0x0000031d), propget, helpcontext(0x0001031d)]
		long Operator();
[id(0x0000064d), propget, helpcontext(0x0001064d)]
		VARIANT_BOOL ShowError();
[id(0x0000064d), propput, helpcontext(0x0001064d)]
		void ShowError(
			[in]VARIANT_BOOL arg1);
[id(0x0000064e), propget, helpcontext(0x0001064e)]
		VARIANT_BOOL ShowInput();
[id(0x0000064e), propput, helpcontext(0x0001064e)]
		void ShowInput(
			[in]VARIANT_BOOL arg1);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		long Type();
[id(0x00000006), propget, helpcontext(0x00010006)]
		VARIANT_BOOL Value();
};
'!
!ExcelValidation categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelValidation methodsFor!

add: type
	"Invoke the Add() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 add: type
		 alertStyle: VARIANT unspecified
		 operator: VARIANT unspecified
		 formula1: VARIANT unspecified
		 formula2: VARIANT unspecified!

add: type alertStyle: alertStyle operator: operator formula1: formula1 formula2: formula2
	"Invoke the Add() method of the COM object."

	(self invokeId: 181 withArguments:
			((Array new: 5)
				basicAt: 1 put: type;
				basicAt: 2 put: alertStyle;
				basicAt: 3 put: operator;
				basicAt: 4 put: formula1;
				basicAt: 5 put: formula2;
				yourself))
!

alertStyle
	"Answer the <sdword> value of the 'AlertStyle' property of the receiver.
		long AlertStyle"

	^(self getPropertyId: 1605)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

errorMessage
	"Answer the <bstr> value of the 'ErrorMessage' property of the receiver.
		BSTR ErrorMessage"

	^(self getPropertyId: 1609)
!

errorMessage: arg1
	"Set the 'ErrorMessage' property of the receiver to the <bstr> value of the argument.
		void ErrorMessage"

	self setPropertyId: 1609 value: arg1
!

errorTitle
	"Answer the <bstr> value of the 'ErrorTitle' property of the receiver.
		BSTR ErrorTitle"

	^(self getPropertyId: 1610)
!

errorTitle: arg1
	"Set the 'ErrorTitle' property of the receiver to the <bstr> value of the argument.
		void ErrorTitle"

	self setPropertyId: 1610 value: arg1
!

formula1
	"Answer the <bstr> value of the 'Formula1' property of the receiver.
		BSTR Formula1"

	^(self getPropertyId: 1579)
!

formula2
	"Answer the <bstr> value of the 'Formula2' property of the receiver.
		BSTR Formula2"

	^(self getPropertyId: 1580)
!

ignoreBlank
	"Answer the <varbool> value of the 'IgnoreBlank' property of the receiver.
		VARIANT_BOOL IgnoreBlank"

	^(self getPropertyId: 1606)
!

ignoreBlank: arg1
	"Set the 'IgnoreBlank' property of the receiver to the <varbool> value of the argument.
		void IgnoreBlank"

	self setPropertyId: 1606 value: arg1
!

imeMode
	"Answer the <sdword> value of the 'IMEMode' property of the receiver.
		long IMEMode"

	^(self getPropertyId: 1607)
!

imeMode: arg1
	"Set the 'IMEMode' property of the receiver to the <sdword> value of the argument.
		void IMEMode"

	self setPropertyId: 1607 value: arg1
!

inCellDropdown
	"Answer the <varbool> value of the 'InCellDropdown' property of the receiver.
		VARIANT_BOOL InCellDropdown"

	^(self getPropertyId: 1608)
!

inCellDropdown: arg1
	"Set the 'InCellDropdown' property of the receiver to the <varbool> value of the argument.
		void InCellDropdown"

	self setPropertyId: 1608 value: arg1
!

inputMessage
	"Answer the <bstr> value of the 'InputMessage' property of the receiver.
		BSTR InputMessage"

	^(self getPropertyId: 1611)
!

inputMessage: arg1
	"Set the 'InputMessage' property of the receiver to the <bstr> value of the argument.
		void InputMessage"

	self setPropertyId: 1611 value: arg1
!

inputTitle
	"Answer the <bstr> value of the 'InputTitle' property of the receiver.
		BSTR InputTitle"

	^(self getPropertyId: 1612)
!

inputTitle: arg1
	"Set the 'InputTitle' property of the receiver to the <bstr> value of the argument.
		void InputTitle"

	self setPropertyId: 1612 value: arg1
!

modify
	"Invoke the Modify() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 modify: VARIANT unspecified
		 alertStyle: VARIANT unspecified
		 operator: VARIANT unspecified
		 formula1: VARIANT unspecified
		 formula2: VARIANT unspecified!

modify: type alertStyle: alertStyle operator: operator formula1: formula1 formula2: formula2
	"Invoke the Modify() method of the COM object."

	(self invokeId: 1581 withArguments:
			((Array new: 5)
				basicAt: 1 put: type;
				basicAt: 2 put: alertStyle;
				basicAt: 3 put: operator;
				basicAt: 4 put: formula1;
				basicAt: 5 put: formula2;
				yourself))
!

operator
	"Answer the <sdword> value of the 'Operator' property of the receiver.
		long Operator"

	^(self getPropertyId: 797)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

showError
	"Answer the <varbool> value of the 'ShowError' property of the receiver.
		VARIANT_BOOL ShowError"

	^(self getPropertyId: 1613)
!

showError: arg1
	"Set the 'ShowError' property of the receiver to the <varbool> value of the argument.
		void ShowError"

	self setPropertyId: 1613 value: arg1
!

showInput
	"Answer the <varbool> value of the 'ShowInput' property of the receiver.
		VARIANT_BOOL ShowInput"

	^(self getPropertyId: 1614)
!

showInput: arg1
	"Set the 'ShowInput' property of the receiver to the <varbool> value of the argument.
		void ShowInput"

	self setPropertyId: 1614 value: arg1
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		long Type"

	^(self getPropertyId: 108)
!

value
	"Answer the <varbool> value of the 'Value' property of the receiver.
		VARIANT_BOOL Value"

	^(self getPropertyId: 6)
! !
!ExcelValidation categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelValidation categoriesFor: #add:alertStyle:operator:formula1:formula2:!**auto generated**!methods!public! !
!ExcelValidation categoriesFor: #alertStyle!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #application!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelValidation categoriesFor: #errorMessage!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #errorMessage:!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #errorTitle!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #errorTitle:!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #formula1!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #formula2!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #ignoreBlank!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #ignoreBlank:!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #imeMode!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #imeMode:!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #inCellDropdown!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #inCellDropdown:!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #inputMessage!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #inputMessage:!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #inputTitle!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #inputTitle:!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #modify!**auto generated**!methods!public! !
!ExcelValidation categoriesFor: #modify:alertStyle:operator:formula1:formula2:!**auto generated**!methods!public! !
!ExcelValidation categoriesFor: #operator!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #showError!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #showError:!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #showInput!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #showInput:!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #type!**auto generated**!properties!public! !
!ExcelValidation categoriesFor: #value!**auto generated**!properties!public! !

!ExcelValidation class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelValidation initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelValidation class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

