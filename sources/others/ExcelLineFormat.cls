"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelLineFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelLineFormat guid: (IID fromString: '{000C0317-0000-0000-C000-000000000046}')!
ExcelLineFormat comment: '<ExcelLineFormat> is a wrapper class for the COM interface ''Excel.LineFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C0317-0000-0000-C000-000000000046), 
	helpcontext(0x0001adb0), 
	nonextensible, 
	dual
]
interface LineFormat : _IMsoDispObj
 {
	[id(0x00000001), propget, helpcontext(0x0001adb1)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0x00000064), propget, helpcontext(0x0001adb2)]
	HRESULT __stdcall BackColor(
		[out, retval]ColorFormat** BackColor);
	[id(0x00000064), propput, helpcontext(0x0001adb2)]
	HRESULT __stdcall BackColor(
		[in]ColorFormat* BackColor);
	[id(0x00000065), propget, helpcontext(0x0001adb3)]
	HRESULT __stdcall BeginArrowheadLength(
		[out, retval]MsoArrowheadLength* BeginArrowheadLength);
	[id(0x00000065), propput, helpcontext(0x0001adb3)]
	HRESULT __stdcall BeginArrowheadLength(
		[in]MsoArrowheadLength BeginArrowheadLength);
	[id(0x00000066), propget, helpcontext(0x0001adb4)]
	HRESULT __stdcall BeginArrowheadStyle(
		[out, retval]MsoArrowheadStyle* BeginArrowheadStyle);
	[id(0x00000066), propput, helpcontext(0x0001adb4)]
	HRESULT __stdcall BeginArrowheadStyle(
		[in]MsoArrowheadStyle BeginArrowheadStyle);
	[id(0x00000067), propget, helpcontext(0x0001adb5)]
	HRESULT __stdcall BeginArrowheadWidth(
		[out, retval]MsoArrowheadWidth* BeginArrowheadWidth);
	[id(0x00000067), propput, helpcontext(0x0001adb5)]
	HRESULT __stdcall BeginArrowheadWidth(
		[in]MsoArrowheadWidth BeginArrowheadWidth);
	[id(0x00000068), propget, helpcontext(0x0001adb6)]
	HRESULT __stdcall DashStyle(
		[out, retval]MsoLineDashStyle* DashStyle);
	[id(0x00000068), propput, helpcontext(0x0001adb6)]
	HRESULT __stdcall DashStyle(
		[in]MsoLineDashStyle DashStyle);
	[id(0x00000069), propget, helpcontext(0x0001adb7)]
	HRESULT __stdcall EndArrowheadLength(
		[out, retval]MsoArrowheadLength* EndArrowheadLength);
	[id(0x00000069), propput, helpcontext(0x0001adb7)]
	HRESULT __stdcall EndArrowheadLength(
		[in]MsoArrowheadLength EndArrowheadLength);
	[id(0x0000006a), propget, helpcontext(0x0001adb8)]
	HRESULT __stdcall EndArrowheadStyle(
		[out, retval]MsoArrowheadStyle* EndArrowheadStyle);
	[id(0x0000006a), propput, helpcontext(0x0001adb8)]
	HRESULT __stdcall EndArrowheadStyle(
		[in]MsoArrowheadStyle EndArrowheadStyle);
	[id(0x0000006b), propget, helpcontext(0x0001adb9)]
	HRESULT __stdcall EndArrowheadWidth(
		[out, retval]MsoArrowheadWidth* EndArrowheadWidth);
	[id(0x0000006b), propput, helpcontext(0x0001adb9)]
	HRESULT __stdcall EndArrowheadWidth(
		[in]MsoArrowheadWidth EndArrowheadWidth);
	[id(0x0000006c), propget, helpcontext(0x0001adba)]
	HRESULT __stdcall ForeColor(
		[out, retval]ColorFormat** ForeColor);
	[id(0x0000006c), propput, helpcontext(0x0001adba)]
	HRESULT __stdcall ForeColor(
		[in]ColorFormat* ForeColor);
	[id(0x0000006d), propget, helpcontext(0x0001adbb)]
	HRESULT __stdcall Pattern(
		[out, retval]MsoPatternType* Pattern);
	[id(0x0000006d), propput, helpcontext(0x0001adbb)]
	HRESULT __stdcall Pattern(
		[in]MsoPatternType Pattern);
	[id(0x0000006e), propget, helpcontext(0x0001adbc)]
	HRESULT __stdcall Style(
		[out, retval]MsoLineStyle* Style);
	[id(0x0000006e), propput, helpcontext(0x0001adbc)]
	HRESULT __stdcall Style(
		[in]MsoLineStyle Style);
	[id(0x0000006f), propget, helpcontext(0x0001a205)]
	HRESULT __stdcall Transparency(
		[out, retval]float* Transparency);
	[id(0x0000006f), propput, helpcontext(0x0001a205)]
	HRESULT __stdcall Transparency(
		[in]float Transparency);
	[id(0x00000070), propget, helpcontext(0x0001adbe)]
	HRESULT __stdcall Visible(
		[out, retval]MsoTriState* Visible);
	[id(0x00000070), propput, helpcontext(0x0001adbe)]
	HRESULT __stdcall Visible(
		[in]MsoTriState Visible);
	[id(0x00000071), propget, helpcontext(0x0001adbf)]
	HRESULT __stdcall Weight(
		[out, retval]float* Weight);
	[id(0x00000071), propput, helpcontext(0x0001adbf)]
	HRESULT __stdcall Weight(
		[in]float Weight);
};
'!
!ExcelLineFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelLineFormat methodsFor!

