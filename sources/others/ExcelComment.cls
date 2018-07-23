"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelComment guid: (IID fromString: '{00024427-0000-0000-C000-000000000046}')!
ExcelComment comment: '<ExcelComment> is a wrapper class generated for the dispatch interface ''Excel.Comment'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024427-0000-0000-C000-000000000046), 
	helpcontext(0x000200bd)
]
dispinterface Comment {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000023e), propget, helpcontext(0x0001023e)]
		BSTR Author();
[id(0x0000062e), propget, helpcontext(0x0001062e)]
		Shape* Shape();
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		VARIANT_BOOL Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]VARIANT_BOOL arg1);
[id(0x0000008a), helpcontext(0x0001008a)]
		BSTR Text(
			[in, optional]VARIANT Text,
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Overwrite);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x000001f6), helpcontext(0x000101f6)]
		Comment* Next();
[id(0x000001f7), helpcontext(0x000101f7)]
		Comment* Previous();
};
'!
!ExcelComment categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelComment methodsFor!

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

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

next
	"Answer the <ExcelComment> result of invoking the Next() method of the COM object."

	^ExcelComment attachInterface: (self invokeId: 502)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

previous
	"Answer the <ExcelComment> result of invoking the Previous() method of the COM object."

	^ExcelComment attachInterface: (self invokeId: 503)
!

shape
	"Answer the <ExcelShape> value of the 'Shape' property of the receiver.
		Shape* Shape"

	^ExcelShape attachInterface: (self getPropertyId: 1582)
!

text
	"Answer the <BSTR> result of invoking the Text() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 text: VARIANT unspecified
		 start: VARIANT unspecified
		 overwrite: VARIANT unspecified!

text: text start: start overwrite: overwrite
	"Answer the <BSTR> result of invoking the Text() method of the COM object."

	^(self invokeId: 138 withArguments:
			((Array new: 3)
				basicAt: 1 put: text;
				basicAt: 2 put: start;
				basicAt: 3 put: overwrite;
				yourself))
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver.
		VARIANT_BOOL Visible"

	^(self getPropertyId: 558)
!

visible: arg1
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument.
		void Visible"

	self setPropertyId: 558 value: arg1
! !
!ExcelComment categoriesFor: #application!**auto generated**!properties!public! !
!ExcelComment categoriesFor: #author!**auto generated**!properties!public! !
!ExcelComment categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelComment categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelComment categoriesFor: #next!**auto generated**!methods!public! !
!ExcelComment categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelComment categoriesFor: #previous!**auto generated**!methods!public! !
!ExcelComment categoriesFor: #shape!**auto generated**!properties!public! !
!ExcelComment categoriesFor: #text!**auto generated**!methods!public! !
!ExcelComment categoriesFor: #text:start:overwrite:!**auto generated**!methods!public! !
!ExcelComment categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelComment categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelComment class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelComment initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelComment class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

