"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelTextFrame2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelTextFrame2 guid: (IID fromString: '{000C0398-0000-0000-C000-000000000046}')!
ExcelTextFrame2 comment: '<ExcelTextFrame2> is a wrapper class for the COM interface ''Excel.TextFrame2'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C0398-0000-0000-C000-000000000046), 
	nonextensible, 
	dual
]
interface TextFrame2 : _IMsoDispObj
 {
	[id(0x00000001), propget]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0x00000064), propget]
	HRESULT __stdcall MarginBottom(
		[out, retval]float* MarginBottom);
	[id(0x00000064), propput]
	HRESULT __stdcall MarginBottom(
		[in]float MarginBottom);
	[id(0x00000065), propget]
	HRESULT __stdcall MarginLeft(
		[out, retval]float* MarginLeft);
	[id(0x00000065), propput]
	HRESULT __stdcall MarginLeft(
		[in]float MarginLeft);
	[id(0x00000066), propget]
	HRESULT __stdcall MarginRight(
		[out, retval]float* MarginRight);
	[id(0x00000066), propput]
	HRESULT __stdcall MarginRight(
		[in]float MarginRight);
	[id(0x00000067), propget]
	HRESULT __stdcall MarginTop(
		[out, retval]float* MarginTop);
	[id(0x00000067), propput]
	HRESULT __stdcall MarginTop(
		[in]float MarginTop);
	[id(0x00000068), propget]
	HRESULT __stdcall Orientation(
		[out, retval]MsoTextOrientation* Orientation);
	[id(0x00000068), propput]
	HRESULT __stdcall Orientation(
		[in]MsoTextOrientation Orientation);
	[id(0x00000069), propget]
	HRESULT __stdcall HorizontalAnchor(
		[out, retval]MsoHorizontalAnchor* HorizontalAnchor);
	[id(0x00000069), propput]
	HRESULT __stdcall HorizontalAnchor(
		[in]MsoHorizontalAnchor HorizontalAnchor);
	[id(0x0000006a), propget]
	HRESULT __stdcall VerticalAnchor(
		[out, retval]MsoVerticalAnchor* VerticalAnchor);
	[id(0x0000006a), propput]
	HRESULT __stdcall VerticalAnchor(
		[in]MsoVerticalAnchor VerticalAnchor);
	[id(0x0000006b), propget]
	HRESULT __stdcall PathFormat(
		[out, retval]MsoPathFormat* PathFormat);
	[id(0x0000006b), propput]
	HRESULT __stdcall PathFormat(
		[in]MsoPathFormat PathFormat);
	[id(0x0000006c), propget]
	HRESULT __stdcall WarpFormat(
		[out, retval]MsoWarpFormat* WarpFormat);
	[id(0x0000006c), propput]
	HRESULT __stdcall WarpFormat(
		[in]MsoWarpFormat WarpFormat);
	[id(0x0000006d), propget]
	HRESULT __stdcall WordArtformat(
		[out, retval]MsoPresetTextEffect* WordArtformat);
	[id(0x0000006d), propput]
	HRESULT __stdcall WordArtformat(
		[in]MsoPresetTextEffect WordArtformat);
	[id(0x0000006e), propget]
	HRESULT __stdcall WordWrap(
		[out, retval]MsoTriState* WordWrap);
	[id(0x0000006e), propput]
	HRESULT __stdcall WordWrap(
		[in]MsoTriState WordWrap);
	[id(0x0000006f), propget]
	HRESULT __stdcall AutoSize(
		[out, retval]MsoAutoSize* AutoSize);
	[id(0x0000006f), propput]
	HRESULT __stdcall AutoSize(
		[in]MsoAutoSize AutoSize);
	[id(0x00000070), propget]
	HRESULT __stdcall ThreeD(
		[out, retval]ThreeDFormat** ThreeD);
	[id(0x00000071), propget]
	HRESULT __stdcall HasText(
		[out, retval]MsoTriState* pHasText);
	[id(0x00000072), propget]
	HRESULT __stdcall TextRange(
		[out, retval]TextRange2** Range);
	[id(0x00000073), propget]
	HRESULT __stdcall Column(
		[out, retval]TextColumn2** Column);
	[id(0x00000074), propget]
	HRESULT __stdcall Ruler(
		[out, retval]Ruler2** Ruler);
	[id(0x00000075)]
	HRESULT __stdcall DeleteText();
};
'!
!ExcelTextFrame2 categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelTextFrame2 methodsFor!

