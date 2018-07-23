"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelName
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelName guid: (IID fromString: '{000208B9-0000-0000-C000-000000000046}')!
ExcelName comment: '<ExcelName> is a wrapper class generated for the dispatch interface ''Excel.Name'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208B9-0000-0000-C000-000000000046), 
	helpcontext(0x00020079)
]
dispinterface Name {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x000003a6), propget, helpcontext(0x000103a6)]
		BSTR Category();
[id(0x000003a6), propput, helpcontext(0x000103a6)]
		void Category(
			[in]BSTR arg1);
[id(0x000003a7), propget, helpcontext(0x000103a7)]
		BSTR CategoryLocal();
[id(0x000003a7), propput, helpcontext(0x000103a7)]
		void CategoryLocal(
			[in]BSTR arg1);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x000003a8), propget, helpcontext(0x000103a8)]
		XlXLMMacroType MacroType();
[id(0x000003a8), propput, helpcontext(0x000103a8)]
		void MacroType(
			[in]XlXLMMacroType arg1);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x000003aa), propget, helpcontext(0x000103aa)]
		VARIANT RefersTo();
[id(0x000003aa), propput, helpcontext(0x000103aa)]
		void RefersTo(
			[in]VARIANT arg1);
[id(0x00000255), propget, helpcontext(0x00010255)]
		BSTR ShortcutKey();
[id(0x00000255), propput, helpcontext(0x00010255)]
		void ShortcutKey(
			[in]BSTR arg1);
[id(0x00000006), propget, helpcontext(0x00010006)]
		BSTR Value();
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in]BSTR arg1);
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		VARIANT_BOOL Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]VARIANT_BOOL arg1);
[id(0x000003a9), propget, helpcontext(0x000103a9)]
		BSTR NameLocal();
[id(0x000003a9), propput, helpcontext(0x000103a9)]
		void NameLocal(
			[in]BSTR arg1);
[id(0x000003ab), propget, helpcontext(0x000103ab)]
		VARIANT RefersToLocal();
[id(0x000003ab), propput, helpcontext(0x000103ab)]
		void RefersToLocal(
			[in]VARIANT arg1);
[id(0x000003ac), propget, helpcontext(0x000103ac)]
		VARIANT RefersToR1C1();
[id(0x000003ac), propput, helpcontext(0x000103ac)]
		void RefersToR1C1(
			[in]VARIANT arg1);
[id(0x000003ad), propget, helpcontext(0x000103ad)]
		VARIANT RefersToR1C1Local();
[id(0x000003ad), propput, helpcontext(0x000103ad)]
		void RefersToR1C1Local(
			[in]VARIANT arg1);
[id(0x00000488), propget, helpcontext(0x00010488)]
		Range* RefersToRange();
[id(0x0000038e), propget, helpcontext(0x0001038e)]
		BSTR Comment();
[id(0x0000038e), propput, helpcontext(0x0001038e)]
		void Comment(
			[in]BSTR arg1);
[id(0x00000a2f), propget, helpcontext(0x00010a2f)]
		VARIANT_BOOL WorkbookParameter();
[id(0x00000a2f), propput, helpcontext(0x00010a2f)]
		void WorkbookParameter(
			[in]VARIANT_BOOL arg1);
[id(0x00000a30), propget, helpcontext(0x00010a30)]
		VARIANT_BOOL ValidWorkbookParameter();
};
'!
!ExcelName categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelName methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver.
		BSTR _Default"

	^(self getPropertyId: 0)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

category
	"Answer the <bstr> value of the 'Category' property of the receiver.
		BSTR Category"

	^(self getPropertyId: 934)
!

category: arg1
	"Set the 'Category' property of the receiver to the <bstr> value of the argument.
		void Category"

	self setPropertyId: 934 value: arg1
!

categoryLocal
	"Answer the <bstr> value of the 'CategoryLocal' property of the receiver.
		BSTR CategoryLocal"

	^(self getPropertyId: 935)
!

categoryLocal: arg1
	"Set the 'CategoryLocal' property of the receiver to the <bstr> value of the argument.
		void CategoryLocal"

	self setPropertyId: 935 value: arg1
!

comment
	"Answer the <bstr> value of the 'Comment' property of the receiver.
		BSTR Comment"

	^(self getPropertyId: 910)
!

comment: arg1
	"Set the 'Comment' property of the receiver to the <bstr> value of the argument.
		void Comment"

	self setPropertyId: 910 value: arg1
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

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

macroType
	"Answer the <sdword> value of the 'MacroType' property of the receiver.
		XlXLMMacroType MacroType"

	^(self getPropertyId: 936)
!

macroType: arg1
	"Set the 'MacroType' property of the receiver to the <sdword> value of the argument.
		void MacroType"

	self setPropertyId: 936 value: arg1
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

nameLocal
	"Answer the <bstr> value of the 'NameLocal' property of the receiver.
		BSTR NameLocal"

	^(self getPropertyId: 937)
!