backColor
	"Answer the <ExcelColorFormat> value of the 'BackColor' property of the receiver."

	| answer |
	answer := ExcelColorFormat newPointer.
	self get_BackColor: answer.
	^answer asObject
!

backColor: backColor
	"Set the 'BackColor' property of the receiver to the <ExcelColorFormat*> value of the argument."

	self put_BackColor: backColor
!

beginArrowheadLength
	"Answer the <sdword> value of the 'BeginArrowheadLength' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BeginArrowheadLength: answer.
	^answer asObject
!

beginArrowheadLength: beginArrowheadLength
	"Set the 'BeginArrowheadLength' property of the receiver to the <sdword> value of the argument."

	self put_BeginArrowheadLength: beginArrowheadLength
!

beginArrowheadStyle
	"Answer the <sdword> value of the 'BeginArrowheadStyle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BeginArrowheadStyle: answer.
	^answer asObject
!

beginArrowheadStyle: beginArrowheadStyle
	"Set the 'BeginArrowheadStyle' property of the receiver to the <sdword> value of the argument."

	self put_BeginArrowheadStyle: beginArrowheadStyle
!

beginArrowheadWidth
	"Answer the <sdword> value of the 'BeginArrowheadWidth' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BeginArrowheadWidth: answer.
	^answer asObject
!

beginArrowheadWidth: beginArrowheadWidth
	"Set the 'BeginArrowheadWidth' property of the receiver to the <sdword> value of the argument."

	self put_BeginArrowheadWidth: beginArrowheadWidth
!

dashStyle
	"Answer the <sdword> value of the 'DashStyle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DashStyle: answer.
	^answer asObject
!

dashStyle: dashStyle
	"Set the 'DashStyle' property of the receiver to the <sdword> value of the argument."

	self put_DashStyle: dashStyle
!

endArrowheadLength
	"Answer the <sdword> value of the 'EndArrowheadLength' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_EndArrowheadLength: answer.
	^answer asObject
!

endArrowheadLength: endArrowheadLength
	"Set the 'EndArrowheadLength' property of the receiver to the <sdword> value of the argument."

	self put_EndArrowheadLength: endArrowheadLength
!

endArrowheadStyle
	"Answer the <sdword> value of the 'EndArrowheadStyle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_EndArrowheadStyle: answer.
	^answer asObject
!

endArrowheadStyle: endArrowheadStyle
	"Set the 'EndArrowheadStyle' property of the receiver to the <sdword> value of the argument."

	self put_EndArrowheadStyle: endArrowheadStyle
!

endArrowheadWidth
	"Answer the <sdword> value of the 'EndArrowheadWidth' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_EndArrowheadWidth: answer.
	^answer asObject
!

endArrowheadWidth: endArrowheadWidth
	"Set the 'EndArrowheadWidth' property of the receiver to the <sdword> value of the argument."

	self put_EndArrowheadWidth: endArrowheadWidth
!

foreColor
	"Answer the <ExcelColorFormat> value of the 'ForeColor' property of the receiver."

	| answer |
	answer := ExcelColorFormat newPointer.
	self get_ForeColor: answer.
	^answer asObject
!

foreColor: foreColor
	"Set the 'ForeColor' property of the receiver to the <ExcelColorFormat*> value of the argument."

	self put_ForeColor: foreColor
!

get_BackColor: backColor
	"Private - Get the value of the 'BackColor' property of the receiver.

		HRESULT __stdcall BackColor(
			[out, retval]ColorFormat** BackColor);"

	<virtual stdcall: hresult 11 ExcelColorFormat**>
	^self invalidCall!

