"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelTextEffectFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelTextEffectFormat guid: (IID fromString: '{000C031F-0000-0000-C000-000000000046}')!
ExcelTextEffectFormat comment: '<ExcelTextEffectFormat> is a wrapper class for the COM interface ''Excel.TextEffectFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C031F-0000-0000-C000-000000000046), 
	helpcontext(0x0001ccf0), 
	nonextensible, 
	dual
]
interface TextEffectFormat : _IMsoDispObj
 {
	[id(0x00000001), propget, helpcontext(0x0001ccf1)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0x0000000a), helpcontext(0x0001cd04)]
	HRESULT __stdcall ToggleVerticalText();
	[id(0x00000064), propget, helpcontext(0x0001ccf2)]
	HRESULT __stdcall Alignment(
		[out, retval]MsoTextEffectAlignment* Alignment);
	[id(0x00000064), propput, helpcontext(0x0001ccf2)]
	HRESULT __stdcall Alignment(
		[in]MsoTextEffectAlignment Alignment);
	[id(0x00000065), propget, helpcontext(0x0001ccf3)]
	HRESULT __stdcall FontBold(
		[out, retval]MsoTriState* FontBold);
	[id(0x00000065), propput, helpcontext(0x0001ccf3)]
	HRESULT __stdcall FontBold(
		[in]MsoTriState FontBold);
	[id(0x00000066), propget, helpcontext(0x0001ccf4)]
	HRESULT __stdcall FontItalic(
		[out, retval]MsoTriState* FontItalic);
	[id(0x00000066), propput, helpcontext(0x0001ccf4)]
	HRESULT __stdcall FontItalic(
		[in]MsoTriState FontItalic);
	[id(0x00000067), propget, helpcontext(0x0001ccf5)]
	HRESULT __stdcall FontName(
		[out, retval]BSTR* FontName);
	[id(0x00000067), propput, helpcontext(0x0001ccf5)]
	HRESULT __stdcall FontName(
		[in]BSTR FontName);
	[id(0x00000068), propget, helpcontext(0x0001ccf6)]
	HRESULT __stdcall FontSize(
		[out, retval]float* FontSize);
	[id(0x00000068), propput, helpcontext(0x0001ccf6)]
	HRESULT __stdcall FontSize(
		[in]float FontSize);
	[id(0x00000069), propget, helpcontext(0x0001ccf7)]
	HRESULT __stdcall KernedPairs(
		[out, retval]MsoTriState* KernedPairs);
	[id(0x00000069), propput, helpcontext(0x0001ccf7)]
	HRESULT __stdcall KernedPairs(
		[in]MsoTriState KernedPairs);
	[id(0x0000006a), propget, helpcontext(0x0001ccf8)]
	HRESULT __stdcall NormalizedHeight(
		[out, retval]MsoTriState* NormalizedHeight);
	[id(0x0000006a), propput, helpcontext(0x0001ccf8)]
	HRESULT __stdcall NormalizedHeight(
		[in]MsoTriState NormalizedHeight);
	[id(0x0000006b), propget, helpcontext(0x0001ccf9)]
	HRESULT __stdcall PresetShape(
		[out, retval]MsoPresetTextEffectShape* PresetShape);
	[id(0x0000006b), propput, helpcontext(0x0001ccf9)]
	HRESULT __stdcall PresetShape(
		[in]MsoPresetTextEffectShape PresetShape);
	[id(0x0000006c), propget, helpcontext(0x0001ccfa)]
	HRESULT __stdcall PresetTextEffect(
		[out, retval]MsoPresetTextEffect* Preset);
	[id(0x0000006c), propput, helpcontext(0x0001ccfa)]
	HRESULT __stdcall PresetTextEffect(
		[in]MsoPresetTextEffect Preset);
	[id(0x0000006d), propget, helpcontext(0x0001ccfb)]
	HRESULT __stdcall RotatedChars(
		[out, retval]MsoTriState* RotatedChars);
	[id(0x0000006d), propput, helpcontext(0x0001ccfb)]
	HRESULT __stdcall RotatedChars(
		[in]MsoTriState RotatedChars);
	[id(0x0000006e), propget, helpcontext(0x0001ccfc)]
	HRESULT __stdcall Text(
		[out, retval]BSTR* Text);
	[id(0x0000006e), propput, helpcontext(0x0001ccfc)]
	HRESULT __stdcall Text(
		[in]BSTR Text);
	[id(0x0000006f), propget, helpcontext(0x0001ccfd)]
	HRESULT __stdcall Tracking(
		[out, retval]float* Tracking);
	[id(0x0000006f), propput, helpcontext(0x0001ccfd)]
	HRESULT __stdcall Tracking(
		[in]float Tracking);
};
'!
!ExcelTextEffectFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelTextEffectFormat methodsFor!

