"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelDialogFrame
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDialogFrame guid: (IID fromString: '{0002088F-0000-0000-C000-000000000046}')!
ExcelDialogFrame comment: '<ExcelDialogFrame> is a wrapper class generated for the dispatch interface ''Excel.DialogFrame'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002088F-0000-0000-C000-000000000046), 
	helpcontext(0x0002004f), 
	hidden
]
dispinterface DialogFrame {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00010003), hidden, restricted]
		void _Dummy3();
[id(0x00010004), hidden, restricted]
		void _Dummy4();
[id(0x00010005), hidden, restricted]
		void _Dummy5();
[id(0x000000d5), helpcontext(0x000100d5)]
		VARIANT CopyPicture(
			[in, defaultvalue(2)]XlPictureAppearance Appearance,
			[in, defaultvalue(-4147)]XlCopyPictureFormat Format);
[id(0x00010007), hidden, restricted]
		void _Dummy7();
[id(0x00010008), hidden, restricted]
		void _Dummy8();
[id(0x00010009), hidden, restricted]
		void _Dummy9();
[id(0x0001000a), hidden, restricted]
		void _Dummy10();
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		double Height();
[id(0x0000007b), propput, helpcontext(0x0001007b)]
		void Height(
			[in]double arg1);
[id(0x0001000c), hidden, restricted]
		void _Dummy12();
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		double Left();
[id(0x0000007f), propput, helpcontext(0x0001007f)]
		void Left(
			[in]double arg1);
[id(0x0000010d), propget, helpcontext(0x0001010d)]
		VARIANT_BOOL Locked();
[id(0x0000010d), propput, helpcontext(0x0001010d)]
		void Locked(
			[in]VARIANT_BOOL arg1);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x00000254), hidden, propget, helpcontext(0x00010254)]
		BSTR OnAction();
[id(0x00000254), hidden, propput, helpcontext(0x00010254)]
		void OnAction(
			[in]BSTR arg1);
[id(0x00010011), hidden, restricted]
		void _Dummy17();
[id(0x00010012), hidden, restricted]
		void _Dummy18();
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select(
			[in, optional]VARIANT Replace);
[id(0x00010014), hidden, restricted]
		void _Dummy20();
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		double Top();
[id(0x0000007e), propput, helpcontext(0x0001007e)]
		void Top(
			[in]double arg1);
[id(0x00010016), hidden, restricted]
		void _Dummy22();
[id(0x00010017), hidden, restricted]
		void _Dummy23();
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		double Width();
[id(0x0000007a), propput, helpcontext(0x0001007a)]
		void Width(
			[in]double arg1);
[id(0x00010019), hidden, restricted]
		void _Dummy25();
[id(0x000005f8), propget, helpcontext(0x000105f8)]
		ShapeRange* ShapeRange();
[id(0x0000008b), propget, helpcontext(0x0001008b)]
		BSTR Caption();
[id(0x0000008b), propput, helpcontext(0x0001008b)]
		void Caption(
			[in]BSTR arg1);
[id(0x0000025b), propget, helpcontext(0x0001025b)]
		Characters* Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length);
[id(0x000001f9), helpcontext(0x000101f9)]
		VARIANT CheckSpelling(
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in, optional]VARIANT AlwaysSuggest,
			[in, optional]VARIANT SpellLang);
[id(0x00000268), propget, helpcontext(0x00010268)]
		VARIANT_BOOL LockedText();
[id(0x00000268), propput, helpcontext(0x00010268)]
		void LockedText(
			[in]VARIANT_BOOL arg1);
[id(0x0000008a), propget, helpcontext(0x0001008a)]
		BSTR Text();
[id(0x0000008a), propput, helpcontext(0x0001008a)]
		void Text(
			[in]BSTR arg1);
};
'!
!ExcelDialogFrame categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelDialogFrame methodsFor!

_dummy10
	"Invoke the _Dummy10() method of the COM object."

	(self invokeId: 65546)
!

_dummy12
	"Invoke the _Dummy12() method of the COM object."

	(self invokeId: 65548)
!

_dummy17
	"Invoke the _Dummy17() method of the COM object."

	(self invokeId: 65553)
!

_dummy18
	"Invoke the _Dummy18() method of the COM object."

	(self invokeId: 65554)
!

_dummy20
	"Invoke the _Dummy20() method of the COM object."

	(self invokeId: 65556)
!

_dummy22
	"Invoke the _Dummy22() method of the COM object."

	(self invokeId: 65558)
!

_dummy23
	"Invoke the _Dummy23() method of the COM object."

	(self invokeId: 65559)
!

_dummy25
	"Invoke the _Dummy25() method of the COM object."

	(self invokeId: 65561)
!

_dummy3
	"Invoke the _Dummy3() method of the COM object."

	(self invokeId: 65539)