get_BeginArrowheadLength: beginArrowheadLength
	"Private - Get the value of the 'BeginArrowheadLength' property of the receiver.

		HRESULT __stdcall BeginArrowheadLength(
			[out, retval]MsoArrowheadLength* BeginArrowheadLength);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_BeginArrowheadStyle: beginArrowheadStyle
	"Private - Get the value of the 'BeginArrowheadStyle' property of the receiver.

		HRESULT __stdcall BeginArrowheadStyle(
			[out, retval]MsoArrowheadStyle* BeginArrowheadStyle);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_BeginArrowheadWidth: beginArrowheadWidth
	"Private - Get the value of the 'BeginArrowheadWidth' property of the receiver.

		HRESULT __stdcall BeginArrowheadWidth(
			[out, retval]MsoArrowheadWidth* BeginArrowheadWidth);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_DashStyle: dashStyle
	"Private - Get the value of the 'DashStyle' property of the receiver.

		HRESULT __stdcall DashStyle(
			[out, retval]MsoLineDashStyle* DashStyle);"

	<virtual stdcall: hresult 19 sdword*>
	^self invalidCall!

get_EndArrowheadLength: endArrowheadLength
	"Private - Get the value of the 'EndArrowheadLength' property of the receiver.

		HRESULT __stdcall EndArrowheadLength(
			[out, retval]MsoArrowheadLength* EndArrowheadLength);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

get_EndArrowheadStyle: endArrowheadStyle
	"Private - Get the value of the 'EndArrowheadStyle' property of the receiver.

		HRESULT __stdcall EndArrowheadStyle(
			[out, retval]MsoArrowheadStyle* EndArrowheadStyle);"

	<virtual stdcall: hresult 23 sdword*>
	^self invalidCall!

get_EndArrowheadWidth: endArrowheadWidth
	"Private - Get the value of the 'EndArrowheadWidth' property of the receiver.

		HRESULT __stdcall EndArrowheadWidth(
			[out, retval]MsoArrowheadWidth* EndArrowheadWidth);"

	<virtual stdcall: hresult 25 sdword*>
	^self invalidCall!

get_ForeColor: foreColor
	"Private - Get the value of the 'ForeColor' property of the receiver.

		HRESULT __stdcall ForeColor(
			[out, retval]ColorFormat** ForeColor);"

	<virtual stdcall: hresult 27 ExcelColorFormat**>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Pattern: pattern
	"Private - Get the value of the 'Pattern' property of the receiver.

		HRESULT __stdcall Pattern(
			[out, retval]MsoPatternType* Pattern);"

	<virtual stdcall: hresult 29 sdword*>
	^self invalidCall!

get_Style: style
	"Private - Get the value of the 'Style' property of the receiver.

		HRESULT __stdcall Style(
			[out, retval]MsoLineStyle* Style);"

	<virtual stdcall: hresult 31 sdword*>
	^self invalidCall!

get_Transparency: transparency
	"Private - Get the value of the 'Transparency' property of the receiver.

		HRESULT __stdcall Transparency(
			[out, retval]float* Transparency);"

	<virtual stdcall: hresult 33 float*>
	^self invalidCall!

get_Visible: visible
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]MsoTriState* Visible);"

	<virtual stdcall: hresult 35 sdword*>
	^self invalidCall!

get_Weight: weight
	"Private - Get the value of the 'Weight' property of the receiver.

		HRESULT __stdcall Weight(
			[out, retval]float* Weight);"

	<virtual stdcall: hresult 37 float*>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pattern
	"Answer the <sdword> value of the 'Pattern' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Pattern: answer.
	^answer asObject
!

pattern: pattern
	"Set the 'Pattern' property of the receiver to the <sdword> value of the argument."

	self put_Pattern: pattern
!

put_BackColor: backColor
	"Private - Set the value of the 'BackColor' property of the object wrapped by the 
	 receiver to the <ExcelColorFormat*> argument, backColor.

		HRESULT __stdcall BackColor(
			[in]ColorFormat* BackColor);"

	<virtual stdcall: hresult 12 ExcelColorFormat*>
	^self invalidCall!

put_BeginArrowheadLength: beginArrowheadLength
	"Private - Set the value of the 'BeginArrowheadLength' property of the object wrapped by the 
	 receiver to the <sdword> argument, beginArrowheadLength.

		HRESULT __stdcall BeginArrowheadLength(
			[in]MsoArrowheadLength BeginArrowheadLength);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

