"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelToolbarButtons
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelToolbarButtons guid: (IID fromString: '{0002085F-0000-0000-C000-000000000046}')!
ExcelToolbarButtons comment: '<ExcelToolbarButtons> is a wrapper class generated for the dispatch interface ''Excel.ToolbarButtons'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002085F-0000-0000-C000-000000000046), 
	helpcontext(0x0002001f), 
	hidden
]
dispinterface ToolbarButtons {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		ToolbarButton* Add(
			[in, optional]VARIANT Button,
			[in, optional]VARIANT Before,
			[in, optional]VARIANT OnAction,
			[in, optional]VARIANT Pushed,
			[in, optional]VARIANT Enabled,
			[in, optional]VARIANT StatusBar,
			[in, optional]VARIANT HelpFile,
			[in, optional]VARIANT HelpContextID);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		ToolbarButton* Item(
			[in]long Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0000000000), propget, helpcontext(0x00010000)]
		ToolbarButton* _Default(
			[in]long Index);
};
'!
!ExcelToolbarButtons categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelToolbarButtons methodsFor!

_default: index
	"Answer the <ExcelToolbarButton> value of the '_Default' property of the receiver.
		ToolbarButton* _Default"

	^ExcelToolbarButton attachInterface: (self getPropertyId: 0 item: index)
!

add
	"Answer the <ExcelToolbarButton> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: VARIANT unspecified
		 before: VARIANT unspecified
		 onAction: VARIANT unspecified
		 pushed: VARIANT unspecified
		 enabled: VARIANT unspecified
		 statusBar: VARIANT unspecified
		 helpFile: VARIANT unspecified
		 helpContextID: VARIANT unspecified!

add: button before: before onAction: onAction pushed: pushed enabled: enabled statusBar: statusBar helpFile: helpFile helpContextID: helpContextID
	"Answer the <ExcelToolbarButton> result of invoking the Add() method of the COM object."

	^ExcelToolbarButton attachInterface: (self invokeId: 181 withArguments:
			((Array new: 8)
				basicAt: 1 put: button;
				basicAt: 2 put: before;
				basicAt: 3 put: onAction;
				basicAt: 4 put: pushed;
				basicAt: 5 put: enabled;
				basicAt: 6 put: statusBar;
				basicAt: 7 put: helpFile;
				basicAt: 8 put: helpContextID;
				yourself))
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver.
		long Count"

	^(self getPropertyId: 118)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelToolbarButton> value of the 'Item' property of the receiver.
		ToolbarButton* Item"

	^ExcelToolbarButton attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelToolbarButtons categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelToolbarButtons categoriesFor: #add!**auto generated**!methods!public! !
!ExcelToolbarButtons categoriesFor: #add:before:onAction:pushed:enabled:statusBar:helpFile:helpContextID:!**auto generated**!methods!public! !
!ExcelToolbarButtons categoriesFor: #application!**auto generated**!properties!public! !
!ExcelToolbarButtons categoriesFor: #count!**auto generated**!properties!public! !
!ExcelToolbarButtons categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelToolbarButtons categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelToolbarButtons categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelToolbarButtons categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelToolbarButtons class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelToolbarButtons initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelToolbarButtons class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

