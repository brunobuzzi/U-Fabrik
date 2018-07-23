"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIcon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIcon guid: (IID fromString: '{0002449A-0000-0000-C000-000000000046}')!
ExcelIcon comment: '<ExcelIcon> is a wrapper class generated for the dispatch interface ''Excel.Icon'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002449A-0000-0000-C000-000000000046), 
	helpcontext(0x00020130)
]
dispinterface Icon {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IconSet* Parent();
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
};
'!
!ExcelIcon categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelIcon methodsFor!

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

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

parent
	"Answer the <ExcelIconSet> value of the 'Parent' property of the receiver.
		IconSet* Parent"

	^ExcelIconSet attachInterface: (self getPropertyId: 150)
! !
!ExcelIcon categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIcon categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIcon categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIcon categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIcon class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIcon initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIcon class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

