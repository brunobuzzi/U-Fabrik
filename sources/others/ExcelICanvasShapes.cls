"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelICanvasShapes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelICanvasShapes guid: (IID fromString: '{0002444F-0001-0000-C000-000000000046}')!
ExcelICanvasShapes comment: '<ExcelICanvasShapes> is a wrapper class for the COM interface ''Excel.ICanvasShapes'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002444F-0001-0000-C000-000000000046), 
	helpcontext(0x000200e5), 
	hidden
]
interface ICanvasShapes : IDispatch
 {
};
'!
!ExcelICanvasShapes categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelICanvasShapes class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelICanvasShapes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelICanvasShapes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

