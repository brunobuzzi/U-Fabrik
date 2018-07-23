"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPhonetic
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPhonetic guid: (IID fromString: '{00024438-0000-0000-C000-000000000046}')!
ExcelPhonetic comment: '<ExcelPhonetic> is a wrapper class generated for the dispatch interface ''Excel.Phonetic'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024438-0000-0000-C000-000000000046), 
	helpcontext(0x000200ce)
]
dispinterface Phonetic {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		VARIANT_BOOL Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]VARIANT_BOOL arg1);
[id(0x0000068a), propget, helpcontext(0x0001068a)]
		long CharacterType();
[id(0x0000068a), propput, helpcontext(0x0001068a)]
		void CharacterType(
			[in]long arg1);
[id(0x000001c5), propget, helpcontext(0x000101c5)]
		long Alignment();
[id(0x000001c5), propput, helpcontext(0x000101c5)]
		void Alignment(
			[in]long arg1);
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x0000008a), propget, helpcontext(0x0001008a)]
		BSTR Text();
[id(0x0000008a), propput, helpcontext(0x0001008a)]
		void Text(
			[in]BSTR arg1);
};
'!
!ExcelPhonetic categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPhonetic methodsFor!

alignment: arg1
	"Set the 'Alignment' property of the receiver to the <sdword> value of the argument.
		void Alignment"

	self setPropertyId: 453 value: arg1
!

alignment_
	"Answer the <sdword> value of the 'Alignment' property of the receiver.
		long Alignment"

	^(self getPropertyId: 453)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

characterType
	"Answer the <sdword> value of the 'CharacterType' property of the receiver.
		long CharacterType"

	^(self getPropertyId: 1674)
!

characterType: arg1
	"Set the 'CharacterType' property of the receiver to the <sdword> value of the argument.
		void CharacterType"

	self setPropertyId: 1674 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
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
!ExcelPhonetic categoriesFor: #alignment:!**auto generated**!properties!public! !
!ExcelPhonetic categoriesFor: #alignment_!**auto generated**!properties!public! !
!ExcelPhonetic categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPhonetic categoriesFor: #characterType!**auto generated**!properties!public! !
!ExcelPhonetic categoriesFor: #characterType:!**auto generated**!properties!public! !
!ExcelPhonetic categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPhonetic categoriesFor: #font!**auto generated**!properties!public! !
!ExcelPhonetic categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPhonetic categoriesFor: #text!**auto generated**!properties!public! !
!ExcelPhonetic categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelPhonetic categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelPhonetic categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelPhonetic class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPhonetic initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPhonetic class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