autoSize
	"Answer the <sdword> value of the 'AutoSize' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AutoSize: answer.
	^answer asObject
!

autoSize: autoSize
	"Set the 'AutoSize' property of the receiver to the <sdword> value of the argument."

	self put_AutoSize: autoSize
!

column
	"Answer the <OfficeTextColumn2> value of the 'Column' property of the receiver."

	| answer |
	answer := OfficeTextColumn2 newPointer.
	self get_Column: answer.
	^answer asObject
!

deleteText
	"Invoke the DeleteText() method of the COM object."

	^self DeleteText
!

DeleteText
	"Private - Invoke the DeleteText() method of the COM object.

		HRESULT __stdcall DeleteText();"

	<virtual stdcall: hresult 40>
	^self invalidCall!

get_AutoSize: autoSize
	"Private - Get the value of the 'AutoSize' property of the receiver.

		HRESULT __stdcall AutoSize(
			[out, retval]MsoAutoSize* AutoSize);"

	<virtual stdcall: hresult 33 sdword*>
	^self invalidCall!

get_Column: column
	"Private - Get the value of the 'Column' property of the receiver.

		HRESULT __stdcall Column(
			[out, retval]TextColumn2** Column);"

	<virtual stdcall: hresult 38 OfficeTextColumn2**>
	^self invalidCall!

get_HasText: pHasText
	"Private - Get the value of the 'HasText' property of the receiver.

		HRESULT __stdcall HasText(
			[out, retval]MsoTriState* pHasText);"

	<virtual stdcall: hresult 36 sdword*>
	^self invalidCall!

get_HorizontalAnchor: horizontalAnchor
	"Private - Get the value of the 'HorizontalAnchor' property of the receiver.

		HRESULT __stdcall HorizontalAnchor(
			[out, retval]MsoHorizontalAnchor* HorizontalAnchor);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

get_MarginBottom: marginBottom
	"Private - Get the value of the 'MarginBottom' property of the receiver.

		HRESULT __stdcall MarginBottom(
			[out, retval]float* MarginBottom);"

	<virtual stdcall: hresult 11 float*>
	^self invalidCall!

get_MarginLeft: marginLeft
	"Private - Get the value of the 'MarginLeft' property of the receiver.

		HRESULT __stdcall MarginLeft(
			[out, retval]float* MarginLeft);"

	<virtual stdcall: hresult 13 float*>
	^self invalidCall!

get_MarginRight: marginRight
	"Private - Get the value of the 'MarginRight' property of the receiver.

		HRESULT __stdcall MarginRight(
			[out, retval]float* MarginRight);"

	<virtual stdcall: hresult 15 float*>
	^self invalidCall!

get_MarginTop: marginTop
	"Private - Get the value of the 'MarginTop' property of the receiver.

		HRESULT __stdcall MarginTop(
			[out, retval]float* MarginTop);"

	<virtual stdcall: hresult 17 float*>
	^self invalidCall!

get_Orientation: orientation
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]MsoTextOrientation* Orientation);"

	<virtual stdcall: hresult 19 sdword*>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PathFormat: pathFormat
	"Private - Get the value of the 'PathFormat' property of the receiver.

		HRESULT __stdcall PathFormat(
			[out, retval]MsoPathFormat* PathFormat);"

	<virtual stdcall: hresult 25 sdword*>
	^self invalidCall!

get_Ruler: ruler
	"Private - Get the value of the 'Ruler' property of the receiver.

		HRESULT __stdcall Ruler(
			[out, retval]Ruler2** Ruler);"

	<virtual stdcall: hresult 39 OfficeRuler2**>
	^self invalidCall!

get_TextRange: range
	"Private - Get the value of the 'TextRange' property of the receiver.

		HRESULT __stdcall TextRange(
			[out, retval]TextRange2** Range);"

	<virtual stdcall: hresult 37 OfficeTextRange2**>
	^self invalidCall!

get_ThreeD: threeD
	"Private - Get the value of the 'ThreeD' property of the receiver.

		HRESULT __stdcall ThreeD(
			[out, retval]ThreeDFormat** ThreeD);"

	<virtual stdcall: hresult 35 ExcelThreeDFormat**>
	^self invalidCall!

