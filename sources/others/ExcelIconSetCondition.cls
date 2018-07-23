"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIconSetCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIconSetCondition guid: (IID fromString: '{00024497-0000-0000-C000-000000000046}')!
ExcelIconSetCondition comment: '<ExcelIconSetCondition> is a wrapper class generated for the dispatch interface ''Excel.IconSetCondition'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024497-0000-0000-C000-000000000046), 
	helpcontext(0x0002012d)
]
dispinterface IconSetCondition {
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
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		long Type();
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
[id(0x00000a45), helpcontext(0x00010a45)]
		void SetFirstPriority();
[id(0x00000a46), helpcontext(0x00010a46)]
		void SetLastPriority();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000aa3), propget, helpcontext(0x00010aa3)]
		VARIANT_BOOL ReverseOrder();
[id(0x00000aa3), propput, helpcontext(0x00010aa3)]
		void ReverseOrder(
			[in]VARIANT_BOOL arg1);
[id(0x00000aa4), propget, helpcontext(0x00010aa4)]
		VARIANT_BOOL PercentileValues();
[id(0x00000aa4), propput, helpcontext(0x00010aa4)]
		void PercentileValues(
			[in]VARIANT_BOOL arg1);
[id(0x00000aa5), propget, helpcontext(0x00010aa5)]
		VARIANT_BOOL ShowIconOnly();
[id(0x00000aa5), propput, helpcontext(0x00010aa5)]
		void ShowIconOnly(
			[in]VARIANT_BOOL arg1);
[id(0x00000105), propget, helpcontext(0x00010105)]
		BSTR Formula();
[id(0x00000105), propput, helpcontext(0x00010105)]
		void Formula(
			[in]BSTR arg1);
[id(0x00000aa6), propget, helpcontext(0x00010aa6)]
		VARIANT IconSet();
[id(0x00000aa6), propput, helpcontext(0x00010aa6)]
		void IconSet(
			[in]VARIANT arg1);
[id(0x00000aa7), propget, helpcontext(0x00010aa7)]
		IconCriteria* IconCriteria();
};
'!
!ExcelIconSetCondition categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelIconSetCondition methodsFor!

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

iconCriteria
	"Answer the <ExcelIconCriteria> value of the 'IconCriteria' property of the receiver.
		IconCriteria* IconCriteria"

	^ExcelIconCriteria attachInterface: (self getPropertyId: 2727)
!

iconSet
	"Answer the <variant> value of the 'IconSet' property of the receiver.
		VARIANT IconSet"

	^(self getPropertyId: 2726)
!

iconSet: arg1
	"Set the 'IconSet' property of the receiver to the <variant> value of the argument.
		void IconSet"

	self setPropertyId: 2726 value: arg1
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

percentileValues
	"Answer the <varbool> value of the 'PercentileValues' property of the receiver.
		VARIANT_BOOL PercentileValues"

	^(self getPropertyId: 2724)
!

percentileValues: arg1
	"Set the 'PercentileValues' property of the receiver to the <varbool> value of the argument.
		void PercentileValues"

	self setPropertyId: 2724 value: arg1
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

reverseOrder
	"Answer the <varbool> value of the 'ReverseOrder' property of the receiver.
		VARIANT_BOOL ReverseOrder"

	^(self getPropertyId: 2723)
!

reverseOrder: arg1
	"Set the 'ReverseOrder' property of the receiver to the <varbool> value of the argument.
		void ReverseOrder"

	self setPropertyId: 2723 value: arg1
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

showIconOnly
	"Answer the <varbool> value of the 'ShowIconOnly' property of the receiver.
		VARIANT_BOOL ShowIconOnly"

	^(self getPropertyId: 2725)
!

showIconOnly: arg1
	"Set the 'ShowIconOnly' property of the receiver to the <varbool> value of the argument.
		void ShowIconOnly"

	self setPropertyId: 2725 value: arg1
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
!ExcelIconSetCondition categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #appliesTo!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIconSetCondition categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #iconCriteria!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #iconSet!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #iconSet:!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #modifyAppliesToRange:!**auto generated**!methods!public! !
!ExcelIconSetCondition categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #percentileValues!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #percentileValues:!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #priority!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #priority:!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #ptCondition!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #reverseOrder!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #reverseOrder:!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #scopeType!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #scopeType:!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #setFirstPriority!**auto generated**!methods!public! !
!ExcelIconSetCondition categoriesFor: #setLastPriority!**auto generated**!methods!public! !
!ExcelIconSetCondition categoriesFor: #showIconOnly!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #showIconOnly:!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #stopIfTrue!**auto generated**!properties!public! !
!ExcelIconSetCondition categoriesFor: #type!**auto generated**!properties!public! !

!ExcelIconSetCondition class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIconSetCondition initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIconSetCondition class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

