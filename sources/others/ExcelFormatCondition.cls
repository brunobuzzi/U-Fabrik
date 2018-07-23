"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelFormatCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelFormatCondition guid: (IID fromString: '{00024425-0000-0000-C000-000000000046}')!
ExcelFormatCondition comment: '<ExcelFormatCondition> is a wrapper class generated for the dispatch interface ''Excel.FormatCondition'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024425-0000-0000-C000-000000000046), 
	helpcontext(0x000200bb)
]
dispinterface FormatCondition {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000a3f), hidden, helpcontext(0x00010a3f)]
		void _Modify(
			[in]XlFormatConditionType Type,
			[in, optional]VARIANT Operator,
			[in, optional]VARIANT Formula1,
			[in, optional]VARIANT Formula2);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		long Type();
[id(0x0000031d), propget, helpcontext(0x0001031d)]
		long Operator();
[id(0x0000062b), propget, helpcontext(0x0001062b)]
		BSTR Formula1();
[id(0x0000062c), propget, helpcontext(0x0001062c)]
		BSTR Formula2();
[id(0x00000081), propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x000001b3), propget, helpcontext(0x000101b3)]
		Borders* Borders();
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x0000062d), helpcontext(0x0001062d)]
		void Modify(
			[in]XlFormatConditionType Type,
			[in, optional]VARIANT Operator,
			[in, optional]VARIANT Formula1,
			[in, optional]VARIANT Formula2,
			[in, optional]VARIANT String,
			[in, optional]VARIANT Operator2);
[id(0x0000008a), propget, helpcontext(0x0001008a)]
		BSTR Text();
[id(0x0000008a), propput, helpcontext(0x0001008a)]
		void Text(
			[in]BSTR arg1);
[id(0x00000a35), propget, helpcontext(0x00010a35)]
		XlContainsOperator TextOperator();
[id(0x00000a35), propput, helpcontext(0x00010a35)]
		void TextOperator(
			[in]XlContainsOperator arg1);
[id(0x00000a36), propget, helpcontext(0x00010a36)]
		XlTimePeriods DateOperator();
[id(0x00000a36), propput, helpcontext(0x00010a36)]
		void DateOperator(
			[in]XlTimePeriods arg1);
[id(0x000000c1), propget, helpcontext(0x000100c1)]
		VARIANT NumberFormat();
[id(0x000000c1), propput, helpcontext(0x000100c1)]
		void NumberFormat(
			[in]VARIANT arg1);
[id(0x000003d9), propget, helpcontext(0x000103d9)]
		long Priority();
[id(0x000003d9), propput, helpcontext(0x000103d9)]
		void Priority(
			[in]long arg1);
[id(0x00000a41), propget, helpcontext(0x00010a41)]
		VARIANT_BOOL StopIfTrue();
[id(0x00000a41), propput, helpcontext(0x00010a41)]
		void StopIfTrue(
			[in]VARIANT_BOOL arg1);
[id(0x00000a42), propget, helpcontext(0x00010a42)]
		Range* AppliesTo();
[id(0x00000a43), helpcontext(0x00010a43)]
		void ModifyAppliesToRange(
			[in]Range* Range);
[id(0x00000a45), helpcontext(0x00010a45)]
		void SetFirstPriority();
[id(0x00000a46), helpcontext(0x00010a46)]
		void SetLastPriority();
[id(0x00000a47), propget, helpcontext(0x00010a47)]
		VARIANT_BOOL PTCondition();
[id(0x00000a37), propget, helpcontext(0x00010a37)]
		XlPivotConditionScope ScopeType();
[id(0x00000a37), propput, helpcontext(0x00010a37)]
		void ScopeType(
			[in]XlPivotConditionScope arg1);
};
'!
!ExcelFormatCondition categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelFormatCondition methodsFor!

_modify: type
	"Invoke the _Modify() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 _modify: type
		 operator: VARIANT unspecified
		 formula1: VARIANT unspecified
		 formula2: VARIANT unspecified!

_modify: type operator: operator formula1: formula1 formula2: formula2
	"Invoke the _Modify() method of the COM object."

	(self invokeId: 2623 withArguments:
			((Array new: 4)
				basicAt: 1 put: type;
				basicAt: 2 put: operator;
				basicAt: 3 put: formula1;
				basicAt: 4 put: formula2;
				yourself))
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

appliesTo
	"Answer the <ExcelRange> value of the 'AppliesTo' property of the receiver.
		Range* AppliesTo"

	^ExcelRange attachInterface: (self getPropertyId: 2626)
!

borders
	"Answer the <ExcelBorders> value of the 'Borders' property of the receiver.
		Borders* Borders"

	^ExcelBorders attachInterface: (self getPropertyId: 435)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

dateOperator
	"Answer the <sdword> value of the 'DateOperator' property of the receiver.
		XlTimePeriods DateOperator"

	^(self getPropertyId: 2614)
!