get_VerticalAnchor: verticalAnchor
	"Private - Get the value of the 'VerticalAnchor' property of the receiver.

		HRESULT __stdcall VerticalAnchor(
			[out, retval]MsoVerticalAnchor* VerticalAnchor);"

	<virtual stdcall: hresult 23 sdword*>
	^self invalidCall!

get_WarpFormat: warpFormat
	"Private - Get the value of the 'WarpFormat' property of the receiver.

		HRESULT __stdcall WarpFormat(
			[out, retval]MsoWarpFormat* WarpFormat);"

	<virtual stdcall: hresult 27 sdword*>
	^self invalidCall!

get_WordArtformat: wordArtformat
	"Private - Get the value of the 'WordArtformat' property of the receiver.

		HRESULT __stdcall WordArtformat(
			[out, retval]MsoPresetTextEffect* WordArtformat);"

	<virtual stdcall: hresult 29 sdword*>
	^self invalidCall!

get_WordWrap: wordWrap
	"Private - Get the value of the 'WordWrap' property of the receiver.

		HRESULT __stdcall WordWrap(
			[out, retval]MsoTriState* WordWrap);"

	<virtual stdcall: hresult 31 sdword*>
	^self invalidCall!

hasText
	"Answer the <sdword> value of the 'HasText' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HasText: answer.
	^answer asObject
!

horizontalAnchor
	"Answer the <sdword> value of the 'HorizontalAnchor' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HorizontalAnchor: answer.
	^answer asObject
!

horizontalAnchor: horizontalAnchor
	"Set the 'HorizontalAnchor' property of the receiver to the <sdword> value of the argument."

	self put_HorizontalAnchor: horizontalAnchor
!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

marginBottom
	"Answer the <float> value of the 'MarginBottom' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_MarginBottom: answer.
	^answer asObject
!

marginBottom: marginBottom
	"Set the 'MarginBottom' property of the receiver to the <float> value of the argument."

	self put_MarginBottom: marginBottom
!

marginLeft
	"Answer the <float> value of the 'MarginLeft' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_MarginLeft: answer.
	^answer asObject
!

marginLeft: marginLeft
	"Set the 'MarginLeft' property of the receiver to the <float> value of the argument."

	self put_MarginLeft: marginLeft
!

marginRight
	"Answer the <float> value of the 'MarginRight' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_MarginRight: answer.
	^answer asObject
!

marginRight: marginRight
	"Set the 'MarginRight' property of the receiver to the <float> value of the argument."

	self put_MarginRight: marginRight
!

marginTop
	"Answer the <float> value of the 'MarginTop' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_MarginTop: answer.
	^answer asObject
!

marginTop: marginTop
	"Set the 'MarginTop' property of the receiver to the <float> value of the argument."

	self put_MarginTop: marginTop
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Orientation: answer.
	^answer asObject
!

orientation: orientation
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument."

	self put_Orientation: orientation
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pathFormat
	"Answer the <sdword> value of the 'PathFormat' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PathFormat: answer.
	^answer asObject
!

pathFormat: pathFormat
	"Set the 'PathFormat' property of the receiver to the <sdword> value of the argument."

	self put_PathFormat: pathFormat
!

put_AutoSize: autoSize
	"Private - Set the value of the 'AutoSize' property of the object wrapped by the 
	 receiver to the <sdword> argument, autoSize.

		HRESULT __stdcall AutoSize(
			[in]MsoAutoSize AutoSize);"

	<virtual stdcall: hresult 34 sdword>
	^self invalidCall!

put_HorizontalAnchor: horizontalAnchor
	"Private - Set the value of the 'HorizontalAnchor' property of the object wrapped by the 
	 receiver to the <sdword> argument, horizontalAnchor.

		HRESULT __stdcall HorizontalAnchor(
			[in]MsoHorizontalAnchor HorizontalAnchor);"

	<virtual stdcall: hresult 22 sdword>
	^self invalidCall!

put_MarginBottom: marginBottom
	"Private - Set the value of the 'MarginBottom' property of the object wrapped by the 
	 receiver to the <float> argument, marginBottom.

		HRESULT __stdcall MarginBottom(
			[in]float MarginBottom);"

	<virtual stdcall: hresult 12 float>
	^self invalidCall!

put_MarginLeft: marginLeft
	"Private - Set the value of the 'MarginLeft' property of the object wrapped by the 
	 receiver to the <float> argument, marginLeft.

		HRESULT __stdcall MarginLeft(
			[in]float MarginLeft);"

	<virtual stdcall: hresult 14 float>
	^self invalidCall!

