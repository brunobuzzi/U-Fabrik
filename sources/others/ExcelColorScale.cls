"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelColorScale
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelColorScale guid: (IID fromString: '{00024493-0000-0000-C000-000000000046}')!
ExcelColorScale comment: '<ExcelColorScale> is a wrapper class generated for the dispatch interface ''Excel.ColorScale'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024493-0000-0000-C000-000000000046), 
	helpcontext(0x00020129)
]
dispinterface ColorScale {
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
[id(0x00000a9c), propget, helpcontext(0x00010a9c)]
		ColorScaleCriteria* ColorScaleCriteria();
};
'!
!ExcelColorScale categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelColorScale methodsFor!

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

colorScaleCriteria
	"Answer the <ExcelColorScaleCriteria> value of the 'ColorScaleCriteria' property of the receiver.
		ColorScaleCriteria* ColorScaleCriteria"

	^ExcelColorScaleCriteria attachInterface: (self getPropertyId: 2716)
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

modifyAppliesToRange: range
	"Invoke the ModifyAppliesToRange() method of the COM object."

	(self invokeId: 2627 with: range)
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

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		long Type"

	^(self getPropertyId: 108)
! !
!ExcelColorScale categoriesFor: #application!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #appliesTo!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #colorScaleCriteria!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelColorScale categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #modifyAppliesToRange:!**auto generated**!methods!public! !
!ExcelColorScale categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #priority!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #priority:!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #ptCondition!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #scopeType!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #scopeType:!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #setFirstPriority!**auto generated**!methods!public! !
!ExcelColorScale categoriesFor: #setLastPriority!**auto generated**!methods!public! !
!ExcelColorScale categoriesFor: #stopIfTrue!**auto generated**!properties!public! !
!ExcelColorScale categoriesFor: #type!**auto generated**!properties!public! !

!ExcelColorScale class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelColorScale initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelColorScale class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

