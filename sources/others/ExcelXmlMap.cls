"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelXmlMap
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelXmlMap guid: (IID fromString: '{0002447B-0000-0000-C000-000000000046}')!
ExcelXmlMap comment: '<ExcelXmlMap> is a wrapper class generated for the dispatch interface ''Excel.XmlMap'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002447B-0000-0000-C000-000000000046), 
	helpcontext(0x00020111)
]
dispinterface XmlMap {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x0000091e), propget, helpcontext(0x0001091e)]
		VARIANT_BOOL IsExportable();
[id(0x0000091f), propget, helpcontext(0x0001091f)]
		VARIANT_BOOL ShowImportExportValidationErrors();
[id(0x0000091f), propput, helpcontext(0x0001091f)]
		void ShowImportExportValidationErrors(
			[in]VARIANT_BOOL arg1);
[id(0x00000920), propget, helpcontext(0x00010920)]
		VARIANT_BOOL SaveDataSourceDefinition();
[id(0x00000920), propput, helpcontext(0x00010920)]
		void SaveDataSourceDefinition(
			[in]VARIANT_BOOL arg1);
[id(0x0000074c), propget, helpcontext(0x0001074c)]
		VARIANT_BOOL AdjustColumnWidth();
[id(0x0000074c), propput, helpcontext(0x0001074c)]
		void AdjustColumnWidth(
			[in]VARIANT_BOOL arg1);
[id(0x00000921), propget, helpcontext(0x00010921)]
		VARIANT_BOOL PreserveColumnFilter();
[id(0x00000921), propput, helpcontext(0x00010921)]
		void PreserveColumnFilter(
			[in]VARIANT_BOOL arg1);
[id(0x00000922), propget, helpcontext(0x00010922)]
		VARIANT_BOOL PreserveNumberFormatting();
[id(0x00000922), propput, helpcontext(0x00010922)]
		void PreserveNumberFormatting(
			[in]VARIANT_BOOL arg1);
[id(0x00000923), propget, helpcontext(0x00010923)]
		VARIANT_BOOL AppendOnImport();
[id(0x00000923), propput, helpcontext(0x00010923)]
		void AppendOnImport(
			[in]VARIANT_BOOL arg1);
[id(0x00000924), propget, helpcontext(0x00010924)]
		BSTR RootElementName();
[id(0x00000925), propget, helpcontext(0x00010925)]
		XmlNamespace* RootElementNamespace();
[id(0x00000926), propget, helpcontext(0x00010926)]
		XmlSchemas* Schemas();
[id(0x00000927), propget, helpcontext(0x00010927)]
		XmlDataBinding* DataBinding();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000395), helpcontext(0x00010395)]
		XlXmlImportResult Import(
			[in]BSTR Url,
			[in, optional]VARIANT Overwrite);
[id(0x00000928), helpcontext(0x00010928)]
		XlXmlImportResult ImportXml(
			[in]BSTR XmlData,
			[in, optional]VARIANT Overwrite);
[id(0x00000586), helpcontext(0x00010586)]
		XlXmlExportResult Export(
			[in]BSTR Url,
			[in, optional]VARIANT Overwrite);
[id(0x0000092a), helpcontext(0x0001092a)]
		XlXmlExportResult ExportXml(
			[out]BSTR* Data);
[id(0x000009f0), propget, helpcontext(0x000109f0)]
		WorkbookConnection* WorkbookConnection();
};
'!
!ExcelXmlMap categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelXmlMap methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver.
		BSTR _Default"

	^(self getPropertyId: 0)
!

adjustColumnWidth
	"Answer the <varbool> value of the 'AdjustColumnWidth' property of the receiver.
		VARIANT_BOOL AdjustColumnWidth"

	^(self getPropertyId: 1868)
!

adjustColumnWidth: arg1
	"Set the 'AdjustColumnWidth' property of the receiver to the <varbool> value of the argument.
		void AdjustColumnWidth"

	self setPropertyId: 1868 value: arg1
!

appendOnImport
	"Answer the <varbool> value of the 'AppendOnImport' property of the receiver.
		VARIANT_BOOL AppendOnImport"

	^(self getPropertyId: 2339)
!

appendOnImport: arg1
	"Set the 'AppendOnImport' property of the receiver to the <varbool> value of the argument.
		void AppendOnImport"

	self setPropertyId: 2339 value: arg1
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

dataBinding
	"Answer the <ExcelXmlDataBinding> value of the 'DataBinding' property of the receiver.
		XmlDataBinding* DataBinding"

	^ExcelXmlDataBinding attachInterface: (self getPropertyId: 2343)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

export: url
	"Answer the <SDWORD> result of invoking the Export() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 export: url
		 overwrite: VARIANT unspecified!

export: url overwrite: overwrite
	"Answer the <SDWORD> result of invoking the Export() method of the COM object."

	^(self invokeId: 1414 with: url with: overwrite)
!