alignment: alignment
	"Set the 'Alignment' property of the receiver to the <sdword> value of the argument."

	self put_Alignment: alignment
!

alignment_
	"Answer the <sdword> value of the 'Alignment' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Alignment: answer.
	^answer asObject
!

fontBold
	"Answer the <sdword> value of the 'FontBold' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_FontBold: answer.
	^answer asObject
!

fontBold: fontBold
	"Set the 'FontBold' property of the receiver to the <sdword> value of the argument."

	self put_FontBold: fontBold
!

fontItalic
	"Answer the <sdword> value of the 'FontItalic' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_FontItalic: answer.
	^answer asObject
!

fontItalic: fontItalic
	"Set the 'FontItalic' property of the receiver to the <sdword> value of the argument."

	self put_FontItalic: fontItalic
!

fontName
	"Answer the <bstr> value of the 'FontName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_FontName: answer.
	^answer asObject
!

fontName: fontName
	"Set the 'FontName' property of the receiver to the <bstr> value of the argument."

	self put_FontName: fontName
!

fontSize
	"Answer the <float> value of the 'FontSize' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_FontSize: answer.
	^answer asObject
!

fontSize: fontSize
	"Set the 'FontSize' property of the receiver to the <float> value of the argument."

	self put_FontSize: fontSize
!

get_Alignment: alignment
	"Private - Get the value of the 'Alignment' property of the receiver.

		HRESULT __stdcall Alignment(
			[out, retval]MsoTextEffectAlignment* Alignment);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_FontBold: fontBold
	"Private - Get the value of the 'FontBold' property of the receiver.

		HRESULT __stdcall FontBold(
			[out, retval]MsoTriState* FontBold);"

	<virtual stdcall: hresult 14 sdword*>
	^self invalidCall!

get_FontItalic: fontItalic
	"Private - Get the value of the 'FontItalic' property of the receiver.

		HRESULT __stdcall FontItalic(
			[out, retval]MsoTriState* FontItalic);"

	<virtual stdcall: hresult 16 sdword*>
	^self invalidCall!

get_FontName: fontName
	"Private - Get the value of the 'FontName' property of the receiver.

		HRESULT __stdcall FontName(
			[out, retval]BSTR* FontName);"

	<virtual stdcall: hresult 18 bstr*>
	^self invalidCall!

get_FontSize: fontSize
	"Private - Get the value of the 'FontSize' property of the receiver.

		HRESULT __stdcall FontSize(
			[out, retval]float* FontSize);"

	<virtual stdcall: hresult 20 float*>
	^self invalidCall!

get_KernedPairs: kernedPairs
	"Private - Get the value of the 'KernedPairs' property of the receiver.

		HRESULT __stdcall KernedPairs(
			[out, retval]MsoTriState* KernedPairs);"

	<virtual stdcall: hresult 22 sdword*>
	^self invalidCall!

get_NormalizedHeight: normalizedHeight
	"Private - Get the value of the 'NormalizedHeight' property of the receiver.

		HRESULT __stdcall NormalizedHeight(
			[out, retval]MsoTriState* NormalizedHeight);"

	<virtual stdcall: hresult 24 sdword*>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PresetShape: presetShape
	"Private - Get the value of the 'PresetShape' property of the receiver.

		HRESULT __stdcall PresetShape(
			[out, retval]MsoPresetTextEffectShape* PresetShape);"

	<virtual stdcall: hresult 26 sdword*>
	^self invalidCall!

get_PresetTextEffect: preset
	"Private - Get the value of the 'PresetTextEffect' property of the receiver.

		HRESULT __stdcall PresetTextEffect(
			[out, retval]MsoPresetTextEffect* Preset);"

	<virtual stdcall: hresult 28 sdword*>
	^self invalidCall!

get_RotatedChars: rotatedChars
	"Private - Get the value of the 'RotatedChars' property of the receiver.

		HRESULT __stdcall RotatedChars(
			[out, retval]MsoTriState* RotatedChars);"

	<virtual stdcall: hresult 30 sdword*>
	^self invalidCall!

get_Text: text
	"Private - Get the value of the 'Text' property of the receiver.

		HRESULT __stdcall Text(
			[out, retval]BSTR* Text);"

	<virtual stdcall: hresult 32 bstr*>
	^self invalidCall!

get_Tracking: tracking
	"Private - Get the value of the 'Tracking' property of the receiver.

		HRESULT __stdcall Tracking(
			[out, retval]float* Tracking);"

	<virtual stdcall: hresult 34 float*>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

kernedPairs
	"Answer the <sdword> value of the 'KernedPairs' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_KernedPairs: answer.
	^answer asObject
!

kernedPairs: kernedPairs
	"Set the 'KernedPairs' property of the receiver to the <sdword> value of the argument."

	self put_KernedPairs: kernedPairs
