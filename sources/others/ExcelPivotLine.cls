"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotLine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotLine guid: (IID fromString: '{00024480-0000-0000-C000-000000000046}')!
ExcelPivotLine comment: '<ExcelPivotLine> is a wrapper class generated for the dispatch interface ''Excel.PivotLine'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024480-0000-0000-C000-000000000046), 
	helpcontext(0x00020116)
]
dispinterface PivotLine {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000a7b), propget, helpcontext(0x00010a7b)]
		XlPivotLineType LineType();
[id(0x00000085), propget, helpcontext(0x00010085)]
		long Position();
[id(0x00000a7c), propget, helpcontext(0x00010a7c)]
		PivotLineCells* PivotLineCells();
};
'!
!ExcelPivotLine categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotLine methodsFor!

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

lineType
	"Answer the <sdword> value of the 'LineType' property of the receiver.
		XlPivotLineType LineType"

	^(self getPropertyId: 2683)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

pivotLineCells
	"Answer the <ExcelPivotLineCells> value of the 'PivotLineCells' property of the receiver.
		PivotLineCells* PivotLineCells"

	^ExcelPivotLineCells attachInterface: (self getPropertyId: 2684)
!

position
	"Answer the <sdword> value of the 'Position' property of the receiver.
		long Position"

	^(self getPropertyId: 133)
! !
!ExcelPivotLine categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotLine categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotLine categoriesFor: #lineType!**auto generated**!properties!public! !
!ExcelPivotLine categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPivotLine categoriesFor: #pivotLineCells!**auto generated**!properties!public! !
!ExcelPivotLine categoriesFor: #position!**auto generated**!properties!public! !

!ExcelPivotLine class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotLine initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotLine class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

