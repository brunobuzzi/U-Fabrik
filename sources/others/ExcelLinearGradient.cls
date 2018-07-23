"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelLinearGradient
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelLinearGradient guid: (IID fromString: '{000244AF-0000-0000-C000-000000000046}')!
ExcelLinearGradient comment: '<ExcelLinearGradient> is a wrapper class generated for the dispatch interface ''Excel.LinearGradient'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244AF-0000-0000-C000-000000000046), 
	helpcontext(0x00020145)
]
dispinterface LinearGradient {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000ac9), propget, helpcontext(0x00010ac9)]
		ColorStops* ColorStops();
[id(0x00000657), propget, helpcontext(0x00010657)]
		double Degree();
[id(0x00000657), propput, helpcontext(0x00010657)]
		void Degree(
			[in]double arg1);
};
'!
!ExcelLinearGradient categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelLinearGradient methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

colorStops
	"Answer the <ExcelColorStops> value of the 'ColorStops' property of the receiver.
		ColorStops* ColorStops"

	^ExcelColorStops attachInterface: (self getPropertyId: 2761)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

degree
	"Answer the <double> value of the 'Degree' property of the receiver.
		double Degree"

	^(self getPropertyId: 1623)
!

degree: arg1
	"Set the 'Degree' property of the receiver to the <double> value of the argument.
		void Degree"

	self setPropertyId: 1623 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelLinearGradient categoriesFor: #application!**auto generated**!properties!public! !
!ExcelLinearGradient categoriesFor: #colorStops!**auto generated**!properties!public! !
!ExcelLinearGradient categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelLinearGradient categoriesFor: #degree!**auto generated**!properties!public! !
!ExcelLinearGradient categoriesFor: #degree:!**auto generated**!properties!public! !
!ExcelLinearGradient categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelLinearGradient class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelLinearGradient initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelLinearGradient class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

