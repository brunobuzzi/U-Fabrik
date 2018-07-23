"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelODBCError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelODBCError guid: (IID fromString: '{0002442C-0000-0000-C000-000000000046}')!
ExcelODBCError comment: '<ExcelODBCError> is a wrapper class generated for the dispatch interface ''Excel.ODBCError'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002442C-0000-0000-C000-000000000046), 
	helpcontext(0x000200c2)
]
dispinterface ODBCError {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000643), propget, helpcontext(0x00010643)]
		BSTR SqlState();
[id(0x000005d2), propget, helpcontext(0x000105d2)]
		BSTR ErrorString();
};
'!
!ExcelODBCError categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelODBCError methodsFor!

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

errorString
	"Answer the <bstr> value of the 'ErrorString' property of the receiver.
		BSTR ErrorString"

	^(self getPropertyId: 1490)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

sqlState
	"Answer the <bstr> value of the 'SqlState' property of the receiver.
		BSTR SqlState"

	^(self getPropertyId: 1603)
! !
!ExcelODBCError categoriesFor: #application!**auto generated**!properties!public! !
!ExcelODBCError categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelODBCError categoriesFor: #errorString!**auto generated**!properties!public! !
!ExcelODBCError categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelODBCError categoriesFor: #sqlState!**auto generated**!properties!public! !

!ExcelODBCError class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelODBCError initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelODBCError class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

