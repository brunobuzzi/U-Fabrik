"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelMenuItem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelMenuItem guid: (IID fromString: '{00020868-0000-0000-C000-000000000046}')!
ExcelMenuItem comment: '<ExcelMenuItem> is a wrapper class generated for the dispatch interface ''Excel.MenuItem'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020868-0000-0000-C000-000000000046), 
	helpcontext(0x00020028), 
	hidden
]
dispinterface MenuItem {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000008b), propget, helpcontext(0x0001008b)]
		BSTR Caption();
[id(0x0000008b), propput, helpcontext(0x0001008b)]
		void Caption(
			[in]BSTR arg1);
[id(0x00000257), propget, helpcontext(0x00010257)]
		VARIANT_BOOL Checked();
[id(0x00000257), propput, helpcontext(0x00010257)]
		void Checked(
			[in]VARIANT_BOOL arg1);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000258), propget, helpcontext(0x00010258)]
		VARIANT_BOOL Enabled();
[id(0x00000258), propput, helpcontext(0x00010258)]
		void Enabled(
			[in]VARIANT_BOOL arg1);
[id(0x00000163), propget, helpcontext(0x00010163)]
		long HelpContextID();
[id(0x00000163), propput, helpcontext(0x00010163)]
		void HelpContextID(
			[in]long arg1);
[id(0x00000168), propget, helpcontext(0x00010168)]
		BSTR HelpFile();
[id(0x00000168), propput, helpcontext(0x00010168)]
		void HelpFile(
			[in]BSTR arg1);
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x00000254), propget, helpcontext(0x00010254)]
		BSTR OnAction();
[id(0x00000254), propput, helpcontext(0x00010254)]
		void OnAction(
			[in]BSTR arg1);
[id(0x00000182), propget, helpcontext(0x00010182)]
		BSTR StatusBar();
[id(0x00000182), propput, helpcontext(0x00010182)]
		void StatusBar(
			[in]BSTR arg1);
};
'!
!ExcelMenuItem categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelMenuItem methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
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

checked
	"Answer the <varbool> value of the 'Checked' property of the receiver.
		VARIANT_BOOL Checked"

	^(self getPropertyId: 599)
!

checked: arg1
	"Set the 'Checked' property of the receiver to the <varbool> value of the argument.
		void Checked"

	self setPropertyId: 599 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
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

helpContextID
	"Answer the <sdword> value of the 'HelpContextID' property of the receiver.
		long HelpContextID"

	^(self getPropertyId: 355)
!

helpContextID: arg1
	"Set the 'HelpContextID' property of the receiver to the <sdword> value of the argument.
		void HelpContextID"

	self setPropertyId: 355 value: arg1
!

helpFile
	"Answer the <bstr> value of the 'HelpFile' property of the receiver.
		BSTR HelpFile"

	^(self getPropertyId: 360)
!

helpFile: arg1
	"Set the 'HelpFile' property of the receiver to the <bstr> value of the argument.
		void HelpFile"

	self setPropertyId: 360 value: arg1
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
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

statusBar
	"Answer the <bstr> value of the 'StatusBar' property of the receiver.
		BSTR StatusBar"

	^(self getPropertyId: 386)
!

statusBar: arg1
	"Set the 'StatusBar' property of the receiver to the <bstr> value of the argument.
		void StatusBar"

	self setPropertyId: 386 value: arg1
! !
!ExcelMenuItem categoriesFor: #application!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #checked!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #checked:!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelMenuItem categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #helpContextID!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #helpContextID:!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #helpFile!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #helpFile:!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #index!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #statusBar!**auto generated**!properties!public! !
!ExcelMenuItem categoriesFor: #statusBar:!**auto generated**!properties!public! !

!ExcelMenuItem class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelMenuItem initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelMenuItem class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