put_BeginArrowheadStyle: beginArrowheadStyle
	"Private - Set the value of the 'BeginArrowheadStyle' property of the object wrapped by the 
	 receiver to the <sdword> argument, beginArrowheadStyle.

		HRESULT __stdcall BeginArrowheadStyle(
			[in]MsoArrowheadStyle BeginArrowheadStyle);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

put_BeginArrowheadWidth: beginArrowheadWidth
	"Private - Set the value of the 'BeginArrowheadWidth' property of the object wrapped by the 
	 receiver to the <sdword> argument, beginArrowheadWidth.

		HRESULT __stdcall BeginArrowheadWidth(
			[in]MsoArrowheadWidth BeginArrowheadWidth);"

	<virtual stdcall: hresult 18 sdword>
	^self invalidCall!

put_DashStyle: dashStyle
	"Private - Set the value of the 'DashStyle' property of the object wrapped by the 
	 receiver to the <sdword> argument, dashStyle.

		HRESULT __stdcall DashStyle(
			[in]MsoLineDashStyle DashStyle);"

	<virtual stdcall: hresult 20 sdword>
	^self invalidCall!

put_EndArrowheadLength: endArrowheadLength
	"Private - Set the value of the 'EndArrowheadLength' property of the object wrapped by the 
	 receiver to the <sdword> argument, endArrowheadLength.

		HRESULT __stdcall EndArrowheadLength(
			[in]MsoArrowheadLength EndArrowheadLength);"

	<virtual stdcall: hresult 22 sdword>
	^self invalidCall!

put_EndArrowheadStyle: endArrowheadStyle
	"Private - Set the value of the 'EndArrowheadStyle' property of the object wrapped by the 
	 receiver to the <sdword> argument, endArrowheadStyle.

		HRESULT __stdcall EndArrowheadStyle(
			[in]MsoArrowheadStyle EndArrowheadStyle);"

	<virtual stdcall: hresult 24 sdword>
	^self invalidCall!

put_EndArrowheadWidth: endArrowheadWidth
	"Private - Set the value of the 'EndArrowheadWidth' property of the object wrapped by the 
	 receiver to the <sdword> argument, endArrowheadWidth.

		HRESULT __stdcall EndArrowheadWidth(
			[in]MsoArrowheadWidth EndArrowheadWidth);"

	<virtual stdcall: hresult 26 sdword>
	^self invalidCall!

put_ForeColor: foreColor
	"Private - Set the value of the 'ForeColor' property of the object wrapped by the 
	 receiver to the <ExcelColorFormat*> argument, foreColor.

		HRESULT __stdcall ForeColor(
			[in]ColorFormat* ForeColor);"

	<virtual stdcall: hresult 28 ExcelColorFormat*>
	^self invalidCall!

put_Pattern: pattern
	"Private - Set the value of the 'Pattern' property of the object wrapped by the 
	 receiver to the <sdword> argument, pattern.

		HRESULT __stdcall Pattern(
			[in]MsoPatternType Pattern);"

	<virtual stdcall: hresult 30 sdword>
	^self invalidCall!

put_Style: style
	"Private - Set the value of the 'Style' property of the object wrapped by the 
	 receiver to the <sdword> argument, style.

		HRESULT __stdcall Style(
			[in]MsoLineStyle Style);"

	<virtual stdcall: hresult 32 sdword>
	^self invalidCall!

put_Transparency: transparency
	"Private - Set the value of the 'Transparency' property of the object wrapped by the 
	 receiver to the <float> argument, transparency.

		HRESULT __stdcall Transparency(
			[in]float Transparency);"

	<virtual stdcall: hresult 34 float>
	^self invalidCall!

put_Visible: visible
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <sdword> argument, visible.

		HRESULT __stdcall Visible(
			[in]MsoTriState Visible);"

	<virtual stdcall: hresult 36 sdword>
	^self invalidCall!

put_Weight: weight
	"Private - Set the value of the 'Weight' property of the object wrapped by the 
	 receiver to the <float> argument, weight.

		HRESULT __stdcall Weight(
			[in]float Weight);"

	<virtual stdcall: hresult 38 float>
	^self invalidCall!

style
	"Answer the <sdword> value of the 'Style' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Style: answer.
	^answer asObject
!

style: style
	"Set the 'Style' property of the receiver to the <sdword> value of the argument."

	self put_Style: style
!

transparency
	"Answer the <float> value of the 'Transparency' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Transparency: answer.
	^answer asObject
!

transparency: transparency
	"Set the 'Transparency' property of the receiver to the <float> value of the argument."

	self put_Transparency: transparency
