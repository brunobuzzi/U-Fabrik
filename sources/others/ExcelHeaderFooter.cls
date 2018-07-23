"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelHeaderFooter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelHeaderFooter guid: (IID fromString: '{000244A1-0000-0000-C000-000000000046}')!
ExcelHeaderFooter comment: '<ExcelHeaderFooter> is a wrapper class generated for the dispatch interface ''Excel.HeaderFooter'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244A1-0000-0000-C000-000000000046), 
	helpcontext(0x00020137)
]
dispinterface HeaderFooter {
	properties:
	methods:
[id(0x0000008a), propget, helpcontext(0x0001008a)]
		BSTR Text();
[id(0x0000008a), propput, helpcontext(0x0001008a)]
		void Text(
			[in]BSTR arg1);
[id(0x000001df), propget, helpcontext(0x000101df)]
		Graphic* Picture();
};
'!
!ExcelHeaderFooter categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelHeaderFooter methodsFor!

picture
	"Answer the <ExcelGraphic> value of the 'Picture' property of the receiver.
		Graphic* Picture"

	^ExcelGraphic attachInterface: (self getPropertyId: 479)
!

text
	"Answer the <bstr> value of the 'Text' property of the receiver.
		BSTR Text"

	^(self getPropertyId: 138)
!

text: arg1
	"Set the 'Text' property of the receiver to the <bstr> value of the argument.
		void Text"

	self setPropertyId: 138 value: arg1
! !
!ExcelHeaderFooter categoriesFor: #picture!**auto generated**!properties!public! !
!ExcelHeaderFooter categoriesFor: #text!**auto generated**!properties!public! !
!ExcelHeaderFooter categoriesFor: #text:!**auto generated**!properties!public! !

!ExcelHeaderFooter class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelHeaderFooter initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelHeaderFooter class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

