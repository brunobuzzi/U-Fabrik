"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelErrors
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelErrors guid: (IID fromString: '{0002445C-0000-0000-C000-000000000046}')!
ExcelErrors comment: '<ExcelErrors> is a wrapper class generated for the dispatch interface ''Excel.Errors'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002445C-0000-0000-C000-000000000046), 
	helpcontext(0x000200f2)
]
dispinterface Errors {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		Error* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		Error* _Default(
			[in]VARIANT Index);
};
'!
!ExcelErrors categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelErrors methodsFor!

_default: index
	"Answer the <ExcelError> value of the '_Default' property of the receiver.
		Error* _Default"

	^ExcelError attachInterface: (self getPropertyId: 0 item: index)
!

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

item: index
	"Answer the <ExcelError> value of the 'Item' property of the receiver.
		Error* Item"

	^ExcelError attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelErrors categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelErrors categoriesFor: #application!**auto generated**!properties!public! !
!ExcelErrors categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelErrors categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelErrors categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelErrors class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelErrors initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelErrors class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