!

visible
	"Answer the <sdword> value of the 'Visible' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Visible: answer.
	^answer asObject
!

visible: visible
	"Set the 'Visible' property of the receiver to the <sdword> value of the argument."

	self put_Visible: visible
!

weight
	"Answer the <float> value of the 'Weight' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Weight: answer.
	^answer asObject
!

weight: weight
	"Set the 'Weight' property of the receiver to the <float> value of the argument."

	self put_Weight: weight
! !
!ExcelLineFormat categoriesFor: #backColor!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #backColor:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #beginArrowheadLength!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #beginArrowheadLength:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #beginArrowheadStyle!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #beginArrowheadStyle:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #beginArrowheadWidth!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #beginArrowheadWidth:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #dashStyle!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #dashStyle:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #endArrowheadLength!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #endArrowheadLength:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #endArrowheadStyle!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #endArrowheadStyle:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #endArrowheadWidth!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #endArrowheadWidth:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #foreColor!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #foreColor:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #get_BackColor:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_BeginArrowheadLength:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_BeginArrowheadStyle:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_BeginArrowheadWidth:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_DashStyle:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_EndArrowheadLength:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_EndArrowheadStyle:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_EndArrowheadWidth:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_ForeColor:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_Pattern:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_Style:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_Transparency:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #get_Weight:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelLineFormat categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelLineFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #pattern!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #pattern:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #put_BackColor:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_BeginArrowheadLength:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_BeginArrowheadStyle:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_BeginArrowheadWidth:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_DashStyle:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_EndArrowheadLength:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_EndArrowheadStyle:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_EndArrowheadWidth:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_ForeColor:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_Pattern:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_Style:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_Transparency:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #put_Weight:!**auto generated**!COM Interfaces-LineFormat!private! !
!ExcelLineFormat categoriesFor: #style!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #style:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #transparency!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #transparency:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #weight!**auto generated**!properties!public! !
!ExcelLineFormat categoriesFor: #weight:!**auto generated**!properties!public! !

!ExcelLineFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.LineFormat'
		ExcelLineFormat defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_BackColor:
			argumentTypes: 'ExcelColorFormat**';
		defineFunction: #put_BackColor:
			argumentTypes: 'ExcelColorFormat*';
		defineFunction: #get_BeginArrowheadLength:
			argumentTypes: 'sdword*';
		defineFunction: #put_BeginArrowheadLength:
			argumentTypes: 'sdword';
		defineFunction: #get_BeginArrowheadStyle:
			argumentTypes: 'sdword*';
		defineFunction: #put_BeginArrowheadStyle:
			argumentTypes: 'sdword';
		defineFunction: #get_BeginArrowheadWidth:
			argumentTypes: 'sdword*';
		defineFunction: #put_BeginArrowheadWidth:
			argumentTypes: 'sdword';
		defineFunction: #get_DashStyle:
			argumentTypes: 'sdword*';
		defineFunction: #put_DashStyle:
			argumentTypes: 'sdword';
		defineFunction: #get_EndArrowheadLength:
			argumentTypes: 'sdword*';
		defineFunction: #put_EndArrowheadLength:
			argumentTypes: 'sdword';
		defineFunction: #get_EndArrowheadStyle:
			argumentTypes: 'sdword*';
		defineFunction: #put_EndArrowheadStyle:
			argumentTypes: 'sdword';
		defineFunction: #get_EndArrowheadWidth:
			argumentTypes: 'sdword*';
		defineFunction: #put_EndArrowheadWidth:
			argumentTypes: 'sdword';
		defineFunction: #get_ForeColor:
			argumentTypes: 'ExcelColorFormat**';
		defineFunction: #put_ForeColor:
			argumentTypes: 'ExcelColorFormat*';
		defineFunction: #get_Pattern:
			argumentTypes: 'sdword*';
		defineFunction: #put_Pattern:
			argumentTypes: 'sdword';
		defineFunction: #get_Style:
			argumentTypes: 'sdword*';
		defineFunction: #put_Style:
			argumentTypes: 'sdword';
		defineFunction: #get_Transparency:
			argumentTypes: 'float*';
		defineFunction: #put_Transparency:
			argumentTypes: 'float';
		defineFunction: #get_Visible:
			argumentTypes: 'sdword*';
		defineFunction: #put_Visible:
			argumentTypes: 'sdword';
		defineFunction: #get_Weight:
			argumentTypes: 'float*';
		defineFunction: #put_Weight:
			argumentTypes: 'float'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelLineFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelLineFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelLineFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

