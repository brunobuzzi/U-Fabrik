"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelTop10
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelTop10 guid: (IID fromString: '{0002449D-0000-0000-C000-000000000046}')!
ExcelTop10 comment: '<ExcelTop10> is a wrapper class generated for the dispatch interface ''Excel.Top10'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002449D-0000-0000-C000-000000000046), 
	helpcontext(0x00020133)
]
dispinterface Top10 {
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
[id(0x00000a41), propput, helpcontext(0x00010a41)]
		void StopIfTrue(
			[in]VARIANT_BOOL arg1);
[id(0x00000a42), propget, helpcontext(0x00010a42)]
		Range* AppliesTo();
[id(0x00000aa8), propget, helpcontext(0x00010aa8)]
		XlTopBottom TopBottom();
[id(0x00000aa8), propput, helpcontext(0x00010aa8)]
		void TopBottom(
			[in]XlTopBottom arg1);
[id(0x0000050a), propget, helpcontext(0x0001050a)]
		long Rank();
[id(0x0000050a), propput, helpcontext(0x0001050a)]
		void Rank(
			[in]long arg1);
[id(0x00000aa9), propget, helpcontext(0x00010aa9)]
		VARIANT_BOOL Percent();
[id(0x00000aa9), propput, helpcontext(0x00010aa9)]
		void Percent(
			[in]VARIANT_BOOL arg1);
[id(0x00000081), propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x000001b3), propget, helpcontext(0x000101b3)]
		Borders* Borders();
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		long Type();
[id(0x000000c1), propget, helpcontext(0x000100c1)]
		VARIANT NumberFormat();
[id(0x000000c1), propput, helpcontext(0x000100c1)]
		void NumberFormat(
			[in]VARIANT arg1);
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
[id(0x00000aaa), propget, helpcontext(0x00010aaa)]
		XlCalcFor CalcFor();
[id(0x00000aaa), propput, helpcontext(0x00010aaa)]
		void CalcFor(
			[in]XlCalcFor arg1);
};
'!
!ExcelTop10 categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelTop10 methodsFor!

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

calcFor
	"Answer the <sdword> value of the 'CalcFor' property of the receiver.
		XlCalcFor CalcFor"

	^(self getPropertyId: 2730)
!

calcFor: arg1
	"Set the 'CalcFor' property of the receiver to the <sdword> value of the argument.
		void CalcFor"

	self setPropertyId: 2730 value: arg1
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

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

percent
	"Answer the <varbool> value of the 'Percent' property of the receiver.
		VARIANT_BOOL Percent"

	^(self getPropertyId: 2729)
!

percent: arg1
	"Set the 'Percent' property of the receiver to the <varbool> value of the argument.
		void Percent"

	self setPropertyId: 2729 value: arg1
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

rank
	"Answer the <sdword> value of the 'Rank' property of the receiver.
		long Rank"

	^(self getPropertyId: 1290)
!

rank: arg1
	"Set the 'Rank' property of the receiver to the <sdword> value of the argument.
		void Rank"

	self setPropertyId: 1290 value: arg1
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

topBottom
	"Answer the <sdword> value of the 'TopBottom' property of the receiver.
		XlTopBottom TopBottom"

	^(self getPropertyId: 2728)
!

topBottom: arg1
	"Set the 'TopBottom' property of the receiver to the <sdword> value of the argument.
		void TopBottom"

	self setPropertyId: 2728 value: arg1
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		long Type"

	^(self getPropertyId: 108)
! !
!ExcelTop10 categoriesFor: #application!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #appliesTo!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #calcFor!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #calcFor:!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelTop10 categoriesFor: #font!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #modifyAppliesToRange:!**auto generated**!methods!public! !
!ExcelTop10 categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #percent!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #percent:!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #priority!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #priority:!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #ptCondition!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #rank!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #rank:!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #scopeType!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #scopeType:!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #setFirstPriority!**auto generated**!methods!public! !
!ExcelTop10 categoriesFor: #setLastPriority!**auto generated**!methods!public! !
!ExcelTop10 categoriesFor: #stopIfTrue!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #stopIfTrue:!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #topBottom!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #topBottom:!**auto generated**!properties!public! !
!ExcelTop10 categoriesFor: #type!**auto generated**!properties!public! !

!ExcelTop10 class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelTop10 initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelTop10 class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

