"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSmartTagOptions
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSmartTagOptions guid: (IID fromString: '{00024464-0000-0000-C000-000000000046}')!
ExcelSmartTagOptions comment: '<ExcelSmartTagOptions> is a wrapper class generated for the dispatch interface ''Excel.SmartTagOptions'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024464-0000-0000-C000-000000000046), 
	helpcontext(0x000200fa)
]
dispinterface SmartTagOptions {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000008aa), propget, helpcontext(0x000108aa)]
		XlSmartTagDisplayMode DisplaySmartTags();
[id(0x000008aa), propput, helpcontext(0x000108aa)]
		void DisplaySmartTags(
			[in]XlSmartTagDisplayMode arg1);
[id(0x000008ab), propget, helpcontext(0x000108ab)]
		VARIANT_BOOL EmbedSmartTags();
[id(0x000008ab), propput, helpcontext(0x000108ab)]
		void EmbedSmartTags(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelSmartTagOptions categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSmartTagOptions methodsFor!

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

displaySmartTags
	"Answer the <sdword> value of the 'DisplaySmartTags' property of the receiver.
		XlSmartTagDisplayMode DisplaySmartTags"

	^(self getPropertyId: 2218)
!

displaySmartTags: arg1
	"Set the 'DisplaySmartTags' property of the receiver to the <sdword> value of the argument.
		void DisplaySmartTags"

	self setPropertyId: 2218 value: arg1
!

embedSmartTags
	"Answer the <varbool> value of the 'EmbedSmartTags' property of the receiver.
		VARIANT_BOOL EmbedSmartTags"

	^(self getPropertyId: 2219)
!

embedSmartTags: arg1
	"Set the 'EmbedSmartTags' property of the receiver to the <varbool> value of the argument.
		void EmbedSmartTags"

	self setPropertyId: 2219 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelSmartTagOptions categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSmartTagOptions categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSmartTagOptions categoriesFor: #displaySmartTags!**auto generated**!properties!public! !
!ExcelSmartTagOptions categoriesFor: #displaySmartTags:!**auto generated**!properties!public! !
!ExcelSmartTagOptions categoriesFor: #embedSmartTags!**auto generated**!properties!public! !
!ExcelSmartTagOptions categoriesFor: #embedSmartTags:!**auto generated**!properties!public! !
!ExcelSmartTagOptions categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelSmartTagOptions class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSmartTagOptions initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSmartTagOptions class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

