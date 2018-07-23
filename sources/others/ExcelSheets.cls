"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSheets
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSheets guid: (IID fromString: '{000208D7-0000-0000-C000-000000000046}')!
ExcelSheets comment: '<ExcelSheets> is a wrapper class for the COM interface ''Excel.Sheets'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208D7-0000-0000-C000-000000000046), 
	helpcontext(0x0002000c), 
	nonextensible, 
	dual
]
interface Sheets : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in, optional]VARIANT Before,
		[in, optional]VARIANT After,
		[in, optional]VARIANT Count,
		[in, optional]VARIANT Type,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000227), helpcontext(0x00010227)]
	HRESULT __stdcall Copy(
		[in, optional]VARIANT Before,
		[in, optional]VARIANT After,
		[in]long lcid);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[in]long lcid);
	[id(0x000001d5), helpcontext(0x000101d5)]
	HRESULT __stdcall FillAcrossSheets(
		[in]Range* Range,
		[in, defaultvalue(-4104)]XlFillWith Type,
		[in]long lcid);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x0000027d), helpcontext(0x0001027d)]
	HRESULT __stdcall Move(
		[in, optional]VARIANT Before,
		[in, optional]VARIANT After,
		[in]long lcid);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x00000389), hidden, helpcontext(0x00010389)]
	HRESULT __stdcall __PrintOut(
		[in, optional]VARIANT From,
		[in, optional]VARIANT To,
		[in, optional]VARIANT Copies,
		[in, optional]VARIANT Preview,
		[in, optional]VARIANT ActivePrinter,
		[in, optional]VARIANT PrintToFile,
		[in, optional]VARIANT Collate,
		[in]long lcid);
	[id(0x00000119), helpcontext(0x00010119)]
	HRESULT __stdcall PrintPreview(
		[in, optional]VARIANT EnableChanges,
		[in]long lcid);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[in, optional]VARIANT Replace,
		[in]long lcid);
	[id(0x0000058a), propget, helpcontext(0x0001058a)]
	HRESULT __stdcall HPageBreaks(
		[out, retval]HPageBreaks** RHS);
	[id(0x0000058b), propget, helpcontext(0x0001058b)]
	HRESULT __stdcall VPageBreaks(
		[out, retval]VPageBreaks** RHS);
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000006ec), hidden, helpcontext(0x000106ec)]
	HRESULT __stdcall _PrintOut(
		[in, optional]VARIANT From,
		[in, optional]VARIANT To,
		[in, optional]VARIANT Copies,
		[in, optional]VARIANT Preview,
		[in, optional]VARIANT ActivePrinter,
		[in, optional]VARIANT PrintToFile,
		[in, optional]VARIANT Collate,
		[in, optional]VARIANT PrToFileName,
		[in]long lcid);
	[id(0x00000939), helpcontext(0x00010939)]
	HRESULT __stdcall PrintOut(
		[in, optional]VARIANT From,
		[in, optional]VARIANT To,
		[in, optional]VARIANT Copies,
		[in, optional]VARIANT Preview,
		[in, optional]VARIANT ActivePrinter,
		[in, optional]VARIANT PrintToFile,
		[in, optional]VARIANT Collate,
		[in, optional]VARIANT PrToFileName,
		[in, optional]VARIANT IgnorePrintAreas,
		[in]long lcid);
};
'!
!ExcelSheets categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelSheets methodsFor!

__printOut: lcid
	"Invoke the __PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 __printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 lcid: lcid!

__printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate lcid: lcid
	"Invoke the __PrintOut() method of the COM object."

	^self
		__PrintOut: from asVariant
		to: to asVariant
		copies: copies asVariant
		preview: preview asVariant
		activePrinter: activePrinter asVariant
		printToFile: printToFile asVariant
		collate: collate asVariant
		lcid: lcid
!

__PrintOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate lcid: lcid
	"Private - Invoke the __PrintOut() method of the COM object.

		HRESULT __stdcall __PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in]long lcid);"

	<virtual stdcall: hresult 19 variant variant variant variant variant variant variant sdword>
	^self invalidCall!

_default: index
	"Answer the <IDispatch> value of the '_Default' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get__Default: index asVariant
		rhs: answer.
	^answer asObject
!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

_printOut: lcid
	"Invoke the _PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 prToFileName: VARIANT unspecified
		 lcid: lcid!

_printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName lcid: lcid
	"Invoke the _PrintOut() method of the COM object."

	^self
		_PrintOut: from asVariant
		to: to asVariant
		copies: copies asVariant
		preview: preview asVariant
		activePrinter: activePrinter asVariant
		printToFile: printToFile asVariant
		collate: collate asVariant
		prToFileName: prToFileName asVariant
		lcid: lcid
!

_PrintOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName lcid: lcid
	"Private - Invoke the _PrintOut() method of the COM object.

		HRESULT __stdcall _PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in, optional]VARIANT PrToFileName,
			[in]long lcid);"

	<virtual stdcall: hresult 27 variant variant variant variant variant variant variant variant sdword>
	^self invalidCall!

add: lcid
	"Answer the <IDispatch> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: VARIANT unspecified
		 after: VARIANT unspecified
		 count: VARIANT unspecified
		 type: VARIANT unspecified
		 lcid: lcid!

add: before after: after count: count type: type lcid: lcid
	"Answer the <IDispatch> result of invoking the Add() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Add: before asVariant
		after: after asVariant
		count: count asVariant
		type: type asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Add: before after: after count: count type: type lcid: lcid rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in, optional]VARIANT Before,
			[in, optional]VARIANT After,
			[in, optional]VARIANT Count,
			[in, optional]VARIANT Type,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 11 variant variant variant variant sdword IDispatch**>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

copy: lcid
	"Invoke the Copy() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copy: VARIANT unspecified
		 after: VARIANT unspecified
		 lcid: lcid!

copy: before after: after lcid: lcid
	"Invoke the Copy() method of the COM object."

	^self
		Copy: before asVariant
		after: after asVariant
		lcid: lcid
!

Copy: before after: after lcid: lcid
	"Private - Invoke the Copy() method of the COM object.

		HRESULT __stdcall Copy(
			[in, optional]VARIANT Before,
			[in, optional]VARIANT After,
			[in]long lcid);"

	<virtual stdcall: hresult 12 variant variant sdword>
	^self invalidCall!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

delete: lcid
	"Invoke the Delete() method of the COM object."

	^self Delete: lcid
!

Delete: lcid
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete(
			[in]long lcid);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

fillAcrossSheets: range lcid: lcid
	"Invoke the FillAcrossSheets() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 fillAcrossSheets: range
		 type: -4104
		 lcid: lcid!

fillAcrossSheets: range type: type lcid: lcid
	"Invoke the FillAcrossSheets() method of the COM object."

	^self
		FillAcrossSheets: range
		type: type
		lcid: lcid
!

FillAcrossSheets: range type: type lcid: lcid
	"Private - Invoke the FillAcrossSheets() method of the COM object.

		HRESULT __stdcall FillAcrossSheets(
			[in]Range* Range,
			[in, defaultvalue(-4104)]XlFillWith Type,
			[in]long lcid);"

	<virtual stdcall: hresult 15 ExcelRange* sdword sdword>
	^self invalidCall!

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 26 variant IDispatch**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 18 IUnknown**>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_HPageBreaks: rhs
	"Private - Get the value of the 'HPageBreaks' property of the receiver.

		HRESULT __stdcall HPageBreaks(
			[out, retval]HPageBreaks** RHS);"

	<virtual stdcall: hresult 22 ExcelHPageBreaks**>
	^self invalidCall!

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 16 variant IDispatch**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Visible: lcid rhs: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 24 sdword variant*>
	^self invalidCall!

get_VPageBreaks: rhs
	"Private - Get the value of the 'VPageBreaks' property of the receiver.

		HRESULT __stdcall VPageBreaks(
			[out, retval]VPageBreaks** RHS);"

	<virtual stdcall: hresult 23 ExcelVPageBreaks**>
	^self invalidCall!

hPageBreaks
	"Answer the <ExcelHPageBreaks> value of the 'HPageBreaks' property of the receiver."

	| answer |
	answer := ExcelHPageBreaks newPointer.
	self get_HPageBreaks: answer.
	^answer asObject
!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <IDispatch> value of the 'Item' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
!

move: lcid
	"Invoke the Move() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 move: VARIANT unspecified
		 after: VARIANT unspecified
		 lcid: lcid!

move: before after: after lcid: lcid
	"Invoke the Move() method of the COM object."

	^self
		Move: before asVariant
		after: after asVariant
		lcid: lcid
!

Move: before after: after lcid: lcid
	"Private - Invoke the Move() method of the COM object.

		HRESULT __stdcall Move(
			[in, optional]VARIANT Before,
			[in, optional]VARIANT After,
			[in]long lcid);"

	<virtual stdcall: hresult 17 variant variant sdword>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

printOut: lcid
	"Invoke the PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 prToFileName: VARIANT unspecified
		 ignorePrintAreas: VARIANT unspecified
		 lcid: lcid!

printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName ignorePrintAreas: ignorePrintAreas lcid: lcid
	"Invoke the PrintOut() method of the COM object."

	^self
		PrintOut: from asVariant
		to: to asVariant
		copies: copies asVariant
		preview: preview asVariant
		activePrinter: activePrinter asVariant
		printToFile: printToFile asVariant
		collate: collate asVariant
		prToFileName: prToFileName asVariant
		ignorePrintAreas: ignorePrintAreas asVariant
		lcid: lcid
!

PrintOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName ignorePrintAreas: ignorePrintAreas lcid: lcid
	"Private - Invoke the PrintOut() method of the COM object.

		HRESULT __stdcall PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in, optional]VARIANT PrToFileName,
			[in, optional]VARIANT IgnorePrintAreas,
			[in]long lcid);"

	<virtual stdcall: hresult 28 variant variant variant variant variant variant variant variant variant sdword>
	^self invalidCall!

printPreview: lcid
	"Invoke the PrintPreview() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 printPreview: VARIANT unspecified
		 lcid: lcid!

printPreview: enableChanges lcid: lcid
	"Invoke the PrintPreview() method of the COM object."

	^self
		PrintPreview: enableChanges asVariant
		lcid: lcid
!

PrintPreview: enableChanges lcid: lcid
	"Private - Invoke the PrintPreview() method of the COM object.

		HRESULT __stdcall PrintPreview(
			[in, optional]VARIANT EnableChanges,
			[in]long lcid);"

	<virtual stdcall: hresult 20 variant sdword>
	^self invalidCall!

put_Visible: lcid rhs: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Visible(
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 25 sdword variant>
	^self invalidCall!

select: lcid
	"Invoke the Select() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 select: VARIANT unspecified
		 lcid: lcid!

select: replace lcid: lcid
	"Invoke the Select() method of the COM object."

	^self
		Select: replace asVariant
		lcid: lcid
!

Select: replace lcid: lcid
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select(
			[in, optional]VARIANT Replace,
			[in]long lcid);"

	<virtual stdcall: hresult 21 variant sdword>
	^self invalidCall!

visible: lcid
	"Answer the <variant> value of the 'Visible' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_Visible: lcid
		rhs: answer.
	^answer asObject
!

visible: lcid rhs: rhs
	"Set the 'Visible' property of the receiver to the <variant> value of the argument."

	self
		put_Visible: lcid
		rhs: rhs asVariant
!

vPageBreaks
	"Answer the <ExcelVPageBreaks> value of the 'VPageBreaks' property of the receiver."

	| answer |
	answer := ExcelVPageBreaks newPointer.
	self get_VPageBreaks: answer.
	^answer asObject
! !
!ExcelSheets categoriesFor: #__printOut:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #__printOut:to:copies:preview:activePrinter:printToFile:collate:lcid:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #__PrintOut:to:copies:preview:activePrinter:printToFile:collate:lcid:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelSheets categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelSheets categoriesFor: #_printOut:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #_printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #add:after:count:type:lcid:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #Add:after:count:type:lcid:rhs:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSheets categoriesFor: #copy:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #copy:after:lcid:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #Copy:after:lcid:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #count!**auto generated**!properties!public! !
!ExcelSheets categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSheets categoriesFor: #delete:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #Delete:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #fillAcrossSheets:lcid:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #fillAcrossSheets:type:lcid:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #FillAcrossSheets:type:lcid:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #get_Application:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #get_Count:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #get_HPageBreaks:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #get_Visible:rhs:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #get_VPageBreaks:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #hPageBreaks!**auto generated**!properties!public! !
!ExcelSheets categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelSheets categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelSheets categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelSheets categoriesFor: #move:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #move:after:lcid:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #Move:after:lcid:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelSheets categoriesFor: #printOut:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:ignorePrintAreas:lcid:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:ignorePrintAreas:lcid:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #printPreview:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #printPreview:lcid:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #PrintPreview:lcid:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #put_Visible:rhs:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #select:lcid:!**auto generated**!methods!public! !
!ExcelSheets categoriesFor: #Select:lcid:!**auto generated**!COM Interfaces-Sheets!private! !
!ExcelSheets categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelSheets categoriesFor: #visible:rhs:!**auto generated**!properties!public! !
!ExcelSheets categoriesFor: #vPageBreaks!**auto generated**!properties!public! !

!ExcelSheets class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.Sheets'
		ExcelSheets defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:after:count:type:lcid:rhs:
			argumentTypes: 'variant variant variant variant sdword IDispatch**';
		defineFunction: #Copy:after:lcid:
			argumentTypes: 'variant variant sdword';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Delete:
			argumentTypes: 'sdword';
		defineFunction: #FillAcrossSheets:type:lcid:
			argumentTypes: 'ExcelRange* sdword sdword';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #Move:after:lcid:
			argumentTypes: 'variant variant sdword';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #__PrintOut:to:copies:preview:activePrinter:printToFile:collate:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant sdword';
		defineFunction: #PrintPreview:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #Select:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #get_HPageBreaks:
			argumentTypes: 'ExcelHPageBreaks**';
		defineFunction: #get_VPageBreaks:
			argumentTypes: 'ExcelVPageBreaks**';
		defineFunction: #get_Visible:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #put_Visible:rhs:
			argumentTypes: 'sdword variant';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant variant sdword';
		defineFunction: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:ignorePrintAreas:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSheets initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSheets class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelSheets class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