!

normalizedHeight
	"Answer the <sdword> value of the 'NormalizedHeight' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_NormalizedHeight: answer.
	^answer asObject
!

normalizedHeight: normalizedHeight
	"Set the 'NormalizedHeight' property of the receiver to the <sdword> value of the argument."

	self put_NormalizedHeight: normalizedHeight
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

presetShape
	"Answer the <sdword> value of the 'PresetShape' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetShape: answer.
	^answer asObject
!

presetShape: presetShape
	"Set the 'PresetShape' property of the receiver to the <sdword> value of the argument."

	self put_PresetShape: presetShape
!

presetTextEffect
	"Answer the <sdword> value of the 'PresetTextEffect' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetTextEffect: answer.
	^answer asObject
!

presetTextEffect: preset
	"Set the 'PresetTextEffect' property of the receiver to the <sdword> value of the argument."

	self put_PresetTextEffect: preset
!

put_Alignment: alignment
	"Private - Set the value of the 'Alignment' property of the object wrapped by the 
	 receiver to the <sdword> argument, alignment.

		HRESULT __stdcall Alignment(
			[in]MsoTextEffectAlignment Alignment);"

	<virtual stdcall: hresult 13 sdword>
	^self invalidCall!

put_FontBold: fontBold
	"Private - Set the value of the 'FontBold' property of the object wrapped by the 
	 receiver to the <sdword> argument, fontBold.

		HRESULT __stdcall FontBold(
			[in]MsoTriState FontBold);"

	<virtual stdcall: hresult 15 sdword>
	^self invalidCall!

put_FontItalic: fontItalic
	"Private - Set the value of the 'FontItalic' property of the object wrapped by the 
	 receiver to the <sdword> argument, fontItalic.

		HRESULT __stdcall FontItalic(
			[in]MsoTriState FontItalic);"

	<virtual stdcall: hresult 17 sdword>
	^self invalidCall!

put_FontName: fontName
	"Private - Set the value of the 'FontName' property of the object wrapped by the 
	 receiver to the <bstr> argument, fontName.

		HRESULT __stdcall FontName(
			[in]BSTR FontName);"

	<virtual stdcall: hresult 19 bstr>
	^self invalidCall!

put_FontSize: fontSize
	"Private - Set the value of the 'FontSize' property of the object wrapped by the 
	 receiver to the <float> argument, fontSize.

		HRESULT __stdcall FontSize(
			[in]float FontSize);"

	<virtual stdcall: hresult 21 float>
	^self invalidCall!

put_KernedPairs: kernedPairs
	"Private - Set the value of the 'KernedPairs' property of the object wrapped by the 
	 receiver to the <sdword> argument, kernedPairs.

		HRESULT __stdcall KernedPairs(
			[in]MsoTriState KernedPairs);"

	<virtual stdcall: hresult 23 sdword>
	^self invalidCall!

put_NormalizedHeight: normalizedHeight
	"Private - Set the value of the 'NormalizedHeight' property of the object wrapped by the 
	 receiver to the <sdword> argument, normalizedHeight.

		HRESULT __stdcall NormalizedHeight(
			[in]MsoTriState NormalizedHeight);"

	<virtual stdcall: hresult 25 sdword>
	^self invalidCall!

put_PresetShape: presetShape
	"Private - Set the value of the 'PresetShape' property of the object wrapped by the 
	 receiver to the <sdword> argument, presetShape.

		HRESULT __stdcall PresetShape(
			[in]MsoPresetTextEffectShape PresetShape);"

	<virtual stdcall: hresult 27 sdword>
	^self invalidCall!

put_PresetTextEffect: preset
	"Private - Set the value of the 'PresetTextEffect' property of the object wrapped by the 
	 receiver to the <sdword> argument, preset.

		HRESULT __stdcall PresetTextEffect(
			[in]MsoPresetTextEffect Preset);"

	<virtual stdcall: hresult 29 sdword>
	^self invalidCall!

put_RotatedChars: rotatedChars
	"Private - Set the value of the 'RotatedChars' property of the object wrapped by the 
	 receiver to the <sdword> argument, rotatedChars.

		HRESULT __stdcall RotatedChars(
			[in]MsoTriState RotatedChars);"

	<virtual stdcall: hresult 31 sdword>
	^self invalidCall!

put_Text: text
	"Private - Set the value of the 'Text' property of the object wrapped by the 
	 receiver to the <bstr> argument, text.

		HRESULT __stdcall Text(
			[in]BSTR Text);"

	<virtual stdcall: hresult 33 bstr>
	^self invalidCall!

put_Tracking: tracking
	"Private - Set the value of the 'Tracking' property of the object wrapped by the 
	 receiver to the <float> argument, tracking.

		HRESULT __stdcall Tracking(
			[in]float Tracking);"

	<virtual stdcall: hresult 35 float>
	^self invalidCall!

