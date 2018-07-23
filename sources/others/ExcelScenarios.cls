"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelScenarios
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelScenarios guid: (IID fromString: '{00020896-0000-0000-C000-000000000046}')!
ExcelScenarios comment: '<ExcelScenarios> is a wrapper class generated for the dispatch interface ''Excel.Scenarios'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020896-0000-0000-C000-000000000046), 
	helpcontext(0x00020056)
]
dispinterface Scenarios {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		Scenario* Add(
			[in]BSTR Name,
			[in]VARIANT ChangingCells,
			[in, optional]VARIANT Values,
			[in, optional]VARIANT Comment,
			[in, optional]VARIANT Locked,
			[in, optional]VARIANT Hidden);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x00000391), helpcontext(0x00010391)]
		VARIANT CreateSummary(
			[in, defaultvalue(1)]XlSummaryReportType ReportType,
			[in, optional]VARIANT ResultCells);
[id(0x000000aa), helpcontext(0x000100aa)]
		Scenario* Item(
			[in]VARIANT Index);
[id(0x00000234), helpcontext(0x00010234)]
		VARIANT Merge(
			[in]VARIANT Source);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelScenarios categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelScenarios methodsFor!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	!

add: name changingCells: changingCells
	"Answer the <ExcelScenario> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: name
		 changingCells: changingCells
		 values: VARIANT unspecified
		 comment: VARIANT unspecified
		 locked: VARIANT unspecified
		 hidden: VARIANT unspecified!

add: name changingCells: changingCells values: values comment: comment locked: locked hidden: hidden
	"Answer the <ExcelScenario> result of invoking the Add() method of the COM object."

	^ExcelScenario attachInterface: (self invokeId: 181 withArguments:
			((Array new: 6)
				basicAt: 1 put: name;
				basicAt: 2 put: changingCells;
				basicAt: 3 put: values;
				basicAt: 4 put: comment;
				basicAt: 5 put: locked;
				basicAt: 6 put: hidden;
				yourself))
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver.
		long Count"

	^(self getPropertyId: 118)
!

createSummary
	"Answer the <VARIANT> result of invoking the CreateSummary() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 createSummary: 1
		 resultCells: VARIANT unspecified!

createSummary: reportType resultCells: resultCells
	"Answer the <VARIANT> result of invoking the CreateSummary() method of the COM object."

	^(self invokeId: 913 with: reportType with: resultCells)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelScenario> result of invoking the Item() method of the COM object."

	^ExcelScenario attachInterface: (self invokeId: 170 with: index)
!

merge: source
	"Answer the <VARIANT> result of invoking the Merge() method of the COM object."

	^(self invokeId: 564 with: source)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelScenarios categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelScenarios categoriesFor: #add:changingCells:!**auto generated**!methods!public! !
!ExcelScenarios categoriesFor: #add:changingCells:values:comment:locked:hidden:!**auto generated**!methods!public! !
!ExcelScenarios categoriesFor: #application!**auto generated**!properties!public! !
!ExcelScenarios categoriesFor: #count!**auto generated**!properties!public! !
!ExcelScenarios categoriesFor: #createSummary!**auto generated**!methods!public! !
!ExcelScenarios categoriesFor: #createSummary:resultCells:!**auto generated**!methods!public! !
!ExcelScenarios categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelScenarios categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelScenarios categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelScenarios categoriesFor: #merge:!**auto generated**!methods!public! !
!ExcelScenarios categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelScenarios class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelScenarios initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelScenarios class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

