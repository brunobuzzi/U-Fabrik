"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelCalloutFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelCalloutFormat guid: (IID fromString: '{000C0311-0000-0000-C000-000000000046}')!
ExcelCalloutFormat comment: '<ExcelCalloutFormat> is a wrapper class for the COM interface ''Excel.CalloutFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C0311-0000-0000-C000-000000000046), 
	helpcontext(0x00019640), 
	nonextensible, 
	dual
]
interface CalloutFormat : _IMsoDispObj
 {
	[id(0x00000001), propget, helpcontext(0x00019641)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0x0000000a), helpcontext(0x00019642)]
	HRESULT __stdcall AutomaticLength();
	[id(0x0000000b), helpcontext(0x00019643)]
	HRESULT __stdcall CustomDrop(
		[in]float Drop);
	[id(0x0000000c), helpcontext(0x00019644)]
	HRESULT __stdcall CustomLength(
		[in]float Length);
	[id(0x0000000d), helpcontext(0x00019645)]
	HRESULT __stdcall PresetDrop(
		[in]MsoCalloutDropType DropType);
	[id(0x00000064), propget, helpcontext(0x00019646)]
	HRESULT __stdcall Accent(
		[out, retval]MsoTriState* Accent);
	[id(0x00000064), propput, helpcontext(0x00019646)]
	HRESULT __stdcall Accent(
		[in]MsoTriState Accent);
	[id(0x00000065), propget, helpcontext(0x00019647)]
	HRESULT __stdcall Angle(
		[out, retval]MsoCalloutAngleType* Angle);
	[id(0x00000065), propput, helpcontext(0x00019647)]
	HRESULT __stdcall Angle(
		[in]MsoCalloutAngleType Angle);
	[id(0x00000066), propget, helpcontext(0x00019648)]
	HRESULT __stdcall AutoAttach(
		[out, retval]MsoTriState* AutoAttach);
	[id(0x00000066), propput, helpcontext(0x00019648)]
	HRESULT __stdcall AutoAttach(
		[in]MsoTriState AutoAttach);
	[id(0x00000067), propget, helpcontext(0x00019649)]
	HRESULT __stdcall AutoLength(
		[out, retval]MsoTriState* AutoLength);
	[id(0x00000068), propget, helpcontext(0x0001964a)]
	HRESULT __stdcall Border(
		[out, retval]MsoTriState* Border);
	[id(0x00000068), propput, helpcontext(0x0001964a)]
	HRESULT __stdcall Border(
		[in]MsoTriState Border);
	[id(0x00000069), propget, helpcontext(0x0001964b)]
	HRESULT __stdcall Drop(
		[out, retval]float* Drop);
	[id(0x0000006a), propget, helpcontext(0x0001964c)]
	HRESULT __stdcall DropType(
		[out, retval]MsoCalloutDropType* DropType);
	[id(0x0000006b), propget, helpcontext(0x0001964d)]
	HRESULT __stdcall Gap(
		[out, retval]float* Gap);
	[id(0x0000006b), propput, helpcontext(0x0001964d)]
	HRESULT __stdcall Gap(
		[in]float Gap);
	[id(0x0000006c), propget, helpcontext(0x0001964e)]
	HRESULT __stdcall Length(
		[out, retval]float* Length);
	[id(0x0000006d), propget, helpcontext(0x0001964f)]
	HRESULT __stdcall Type(
		[out, retval]MsoCalloutType* Type);
	[id(0x0000006d), propput, helpcontext(0x0001964f)]
	HRESULT __stdcall Type(
		[in]MsoCalloutType Type);
};
'!
!ExcelCalloutFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelCalloutFormat methodsFor!

accent
	"Answer the <sdword> value of the 'Accent' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Accent: answer.
	^answer asObject
!

accent: accent
	"Set the 'Accent' property of the receiver to the <sdword> value of the argument."

	self put_Accent: accent
!

angle
	"Answer the <sdword> value of the 'Angle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Angle: answer.
	^answer asObject
!

angle: angle
	"Set the 'Angle' property of the receiver to the <sdword> value of the argument."

	self put_Angle: angle
!

autoAttach
	"Answer the <sdword> value of the 'AutoAttach' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AutoAttach: answer.
	^answer asObject
!

autoAttach: autoAttach
	"Set the 'AutoAttach' property of the receiver to the <sdword> value of the argument."

	self put_AutoAttach: autoAttach
!

