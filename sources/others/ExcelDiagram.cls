"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelDiagram
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDiagram guid: (IID fromString: '{0002446F-0000-0000-C000-000000000046}')!
ExcelDiagram comment: '<ExcelDiagram> is a wrapper class generated for the dispatch interface ''Excel.Diagram'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002446F-0000-0000-C000-000000000046), 
	helpcontext(0x00020105), 
	hidden
]
dispinterface Diagram {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000006a5), propget, helpcontext(0x000106a5)]
		DiagramNodes* Nodes();
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		MsoDiagramType Type();
[id(0x000008c3), propget, helpcontext(0x000108c3)]
		MsoTriState AutoLayout();
[id(0x000008c3), propput, helpcontext(0x000108c3)]
		void AutoLayout(
			[in]MsoTriState arg1);
[id(0x000008c4), propget, helpcontext(0x000108c4)]
		MsoTriState Reverse();
[id(0x000008c4), propput, helpcontext(0x000108c4)]
		void Reverse(
			[in]MsoTriState arg1);
[id(0x00000072), propget, helpcontext(0x00010072)]
		MsoTriState AutoFormat();
[id(0x00000072), propput, helpcontext(0x00010072)]
		void AutoFormat(
			[in]MsoTriState arg1);
[id(0x00000416), helpcontext(0x00010416)]
		void Convert(
			[in]MsoDiagramType Type);
[id(0x00000900), helpcontext(0x00010900)]
		void FitText();
};
'!
!ExcelDiagram categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelDiagram methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

autoFormat
	"Answer the <sdword> value of the 'AutoFormat' property of the receiver.
		MsoTriState AutoFormat"

	^(self getPropertyId: 114)
!

autoFormat: arg1
	"Set the 'AutoFormat' property of the receiver to the <sdword> value of the argument.
		void AutoFormat"

	self setPropertyId: 114 value: arg1
!

autoLayout
	"Answer the <sdword> value of the 'AutoLayout' property of the receiver.
		MsoTriState AutoLayout"

	^(self getPropertyId: 2243)
!

autoLayout: arg1
	"Set the 'AutoLayout' property of the receiver to the <sdword> value of the argument.
		void AutoLayout"

	self setPropertyId: 2243 value: arg1
!

convert: type
	"Invoke the Convert() method of the COM object."

	(self invokeId: 1046 with: type)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

fitText
	"Invoke the FitText() method of the COM object."

	(self invokeId: 2304)
!

nodes
	"Answer the <ExcelDiagramNodes> value of the 'Nodes' property of the receiver.
		DiagramNodes* Nodes"

	^ExcelDiagramNodes attachInterface: (self getPropertyId: 1701)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

reverse
	"Answer the <sdword> value of the 'Reverse' property of the receiver.
		MsoTriState Reverse"

	^(self getPropertyId: 2244)
!

reverse: arg1
	"Set the 'Reverse' property of the receiver to the <sdword> value of the argument.
		void Reverse"

	self setPropertyId: 2244 value: arg1
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		MsoDiagramType Type"

	^(self getPropertyId: 108)
! !
!ExcelDiagram categoriesFor: #application!**auto generated**!properties!public! !
!ExcelDiagram categoriesFor: #autoFormat!**auto generated**!properties!public! !
!ExcelDiagram categoriesFor: #autoFormat:!**auto generated**!properties!public! !
!ExcelDiagram categoriesFor: #autoLayout!**auto generated**!properties!public! !
!ExcelDiagram categoriesFor: #autoLayout:!**auto generated**!properties!public! !
!ExcelDiagram categoriesFor: #convert:!**auto generated**!methods!public! !
!ExcelDiagram categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelDiagram categoriesFor: #fitText!**auto generated**!methods!public! !
!ExcelDiagram categoriesFor: #nodes!**auto generated**!properties!public! !
!ExcelDiagram categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDiagram categoriesFor: #reverse!**auto generated**!properties!public! !
!ExcelDiagram categoriesFor: #reverse:!**auto generated**!properties!public! !
!ExcelDiagram categoriesFor: #type!**auto generated**!properties!public! !

!ExcelDiagram class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDiagram initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDiagram class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

