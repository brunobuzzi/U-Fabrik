"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPhonetics
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPhonetics guid: (IID fromString: '{00024447-0000-0000-C000-000000000046}')!
ExcelPhonetics comment: '<ExcelPhonetics> is a wrapper class generated for the dispatch interface ''Excel.Phonetics'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024447-0000-0000-C000-000000000046), 
	helpcontext(0x000200dd)
]
dispinterface Phonetics {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x00000260), propget, helpcontext(0x00010260)]
		long Start();
[id(0x00000261), propget, helpcontext(0x00010261)]
		long Length();
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
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		IDispatch* Item(
			[in]long Index);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x000000b5), helpcontext(0x000100b5)]
		void Add(
			[in]long Start,
			[in]long Length,
			[in]BSTR Text);
[id(0x0000008a), propget, helpcontext(0x0001008a)]
		BSTR Text();
[id(0x0000008a), propput, helpcontext(0x0001008a)]
		void Text(
			[in]BSTR arg1);
[id(0000000000), propget, helpcontext(0x00010000)]
		IDispatch* _Default(
			[in]long Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelPhonetics categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPhonetics methodsFor!

_default: index
	"Answer the <IDispatch> value of the '_Default' property of the receiver.
		IDispatch* _Default"

	^IDispatch attachInterface: (self getPropertyId: 0 item: index)
!

add: start length: length text: text
	"Invoke the Add() method of the COM object."

	(self invokeId: 181 withArguments:
			((Array new: 3)
				basicAt: 1 put: start;
				basicAt: 2 put: length;
				basicAt: 3 put: text;
				yourself))
!

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

count
	"Answer the <sdword> value of the 'Count' property of the receiver.
		long Count"

	^(self getPropertyId: 118)
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

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <IDispatch> value of the 'Item' property of the receiver.
		IDispatch* Item"

	^IDispatch attachInterface: (self getPropertyId: 170 item: index)
!

length
	"Answer the <sdword> value of the 'Length' property of the receiver.
		long Length"

	^(self getPropertyId: 609)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

start
	"Answer the <sdword> value of the 'Start' property of the receiver.
		long Start"

	^(self getPropertyId: 608)
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
!ExcelPhonetics categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #add:length:text:!**auto generated**!methods!public! !
!ExcelPhonetics categoriesFor: #alignment:!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #alignment_!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #characterType!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #characterType:!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelPhonetics categoriesFor: #font!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPhonetics categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #length!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #start!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #text!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelPhonetics categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelPhonetics class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPhonetics initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPhonetics class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

