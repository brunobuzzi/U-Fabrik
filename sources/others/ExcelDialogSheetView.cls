"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelDialogSheetView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDialogSheetView guid: (IID fromString: '{0002448A-0000-0000-C000-000000000046}')!
ExcelDialogSheetView comment: '<ExcelDialogSheetView> is a wrapper class generated for the dispatch interface ''Excel.DialogSheetView'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002448A-0000-0000-C000-000000000046), 
	helpcontext(0x00020120)
]
dispinterface DialogSheetView {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000002ef), propget, helpcontext(0x000102ef)]
		IDispatch* Sheet();
};
'!
!ExcelDialogSheetView categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelDialogSheetView methodsFor!

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

sheet
	"Answer the <IDispatch> value of the 'Sheet' property of the receiver.
		IDispatch* Sheet"

	^IDispatch attachInterface: (self getPropertyId: 751)
! !
!ExcelDialogSheetView categoriesFor: #application!**auto generated**!properties!public! !
!ExcelDialogSheetView categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelDialogSheetView categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDialogSheetView categoriesFor: #sheet!**auto generated**!properties!public! !

!ExcelDialogSheetView class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDialogSheetView initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDialogSheetView class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

