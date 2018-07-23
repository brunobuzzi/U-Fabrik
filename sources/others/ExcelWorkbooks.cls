"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelWorkbooks
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelWorkbooks guid: (IID fromString: '{000208DB-0000-0000-C000-000000000046}')!
ExcelWorkbooks comment: '<ExcelWorkbooks> is a wrapper class for the COM interface ''Excel.Workbooks'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208DB-0000-0000-C000-000000000046), 
	helpcontext(0x00020022), 
	nonextensible, 
	dual
]
interface Workbooks : IDispatch
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
		[in, optional]VARIANT Template,
		[in]long lcid,
		[out, retval]Workbook** RHS);
	[id(0x00000115), helpcontext(0x00010115)]
	HRESULT __stdcall Close(
		[in]long lcid);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]Workbook** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000002aa), hidden, helpcontext(0x000102aa)]
	HRESULT __stdcall _Open(
		[in]BSTR Filename,
		[in, optional]VARIANT UpdateLinks,
		[in, optional]VARIANT ReadOnly,
		[in, optional]VARIANT Format,
		[in, optional]VARIANT Password,
		[in, optional]VARIANT WriteResPassword,
		[in, optional]VARIANT IgnoreReadOnlyRecommended,
		[in, optional]VARIANT Origin,
		[in, optional]VARIANT Delimiter,
		[in, optional]VARIANT Editable,
		[in, optional]VARIANT Notify,
		[in, optional]VARIANT Converter,
		[in, optional]VARIANT AddToMru,
		[in]long lcid,
		[out, retval]Workbook** RHS);
	[id(0x000002ab), hidden, helpcontext(0x000102ab)]
	HRESULT __stdcall __OpenText(
		[in]BSTR Filename,
		[in, optional]VARIANT Origin,
		[in, optional]VARIANT StartRow,
		[in, optional]VARIANT DataType,
		[in, defaultvalue(1)]XlTextQualifier TextQualifier,
		[in, optional]VARIANT ConsecutiveDelimiter,
		[in, optional]VARIANT Tab,
		[in, optional]VARIANT Semicolon,
		[in, optional]VARIANT Comma,
		[in, optional]VARIANT Space,
		[in, optional]VARIANT Other,
		[in, optional]VARIANT OtherChar,
		[in, optional]VARIANT FieldInfo,
		[in, optional]VARIANT TextVisualLayout,
		[in]long lcid);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]Workbook** RHS);
	[id(0x000006ed), hidden, helpcontext(0x000106ed)]
	HRESULT __stdcall _OpenText(
		[in]BSTR Filename,
		[in, optional]VARIANT Origin,
		[in, optional]VARIANT StartRow,
		[in, optional]VARIANT DataType,
		[in, defaultvalue(1)]XlTextQualifier TextQualifier,
		[in, optional]VARIANT ConsecutiveDelimiter,
		[in, optional]VARIANT Tab,
		[in, optional]VARIANT Semicolon,
		[in, optional]VARIANT Comma,
		[in, optional]VARIANT Space,
		[in, optional]VARIANT Other,
		[in, optional]VARIANT OtherChar,
		[in, optional]VARIANT FieldInfo,
		[in, optional]VARIANT TextVisualLayout,
		[in, optional]VARIANT DecimalSeparator,
		[in, optional]VARIANT ThousandsSeparator,
		[in]long lcid);
	[id(0x00000783), helpcontext(0x00010783)]
	HRESULT __stdcall Open(
		[in]BSTR Filename,
		[in, optional]VARIANT UpdateLinks,
		[in, optional]VARIANT ReadOnly,
		[in, optional]VARIANT Format,
		[in, optional]VARIANT Password,
		[in, optional]VARIANT WriteResPassword,
		[in, optional]VARIANT IgnoreReadOnlyRecommended,
		[in, optional]VARIANT Origin,
		[in, optional]VARIANT Delimiter,
		[in, optional]VARIANT Editable,
		[in, optional]VARIANT Notify,
		[in, optional]VARIANT Converter,
		[in, optional]VARIANT AddToMru,
		[in, optional]VARIANT Local,
		[in, optional]VARIANT CorruptLoad,
		[in]long lcid,
		[out, retval]Workbook** RHS);
	[id(0x00000784), helpcontext(0x00010784)]
	HRESULT __stdcall OpenText(
		[in]BSTR Filename,
		[in, optional]VARIANT Origin,
		[in, optional]VARIANT StartRow,
		[in, optional]VARIANT DataType,
		[in, defaultvalue(1)]XlTextQualifier TextQualifier,
		[in, optional]VARIANT ConsecutiveDelimiter,
		[in, optional]VARIANT Tab,
		[in, optional]VARIANT Semicolon,
		[in, optional]VARIANT Comma,
		[in, optional]VARIANT Space,
		[in, optional]VARIANT Other,
		[in, optional]VARIANT OtherChar,
		[in, optional]VARIANT FieldInfo,
		[in, optional]VARIANT TextVisualLayout,
		[in, optional]VARIANT DecimalSeparator,
		[in, optional]VARIANT ThousandsSeparator,
		[in, optional]VARIANT TrailingMinusNumbers,
		[in, optional]VARIANT Local,
		[in]long lcid);
	[id(0x00000813), helpcontext(0x00010813)]
	HRESULT __stdcall OpenDatabase(
		[in]BSTR Filename,
		[in, optional]VARIANT CommandText,
		[in, optional]VARIANT CommandType,
		[in, optional]VARIANT BackgroundQuery,
		[in, optional]VARIANT ImportDataAs,
		[out, retval]Workbook** RHS);
	[id(0x00000815), helpcontext(0x00010815)]
	HRESULT __stdcall CheckOut(
		[in]BSTR Filename);
	[id(0x00000816), helpcontext(0x00010816)]
	HRESULT __stdcall CanCheckOut(
		[in]BSTR Filename,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000817), hidden, helpcontext(0x00010817)]
	HRESULT __stdcall _OpenXML(
		[in]BSTR Filename,
		[in, optional]VARIANT Stylesheets,
		[out, retval]Workbook** RHS);
	[id(0x000008e8), helpcontext(0x000108e8)]
	HRESULT __stdcall OpenXML(
		[in]BSTR Filename,
		[in, optional]VARIANT Stylesheets,
		[in, optional]VARIANT LoadOption,
		[out, retval]Workbook** RHS);
};
'!
!ExcelWorkbooks categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelWorkbooks methodsFor!