put_MarginRight: marginRight
	"Private - Set the value of the 'MarginRight' property of the object wrapped by the 
	 receiver to the <float> argument, marginRight.

		HRESULT __stdcall MarginRight(
			[in]float MarginRight);"

	<virtual stdcall: hresult 16 float>
	^self invalidCall!

put_MarginTop: marginTop
	"Private - Set the value of the 'MarginTop' property of the object wrapped by the 
	 receiver to the <float> argument, marginTop.

		HRESULT __stdcall MarginTop(
			[in]float MarginTop);"

	<virtual stdcall: hresult 18 float>
	^self invalidCall!

put_Orientation: orientation
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <sdword> argument, orientation.

		HRESULT __stdcall Orientation(
			[in]MsoTextOrientation Orientation);"

	<virtual stdcall: hresult 20 sdword>
	^self invalidCall!

put_PathFormat: pathFormat
	"Private - Set the value of the 'PathFormat' property of the object wrapped by the 
	 receiver to the <sdword> argument, pathFormat.

		HRESULT __stdcall PathFormat(
			[in]MsoPathFormat PathFormat);"

	<virtual stdcall: hresult 26 sdword>
	^self invalidCall!

put_VerticalAnchor: verticalAnchor
	"Private - Set the value of the 'VerticalAnchor' property of the object wrapped by the 
	 receiver to the <sdword> argument, verticalAnchor.

		HRESULT __stdcall VerticalAnchor(
			[in]MsoVerticalAnchor VerticalAnchor);"

	<virtual stdcall: hresult 24 sdword>
	^self invalidCall!

put_WarpFormat: warpFormat
	"Private - Set the value of the 'WarpFormat' property of the object wrapped by the 
	 receiver to the <sdword> argument, warpFormat.

		HRESULT __stdcall WarpFormat(
			[in]MsoWarpFormat WarpFormat);"

	<virtual stdcall: hresult 28 sdword>
	^self invalidCall!

put_WordArtformat: wordArtformat
	"Private - Set the value of the 'WordArtformat' property of the object wrapped by the 
	 receiver to the <sdword> argument, wordArtformat.

		HRESULT __stdcall WordArtformat(
			[in]MsoPresetTextEffect WordArtformat);"

	<virtual stdcall: hresult 30 sdword>
	^self invalidCall!

put_WordWrap: wordWrap
	"Private - Set the value of the 'WordWrap' property of the object wrapped by the 
	 receiver to the <sdword> argument, wordWrap.

		HRESULT __stdcall WordWrap(
			[in]MsoTriState WordWrap);"

	<virtual stdcall: hresult 32 sdword>
	^self invalidCall!

ruler
	"Answer the <OfficeRuler2> value of the 'Ruler' property of the receiver."

	| answer |
	answer := OfficeRuler2 newPointer.
	self get_Ruler: answer.
	^answer asObject
!

textRange
	"Answer the <OfficeTextRange2> value of the 'TextRange' property of the receiver."

	| answer |
	answer := OfficeTextRange2 newPointer.
	self get_TextRange: answer.
	^answer asObject
!

threeD
	"Answer the <ExcelThreeDFormat> value of the 'ThreeD' property of the receiver."

	| answer |
	answer := ExcelThreeDFormat newPointer.
	self get_ThreeD: answer.
	^answer asObject
!

verticalAnchor
	"Answer the <sdword> value of the 'VerticalAnchor' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_VerticalAnchor: answer.
	^answer asObject
!

verticalAnchor: verticalAnchor
	"Set the 'VerticalAnchor' property of the receiver to the <sdword> value of the argument."

	self put_VerticalAnchor: verticalAnchor
!

warpFormat
	"Answer the <sdword> value of the 'WarpFormat' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_WarpFormat: answer.
	^answer asObject
!

warpFormat: warpFormat
	"Set the 'WarpFormat' property of the receiver to the <sdword> value of the argument."

	self put_WarpFormat: warpFormat
!

wordArtformat
	"Answer the <sdword> value of the 'WordArtformat' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_WordArtformat: answer.
	^answer asObject
!

wordArtformat: wordArtformat
	"Set the 'WordArtformat' property of the receiver to the <sdword> value of the argument."

	self put_WordArtformat: wordArtformat
!

wordWrap
	"Answer the <sdword> value of the 'WordWrap' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_WordWrap: answer.
	^answer asObject
!

