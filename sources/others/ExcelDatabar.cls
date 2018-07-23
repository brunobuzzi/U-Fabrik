"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelDatabar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDatabar guid: (IID fromString: '{00024496-0000-0000-C000-000000000046}')!
ExcelDatabar comment: '<ExcelDatabar> is a wrapper class generated for the dispatch interface ''Excel.Databar'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024496-0000-0000-C000-000000000046), 
	helpcontext(0x0002012c)
]
dispinterface Databar {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000003d9), propget, helpcontext(0x000103d9)]
		long Priority();
[id(0x000003d9), propput, helpcontext(0x000103d9)]
		void Priority(
			[in]long arg1);
[id(0x00000a41), propget, helpcontext(0x00010a41)]
		VARIANT_BOOL StopIfTrue();
[id(0x00000a42), propget, helpcontext(0x00010a42)]
		Range* AppliesTo();
[id(0x00000a9e), propget, helpcontext(0x00010a9e)]
		ConditionValue* MinPoint();
[id(0x00000a9f), propget, helpcontext(0x00010a9f)]
		ConditionValue* MaxPoint();
[id(0x00000aa0), propget, helpcontext(0x00010aa0)]
		long PercentMin();
[id(0x00000aa0), propput, helpcontext(0x00010aa0)]
		void PercentMin(
			[in]long arg1);
[id(0x00000aa1), propget, helpcontext(0x00010aa1)]
		long PercentMax();
[id(0x00000aa1), propput, helpcontext(0x00010aa1)]
		void PercentMax(
			[in]long arg1);
[id(0x00000aa2), propget, helpcontext(0x00010aa2)]
		IDispatch* BarColor();
[id(0x000007e8), propget, helpcontext(0x000107e8)]
		VARIANT_BOOL ShowValue();
[id(0x000007e8), propput, helpcontext(0x000107e8)]
		void ShowValue(
			[in]VARIANT_BOOL arg1);
[id(0x00000105), propget, helpcontext(0x00010105)]
		BSTR Formula();
[id(0x00000105), propput, helpcontext(0x00010105)]
		void Formula(
			[in]BSTR arg1);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		long Type();
[id(0x00000a45), helpcontext(0x00010a45)]
		void SetFirstPriority();
[id(0x00000a46), helpcontext(0x00010a46)]
		void SetLastPriority();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000a43), helpcontext(0x00010a43)]
		void ModifyAppliesToRange(
			[in]Range* Range);
[id(0x00000a47), propget, helpcontext(0x00010a47)]
		VARIANT_BOOL PTCondition();
[id(0x00000a37), propget, helpcontext(0x00010a37)]
		XlPivotConditionScope ScopeType();
[id(0x00000a37), propput, helpcontext(0x00010a37)]
		void ScopeType(
			[in]XlPivotConditionScope arg1);
};
'!
!ExcelDatabar categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelDatabar methodsFor!

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

barColor
	"Answer the <IDispatch> value of the 'BarColor' property of the receiver.
		IDispatch* BarColor"

	^IDispatch attachInterface: (self getPropertyId: 2722)
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

formula
	"Answer the <bstr> value of the 'Formula' property of the receiver.
		BSTR Formula"

	^(self getPropertyId: 261)
!

formula: arg1
	"Set the 'Formula' property of the receiver to the <bstr> value of the argument.
		void Formula"

	self setPropertyId: 261 value: arg1
!

maxPoint
	"Answer the <ExcelConditionValue> value of the 'MaxPoint' property of the receiver.
		ConditionValue* MaxPoint"

	^ExcelConditionValue attachInterface: (self getPropertyId: 2719)
!

minPoint
	"Answer the <ExcelConditionValue> value of the 'MinPoint' property of the receiver.
		ConditionValue* MinPoint"

	^ExcelConditionValue attachInterface: (self getPropertyId: 2718)
!

modifyAppliesToRange: range
	"Invoke the ModifyAppliesToRange() method of the COM object."

	(self invokeId: 2627 with: range)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

percentMax
	"Answer the <sdword> value of the 'PercentMax' property of the receiver.
		long PercentMax"

	^(self getPropertyId: 2721)
!

percentMax: arg1
	"Set the 'PercentMax' property of the receiver to the <sdword> value of the argument.
		void PercentMax"

	self setPropertyId: 2721 value: arg1
!

percentMin
	"Answer the <sdword> value of the 'PercentMin' property of the receiver.
		long PercentMin"

	^(self getPropertyId: 2720)
!

percentMin: arg1
	"Set the 'PercentMin' property of the receiver to the <sdword> value of the argument.
		void PercentMin"

	self setPropertyId: 2720 value: arg1
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

showValue
	"Answer the <varbool> value of the 'ShowValue' property of the receiver.
		VARIANT_BOOL ShowValue"

	^(self getPropertyId: 2024)
!

showValue: arg1
	"Set the 'ShowValue' property of the receiver to the <varbool> value of the argument.
		void ShowValue"

	self setPropertyId: 2024 value: arg1
!

stopIfTrue
	"Answer the <varbool> value of the 'StopIfTrue' property of the receiver.
		VARIANT_BOOL StopIfTrue"

	^(self getPropertyId: 2625)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		long Type"

	^(self getPropertyId: 108)
! !
!ExcelDatabar categoriesFor: #application!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #appliesTo!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #barColor!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelDatabar categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #maxPoint!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #minPoint!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #modifyAppliesToRange:!**auto generated**!methods!public! !
!ExcelDatabar categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #percentMax!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #percentMax:!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #percentMin!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #percentMin:!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #priority!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #priority:!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #ptCondition!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #scopeType!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #scopeType:!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #setFirstPriority!**auto generated**!methods!public! !
!ExcelDatabar categoriesFor: #setLastPriority!**auto generated**!methods!public! !
!ExcelDatabar categoriesFor: #showValue!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #showValue:!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #stopIfTrue!**auto generated**!properties!public! !
!ExcelDatabar categoriesFor: #type!**auto generated**!properties!public! !

!ExcelDatabar class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDatabar initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDatabar class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