__openText: filename lcid: lcid
	"Invoke the __OpenText() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 __openText: filename
		 origin: VARIANT unspecified
		 startRow: VARIANT unspecified
		 dataType: VARIANT unspecified
		 textQualifier: 1
		 consecutiveDelimiter: VARIANT unspecified
		 tab: VARIANT unspecified
		 semicolon: VARIANT unspecified
		 comma: VARIANT unspecified
		 space: VARIANT unspecified
		 other: VARIANT unspecified
		 otherChar: VARIANT unspecified
		 fieldInfo: VARIANT unspecified
		 textVisualLayout: VARIANT unspecified
		 lcid: lcid!

__openText: filename origin: origin startRow: startRow dataType: dataType textQualifier: textQualifier consecutiveDelimiter: consecutiveDelimiter tab: tab semicolon: semicolon comma: comma space: space other: other otherChar: otherChar fieldInfo: fieldInfo textVisualLayout: textVisualLayout lcid: lcid
	"Invoke the __OpenText() method of the COM object."

	^self
		__OpenText: filename
		origin: origin asVariant
		startRow: startRow asVariant
		dataType: dataType asVariant
		textQualifier: textQualifier
		consecutiveDelimiter: consecutiveDelimiter asVariant
		tab: tab asVariant
		semicolon: semicolon asVariant
		comma: comma asVariant
		space: space asVariant
		other: other asVariant
		otherChar: otherChar asVariant
		fieldInfo: fieldInfo asVariant
		textVisualLayout: textVisualLayout asVariant
		lcid: lcid
!

