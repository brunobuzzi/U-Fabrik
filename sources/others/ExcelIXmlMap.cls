"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIXmlMap
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIXmlMap guid: (IID fromString: '{0002447B-0001-0000-C000-000000000046}')!
ExcelIXmlMap comment: '<ExcelIXmlMap> is a wrapper class for the COM interface ''Excel.IXmlMap'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002447B-0001-0000-C000-000000000046), 
	helpcontext(0x00020111), 
	hidden
]
interface IXmlMap : IDispatch
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
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x0000091e), propget, helpcontext(0x0001091e)]
	HRESULT __stdcall IsExportable(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000091f), propget, helpcontext(0x0001091f)]
	HRESULT __stdcall ShowImportExportValidationErrors(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000091f), propput, helpcontext(0x0001091f)]
	HRESULT __stdcall ShowImportExportValidationErrors(
		[in]VARIANT_BOOL RHS);
	[id(0x00000920), propget, helpcontext(0x00010920)]
	HRESULT __stdcall SaveDataSourceDefinition(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000920), propput, helpcontext(0x00010920)]
	HRESULT __stdcall SaveDataSourceDefinition(
		[in]VARIANT_BOOL RHS);
	[id(0x0000074c), propget, helpcontext(0x0001074c)]
	HRESULT __stdcall AdjustColumnWidth(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000074c), propput, helpcontext(0x0001074c)]
	HRESULT __stdcall AdjustColumnWidth(
		[in]VARIANT_BOOL RHS);
	[id(0x00000921), propget, helpcontext(0x00010921)]
	HRESULT __stdcall PreserveColumnFilter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000921), propput, helpcontext(0x00010921)]
	HRESULT __stdcall PreserveColumnFilter(
		[in]VARIANT_BOOL RHS);
	[id(0x00000922), propget, helpcontext(0x00010922)]
	HRESULT __stdcall PreserveNumberFormatting(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000922), propput, helpcontext(0x00010922)]
	HRESULT __stdcall PreserveNumberFormatting(
		[in]VARIANT_BOOL RHS);
	[id(0x00000923), propget, helpcontext(0x00010923)]
	HRESULT __stdcall AppendOnImport(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000923), propput, helpcontext(0x00010923)]
	HRESULT __stdcall AppendOnImport(
		[in]VARIANT_BOOL RHS);
	[id(0x00000924), propget, helpcontext(0x00010924)]
	HRESULT __stdcall RootElementName(
		[out, retval]BSTR* RHS);
	[id(0x00000925), propget, helpcontext(0x00010925)]
	HRESULT __stdcall RootElementNamespace(
		[out, retval]XmlNamespace** RHS);
	[id(0x00000926), propget, helpcontext(0x00010926)]
	HRESULT __stdcall Schemas(
		[out, retval]XmlSchemas** RHS);
	[id(0x00000927), propget, helpcontext(0x00010927)]
	HRESULT __stdcall DataBinding(
		[out, retval]XmlDataBinding** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000395), helpcontext(0x00010395)]
	HRESULT __stdcall Import(
		[in]BSTR Url,
		[in, optional]VARIANT Overwrite,
		[out, retval]XlXmlImportResult* RHS);
	[id(0x00000928), helpcontext(0x00010928)]
	HRESULT __stdcall ImportXml(
		[in]BSTR XmlData,
		[in, optional]VARIANT Overwrite,
		[out, retval]XlXmlImportResult* RHS);
	[id(0x00000586), helpcontext(0x00010586)]
	HRESULT __stdcall Export(
		[in]BSTR Url,
		[in, optional]VARIANT Overwrite,
		[out, retval]XlXmlExportResult* RHS);
	[id(0x0000092a), helpcontext(0x0001092a)]
	HRESULT __stdcall ExportXml(
		[out]BSTR* Data,
		[out, retval]XlXmlExportResult* RHS);
	[id(0x000009f0), propget, helpcontext(0x000109f0)]
	HRESULT __stdcall WorkbookConnection(
		[out, retval]WorkbookConnection** RHS);
};
'!
!ExcelIXmlMap categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIXmlMap methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

adjustColumnWidth
	"Answer the <varbool> value of the 'AdjustColumnWidth' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AdjustColumnWidth: answer.
	^answer asObject
!

adjustColumnWidth: rhs
	"Set the 'AdjustColumnWidth' property of the receiver to the <varbool> value of the argument."

	self put_AdjustColumnWidth: rhs
!

appendOnImport
	"Answer the <varbool> value of the 'AppendOnImport' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AppendOnImport: answer.
	^answer asObject
!

appendOnImport: rhs
	"Set the 'AppendOnImport' property of the receiver to the <varbool> value of the argument."

	self put_AppendOnImport: rhs
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