!

_dummy4
	"Invoke the _Dummy4() method of the COM object."

	(self invokeId: 65540)
!

_dummy5
	"Invoke the _Dummy5() method of the COM object."

	(self invokeId: 65541)
!

_dummy7
	"Invoke the _Dummy7() method of the COM object."

	(self invokeId: 65543)
!

_dummy8
	"Invoke the _Dummy8() method of the COM object."

	(self invokeId: 65544)
!

_dummy9
	"Invoke the _Dummy9() method of the COM object."

	(self invokeId: 65545)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver.
		BSTR Caption"

	^(self getPropertyId: 139)
!

caption: arg1
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument.
		void Caption"

	self setPropertyId: 139 value: arg1
!

characters
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver.
		Characters* Characters"

	^self
		 characters: VARIANT unspecified
		 length: VARIANT unspecified!

characters: start length: length
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver.
		Characters* Characters"

	^ExcelCharacters attachInterface: (self getPropertyId: 603
		 withArguments: ((Array new: 2)
				basicAt: 1 put: start;
				basicAt: 2 put: length;
				yourself)
		)
!

checkSpelling
	"Answer the <VARIANT> result of invoking the CheckSpelling() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 checkSpelling: VARIANT unspecified
		 ignoreUppercase: VARIANT unspecified
		 alwaysSuggest: VARIANT unspecified
		 spellLang: VARIANT unspecified!

checkSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang
	"Answer the <VARIANT> result of invoking the CheckSpelling() method of the COM object."

	^(self invokeId: 505 withArguments:
			((Array new: 4)
				basicAt: 1 put: customDictionary;
				basicAt: 2 put: ignoreUppercase;
				basicAt: 3 put: alwaysSuggest;
				basicAt: 4 put: spellLang;
				yourself))
!

copyPicture
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copyPicture: 2
		 format: -4147!

copyPicture: appearance format: format
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object."

	^(self invokeId: 213 with: appearance with: format)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

height
	"Answer the <double> value of the 'Height' property of the receiver.
		double Height"

	^(self getPropertyId: 123)
!

height: arg1
	"Set the 'Height' property of the receiver to the <double> value of the argument.
		void Height"

	self setPropertyId: 123 value: arg1
!

left
	"Answer the <double> value of the 'Left' property of the receiver.
		double Left"

	^(self getPropertyId: 127)
!

left: arg1
	"Set the 'Left' property of the receiver to the <double> value of the argument.
		void Left"

	self setPropertyId: 127 value: arg1
!

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver.
		VARIANT_BOOL Locked"

	^(self getPropertyId: 269)
!

locked: arg1
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument.
		void Locked"

	self setPropertyId: 269 value: arg1
!

lockedText
	"Answer the <varbool> value of the 'LockedText' property of the receiver.
		VARIANT_BOOL LockedText"

	^(self getPropertyId: 616)
!

lockedText: arg1
	"Set the 'LockedText' property of the receiver to the <varbool> value of the argument.
		void LockedText"

	self setPropertyId: 616 value: arg1
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

onAction
	"Answer the <bstr> value of the 'OnAction' property of the receiver.
		BSTR OnAction"

	^(self getPropertyId: 596)
!

onAction: arg1
	"Set the 'OnAction' property of the receiver to the <bstr> value of the argument.
		void OnAction"

	self setPropertyId: 596 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object.
	Default values are passed for all optional parameters."

	^self select: VARIANT unspecified!

select: replace
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235 with: replace)
!

shapeRange
	"Answer the <ExcelShapeRange> value of the 'ShapeRange' property of the receiver.
		ShapeRange* ShapeRange"

	^ExcelShapeRange attachInterface: (self getPropertyId: 1528)
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

top
	"Answer the <double> value of the 'Top' property of the receiver.
		double Top"

	^(self getPropertyId: 126)
!

top: arg1
	"Set the 'Top' property of the receiver to the <double> value of the argument.
		void Top"

	self setPropertyId: 126 value: arg1
!

width
	"Answer the <double> value of the 'Width' property of the receiver.
		double Width"

	^(self getPropertyId: 122)
!

width: arg1
	"Set the 'Width' property of the receiver to the <double> value of the argument.
		void Width"

	self setPropertyId: 122 value: arg1
! !
!ExcelDialogFrame categoriesFor: #_dummy10!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy17!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy18!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy20!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy22!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy23!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy25!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy3!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy4!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy5!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy7!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy8!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #_dummy9!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #application!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #height!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #left!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #lockedText!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #lockedText:!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #name!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #select!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelDialogFrame categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #text!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #top!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #width!**auto generated**!properties!public! !
!ExcelDialogFrame categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelDialogFrame class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDialogFrame initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDialogFrame class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