nameLocal: arg1
	"Set the 'NameLocal' property of the receiver to the <bstr> value of the argument.
		void NameLocal"

	self setPropertyId: 937 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

refersTo
	"Answer the <variant> value of the 'RefersTo' property of the receiver.
		VARIANT RefersTo"

	^(self getPropertyId: 938)
!

refersTo: arg1
	"Set the 'RefersTo' property of the receiver to the <variant> value of the argument.
		void RefersTo"

	self setPropertyId: 938 value: arg1
!

refersToLocal
	"Answer the <variant> value of the 'RefersToLocal' property of the receiver.
		VARIANT RefersToLocal"

	^(self getPropertyId: 939)
!

refersToLocal: arg1
	"Set the 'RefersToLocal' property of the receiver to the <variant> value of the argument.
		void RefersToLocal"

	self setPropertyId: 939 value: arg1
!

refersToR1C1
	"Answer the <variant> value of the 'RefersToR1C1' property of the receiver.
		VARIANT RefersToR1C1"

	^(self getPropertyId: 940)
!

refersToR1C1: arg1
	"Set the 'RefersToR1C1' property of the receiver to the <variant> value of the argument.
		void RefersToR1C1"

	self setPropertyId: 940 value: arg1
!

refersToR1C1Local
	"Answer the <variant> value of the 'RefersToR1C1Local' property of the receiver.
		VARIANT RefersToR1C1Local"

	^(self getPropertyId: 941)
!

refersToR1C1Local: arg1
	"Set the 'RefersToR1C1Local' property of the receiver to the <variant> value of the argument.
		void RefersToR1C1Local"

	self setPropertyId: 941 value: arg1
!

refersToRange
	"Answer the <ExcelRange> value of the 'RefersToRange' property of the receiver.
		Range* RefersToRange"

	^ExcelRange attachInterface: (self getPropertyId: 1160)
!

shortcutKey
	"Answer the <bstr> value of the 'ShortcutKey' property of the receiver.
		BSTR ShortcutKey"

	^(self getPropertyId: 597)
!

shortcutKey: arg1
	"Set the 'ShortcutKey' property of the receiver to the <bstr> value of the argument.
		void ShortcutKey"

	self setPropertyId: 597 value: arg1
!

validWorkbookParameter
	"Answer the <varbool> value of the 'ValidWorkbookParameter' property of the receiver.
		VARIANT_BOOL ValidWorkbookParameter"

	^(self getPropertyId: 2608)
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver.
		BSTR Value"

	^(self getPropertyId: 6)
!

value: arg1
	"Set the 'Value' property of the receiver to the <bstr> value of the argument.
		void Value"

	self setPropertyId: 6 value: arg1
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver.
		VARIANT_BOOL Visible"

	^(self getPropertyId: 558)
!

visible: arg1
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument.
		void Visible"

	self setPropertyId: 558 value: arg1
!

workbookParameter
	"Answer the <varbool> value of the 'WorkbookParameter' property of the receiver.
		VARIANT_BOOL WorkbookParameter"

	^(self getPropertyId: 2607)
!

workbookParameter: arg1
	"Set the 'WorkbookParameter' property of the receiver to the <varbool> value of the argument.
		void WorkbookParameter"

	self setPropertyId: 2607 value: arg1
! !
!ExcelName categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelName categoriesFor: #application!**auto generated**!properties!public! !
!ExcelName categoriesFor: #category!**auto generated**!properties!public! !
!ExcelName categoriesFor: #category:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #categoryLocal!**auto generated**!properties!public! !
!ExcelName categoriesFor: #categoryLocal:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #comment!**auto generated**!properties!public! !
!ExcelName categoriesFor: #comment:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelName categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelName categoriesFor: #index!**auto generated**!properties!public! !
!ExcelName categoriesFor: #macroType!**auto generated**!properties!public! !
!ExcelName categoriesFor: #macroType:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #name!**auto generated**!properties!public! !
!ExcelName categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #nameLocal!**auto generated**!properties!public! !
!ExcelName categoriesFor: #nameLocal:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelName categoriesFor: #refersTo!**auto generated**!properties!public! !
!ExcelName categoriesFor: #refersTo:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #refersToLocal!**auto generated**!properties!public! !
!ExcelName categoriesFor: #refersToLocal:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #refersToR1C1!**auto generated**!properties!public! !
!ExcelName categoriesFor: #refersToR1C1:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #refersToR1C1Local!**auto generated**!properties!public! !
!ExcelName categoriesFor: #refersToR1C1Local:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #refersToRange!**auto generated**!properties!public! !
!ExcelName categoriesFor: #shortcutKey!**auto generated**!properties!public! !
!ExcelName categoriesFor: #shortcutKey:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #validWorkbookParameter!**auto generated**!properties!public! !
!ExcelName categoriesFor: #value!**auto generated**!properties!public! !
!ExcelName categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelName categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelName categoriesFor: #workbookParameter!**auto generated**!properties!public! !
!ExcelName categoriesFor: #workbookParameter:!**auto generated**!properties!public! !

!ExcelName class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelName initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelName class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

