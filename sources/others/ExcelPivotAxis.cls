"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotAxis
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotAxis guid: (IID fromString: '{00024482-0000-0000-C000-000000000046}')!
ExcelPivotAxis comment: '<ExcelPivotAxis> is a wrapper class generated for the dispatch interface ''Excel.PivotAxis'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024482-0000-0000-C000-000000000046), 
	helpcontext(0x00020118)
]
dispinterface PivotAxis {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000a7d), propget, helpcontext(0x00010a7d)]
		PivotLines* PivotLines();
};
'!
!ExcelPivotAxis categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotAxis methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
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

pivotLines
	"Answer the <ExcelPivotLines> value of the 'PivotLines' property of the receiver.
		PivotLines* PivotLines"

	^ExcelPivotLines attachInterface: (self getPropertyId: 2685)
! !
!ExcelPivotAxis categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotAxis categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotAxis categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPivotAxis categoriesFor: #pivotLines!**auto generated**!properties!public! !

!ExcelPivotAxis class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotAxis initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotAxis class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