dataBinding
	"Answer the <ExcelXmlDataBinding> value of the 'DataBinding' property of the receiver."

	| answer |
	answer := ExcelXmlDataBinding newPointer.
	self get_DataBinding: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 31>
	^self invalidCall!

export: url
	"Answer the <SDWORD> result of invoking the Export() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 export: url
		 overwrite: VARIANT unspecified!

export: url overwrite: overwrite
	"Answer the <SDWORD> result of invoking the Export() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self
		Export: url
		overwrite: overwrite asVariant
		rhs: answer.
	^answer asObject
!

Export: url overwrite: overwrite rhs: rhs
	"Private - Invoke the Export() method of the COM object.

		HRESULT __stdcall Export(
			[in]BSTR Url,
			[in, optional]VARIANT Overwrite,
			[out, retval]XlXmlExportResult* RHS);"

	<virtual stdcall: hresult 34 bstr variant sdword*>
	^self invalidCall!

exportXml
	"Invoke the ExportXml() method of the COM object."

	| answer |
	answer := (Array new: 2)
				basicAt: 1 put: BSTR new;
				basicAt: 2 put: (SDWORD new);
				yourself.
	self
		ExportXml: (answer basicAt: 1)
		rhs: (answer basicAt: 2).
	^answer collect: [:each | each asObject]
!