rotatedChars
	"Answer the <sdword> value of the 'RotatedChars' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_RotatedChars: answer.
	^answer asObject
!

rotatedChars: rotatedChars
	"Set the 'RotatedChars' property of the receiver to the <sdword> value of the argument."

	self put_RotatedChars: rotatedChars
!

text
	"Answer the <bstr> value of the 'Text' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Text: answer.
	^answer asObject
!

text: text
	"Set the 'Text' property of the receiver to the <bstr> value of the argument."

	self put_Text: text
!

toggleVerticalText
	"Invoke the ToggleVerticalText() method of the COM object."

	^self ToggleVerticalText
!

ToggleVerticalText
	"Private - Invoke the ToggleVerticalText() method of the COM object.

		HRESULT __stdcall ToggleVerticalText();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

tracking
	"Answer the <float> value of the 'Tracking' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Tracking: answer.
	^answer asObject
!

tracking: tracking
	"Set the 'Tracking' property of the receiver to the <float> value of the argument."

	self put_Tracking: tracking
! !
!ExcelTextEffectFormat categoriesFor: #alignment:!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #alignment_!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #fontBold!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #fontBold:!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #fontItalic!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #fontItalic:!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #fontName!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #fontName:!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #fontSize!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #fontSize:!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #get_Alignment:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #get_FontBold:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #get_FontItalic:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #get_FontName:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #get_FontSize:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #get_KernedPairs:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #get_NormalizedHeight:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #get_PresetShape:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #get_PresetTextEffect:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #get_RotatedChars:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #get_Text:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #get_Tracking:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelTextEffectFormat categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelTextEffectFormat categoriesFor: #kernedPairs!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #kernedPairs:!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #normalizedHeight!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #normalizedHeight:!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #presetShape!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #presetShape:!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #presetTextEffect!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #presetTextEffect:!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #put_Alignment:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #put_FontBold:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #put_FontItalic:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #put_FontName:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #put_FontSize:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #put_KernedPairs:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #put_NormalizedHeight:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #put_PresetShape:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #put_PresetTextEffect:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #put_RotatedChars:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #put_Text:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #put_Tracking:!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #rotatedChars!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #rotatedChars:!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #text!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #toggleVerticalText!**auto generated**!methods!public! !
!ExcelTextEffectFormat categoriesFor: #ToggleVerticalText!**auto generated**!COM Interfaces-TextEffectFormat!private! !
!ExcelTextEffectFormat categoriesFor: #tracking!**auto generated**!properties!public! !
!ExcelTextEffectFormat categoriesFor: #tracking:!**auto generated**!properties!public! !

!ExcelTextEffectFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.TextEffectFormat'
		ExcelTextEffectFormat defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #ToggleVerticalText;
		defineFunction: #get_Alignment:
			argumentTypes: 'sdword*';
		defineFunction: #put_Alignment:
			argumentTypes: 'sdword';
		defineFunction: #get_FontBold:
			argumentTypes: 'sdword*';
		defineFunction: #put_FontBold:
			argumentTypes: 'sdword';
		defineFunction: #get_FontItalic:
			argumentTypes: 'sdword*';
		defineFunction: #put_FontItalic:
			argumentTypes: 'sdword';
		defineFunction: #get_FontName:
			argumentTypes: 'bstr*';
		defineFunction: #put_FontName:
			argumentTypes: 'bstr';
		defineFunction: #get_FontSize:
			argumentTypes: 'float*';
		defineFunction: #put_FontSize:
			argumentTypes: 'float';
		defineFunction: #get_KernedPairs:
			argumentTypes: 'sdword*';
		defineFunction: #put_KernedPairs:
			argumentTypes: 'sdword';
		defineFunction: #get_NormalizedHeight:
			argumentTypes: 'sdword*';
		defineFunction: #put_NormalizedHeight:
			argumentTypes: 'sdword';
		defineFunction: #get_PresetShape:
			argumentTypes: 'sdword*';
		defineFunction: #put_PresetShape:
			argumentTypes: 'sdword';
		defineFunction: #get_PresetTextEffect:
			argumentTypes: 'sdword*';
		defineFunction: #put_PresetTextEffect:
			argumentTypes: 'sdword';
		defineFunction: #get_RotatedChars:
			argumentTypes: 'sdword*';
		defineFunction: #put_RotatedChars:
			argumentTypes: 'sdword';
		defineFunction: #get_Text:
			argumentTypes: 'bstr*';
		defineFunction: #put_Text:
			argumentTypes: 'bstr';
		defineFunction: #get_Tracking:
			argumentTypes: 'float*';
		defineFunction: #put_Tracking:
			argumentTypes: 'float'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelTextEffectFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelTextEffectFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelTextEffectFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

