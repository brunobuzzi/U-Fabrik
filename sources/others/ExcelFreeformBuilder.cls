"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelFreeformBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelFreeformBuilder guid: (IID fromString: '{0002443F-0000-0000-C000-000000000046}')!
ExcelFreeformBuilder comment: '<ExcelFreeformBuilder> is a wrapper class generated for the dispatch interface ''Excel.FreeformBuilder'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002443F-0000-0000-C000-000000000046), 
	helpcontext(0x000200d5)
]
dispinterface FreeformBuilder {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000006e2), helpcontext(0x000106e2)]
		void AddNodes(
			[in]MsoSegmentType SegmentType,
			[in]MsoEditingType EditingType,
			[in]float X1,
			[in]float Y1,
			[in, optional]VARIANT X2,
			[in, optional]VARIANT Y2,
			[in, optional]VARIANT X3,
			[in, optional]VARIANT Y3);
[id(0x000006e6), helpcontext(0x000106e6)]
		Shape* ConvertToShape();
};
'!
!ExcelFreeformBuilder categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelFreeformBuilder methodsFor!

addNodes: segmentType editingType: editingType x1: x1 y1: y1
	"Invoke the AddNodes() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 addNodes: segmentType
		 editingType: editingType
		 x1: x1
		 y1: y1
		 x2: VARIANT unspecified
		 y2: VARIANT unspecified
		 x3: VARIANT unspecified
		 y3: VARIANT unspecified!

addNodes: segmentType editingType: editingType x1: x1 y1: y1 x2: x2 y2: y2 x3: x3 y3: y3
	"Invoke the AddNodes() method of the COM object."

	(self invokeId: 1762 withArguments:
			((Array new: 8)
				basicAt: 1 put: segmentType;
				basicAt: 2 put: editingType;
				basicAt: 3 put: x1;
				basicAt: 4 put: y1;
				basicAt: 5 put: x2;
				basicAt: 6 put: y2;
				basicAt: 7 put: x3;
				basicAt: 8 put: y3;
				yourself))
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

convertToShape
	"Answer the <ExcelShape> result of invoking the ConvertToShape() method of the COM object."

	^ExcelShape attachInterface: (self invokeId: 1766)
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
! !
!ExcelFreeformBuilder categoriesFor: #addNodes:editingType:x1:y1:!**auto generated**!methods!public! !
!ExcelFreeformBuilder categoriesFor: #addNodes:editingType:x1:y1:x2:y2:x3:y3:!**auto generated**!methods!public! !
!ExcelFreeformBuilder categoriesFor: #application!**auto generated**!properties!public! !
!ExcelFreeformBuilder categoriesFor: #convertToShape!**auto generated**!methods!public! !
!ExcelFreeformBuilder categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelFreeformBuilder categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelFreeformBuilder class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelFreeformBuilder initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelFreeformBuilder class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

