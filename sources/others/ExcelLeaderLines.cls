"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelLeaderLines
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelLeaderLines guid: (IID fromString: '{00024437-0000-0000-C000-000000000046}')!
ExcelLeaderLines comment: '<ExcelLeaderLines> is a wrapper class generated for the dispatch interface ''Excel.LeaderLines'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024437-0000-0000-C000-000000000046), 
	helpcontext(0x000200cd)
]
dispinterface LeaderLines {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000080), propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x000000eb), helpcontext(0x000100eb)]
		void Select();
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelLeaderLines categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelLeaderLines methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
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

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver.
		ChartFormat* Format"

	^ExcelChartFormat attachInterface: (self getPropertyId: 116)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

select
	"Invoke the Select() method of the COM object."

	(self invokeId: 235)
! !
!ExcelLeaderLines categoriesFor: #application!**auto generated**!properties!public! !
!ExcelLeaderLines categoriesFor: #border!**auto generated**!properties!public! !
!ExcelLeaderLines categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelLeaderLines categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelLeaderLines categoriesFor: #format!**auto generated**!properties!public! !
!ExcelLeaderLines categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelLeaderLines categoriesFor: #select!**auto generated**!methods!public! !

!ExcelLeaderLines class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelLeaderLines initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelLeaderLines class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