import: url
	"Answer the <SDWORD> result of invoking the Import() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 import: url
		 overwrite: VARIANT unspecified!

import: url overwrite: overwrite
	"Answer the <SDWORD> result of invoking the Import() method of the COM object."

	^(self invokeId: 917 with: url with: overwrite)
!

importXml: xmlData
	"Answer the <SDWORD> result of invoking the ImportXml() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 importXml: xmlData
		 overwrite: VARIANT unspecified!

importXml: xmlData overwrite: overwrite
	"Answer the <SDWORD> result of invoking the ImportXml() method of the COM object."

	^(self invokeId: 2344 with: xmlData with: overwrite)
!

isExportable
	"Answer the <varbool> value of the 'IsExportable' property of the receiver.
		VARIANT_BOOL IsExportable"

	^(self getPropertyId: 2334)
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

preserveColumnFilter
	"Answer the <varbool> value of the 'PreserveColumnFilter' property of the receiver.
		VARIANT_BOOL PreserveColumnFilter"

	^(self getPropertyId: 2337)
!

preserveColumnFilter: arg1
	"Set the 'PreserveColumnFilter' property of the receiver to the <varbool> value of the argument.
		void PreserveColumnFilter"

	self setPropertyId: 2337 value: arg1
!

preserveNumberFormatting
	"Answer the <varbool> value of the 'PreserveNumberFormatting' property of the receiver.
		VARIANT_BOOL PreserveNumberFormatting"

	^(self getPropertyId: 2338)
!

preserveNumberFormatting: arg1
	"Set the 'PreserveNumberFormatting' property of the receiver to the <varbool> value of the argument.
		void PreserveNumberFormatting"

	self setPropertyId: 2338 value: arg1
!

rootElementName
	"Answer the <bstr> value of the 'RootElementName' property of the receiver.
		BSTR RootElementName"

	^(self getPropertyId: 2340)
!

rootElementNamespace
	"Answer the <ExcelXmlNamespace> value of the 'RootElementNamespace' property of the receiver.
		XmlNamespace* RootElementNamespace"

	^ExcelXmlNamespace attachInterface: (self getPropertyId: 2341)
!

saveDataSourceDefinition
	"Answer the <varbool> value of the 'SaveDataSourceDefinition' property of the receiver.
		VARIANT_BOOL SaveDataSourceDefinition"

	^(self getPropertyId: 2336)
!

saveDataSourceDefinition: arg1
	"Set the 'SaveDataSourceDefinition' property of the receiver to the <varbool> value of the argument.
		void SaveDataSourceDefinition"

	self setPropertyId: 2336 value: arg1
!

schemas
	"Answer the <ExcelXmlSchemas> value of the 'Schemas' property of the receiver.
		XmlSchemas* Schemas"

	^ExcelXmlSchemas attachInterface: (self getPropertyId: 2342)
!

showImportExportValidationErrors
	"Answer the <varbool> value of the 'ShowImportExportValidationErrors' property of the receiver.
		VARIANT_BOOL ShowImportExportValidationErrors"

	^(self getPropertyId: 2335)
!

showImportExportValidationErrors: arg1
	"Set the 'ShowImportExportValidationErrors' property of the receiver to the <varbool> value of the argument.
		void ShowImportExportValidationErrors"

	self setPropertyId: 2335 value: arg1
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
!

workbookConnection
	"Answer the <ExcelWorkbookConnection> value of the 'WorkbookConnection' property of the receiver.
		WorkbookConnection* WorkbookConnection"

	^ExcelWorkbookConnection attachInterface: (self getPropertyId: 2544)
! !
!ExcelXmlMap categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #adjustColumnWidth!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #adjustColumnWidth:!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #appendOnImport!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #appendOnImport:!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #application!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #dataBinding!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelXmlMap categoriesFor: #export:!**auto generated**!methods!public! !
!ExcelXmlMap categoriesFor: #export:overwrite:!**auto generated**!methods!public! !
!ExcelXmlMap categoriesFor: #import:!**auto generated**!methods!public! !
!ExcelXmlMap categoriesFor: #import:overwrite:!**auto generated**!methods!public! !
!ExcelXmlMap categoriesFor: #importXml:!**auto generated**!methods!public! !
!ExcelXmlMap categoriesFor: #importXml:overwrite:!**auto generated**!methods!public! !
!ExcelXmlMap categoriesFor: #isExportable!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #name!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #preserveColumnFilter!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #preserveColumnFilter:!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #preserveNumberFormatting!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #preserveNumberFormatting:!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #rootElementName!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #rootElementNamespace!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #saveDataSourceDefinition!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #saveDataSourceDefinition:!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #schemas!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #showImportExportValidationErrors!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #showImportExportValidationErrors:!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #value!**auto generated**!properties!public! !
!ExcelXmlMap categoriesFor: #workbookConnection!**auto generated**!properties!public! !

!ExcelXmlMap class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelXmlMap initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelXmlMap class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