autoLength
	"Answer the <sdword> value of the 'AutoLength' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AutoLength: answer.
	^answer asObject
!

automaticLength
	"Invoke the AutomaticLength() method of the COM object."

	^self AutomaticLength
!

AutomaticLength
	"Private - Invoke the AutomaticLength() method of the COM object.

		HRESULT __stdcall AutomaticLength();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

border
	"Answer the <sdword> value of the 'Border' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Border: answer.
	^answer asObject
!

border: border
	"Set the 'Border' property of the receiver to the <sdword> value of the argument."

	self put_Border: border
!

customDrop: drop
	"Invoke the CustomDrop() method of the COM object."

	^self CustomDrop: drop
!

CustomDrop: drop
	"Private - Invoke the CustomDrop() method of the COM object.

		HRESULT __stdcall CustomDrop(
			[in]float Drop);"

	<virtual stdcall: hresult 12 float>
	^self invalidCall!

customLength: length
	"Invoke the CustomLength() method of the COM object."

	^self CustomLength: length
!

CustomLength: length
	"Private - Invoke the CustomLength() method of the COM object.

		HRESULT __stdcall CustomLength(
			[in]float Length);"

	<virtual stdcall: hresult 13 float>
	^self invalidCall!

drop
	"Answer the <float> value of the 'Drop' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Drop: answer.
	^answer asObject
!

dropType
	"Answer the <sdword> value of the 'DropType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DropType: answer.
	^answer asObject
!

gap
	"Answer the <float> value of the 'Gap' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Gap: answer.
	^answer asObject
!

gap: gap
	"Set the 'Gap' property of the receiver to the <float> value of the argument."

	self put_Gap: gap
!

get_Accent: accent
	"Private - Get the value of the 'Accent' property of the receiver.

		HRESULT __stdcall Accent(
			[out, retval]MsoTriState* Accent);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Angle: angle
	"Private - Get the value of the 'Angle' property of the receiver.

		HRESULT __stdcall Angle(
			[out, retval]MsoCalloutAngleType* Angle);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_AutoAttach: autoAttach
	"Private - Get the value of the 'AutoAttach' property of the receiver.

		HRESULT __stdcall AutoAttach(
			[out, retval]MsoTriState* AutoAttach);"

	<virtual stdcall: hresult 19 sdword*>
	^self invalidCall!

get_AutoLength: autoLength
	"Private - Get the value of the 'AutoLength' property of the receiver.

		HRESULT __stdcall AutoLength(
			[out, retval]MsoTriState* AutoLength);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

get_Border: border
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]MsoTriState* Border);"

	<virtual stdcall: hresult 22 sdword*>
	^self invalidCall!

get_Drop: drop
	"Private - Get the value of the 'Drop' property of the receiver.

		HRESULT __stdcall Drop(
			[out, retval]float* Drop);"

	<virtual stdcall: hresult 24 float*>
	^self invalidCall!

get_DropType: dropType
	"Private - Get the value of the 'DropType' property of the receiver.

		HRESULT __stdcall DropType(
			[out, retval]MsoCalloutDropType* DropType);"

	<virtual stdcall: hresult 25 sdword*>
	^self invalidCall!

get_Gap: gap
	"Private - Get the value of the 'Gap' property of the receiver.

		HRESULT __stdcall Gap(
			[out, retval]float* Gap);"

	<virtual stdcall: hresult 26 float*>
	^self invalidCall!

get_Length: length
	"Private - Get the value of the 'Length' property of the receiver.

		HRESULT __stdcall Length(
			[out, retval]float* Length);"

	<virtual stdcall: hresult 28 float*>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Type: type
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]MsoCalloutType* Type);"

	<virtual stdcall: hresult 29 sdword*>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

length
	"Answer the <float> value of the 'Length' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Length: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

presetDrop: dropType
	"Invoke the PresetDrop() method of the COM object."

	^self PresetDrop: dropType
!

PresetDrop: dropType
	"Private - Invoke the PresetDrop() method of the COM object.

		HRESULT __stdcall PresetDrop(
			[in]MsoCalloutDropType DropType);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

put_Accent: accent
	"Private - Set the value of the 'Accent' property of the object wrapped by the 
	 receiver to the <sdword> argument, accent.

		HRESULT __stdcall Accent(
			[in]MsoTriState Accent);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

