"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelToolbarButton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelToolbarButton guid: (IID fromString: '{0002085E-0000-0000-C000-000000000046}')!
ExcelToolbarButton comment: '<ExcelToolbarButton> is a wrapper class generated for the dispatch interface ''Excel.ToolbarButton'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002085E-0000-0000-C000-000000000046), 
	helpcontext(0x0002001e), 
	hidden
]
dispinterface ToolbarButton {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000229), propget, helpcontext(0x00010229)]
		VARIANT_BOOL BuiltIn();
[id(0x0000022a), propget, helpcontext(0x0001022a)]
		VARIANT_BOOL BuiltInFace();
[id(0x0000022a), propput, helpcontext(0x0001022a)]
		void BuiltInFace(
			[in]VARIANT_BOOL arg1);
[id(0x00000227), helpcontext(0x00010227)]
		void Copy(
			[in]Toolbar* Toolbar,
			[in]long Before);
[id(0x000003c6), helpcontext(0x000103c6)]
		void CopyFace();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000232), helpcontext(0x00010232)]
		void Edit();
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
[id(0x0000023a), propget, helpcontext(0x0001023a)]
		long ID();
[id(0x00000231), propget, helpcontext(0x00010231)]
		VARIANT_BOOL IsGap();
[id(0x0000027d), helpcontext(0x0001027d)]
		void Move(
			[in]Toolbar* Toolbar,
			[in]long Before);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x00000254), propget, helpcontext(0x00010254)]
		BSTR OnAction();
[id(0x00000254), propput, helpcontext(0x00010254)]
		void OnAction(
			[in]BSTR arg1);
[id(0x000003c7), helpcontext(0x000103c7)]
		void PasteFace();
[id(0x00000230), propget, helpcontext(0x00010230)]
		VARIANT_BOOL Pushed();
[id(0x00000230), propput, helpcontext(0x00010230)]
		void Pushed(
			[in]VARIANT_BOOL arg1);
[id(0x0000022b), helpcontext(0x0001022b)]
		void Reset();
[id(0x00000182), propget, helpcontext(0x00010182)]
		BSTR StatusBar();
[id(0x00000182), propput, helpcontext(0x00010182)]
		void StatusBar(
			[in]BSTR arg1);
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		long Width();
[id(0x0000007a), propput, helpcontext(0x0001007a)]
		void Width(
			[in]long arg1);
};
'!
!ExcelToolbarButton categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelToolbarButton methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

builtIn
	"Answer the <varbool> value of the 'BuiltIn' property of the receiver.
		VARIANT_BOOL BuiltIn"

	^(self getPropertyId: 553)
!

builtInFace
	"Answer the <varbool> value of the 'BuiltInFace' property of the receiver.
		VARIANT_BOOL BuiltInFace"

	^(self getPropertyId: 554)
!

builtInFace: arg1
	"Set the 'BuiltInFace' property of the receiver to the <varbool> value of the argument.
		void BuiltInFace"

	self setPropertyId: 554 value: arg1
!

copy: toolbar before: before
	"Invoke the Copy() method of the COM object."

	(self invokeId: 551 with: toolbar with: before)
!

copyFace
	"Invoke the CopyFace() method of the COM object."

	(self invokeId: 966)
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

edit
	"Invoke the Edit() method of the COM object."

	(self invokeId: 562)
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

id
	"Answer the <sdword> value of the 'ID' property of the receiver.
		long ID"

	^(self getPropertyId: 570)
!

isGap
	"Answer the <varbool> value of the 'IsGap' property of the receiver.
		VARIANT_BOOL IsGap"

	^(self getPropertyId: 561)
!

move: toolbar before: before
	"Invoke the Move() method of the COM object."

	(self invokeId: 637 with: toolbar with: before)
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

pasteFace
	"Invoke the PasteFace() method of the COM object."

	(self invokeId: 967)
!

pushed
	"Answer the <varbool> value of the 'Pushed' property of the receiver.
		VARIANT_BOOL Pushed"

	^(self getPropertyId: 560)
!

pushed: arg1
	"Set the 'Pushed' property of the receiver to the <varbool> value of the argument.
		void Pushed"

	self setPropertyId: 560 value: arg1
!

reset
	"Invoke the Reset() method of the COM object."

	(self invokeId: 555)
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
!

width
	"Answer the <sdword> value of the 'Width' property of the receiver.
		long Width"

	^(self getPropertyId: 122)
!

width: arg1
	"Set the 'Width' property of the receiver to the <sdword> value of the argument.
		void Width"

	self setPropertyId: 122 value: arg1
! !
!ExcelToolbarButton categoriesFor: #application!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #builtIn!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #builtInFace!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #builtInFace:!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #copy:before:!**auto generated**!methods!public! !
!ExcelToolbarButton categoriesFor: #copyFace!**auto generated**!methods!public! !
!ExcelToolbarButton categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelToolbarButton categoriesFor: #edit!**auto generated**!methods!public! !
!ExcelToolbarButton categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #helpContextID!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #helpContextID:!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #helpFile!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #helpFile:!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #id!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #isGap!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #move:before:!**auto generated**!methods!public! !
!ExcelToolbarButton categoriesFor: #name!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #pasteFace!**auto generated**!methods!public! !
!ExcelToolbarButton categoriesFor: #pushed!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #pushed:!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #reset!**auto generated**!methods!public! !
!ExcelToolbarButton categoriesFor: #statusBar!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #statusBar:!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #width!**auto generated**!properties!public! !
!ExcelToolbarButton categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelToolbarButton class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelToolbarButton initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelToolbarButton class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

