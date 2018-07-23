"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelEditBox
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelEditBox guid: (IID fromString: '{00020883-0000-0000-C000-000000000046}')!
ExcelEditBox comment: '<ExcelEditBox> is a wrapper class generated for the dispatch interface ''Excel.EditBox'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020883-0000-0000-C000-000000000046), 
	helpcontext(0x00020043), 
	hidden
]
dispinterface EditBox {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000267), propget, helpcontext(0x00010267)]
		Range* BottomRightCell();
[id(0x0000025a), helpcontext(0x0001025a)]
		VARIANT BringToFront();
[id(0x00000227), helpcontext(0x00010227)]
		VARIANT Copy();
[id(0x000000d5), helpcontext(0x000100d5)]
		VARIANT CopyPicture(
			[in, defaultvalue(2)]XlPictureAppearance Appearance,
			[in, defaultvalue(-4147)]XlCopyPictureFormat Format);
[id(0x00000235), helpcontext(0x00010235)]
		VARIANT Cut();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x0000040f), helpcontext(0x0001040f)]
		IDispatch* Duplicate();
[id(0x00000258), propget, helpcontext(0x00010258)]
		VARIANT_BOOL Enabled();
[id(0x00000258), propput, helpcontext(0x00010258)]
		void Enabled(
			[in]VARIANT_BOOL arg1);
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		double Height();
[id(0x0000007b), propput, helpcontext(0x0001007b)]
		void Height(
			[in]double arg1);
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
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
[id(0x00000269), propget, helpcontext(0x00010269)]
		VARIANT Placement();
[id(0x00000269), propput, helpcontext(0x00010269)]
		void Placement(
			[in]VARIANT arg1);
[id(0x0000026a), propget, helpcontext(0x0001026a)]
		VARIANT_BOOL PrintObject();
[id(0x0000026a), propput, helpcontext(0x0001026a)]
		void PrintObject(
			[in]VARIANT_BOOL arg1);
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select(
			[in, optional]VARIANT Replace);
[id(0x0000025d), helpcontext(0x0001025d)]
		VARIANT SendToBack();
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		double Top();
[id(0x0000007e), propput, helpcontext(0x0001007e)]
		void Top(
			[in]double arg1);
[id(0x0000026c), propget, helpcontext(0x0001026c)]
		Range* TopLeftCell();
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		VARIANT_BOOL Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]VARIANT_BOOL arg1);
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		double Width();
[id(0x0000007a), propput, helpcontext(0x0001007a)]
		void Width(
			[in]double arg1);
[id(0x0000026e), propget, helpcontext(0x0001026e)]
		long ZOrder();
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
[id(0x0000039a), propget, helpcontext(0x0001039a)]
		VARIANT_BOOL DisplayVerticalScrollBar();
[id(0x0000039a), propput, helpcontext(0x0001039a)]
		void DisplayVerticalScrollBar(
			[in]VARIANT_BOOL arg1);
[id(0x00000356), propget, helpcontext(0x00010356)]
		long InputType();
[id(0x00000356), propput, helpcontext(0x00010356)]
		void InputType(
			[in]long arg1);
[id(0x0000035e), propget, helpcontext(0x0001035e)]
		BSTR LinkedObject();
[id(0x00000357), propget, helpcontext(0x00010357)]
		VARIANT_BOOL MultiLine();
[id(0x00000357), propput, helpcontext(0x00010357)]
		void MultiLine(
			[in]VARIANT_BOOL arg1);
[id(0x0000048a), propget, helpcontext(0x0001048a)]
		VARIANT_BOOL PasswordEdit();
