"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelOutline
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelOutline guid: (IID fromString: '{000208AB-0000-0000-C000-000000000046}')!
ExcelOutline comment: '<ExcelOutline> is a wrapper class generated for the dispatch interface ''Excel.Outline'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208AB-0000-0000-C000-000000000046), 
	helpcontext(0x0002006b)
]
dispinterface Outline {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000003bf), propget, helpcontext(0x000103bf)]
		VARIANT_BOOL AutomaticStyles();
[id(0x000003bf), propput, helpcontext(0x000103bf)]
		void AutomaticStyles(
			[in]VARIANT_BOOL arg1);
[id(0x000003c0), helpcontext(0x000103c0)]
		VARIANT ShowLevels(
			[in, optional]VARIANT RowLevels,
			[in, optional]VARIANT ColumnLevels);
[id(0x000003c1), propget, helpcontext(0x000103c1)]
		XlSummaryColumn SummaryColumn();
[id(0x000003c1), propput, helpcontext(0x000103c1)]
		void SummaryColumn(
			[in]XlSummaryColumn arg1);
[id(0x00000386), propget, helpcontext(0x00010386)]
		XlSummaryRow SummaryRow();
[id(0x00000386), propput, helpcontext(0x00010386)]
		void SummaryRow(
			[in]XlSummaryRow arg1);
};
'!
!ExcelOutline categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelOutline methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

automaticStyles
	"Answer the <varbool> value of the 'AutomaticStyles' property of the receiver.
		VARIANT_BOOL AutomaticStyles"

	^(self getPropertyId: 959)
!

automaticStyles: arg1
	"Set the 'AutomaticStyles' property of the receiver to the <varbool> value of the argument.
		void AutomaticStyles"

	self setPropertyId: 959 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

showLevels
	"Answer the <VARIANT> result of invoking the ShowLevels() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 showLevels: VARIANT unspecified
		 columnLevels: VARIANT unspecified!

showLevels: rowLevels columnLevels: columnLevels
	"Answer the <VARIANT> result of invoking the ShowLevels() method of the COM object."

	^(self invokeId: 960 with: rowLevels with: columnLevels)
!

summaryColumn
	"Answer the <sdword> value of the 'SummaryColumn' property of the receiver.
		XlSummaryColumn SummaryColumn"

	^(self getPropertyId: 961)
!

summaryColumn: arg1
	"Set the 'SummaryColumn' property of the receiver to the <sdword> value of the argument.
		void SummaryColumn"

	self setPropertyId: 961 value: arg1
!

summaryRow
	"Answer the <sdword> value of the 'SummaryRow' property of the receiver.
		XlSummaryRow SummaryRow"

	^(self getPropertyId: 902)
!

summaryRow: arg1
	"Set the 'SummaryRow' property of the receiver to the <sdword> value of the argument.
		void SummaryRow"

	self setPropertyId: 902 value: arg1
! !
!ExcelOutline categoriesFor: #application!**auto generated**!properties!public! !
!ExcelOutline categoriesFor: #automaticStyles!**auto generated**!properties!public! !
!ExcelOutline categoriesFor: #automaticStyles:!**auto generated**!properties!public! !
!ExcelOutline categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelOutline categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelOutline categoriesFor: #showLevels!**auto generated**!methods!public! !
!ExcelOutline categoriesFor: #showLevels:columnLevels:!**auto generated**!methods!public! !
!ExcelOutline categoriesFor: #summaryColumn!**auto generated**!properties!public! !
!ExcelOutline categoriesFor: #summaryColumn:!**auto generated**!properties!public! !
!ExcelOutline categoriesFor: #summaryRow!**auto generated**!properties!public! !
!ExcelOutline categoriesFor: #summaryRow:!**auto generated**!properties!public! !

!ExcelOutline class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelOutline initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelOutline class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