wordWrap: wordWrap
	"Set the 'WordWrap' property of the receiver to the <sdword> value of the argument."

	self put_WordWrap: wordWrap
! !
!ExcelTextFrame2 categoriesFor: #autoSize!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #autoSize:!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #column!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #deleteText!**auto generated**!methods!public! !
!ExcelTextFrame2 categoriesFor: #DeleteText!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_AutoSize:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_Column:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_HasText:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_HorizontalAnchor:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_MarginBottom:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_MarginLeft:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_MarginRight:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_MarginTop:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_PathFormat:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_Ruler:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_TextRange:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_ThreeD:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_VerticalAnchor:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_WarpFormat:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_WordArtformat:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #get_WordWrap:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #hasText!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #horizontalAnchor!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #horizontalAnchor:!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelTextFrame2 categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelTextFrame2 categoriesFor: #marginBottom!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #marginBottom:!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #marginLeft!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #marginLeft:!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #marginRight!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #marginRight:!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #marginTop!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #marginTop:!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #pathFormat!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #pathFormat:!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #put_AutoSize:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #put_HorizontalAnchor:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #put_MarginBottom:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #put_MarginLeft:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #put_MarginRight:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #put_MarginTop:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #put_PathFormat:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #put_VerticalAnchor:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #put_WarpFormat:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #put_WordArtformat:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #put_WordWrap:!**auto generated**!COM Interfaces-TextFrame2!private! !
!ExcelTextFrame2 categoriesFor: #ruler!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #textRange!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #threeD!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #verticalAnchor!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #verticalAnchor:!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #warpFormat!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #warpFormat:!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #wordArtformat!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #wordArtformat:!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #wordWrap!**auto generated**!properties!public! !
!ExcelTextFrame2 categoriesFor: #wordWrap:!**auto generated**!properties!public! !

!ExcelTextFrame2 class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.TextFrame2'
		ExcelTextFrame2 defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_MarginBottom:
			argumentTypes: 'float*';
		defineFunction: #put_MarginBottom:
			argumentTypes: 'float';
		defineFunction: #get_MarginLeft:
			argumentTypes: 'float*';
		defineFunction: #put_MarginLeft:
			argumentTypes: 'float';
		defineFunction: #get_MarginRight:
			argumentTypes: 'float*';
		defineFunction: #put_MarginRight:
			argumentTypes: 'float';
		defineFunction: #get_MarginTop:
			argumentTypes: 'float*';
		defineFunction: #put_MarginTop:
			argumentTypes: 'float';
		defineFunction: #get_Orientation:
			argumentTypes: 'sdword*';
		defineFunction: #put_Orientation:
			argumentTypes: 'sdword';
		defineFunction: #get_HorizontalAnchor:
			argumentTypes: 'sdword*';
		defineFunction: #put_HorizontalAnchor:
			argumentTypes: 'sdword';
		defineFunction: #get_VerticalAnchor:
			argumentTypes: 'sdword*';
		defineFunction: #put_VerticalAnchor:
			argumentTypes: 'sdword';
		defineFunction: #get_PathFormat:
			argumentTypes: 'sdword*';
		defineFunction: #put_PathFormat:
			argumentTypes: 'sdword';
		defineFunction: #get_WarpFormat:
			argumentTypes: 'sdword*';
		defineFunction: #put_WarpFormat:
			argumentTypes: 'sdword';
		defineFunction: #get_WordArtformat:
			argumentTypes: 'sdword*';
		defineFunction: #put_WordArtformat:
			argumentTypes: 'sdword';
		defineFunction: #get_WordWrap:
			argumentTypes: 'sdword*';
		defineFunction: #put_WordWrap:
			argumentTypes: 'sdword';
		defineFunction: #get_AutoSize:
			argumentTypes: 'sdword*';
		defineFunction: #put_AutoSize:
			argumentTypes: 'sdword';
		defineFunction: #get_ThreeD:
			argumentTypes: 'ExcelThreeDFormat**';
		defineFunction: #get_HasText:
			argumentTypes: 'sdword*';
		defineFunction: #get_TextRange:
			argumentTypes: 'OfficeTextRange2**';
		defineFunction: #get_Column:
			argumentTypes: 'OfficeTextColumn2**';
		defineFunction: #get_Ruler:
			argumentTypes: 'OfficeRuler2**';
		defineFunction: #DeleteText
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelTextFrame2 initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelTextFrame2 class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelTextFrame2 class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