ExportXml: data rhs: rhs
	"Private - Invoke the ExportXml() method of the COM object.

		HRESULT __stdcall ExportXml(
			[out]BSTR* Data,
			[out, retval]XlXmlExportResult* RHS);"

	<virtual stdcall: hresult 35 bstr* sdword*>
	^self invalidCall!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_AdjustColumnWidth: rhs
	"Private - Get the value of the 'AdjustColumnWidth' property of the receiver.

		HRESULT __stdcall AdjustColumnWidth(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

get_AppendOnImport: rhs
	"Private - Get the value of the 'AppendOnImport' property of the receiver.

		HRESULT __stdcall AppendOnImport(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DataBinding: rhs
	"Private - Get the value of the 'DataBinding' property of the receiver.

		HRESULT __stdcall DataBinding(
			[out, retval]XmlDataBinding** RHS);"

	<virtual stdcall: hresult 30 ExcelXmlDataBinding**>
	^self invalidCall!

get_IsExportable: rhs
	"Private - Get the value of the 'IsExportable' property of the receiver.

		HRESULT __stdcall IsExportable(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 14 varbool*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PreserveColumnFilter: rhs
	"Private - Get the value of the 'PreserveColumnFilter' property of the receiver.

		HRESULT __stdcall PreserveColumnFilter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 21 varbool*>
	^self invalidCall!

get_PreserveNumberFormatting: rhs
	"Private - Get the value of the 'PreserveNumberFormatting' property of the receiver.

		HRESULT __stdcall PreserveNumberFormatting(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 23 varbool*>
	^self invalidCall!

get_RootElementName: rhs
	"Private - Get the value of the 'RootElementName' property of the receiver.

		HRESULT __stdcall RootElementName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 27 bstr*>
	^self invalidCall!

get_RootElementNamespace: rhs
	"Private - Get the value of the 'RootElementNamespace' property of the receiver.

		HRESULT __stdcall RootElementNamespace(
			[out, retval]XmlNamespace** RHS);"

	<virtual stdcall: hresult 28 ExcelXmlNamespace**>
	^self invalidCall!

get_SaveDataSourceDefinition: rhs
	"Private - Get the value of the 'SaveDataSourceDefinition' property of the receiver.

		HRESULT __stdcall SaveDataSourceDefinition(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

get_Schemas: rhs
	"Private - Get the value of the 'Schemas' property of the receiver.

		HRESULT __stdcall Schemas(
			[out, retval]XmlSchemas** RHS);"

	<virtual stdcall: hresult 29 ExcelXmlSchemas**>
	^self invalidCall!

get_ShowImportExportValidationErrors: rhs
	"Private - Get the value of the 'ShowImportExportValidationErrors' property of the receiver.

		HRESULT __stdcall ShowImportExportValidationErrors(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 15 varbool*>
	^self invalidCall!

get_WorkbookConnection: rhs
	"Private - Get the value of the 'WorkbookConnection' property of the receiver.

		HRESULT __stdcall WorkbookConnection(
			[out, retval]WorkbookConnection** RHS);"

	<virtual stdcall: hresult 36 ExcelWorkbookConnection**>
	^self invalidCall!

import: url
	"Answer the <SDWORD> result of invoking the Import() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 import: url
		 overwrite: VARIANT unspecified!

import: url overwrite: overwrite
	"Answer the <SDWORD> result of invoking the Import() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self
		Import: url
		overwrite: overwrite asVariant
		rhs: answer.
	^answer asObject
!

Import: url overwrite: overwrite rhs: rhs
	"Private - Invoke the Import() method of the COM object.

		HRESULT __stdcall Import(
			[in]BSTR Url,
			[in, optional]VARIANT Overwrite,
			[out, retval]XlXmlImportResult* RHS);"

	<virtual stdcall: hresult 32 bstr variant sdword*>
	^self invalidCall!

importXml: xmlData
	"Answer the <SDWORD> result of invoking the ImportXml() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 importXml: xmlData
		 overwrite: VARIANT unspecified!

importXml: xmlData overwrite: overwrite
	"Answer the <SDWORD> result of invoking the ImportXml() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self
		ImportXml: xmlData
		overwrite: overwrite asVariant
		rhs: answer.
	^answer asObject
!

ImportXml: xmlData overwrite: overwrite rhs: rhs
	"Private - Invoke the ImportXml() method of the COM object.

		HRESULT __stdcall ImportXml(
			[in]BSTR XmlData,
			[in, optional]VARIANT Overwrite,
			[out, retval]XlXmlImportResult* RHS);"

	<virtual stdcall: hresult 33 bstr variant sdword*>
	^self invalidCall!

isExportable
	"Answer the <varbool> value of the 'IsExportable' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IsExportable: answer.
	^answer asObject
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <bstr> value of the argument."

	self put_Name: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

preserveColumnFilter
	"Answer the <varbool> value of the 'PreserveColumnFilter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PreserveColumnFilter: answer.
	^answer asObject
!

preserveColumnFilter: rhs
	"Set the 'PreserveColumnFilter' property of the receiver to the <varbool> value of the argument."

	self put_PreserveColumnFilter: rhs
!

preserveNumberFormatting
	"Answer the <varbool> value of the 'PreserveNumberFormatting' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PreserveNumberFormatting: answer.
	^answer asObject
!

preserveNumberFormatting: rhs
	"Set the 'PreserveNumberFormatting' property of the receiver to the <varbool> value of the argument."

	self put_PreserveNumberFormatting: rhs
!

put_AdjustColumnWidth: rhs
	"Private - Set the value of the 'AdjustColumnWidth' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AdjustColumnWidth(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 20 varbool>
	^self invalidCall!

put_AppendOnImport: rhs
	"Private - Set the value of the 'AppendOnImport' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AppendOnImport(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 13 bstr>
	^self invalidCall!

put_PreserveColumnFilter: rhs
	"Private - Set the value of the 'PreserveColumnFilter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PreserveColumnFilter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 22 varbool>
	^self invalidCall!

put_PreserveNumberFormatting: rhs
	"Private - Set the value of the 'PreserveNumberFormatting' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PreserveNumberFormatting(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 24 varbool>
	^self invalidCall!

put_SaveDataSourceDefinition: rhs
	"Private - Set the value of the 'SaveDataSourceDefinition' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SaveDataSourceDefinition(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 18 varbool>
	^self invalidCall!

put_ShowImportExportValidationErrors: rhs
	"Private - Set the value of the 'ShowImportExportValidationErrors' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowImportExportValidationErrors(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 16 varbool>
	^self invalidCall!

rootElementName
	"Answer the <bstr> value of the 'RootElementName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_RootElementName: answer.
	^answer asObject
!

rootElementNamespace
	"Answer the <ExcelXmlNamespace> value of the 'RootElementNamespace' property of the receiver."

	| answer |
	answer := ExcelXmlNamespace newPointer.
	self get_RootElementNamespace: answer.
	^answer asObject
!

saveDataSourceDefinition
	"Answer the <varbool> value of the 'SaveDataSourceDefinition' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_SaveDataSourceDefinition: answer.
	^answer asObject
!

saveDataSourceDefinition: rhs
	"Set the 'SaveDataSourceDefinition' property of the receiver to the <varbool> value of the argument."

	self put_SaveDataSourceDefinition: rhs
!

schemas
	"Answer the <ExcelXmlSchemas> value of the 'Schemas' property of the receiver."

	| answer |
	answer := ExcelXmlSchemas newPointer.
	self get_Schemas: answer.
	^answer asObject
!

showImportExportValidationErrors
	"Answer the <varbool> value of the 'ShowImportExportValidationErrors' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowImportExportValidationErrors: answer.
	^answer asObject
!

showImportExportValidationErrors: rhs
	"Set the 'ShowImportExportValidationErrors' property of the receiver to the <varbool> value of the argument."

	self put_ShowImportExportValidationErrors: rhs
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
!

workbookConnection
	"Answer the <ExcelWorkbookConnection> value of the 'WorkbookConnection' property of the receiver."

	| answer |
	answer := ExcelWorkbookConnection newPointer.
	self get_WorkbookConnection: answer.
	^answer asObject
! !
!ExcelIXmlMap categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #adjustColumnWidth!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #adjustColumnWidth:!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #appendOnImport!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #appendOnImport:!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #dataBinding!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIXmlMap categoriesFor: #Delete!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #export:!**auto generated**!methods!public! !
!ExcelIXmlMap categoriesFor: #export:overwrite:!**auto generated**!methods!public! !
!ExcelIXmlMap categoriesFor: #Export:overwrite:rhs:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #exportXml!**auto generated**!methods!public! !
!ExcelIXmlMap categoriesFor: #ExportXml:rhs:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_AdjustColumnWidth:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_AppendOnImport:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_DataBinding:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_IsExportable:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_PreserveColumnFilter:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_PreserveNumberFormatting:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_RootElementName:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_RootElementNamespace:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_SaveDataSourceDefinition:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_Schemas:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_ShowImportExportValidationErrors:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #get_WorkbookConnection:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #import:!**auto generated**!methods!public! !
!ExcelIXmlMap categoriesFor: #import:overwrite:!**auto generated**!methods!public! !
!ExcelIXmlMap categoriesFor: #Import:overwrite:rhs:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #importXml:!**auto generated**!methods!public! !
!ExcelIXmlMap categoriesFor: #importXml:overwrite:!**auto generated**!methods!public! !
!ExcelIXmlMap categoriesFor: #ImportXml:overwrite:rhs:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #isExportable!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #preserveColumnFilter!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #preserveColumnFilter:!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #preserveNumberFormatting!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #preserveNumberFormatting:!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #put_AdjustColumnWidth:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #put_AppendOnImport:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #put_PreserveColumnFilter:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #put_PreserveNumberFormatting:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #put_SaveDataSourceDefinition:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #put_ShowImportExportValidationErrors:!**auto generated**!COM Interfaces-IXmlMap!private! !
!ExcelIXmlMap categoriesFor: #rootElementName!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #rootElementNamespace!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #saveDataSourceDefinition!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #saveDataSourceDefinition:!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #schemas!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #showImportExportValidationErrors!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #showImportExportValidationErrors:!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIXmlMap categoriesFor: #workbookConnection!**auto generated**!properties!public! !

!ExcelIXmlMap class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IXmlMap'
		ExcelIXmlMap defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_IsExportable:
			argumentTypes: 'varbool*';
		defineFunction: #get_ShowImportExportValidationErrors:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowImportExportValidationErrors:
			argumentTypes: 'varbool';
		defineFunction: #get_SaveDataSourceDefinition:
			argumentTypes: 'varbool*';
		defineFunction: #put_SaveDataSourceDefinition:
			argumentTypes: 'varbool';
		defineFunction: #get_AdjustColumnWidth:
			argumentTypes: 'varbool*';
		defineFunction: #put_AdjustColumnWidth:
			argumentTypes: 'varbool';
		defineFunction: #get_PreserveColumnFilter:
			argumentTypes: 'varbool*';
		defineFunction: #put_PreserveColumnFilter:
			argumentTypes: 'varbool';
		defineFunction: #get_PreserveNumberFormatting:
			argumentTypes: 'varbool*';
		defineFunction: #put_PreserveNumberFormatting:
			argumentTypes: 'varbool';
		defineFunction: #get_AppendOnImport:
			argumentTypes: 'varbool*';
		defineFunction: #put_AppendOnImport:
			argumentTypes: 'varbool';
		defineFunction: #get_RootElementName:
			argumentTypes: 'bstr*';
		defineFunction: #get_RootElementNamespace:
			argumentTypes: 'ExcelXmlNamespace**';
		defineFunction: #get_Schemas:
			argumentTypes: 'ExcelXmlSchemas**';
		defineFunction: #get_DataBinding:
			argumentTypes: 'ExcelXmlDataBinding**';
		defineFunction: #Delete;
		defineFunction: #Import:overwrite:rhs:
			argumentTypes: 'bstr variant sdword*';
		defineFunction: #ImportXml:overwrite:rhs:
			argumentTypes: 'bstr variant sdword*';
		defineFunction: #Export:overwrite:rhs:
			argumentTypes: 'bstr variant sdword*';
		defineFunction: #ExportXml:rhs:
			argumentTypes: 'bstr* sdword*';
		defineFunction: #get_WorkbookConnection:
			argumentTypes: 'ExcelWorkbookConnection**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIXmlMap initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIXmlMap class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIXmlMap class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