[id(0x0000048a), propput, helpcontext(0x0001048a)]
		void PasswordEdit(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelEditBox categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelEditBox methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

bottomRightCell
	"Answer the <ExcelRange> value of the 'BottomRightCell' property of the receiver.
		Range* BottomRightCell"

	^ExcelRange attachInterface: (self getPropertyId: 615)
!

bringToFront
	"Answer the <VARIANT> result of invoking the BringToFront() method of the COM object."

	^(self invokeId: 602)
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

copy
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object."

	^(self invokeId: 551)
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

cut
	"Answer the <VARIANT> result of invoking the Cut() method of the COM object."

	^(self invokeId: 565)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

displayVerticalScrollBar
	"Answer the <varbool> value of the 'DisplayVerticalScrollBar' property of the receiver.
		VARIANT_BOOL DisplayVerticalScrollBar"

	^(self getPropertyId: 922)
!

displayVerticalScrollBar: arg1
	"Set the 'DisplayVerticalScrollBar' property of the receiver to the <varbool> value of the argument.
		void DisplayVerticalScrollBar"

	self setPropertyId: 922 value: arg1
!

duplicate
	"Answer the <IDispatch> result of invoking the Duplicate() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 1039)
!

enabled
	"Answer the <varbool> value of the 'Enabled' property of the receiver.
		VARIANT_BOOL Enabled"

	^(self getPropertyId: 600)
!

enabled: arg1
	"Set the 'Enabled' property of the receiver to the <varbool> value of the argument.
		void Enabled"

	self setPropertyId: 600 value: arg1
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

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

inputType
	"Answer the <sdword> value of the 'InputType' property of the receiver.
		long InputType"

	^(self getPropertyId: 854)
!

inputType: arg1
	"Set the 'InputType' property of the receiver to the <sdword> value of the argument.
		void InputType"

	self setPropertyId: 854 value: arg1
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

linkedObject
	"Answer the <bstr> value of the 'LinkedObject' property of the receiver.
		BSTR LinkedObject"

	^(self getPropertyId: 862)
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

multiLine
	"Answer the <varbool> value of the 'MultiLine' property of the receiver.
		VARIANT_BOOL MultiLine"

	^(self getPropertyId: 855)
!

multiLine: arg1
	"Set the 'MultiLine' property of the receiver to the <varbool> value of the argument.
		void MultiLine"

	self setPropertyId: 855 value: arg1
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

passwordEdit
	"Answer the <varbool> value of the 'PasswordEdit' property of the receiver.
		VARIANT_BOOL PasswordEdit"

	^(self getPropertyId: 1162)
!

passwordEdit: arg1
	"Set the 'PasswordEdit' property of the receiver to the <varbool> value of the argument.
		void PasswordEdit"

	self setPropertyId: 1162 value: arg1
!

placement
	"Answer the <variant> value of the 'Placement' property of the receiver.
		VARIANT Placement"

	^(self getPropertyId: 617)
!

placement: arg1
	"Set the 'Placement' property of the receiver to the <variant> value of the argument.
		void Placement"

	self setPropertyId: 617 value: arg1
!

printObject
	"Answer the <varbool> value of the 'PrintObject' property of the receiver.
		VARIANT_BOOL PrintObject"

	^(self getPropertyId: 618)
!

printObject: arg1
	"Set the 'PrintObject' property of the receiver to the <varbool> value of the argument.
		void PrintObject"

	self setPropertyId: 618 value: arg1
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object.
	Default values are passed for all optional parameters."

	^self select: VARIANT unspecified!

select: replace
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235 with: replace)
!

sendToBack
	"Answer the <VARIANT> result of invoking the SendToBack() method of the COM object."

	^(self invokeId: 605)
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

topLeftCell
	"Answer the <ExcelRange> value of the 'TopLeftCell' property of the receiver.
		Range* TopLeftCell"

	^ExcelRange attachInterface: (self getPropertyId: 620)
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
!

zOrder
	"Answer the <sdword> value of the 'ZOrder' property of the receiver.
		long ZOrder"

	^(self getPropertyId: 622)
! !
!ExcelEditBox categoriesFor: #application!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #bottomRightCell!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #bringToFront!**auto generated**!methods!public! !
!ExcelEditBox categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelEditBox categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelEditBox categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelEditBox categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelEditBox categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelEditBox categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelEditBox categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelEditBox categoriesFor: #displayVerticalScrollBar!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #displayVerticalScrollBar:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelEditBox categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #height!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #index!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #inputType!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #inputType:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #left!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #linkedObject!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #lockedText!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #lockedText:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #multiLine!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #multiLine:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #name!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #passwordEdit!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #passwordEdit:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #placement!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #placement:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #printObject!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #printObject:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #select!**auto generated**!methods!public! !
!ExcelEditBox categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelEditBox categoriesFor: #sendToBack!**auto generated**!methods!public! !
!ExcelEditBox categoriesFor: #shapeRange!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #text!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #top!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #topLeftCell!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #width!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelEditBox categoriesFor: #zOrder!**auto generated**!properties!public! !

!ExcelEditBox class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelEditBox initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelEditBox class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