dateOperator: arg1
	"Set the 'DateOperator' property of the receiver to the <sdword> value of the argument.
		void DateOperator"

	self setPropertyId: 2614 value: arg1
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
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

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
!

modify: type
	"Invoke the Modify() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 modify: type
		 operator: VARIANT unspecified
		 formula1: VARIANT unspecified
		 formula2: VARIANT unspecified
		 string: VARIANT unspecified
		 operator2: VARIANT unspecified!

modify: type operator: operator formula1: formula1 formula2: formula2 string: string operator2: operator2
	"Invoke the Modify() method of the COM object."

	(self invokeId: 1581 withArguments:
			((Array new: 6)
				basicAt: 1 put: type;
				basicAt: 2 put: operator;
				basicAt: 3 put: formula1;
				basicAt: 4 put: formula2;
				basicAt: 5 put: string;
				basicAt: 6 put: operator2;
				yourself))
!

modifyAppliesToRange: range
	"Invoke the ModifyAppliesToRange() method of the COM object."

	(self invokeId: 2627 with: range)
!

numberFormat
	"Answer the <variant> value of the 'NumberFormat' property of the receiver.
		VARIANT NumberFormat"

	^(self getPropertyId: 193)
!

numberFormat: arg1
	"Set the 'NumberFormat' property of the receiver to the <variant> value of the argument.
		void NumberFormat"

	self setPropertyId: 193 value: arg1
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

priority
	"Answer the <sdword> value of the 'Priority' property of the receiver.
		long Priority"

	^(self getPropertyId: 985)
!

priority: arg1
	"Set the 'Priority' property of the receiver to the <sdword> value of the argument.
		void Priority"

	self setPropertyId: 985 value: arg1
!

ptCondition
	"Answer the <varbool> value of the 'PTCondition' property of the receiver.
		VARIANT_BOOL PTCondition"

	^(self getPropertyId: 2631)
!

scopeType
	"Answer the <sdword> value of the 'ScopeType' property of the receiver.
		XlPivotConditionScope ScopeType"

	^(self getPropertyId: 2615)
!

scopeType: arg1
	"Set the 'ScopeType' property of the receiver to the <sdword> value of the argument.
		void ScopeType"

	self setPropertyId: 2615 value: arg1
!

setFirstPriority
	"Invoke the SetFirstPriority() method of the COM object."

	(self invokeId: 2629)
!

setLastPriority
	"Invoke the SetLastPriority() method of the COM object."

	(self invokeId: 2630)
!

stopIfTrue
	"Answer the <varbool> value of the 'StopIfTrue' property of the receiver.
		VARIANT_BOOL StopIfTrue"

	^(self getPropertyId: 2625)
!

stopIfTrue: arg1
	"Set the 'StopIfTrue' property of the receiver to the <varbool> value of the argument.
		void StopIfTrue"

	self setPropertyId: 2625 value: arg1
!

text
	"Answer the <bstr> value of the 'Text' property of the receiver.
		BSTR Text"

	^(self getPropertyId: 138)
!

text: arg1
	"Set the 'Text' property of the receiver to the <bstr> value of the argument.
		void Text"

	self setPropertyId: 138 value: arg1
!

textOperator
	"Answer the <sdword> value of the 'TextOperator' property of the receiver.
		XlContainsOperator TextOperator"

	^(self getPropertyId: 2613)
!

textOperator: arg1
	"Set the 'TextOperator' property of the receiver to the <sdword> value of the argument.
		void TextOperator"

	self setPropertyId: 2613 value: arg1
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		long Type"

	^(self getPropertyId: 108)
! !
!ExcelFormatCondition categoriesFor: #_modify:!**auto generated**!methods!public! !
!ExcelFormatCondition categoriesFor: #_modify:operator:formula1:formula2:!**auto generated**!methods!public! !
!ExcelFormatCondition categoriesFor: #application!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #appliesTo!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #dateOperator!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #dateOperator:!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelFormatCondition categoriesFor: #font!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #formula1!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #formula2!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #modify:!**auto generated**!methods!public! !
!ExcelFormatCondition categoriesFor: #modify:operator:formula1:formula2:string:operator2:!**auto generated**!methods!public! !
!ExcelFormatCondition categoriesFor: #modifyAppliesToRange:!**auto generated**!methods!public! !
!ExcelFormatCondition categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #operator!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #priority!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #priority:!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #ptCondition!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #scopeType!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #scopeType:!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #setFirstPriority!**auto generated**!methods!public! !
!ExcelFormatCondition categoriesFor: #setLastPriority!**auto generated**!methods!public! !
!ExcelFormatCondition categoriesFor: #stopIfTrue!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #stopIfTrue:!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #text!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #textOperator!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #textOperator:!**auto generated**!properties!public! !
!ExcelFormatCondition categoriesFor: #type!**auto generated**!properties!public! !

!ExcelFormatCondition class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelFormatCondition initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelFormatCondition class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