__OpenText: filename origin: origin startRow: startRow dataType: dataType textQualifier: textQualifier consecutiveDelimiter: consecutiveDelimiter tab: tab semicolon: semicolon comma: comma space: space other: other otherChar: otherChar fieldInfo: fieldInfo textVisualLayout: textVisualLayout lcid: lcid
	"Private - Invoke the __OpenText() method of the COM object.

		HRESULT __stdcall __OpenText(
			[in]BSTR Filename,
			[in, optional]VARIANT Origin,
			[in, optional]VARIANT StartRow,
			[in, optional]VARIANT DataType,
			[in, defaultvalue(1)]XlTextQualifier TextQualifier,
			[in, optional]VARIANT ConsecutiveDelimiter,
			[in, optional]VARIANT Tab,
			[in, optional]VARIANT Semicolon,
			[in, optional]VARIANT Comma,
			[in, optional]VARIANT Space,
			[in, optional]VARIANT Other,
			[in, optional]VARIANT OtherChar,
			[in, optional]VARIANT FieldInfo,
			[in, optional]VARIANT TextVisualLayout,
			[in]long lcid);"

	<virtual stdcall: hresult 17 bstr variant variant variant sdword variant variant variant variant variant variant variant variant variant sdword>
	^self invalidCall!

_default: index
	"Answer the <Excel_Workbook> value of the '_Default' property of the receiver."

	| answer |
	answer := Excel_Workbook newPointer.
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

_open: filename lcid: lcid
	"Answer the <Excel_Workbook> result of invoking the _Open() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _open: filename
		 updateLinks: VARIANT unspecified
		 readOnly: VARIANT unspecified
		 format: VARIANT unspecified
		 password: VARIANT unspecified
		 writeResPassword: VARIANT unspecified
		 ignoreReadOnlyRecommended: VARIANT unspecified
		 origin: VARIANT unspecified
		 delimiter: VARIANT unspecified
		 editable: VARIANT unspecified
		 notify: VARIANT unspecified
		 converter: VARIANT unspecified
		 addToMru: VARIANT unspecified
		 lcid: lcid!

_open: filename updateLinks: updateLinks readOnly: readOnly format: format password: password writeResPassword: writeResPassword ignoreReadOnlyRecommended: ignoreReadOnlyRecommended origin: origin delimiter: delimiter editable: editable notify: notify converter: converter addToMru: addToMru lcid: lcid
	"Answer the <Excel_Workbook> result of invoking the _Open() method of the COM object."

	| answer |
	answer := Excel_Workbook newPointer.
	self
		_Open: filename
		updateLinks: updateLinks asVariant
		readOnly: readOnly asVariant
		format: format asVariant
		password: password asVariant
		writeResPassword: writeResPassword asVariant
		ignoreReadOnlyRecommended: ignoreReadOnlyRecommended asVariant
		origin: origin asVariant
		delimiter: delimiter asVariant
		editable: editable asVariant
		notify: notify asVariant
		converter: converter asVariant
		addToMru: addToMru asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

