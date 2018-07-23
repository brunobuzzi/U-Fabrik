"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelUniqueValues
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelUniqueValues guid: (IID fromString: '{0002449F-0000-0000-C000-000000000046}')!
ExcelUniqueValues comment: '<ExcelUniqueValues> is a wrapper class generated for the dispatch interface ''Excel.UniqueValues'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002449F-0000-0000-C000-000000000046), 
	helpcontext(0x00020135)
]
dispinterface UniqueValues {
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
[id(0x00000aad), propget, helpcontext(0x00010aad)]
		XlDupeUnique DupeUnique();
[id(0x00000aad), propput, helpcontext(0x00010aad)]
		void DupeUnique(
			[in]XlDupeUnique arg1);
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
};
'!
!ExcelUniqueValues categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelUniqueValues methodsFor!

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

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

dupeUnique
	"Answer the <sdword> value of the 'DupeUnique' property of the receiver.
		XlDupeUnique DupeUnique"

	^(self getPropertyId: 2733)
!

dupeUnique: arg1
	"Set the 'DupeUnique' property of the receiver to the <sdword> value of the argument.
		void DupeUnique"

	self setPropertyId: 2733 value: arg1
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

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		long Type"

	^(self getPropertyId: 108)
! !
!ExcelUniqueValues categoriesFor: #application!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #appliesTo!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelUniqueValues categoriesFor: #dupeUnique!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #dupeUnique:!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #font!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #modifyAppliesToRange:!**auto generated**!methods!public! !
!ExcelUniqueValues categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #priority!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #priority:!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #ptCondition!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #scopeType!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #scopeType:!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #setFirstPriority!**auto generated**!methods!public! !
!ExcelUniqueValues categoriesFor: #setLastPriority!**auto generated**!methods!public! !
!ExcelUniqueValues categoriesFor: #stopIfTrue!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #stopIfTrue:!**auto generated**!properties!public! !
!ExcelUniqueValues categoriesFor: #type!**auto generated**!properties!public! !

!ExcelUniqueValues class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelUniqueValues initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelUniqueValues class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