put_Angle: angle
	"Private - Set the value of the 'Angle' property of the object wrapped by the 
	 receiver to the <sdword> argument, angle.

		HRESULT __stdcall Angle(
			[in]MsoCalloutAngleType Angle);"

	<virtual stdcall: hresult 18 sdword>
	^self invalidCall!

put_AutoAttach: autoAttach
	"Private - Set the value of the 'AutoAttach' property of the object wrapped by the 
	 receiver to the <sdword> argument, autoAttach.

		HRESULT __stdcall AutoAttach(
			[in]MsoTriState AutoAttach);"

	<virtual stdcall: hresult 20 sdword>
	^self invalidCall!

put_Border: border
	"Private - Set the value of the 'Border' property of the object wrapped by the 
	 receiver to the <sdword> argument, border.

		HRESULT __stdcall Border(
			[in]MsoTriState Border);"

	<virtual stdcall: hresult 23 sdword>
	^self invalidCall!

put_Gap: gap
	"Private - Set the value of the 'Gap' property of the object wrapped by the 
	 receiver to the <float> argument, gap.

		HRESULT __stdcall Gap(
			[in]float Gap);"

	<virtual stdcall: hresult 27 float>
	^self invalidCall!

put_Type: type
	"Private - Set the value of the 'Type' property of the object wrapped by the 
	 receiver to the <sdword> argument, type.

		HRESULT __stdcall Type(
			[in]MsoCalloutType Type);"

	<virtual stdcall: hresult 30 sdword>
	^self invalidCall!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

type: type
	"Set the 'Type' property of the receiver to the <sdword> value of the argument."

	self put_Type: type
! !
!ExcelCalloutFormat categoriesFor: #accent!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #accent:!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #angle!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #angle:!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #autoAttach!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #autoAttach:!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #autoLength!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #automaticLength!**auto generated**!methods!public! !
!ExcelCalloutFormat categoriesFor: #AutomaticLength!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #border!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #border:!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #customDrop:!**auto generated**!methods!public! !
!ExcelCalloutFormat categoriesFor: #CustomDrop:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #customLength:!**auto generated**!methods!public! !
!ExcelCalloutFormat categoriesFor: #CustomLength:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #drop!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #dropType!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #gap!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #gap:!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #get_Accent:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #get_Angle:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #get_AutoAttach:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #get_AutoLength:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #get_Border:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #get_Drop:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #get_DropType:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #get_Gap:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #get_Length:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #get_Type:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelCalloutFormat categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelCalloutFormat categoriesFor: #length!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #presetDrop:!**auto generated**!methods!public! !
!ExcelCalloutFormat categoriesFor: #PresetDrop:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #put_Accent:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #put_Angle:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #put_AutoAttach:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #put_Border:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #put_Gap:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #put_Type:!**auto generated**!COM Interfaces-CalloutFormat!private! !
!ExcelCalloutFormat categoriesFor: #type!**auto generated**!properties!public! !
!ExcelCalloutFormat categoriesFor: #type:!**auto generated**!properties!public! !

!ExcelCalloutFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.CalloutFormat'
		ExcelCalloutFormat defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #AutomaticLength;
		defineFunction: #CustomDrop:
			argumentTypes: 'float';
		defineFunction: #CustomLength:
			argumentTypes: 'float';
		defineFunction: #PresetDrop:
			argumentTypes: 'sdword';
		defineFunction: #get_Accent:
			argumentTypes: 'sdword*';
		defineFunction: #put_Accent:
			argumentTypes: 'sdword';
		defineFunction: #get_Angle:
			argumentTypes: 'sdword*';
		defineFunction: #put_Angle:
			argumentTypes: 'sdword';
		defineFunction: #get_AutoAttach:
			argumentTypes: 'sdword*';
		defineFunction: #put_AutoAttach:
			argumentTypes: 'sdword';
		defineFunction: #get_AutoLength:
			argumentTypes: 'sdword*';
		defineFunction: #get_Border:
			argumentTypes: 'sdword*';
		defineFunction: #put_Border:
			argumentTypes: 'sdword';
		defineFunction: #get_Drop:
			argumentTypes: 'float*';
		defineFunction: #get_DropType:
			argumentTypes: 'sdword*';
		defineFunction: #get_Gap:
			argumentTypes: 'float*';
		defineFunction: #put_Gap:
			argumentTypes: 'float';
		defineFunction: #get_Length:
			argumentTypes: 'float*';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #put_Type:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelCalloutFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelCalloutFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelCalloutFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