_Open: filename updateLinks: updateLinks readOnly: readOnly format: format password: password writeResPassword: writeResPassword ignoreReadOnlyRecommended: ignoreReadOnlyRecommended origin: origin delimiter: delimiter editable: editable notify: notify converter: converter addToMru: addToMru lcid: lcid rhs: rhs
	"Private - Invoke the _Open() method of the COM object.

		HRESULT __stdcall _Open(
			[in]BSTR Filename,
			[in, optional]VARIANT UpdateLinks,
			[in, optional]VARIANT ReadOnly,
			[in, optional]VARIANT Format,
			[in, optional]VARIANT Password,
			[in, optional]VARIANT WriteResPassword,
			[in, optional]VARIANT IgnoreReadOnlyRecommended,
			[in, optional]VARIANT Origin,
			[in, optional]VARIANT Delimiter,
			[in, optional]VARIANT Editable,
			[in, optional]VARIANT Notify,
			[in, optional]VARIANT Converter,
			[in, optional]VARIANT AddToMru,
			[in]long lcid,
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 16 bstr variant variant variant variant variant variant variant variant variant variant variant variant sdword Excel_Workbook**>
	^self invalidCall!

_openText: filename lcid: lcid
	"Invoke the _OpenText() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _openText: filename
		 origin: VARIANT unspecified
		 startRow: VARIANT unspecified
		 dataType: VARIANT unspecified
		 textQualifier: 1
		 consecutiveDelimiter: VARIANT unspecified
		 tab: VARIANT unspecified
		 semicolon: VARIANT unspecified
		 comma: VARIANT unspecified
		 space: VARIANT unspecified
		 other: VARIANT unspecified
		 otherChar: VARIANT unspecified
		 fieldInfo: VARIANT unspecified
		 textVisualLayout: VARIANT unspecified
		 decimalSeparator: VARIANT unspecified
		 thousandsSeparator: VARIANT unspecified
		 lcid: lcid!

_openText: filename origin: origin startRow: startRow dataType: dataType textQualifier: textQualifier consecutiveDelimiter: consecutiveDelimiter tab: tab semicolon: semicolon comma: comma space: space other: other otherChar: otherChar fieldInfo: fieldInfo textVisualLayout: textVisualLayout decimalSeparator: decimalSeparator thousandsSeparator: thousandsSeparator lcid: lcid
	"Invoke the _OpenText() method of the COM object."

	^self
		_OpenText: filename
		origin: origin asVariant
		startRow: startRow asVariant
		dataType: dataType asVariant
		textQualifier: textQualifier
		consecutiveDelimiter: consecutiveDelimiter asVariant
		tab: tab asVariant
		semicolon: semicolon asVariant
		comma: comma asVariant
		space: space asVariant
		other: other asVariant
		otherChar: otherChar asVariant
		fieldInfo: fieldInfo asVariant
		textVisualLayout: textVisualLayout asVariant
		decimalSeparator: decimalSeparator asVariant
		thousandsSeparator: thousandsSeparator asVariant
		lcid: lcid
!

_OpenText: filename origin: origin startRow: startRow dataType: dataType textQualifier: textQualifier consecutiveDelimiter: consecutiveDelimiter tab: tab semicolon: semicolon comma: comma space: space other: other otherChar: otherChar fieldInfo: fieldInfo textVisualLayout: textVisualLayout decimalSeparator: decimalSeparator thousandsSeparator: thousandsSeparator lcid: lcid
	"Private - Invoke the _OpenText() method of the COM object.

		HRESULT __stdcall _OpenText(
			[in]BSTR Filename,
			[in, optional]VARIANT Origin,
			[in, optional]VARIANT StartRow,
			[in, optional]VARIANT DataType,
			[in, defaultvalue(1)]XlTextQualifier TextQualifier,
			[in, optional]VARIANT ConsecutiveDelimiter,
			[in, optional]VARIANT Tab,
			[in, optional]VARIANT Semicolon,
			[in, optional]VARIANT Comma,
			[in, optional]VARIANT Space,
			[in, optional]VARIANT Other,
			[in, optional]VARIANT OtherChar,
			[in, optional]VARIANT FieldInfo,
			[in, optional]VARIANT TextVisualLayout,
			[in, optional]VARIANT DecimalSeparator,
			[in, optional]VARIANT ThousandsSeparator,
			[in]long lcid);"

	<virtual stdcall: hresult 19 bstr variant variant variant sdword variant variant variant variant variant variant variant variant variant variant variant sdword>
	^self invalidCall!

_openXML: filename
	"Answer the <Excel_Workbook> result of invoking the _OpenXML() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _openXML: filename
		 stylesheets: VARIANT unspecified!

_openXML: filename stylesheets: stylesheets
	"Answer the <Excel_Workbook> result of invoking the _OpenXML() method of the COM object."

	| answer |
	answer := Excel_Workbook newPointer.
	self
		_OpenXML: filename
		stylesheets: stylesheets asVariant
		rhs: answer.
	^answer asObject
!

_OpenXML: filename stylesheets: stylesheets rhs: rhs
	"Private - Invoke the _OpenXML() method of the COM object.

		HRESULT __stdcall _OpenXML(
			[in]BSTR Filename,
			[in, optional]VARIANT Stylesheets,
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 25 bstr variant Excel_Workbook**>
	^self invalidCall!

add: lcid
	"Answer the <Excel_Workbook> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: VARIANT unspecified
		 lcid: lcid!

add: template lcid: lcid
	"Answer the <Excel_Workbook> result of invoking the Add() method of the COM object."

	| answer |
	answer := Excel_Workbook newPointer.
	self
		Add: template asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Add: template lcid: lcid rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in, optional]VARIANT Template,
			[in]long lcid,
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 11 variant sdword Excel_Workbook**>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

canCheckOut: filename
	"Answer the <VARIANT_BOOL> result of invoking the CanCheckOut() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		CanCheckOut: filename
		rhs: answer.
	^answer asObject
!

CanCheckOut: filename rhs: rhs
	"Private - Invoke the CanCheckOut() method of the COM object.

		HRESULT __stdcall CanCheckOut(
			[in]BSTR Filename,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 24 bstr varbool*>
	^self invalidCall!

checkOut: filename
	"Invoke the CheckOut() method of the COM object."

	^self CheckOut: filename
!

CheckOut: filename
	"Private - Invoke the CheckOut() method of the COM object.

		HRESULT __stdcall CheckOut(
			[in]BSTR Filename);"

	<virtual stdcall: hresult 23 bstr>
	^self invalidCall!

close: lcid
	"Invoke the Close() method of the COM object."

	^self Close: lcid
!

Close: lcid
	"Private - Invoke the Close() method of the COM object.

		HRESULT __stdcall Close(
			[in]long lcid);"

	<virtual stdcall: hresult 12 sdword>
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

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 18 variant Excel_Workbook**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 15 IUnknown**>
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

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 14 variant Excel_Workbook**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <Excel_Workbook> value of the 'Item' property of the receiver."

	| answer |
	answer := Excel_Workbook newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
!

open: filename lcid: lcid
	"Answer the <Excel_Workbook> result of invoking the Open() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 open: filename
		 updateLinks: VARIANT unspecified
		 readOnly: VARIANT unspecified
		 format: VARIANT unspecified
		 password: VARIANT unspecified
		 writeResPassword: VARIANT unspecified
		 ignoreReadOnlyRecommended: VARIANT unspecified
		 origin: VARIANT unspecified
		 delimiter: VARIANT unspecified
		 editable: VARIANT unspecified
		 notify: VARIANT unspecified
		 converter: VARIANT unspecified
		 addToMru: VARIANT unspecified
		 local: VARIANT unspecified
		 corruptLoad: VARIANT unspecified
		 lcid: lcid!

open: filename updateLinks: updateLinks readOnly: readOnly format: format password: password writeResPassword: writeResPassword ignoreReadOnlyRecommended: ignoreReadOnlyRecommended origin: origin delimiter: delimiter editable: editable notify: notify converter: converter addToMru: addToMru local: local corruptLoad: corruptLoad lcid: lcid
	"Answer the <Excel_Workbook> result of invoking the Open() method of the COM object."

	| answer |
	answer := Excel_Workbook newPointer.
	self
		Open: filename
		updateLinks: updateLinks asVariant
		readOnly: readOnly asVariant
		format: format asVariant
		password: password asVariant
		writeResPassword: writeResPassword asVariant
		ignoreReadOnlyRecommended: ignoreReadOnlyRecommended asVariant
		origin: origin asVariant
		delimiter: delimiter asVariant
		editable: editable asVariant
		notify: notify asVariant
		converter: converter asVariant
		addToMru: addToMru asVariant
		local: local asVariant
		corruptLoad: corruptLoad asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Open: filename updateLinks: updateLinks readOnly: readOnly format: format password: password writeResPassword: writeResPassword ignoreReadOnlyRecommended: ignoreReadOnlyRecommended origin: origin delimiter: delimiter editable: editable notify: notify converter: converter addToMru: addToMru local: local corruptLoad: corruptLoad lcid: lcid rhs: rhs
	"Private - Invoke the Open() method of the COM object.

		HRESULT __stdcall Open(
			[in]BSTR Filename,
			[in, optional]VARIANT UpdateLinks,
			[in, optional]VARIANT ReadOnly,
			[in, optional]VARIANT Format,
			[in, optional]VARIANT Password,
			[in, optional]VARIANT WriteResPassword,
			[in, optional]VARIANT IgnoreReadOnlyRecommended,
			[in, optional]VARIANT Origin,
			[in, optional]VARIANT Delimiter,
			[in, optional]VARIANT Editable,
			[in, optional]VARIANT Notify,
			[in, optional]VARIANT Converter,
			[in, optional]VARIANT AddToMru,
			[in, optional]VARIANT Local,
			[in, optional]VARIANT CorruptLoad,
			[in]long lcid,
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 20 bstr variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword Excel_Workbook**>
	^self invalidCall!

openDatabase: filename
	"Answer the <Excel_Workbook> result of invoking the OpenDatabase() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 openDatabase: filename
		 commandText: VARIANT unspecified
		 commandType: VARIANT unspecified
		 backgroundQuery: VARIANT unspecified
		 importDataAs: VARIANT unspecified!

openDatabase: filename commandText: commandText commandType: commandType backgroundQuery: backgroundQuery importDataAs: importDataAs
	"Answer the <Excel_Workbook> result of invoking the OpenDatabase() method of the COM object."

	| answer |
	answer := Excel_Workbook newPointer.
	self
		OpenDatabase: filename
		commandText: commandText asVariant
		commandType: commandType asVariant
		backgroundQuery: backgroundQuery asVariant
		importDataAs: importDataAs asVariant
		rhs: answer.
	^answer asObject
!

OpenDatabase: filename commandText: commandText commandType: commandType backgroundQuery: backgroundQuery importDataAs: importDataAs rhs: rhs
	"Private - Invoke the OpenDatabase() method of the COM object.

		HRESULT __stdcall OpenDatabase(
			[in]BSTR Filename,
			[in, optional]VARIANT CommandText,
			[in, optional]VARIANT CommandType,
			[in, optional]VARIANT BackgroundQuery,
			[in, optional]VARIANT ImportDataAs,
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 22 bstr variant variant variant variant Excel_Workbook**>
	^self invalidCall!

openText: filename lcid: lcid
	"Invoke the OpenText() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 openText: filename
		 origin: VARIANT unspecified
		 startRow: VARIANT unspecified
		 dataType: VARIANT unspecified
		 textQualifier: 1
		 consecutiveDelimiter: VARIANT unspecified
		 tab: VARIANT unspecified
		 semicolon: VARIANT unspecified
		 comma: VARIANT unspecified
		 space: VARIANT unspecified
		 other: VARIANT unspecified
		 otherChar: VARIANT unspecified
		 fieldInfo: VARIANT unspecified
		 textVisualLayout: VARIANT unspecified
		 decimalSeparator: VARIANT unspecified
		 thousandsSeparator: VARIANT unspecified
		 trailingMinusNumbers: VARIANT unspecified
		 local: VARIANT unspecified
		 lcid: lcid!

openText: filename origin: origin startRow: startRow dataType: dataType textQualifier: textQualifier consecutiveDelimiter: consecutiveDelimiter tab: tab semicolon: semicolon comma: comma space: space other: other otherChar: otherChar fieldInfo: fieldInfo textVisualLayout: textVisualLayout decimalSeparator: decimalSeparator thousandsSeparator: thousandsSeparator trailingMinusNumbers: trailingMinusNumbers local: local lcid: lcid
	"Invoke the OpenText() method of the COM object."

	^self
		OpenText: filename
		origin: origin asVariant
		startRow: startRow asVariant
		dataType: dataType asVariant
		textQualifier: textQualifier
		consecutiveDelimiter: consecutiveDelimiter asVariant
		tab: tab asVariant
		semicolon: semicolon asVariant
		comma: comma asVariant
		space: space asVariant
		other: other asVariant
		otherChar: otherChar asVariant
		fieldInfo: fieldInfo asVariant
		textVisualLayout: textVisualLayout asVariant
		decimalSeparator: decimalSeparator asVariant
		thousandsSeparator: thousandsSeparator asVariant
		trailingMinusNumbers: trailingMinusNumbers asVariant
		local: local asVariant
		lcid: lcid
!

OpenText: filename origin: origin startRow: startRow dataType: dataType textQualifier: textQualifier consecutiveDelimiter: consecutiveDelimiter tab: tab semicolon: semicolon comma: comma space: space other: other otherChar: otherChar fieldInfo: fieldInfo textVisualLayout: textVisualLayout decimalSeparator: decimalSeparator thousandsSeparator: thousandsSeparator trailingMinusNumbers: trailingMinusNumbers local: local lcid: lcid
	"Private - Invoke the OpenText() method of the COM object.

		HRESULT __stdcall OpenText(
			[in]BSTR Filename,
			[in, optional]VARIANT Origin,
			[in, optional]VARIANT StartRow,
			[in, optional]VARIANT DataType,
			[in, defaultvalue(1)]XlTextQualifier TextQualifier,
			[in, optional]VARIANT ConsecutiveDelimiter,
			[in, optional]VARIANT Tab,
			[in, optional]VARIANT Semicolon,
			[in, optional]VARIANT Comma,
			[in, optional]VARIANT Space,
			[in, optional]VARIANT Other,
			[in, optional]VARIANT OtherChar,
			[in, optional]VARIANT FieldInfo,
			[in, optional]VARIANT TextVisualLayout,
			[in, optional]VARIANT DecimalSeparator,
			[in, optional]VARIANT ThousandsSeparator,
			[in, optional]VARIANT TrailingMinusNumbers,
			[in, optional]VARIANT Local,
			[in]long lcid);"

	<virtual stdcall: hresult 21 bstr variant variant variant sdword variant variant variant variant variant variant variant variant variant variant variant variant variant sdword>
	^self invalidCall!

openXML: filename
	"Answer the <Excel_Workbook> result of invoking the OpenXML() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 openXML: filename
		 stylesheets: VARIANT unspecified
		 loadOption: VARIANT unspecified!

openXML: filename stylesheets: stylesheets loadOption: loadOption
	"Answer the <Excel_Workbook> result of invoking the OpenXML() method of the COM object."

	| answer |
	answer := Excel_Workbook newPointer.
	self
		OpenXML: filename
		stylesheets: stylesheets asVariant
		loadOption: loadOption asVariant
		rhs: answer.
	^answer asObject
!

OpenXML: filename stylesheets: stylesheets loadOption: loadOption rhs: rhs
	"Private - Invoke the OpenXML() method of the COM object.

		HRESULT __stdcall OpenXML(
			[in]BSTR Filename,
			[in, optional]VARIANT Stylesheets,
			[in, optional]VARIANT LoadOption,
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 26 bstr variant variant Excel_Workbook**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelWorkbooks categoriesFor: #__openText:lcid:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #__openText:origin:startRow:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:textVisualLayout:lcid:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #__OpenText:origin:startRow:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:textVisualLayout:lcid:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelWorkbooks categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelWorkbooks categoriesFor: #_open:lcid:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #_open:updateLinks:readOnly:format:password:writeResPassword:ignoreReadOnlyRecommended:origin:delimiter:editable:notify:converter:addToMru:lcid:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #_Open:updateLinks:readOnly:format:password:writeResPassword:ignoreReadOnlyRecommended:origin:delimiter:editable:notify:converter:addToMru:lcid:rhs:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #_openText:lcid:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #_openText:origin:startRow:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:textVisualLayout:decimalSeparator:thousandsSeparator:lcid:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #_OpenText:origin:startRow:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:textVisualLayout:decimalSeparator:thousandsSeparator:lcid:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #_openXML:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #_openXML:stylesheets:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #_OpenXML:stylesheets:rhs:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #add:lcid:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #Add:lcid:rhs:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #application!**auto generated**!properties!public! !
!ExcelWorkbooks categoriesFor: #canCheckOut:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #CanCheckOut:rhs:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #checkOut:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #CheckOut:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #close:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #Close:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #count!**auto generated**!properties!public! !
!ExcelWorkbooks categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelWorkbooks categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #get_Application:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #get_Count:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelWorkbooks categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelWorkbooks categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelWorkbooks categoriesFor: #open:lcid:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #open:updateLinks:readOnly:format:password:writeResPassword:ignoreReadOnlyRecommended:origin:delimiter:editable:notify:converter:addToMru:local:corruptLoad:lcid:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #Open:updateLinks:readOnly:format:password:writeResPassword:ignoreReadOnlyRecommended:origin:delimiter:editable:notify:converter:addToMru:local:corruptLoad:lcid:rhs:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #openDatabase:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #openDatabase:commandText:commandType:backgroundQuery:importDataAs:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #OpenDatabase:commandText:commandType:backgroundQuery:importDataAs:rhs:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #openText:lcid:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #openText:origin:startRow:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:textVisualLayout:decimalSeparator:thousandsSeparator:trailingMinusNumbers:local:lcid:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #OpenText:origin:startRow:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:textVisualLayout:decimalSeparator:thousandsSeparator:trailingMinusNumbers:local:lcid:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #openXML:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #openXML:stylesheets:loadOption:!**auto generated**!methods!public! !
!ExcelWorkbooks categoriesFor: #OpenXML:stylesheets:loadOption:rhs:!**auto generated**!COM Interfaces-Workbooks!private! !
!ExcelWorkbooks categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelWorkbooks class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.Workbooks'
		ExcelWorkbooks defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:lcid:rhs:
			argumentTypes: 'variant sdword Excel_Workbook**';
		defineFunction: #Close:
			argumentTypes: 'sdword';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant Excel_Workbook**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #_Open:updateLinks:readOnly:format:password:writeResPassword:ignoreReadOnlyRecommended:origin:delimiter:editable:notify:converter:addToMru:lcid:rhs:
			argumentTypes: 'bstr variant variant variant variant variant variant variant variant variant variant variant variant sdword Excel_Workbook**';
		defineFunction: #__OpenText:origin:startRow:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:textVisualLayout:lcid:
			argumentTypes: 'bstr variant variant variant sdword variant variant variant variant variant variant variant variant variant sdword';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant Excel_Workbook**';
		defineFunction: #_OpenText:origin:startRow:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:textVisualLayout:decimalSeparator:thousandsSeparator:lcid:
			argumentTypes: 'bstr variant variant variant sdword variant variant variant variant variant variant variant variant variant variant variant sdword';
		defineFunction: #Open:updateLinks:readOnly:format:password:writeResPassword:ignoreReadOnlyRecommended:origin:delimiter:editable:notify:converter:addToMru:local:corruptLoad:lcid:rhs:
			argumentTypes: 'bstr variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword Excel_Workbook**';
		defineFunction: #OpenText:origin:startRow:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:textVisualLayout:decimalSeparator:thousandsSeparator:trailingMinusNumbers:local:lcid:
			argumentTypes: 'bstr variant variant variant sdword variant variant variant variant variant variant variant variant variant variant variant variant variant sdword';
		defineFunction: #OpenDatabase:commandText:commandType:backgroundQuery:importDataAs:rhs:
			argumentTypes: 'bstr variant variant variant variant Excel_Workbook**';
		defineFunction: #CheckOut:
			argumentTypes: 'bstr';
		defineFunction: #CanCheckOut:rhs:
			argumentTypes: 'bstr varbool*';
		defineFunction: #_OpenXML:stylesheets:rhs:
			argumentTypes: 'bstr variant Excel_Workbook**';
		defineFunction: #OpenXML:stylesheets:loadOption:rhs:
			argumentTypes: 'bstr variant variant Excel_Workbook**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelWorkbooks initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelWorkbooks class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelWorkbooks class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

