"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelAddIn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelAddIn guid: (IID fromString: '{00020857-0000-0000-C000-000000000046}')!
ExcelAddIn comment: '<ExcelAddIn> is a wrapper class generated for the dispatch interface ''Excel.AddIn'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020857-0000-0000-C000-000000000046), 
	helpcontext(0x00020017)
]
dispinterface AddIn {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000023e), hidden, propget, helpcontext(0x0001023e)]
		BSTR Author();
[id(0x0000023f), hidden, propget, helpcontext(0x0001023f)]
		BSTR Comments();
[id(0x00000121), propget, helpcontext(0x00010121)]
		BSTR FullName();
[id(0x00000226), propget, helpcontext(0x00010226)]
		VARIANT_BOOL Installed();
[id(0x00000226), propput, helpcontext(0x00010226)]
		void Installed(
			[in]VARIANT_BOOL arg1);
[id(0x00000241), hidden, propget, helpcontext(0x00010241)]
		BSTR Keywords();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x00000123), propget, helpcontext(0x00010123)]
		BSTR Path();
[id(0x000003b9), hidden, propget, helpcontext(0x000103b9)]
		BSTR Subject();
[id(0x000000c7), hidden, propget, helpcontext(0x000100c7)]
		BSTR Title();
[id(0x000005f3), propget, helpcontext(0x000105f3)]
		BSTR progID();
[id(0x000007fb), propget, helpcontext(0x000107fb)]
		BSTR CLSID();
};
'!
!ExcelAddIn categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelAddIn methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

author
	"Answer the <bstr> value of the 'Author' property of the receiver.
		BSTR Author"

	^(self getPropertyId: 574)
!

clsid
	"Answer the <bstr> value of the 'CLSID' property of the receiver.
		BSTR CLSID"

	^(self getPropertyId: 2043)
!

comments
	"Answer the <bstr> value of the 'Comments' property of the receiver.
		BSTR Comments"

	^(self getPropertyId: 575)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

fullName
	"Answer the <bstr> value of the 'FullName' property of the receiver.
		BSTR FullName"

	^(self getPropertyId: 289)
!

installed
	"Answer the <varbool> value of the 'Installed' property of the receiver.
		VARIANT_BOOL Installed"

	^(self getPropertyId: 550)
!

installed: arg1
	"Set the 'Installed' property of the receiver to the <varbool> value of the argument.
		void Installed"

	self setPropertyId: 550 value: arg1
!

keywords
	"Answer the <bstr> value of the 'Keywords' property of the receiver.
		BSTR Keywords"

	^(self getPropertyId: 577)
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

path
	"Answer the <bstr> value of the 'Path' property of the receiver.
		BSTR Path"

	^(self getPropertyId: 291)
!

progID
	"Answer the <bstr> value of the 'progID' property of the receiver.
		BSTR progID"

	^(self getPropertyId: 1523)
!

subject
	"Answer the <bstr> value of the 'Subject' property of the receiver.
		BSTR Subject"

	^(self getPropertyId: 953)
!

title
	"Answer the <bstr> value of the 'Title' property of the receiver.
		BSTR Title"

	^(self getPropertyId: 199)
! !
!ExcelAddIn categoriesFor: #application!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #author!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #clsid!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #comments!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #fullName!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #installed!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #installed:!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #keywords!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #name!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #path!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #progID!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #subject!**auto generated**!properties!public! !
!ExcelAddIn categoriesFor: #title!**auto generated**!properties!public! !

!ExcelAddIn class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelAddIn initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelAddIn class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

