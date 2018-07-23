"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelScenario
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelScenario guid: (IID fromString: '{00020897-0000-0000-C000-000000000046}')!
ExcelScenario comment: '<ExcelScenario> is a wrapper class generated for the dispatch interface ''Excel.Scenario'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020897-0000-0000-C000-000000000046), 
	helpcontext(0x00020057)
]
dispinterface Scenario {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000390), helpcontext(0x00010390)]
		VARIANT ChangeScenario(
			[in]VARIANT ChangingCells,
			[in, optional]VARIANT Values);
[id(0x0000038f), propget, helpcontext(0x0001038f)]
		Range* ChangingCells();
[id(0x0000038e), propget, helpcontext(0x0001038e)]
		BSTR Comment();
[id(0x0000038e), propput, helpcontext(0x0001038e)]
		void Comment(
			[in]BSTR arg1);
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x0000010c), propget, helpcontext(0x0001010c)]
		VARIANT_BOOL Hidden();
[id(0x0000010c), propput, helpcontext(0x0001010c)]
		void Hidden(
			[in]VARIANT_BOOL arg1);
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x0000010d), propget, helpcontext(0x0001010d)]
		VARIANT_BOOL Locked();
[id(0x0000010d), propput, helpcontext(0x0001010d)]
		void Locked(
			[in]VARIANT_BOOL arg1);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x000001f0), helpcontext(0x000101f0)]
		VARIANT Show();
[id(0x000000a4), propget, helpcontext(0x000100a4)]
		VARIANT Values(
			[in, optional]VARIANT Index);
};
'!
!ExcelScenario categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelScenario methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

changeScenario: changingCells
	"Answer the <VARIANT> result of invoking the ChangeScenario() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 changeScenario: changingCells
		 values: VARIANT unspecified!

changeScenario: changingCells values: values
	"Answer the <VARIANT> result of invoking the ChangeScenario() method of the COM object."

	^(self invokeId: 912 with: changingCells with: values)
!

changingCells
	"Answer the <ExcelRange> value of the 'ChangingCells' property of the receiver.
		Range* ChangingCells"

	^ExcelRange attachInterface: (self getPropertyId: 911)
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
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

hidden
	"Answer the <varbool> value of the 'Hidden' property of the receiver.
		VARIANT_BOOL Hidden"

	^(self getPropertyId: 268)
!

hidden: arg1
	"Set the 'Hidden' property of the receiver to the <varbool> value of the argument.
		void Hidden"

	self setPropertyId: 268 value: arg1
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver.
		VARIANT_BOOL Locked"

	^(self getPropertyId: 269)
!

locked: arg1
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument.
		void Locked"

	self setPropertyId: 269 value: arg1
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

show
	"Answer the <VARIANT> result of invoking the Show() method of the COM object."

	^(self invokeId: 496)
!

values
	"Answer the <variant> value of the 'Values' property of the receiver.
		VARIANT Values"

	^self values: VARIANT unspecified!

values: index
	"Answer the <variant> value of the 'Values' property of the receiver.
		VARIANT Values"

	^(self getPropertyId: 164 item: index)
! !
!ExcelScenario categoriesFor: #application!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #changeScenario:!**auto generated**!methods!public! !
!ExcelScenario categoriesFor: #changeScenario:values:!**auto generated**!methods!public! !
!ExcelScenario categoriesFor: #changingCells!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #comment!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #comment:!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelScenario categoriesFor: #hidden!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #hidden:!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #index!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #name!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #show!**auto generated**!methods!public! !
!ExcelScenario categoriesFor: #values!**auto generated**!properties!public! !
!ExcelScenario categoriesFor: #values:!**auto generated**!properties!public! !

!ExcelScenario class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelScenario initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelScenario class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

