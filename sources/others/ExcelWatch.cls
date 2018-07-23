"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelWatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelWatch guid: (IID fromString: '{00024457-0000-0000-C000-000000000046}')!
ExcelWatch comment: '<ExcelWatch> is a wrapper class generated for the dispatch interface ''Excel.Watch'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024457-0000-0000-C000-000000000046), 
	helpcontext(0x000200ed)
]
dispinterface Watch {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x000000de), propget, helpcontext(0x000100de)]
		VARIANT Source();
};
'!
!ExcelWatch categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelWatch methodsFor!

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

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

source
	"Answer the <variant> value of the 'Source' property of the receiver.
		VARIANT Source"

	^(self getPropertyId: 222)
! !
!ExcelWatch categoriesFor: #application!**auto generated**!properties!public! !
!ExcelWatch categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelWatch categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelWatch categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelWatch categoriesFor: #source!**auto generated**!properties!public! !

!ExcelWatch class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelWatch initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelWatch class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

