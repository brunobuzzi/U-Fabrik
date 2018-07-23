"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelWindows
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelWindows guid: (IID fromString: '{00020892-0000-0000-C000-000000000046}')!
ExcelWindows comment: '<ExcelWindows> is a wrapper class generated for the dispatch interface ''Excel.Windows'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020892-0000-0000-C000-000000000046), 
	helpcontext(0x00020052)
]
dispinterface Windows {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000027e), helpcontext(0x0001027e)]
		VARIANT Arrange(
			[in, defaultvalue(1)]XlArrangeStyle ArrangeStyle,
			[in, optional]VARIANT ActiveWorkbook,
			[in, optional]VARIANT SyncHorizontal,
			[in, optional]VARIANT SyncVertical);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		Window* Item(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0000000000), propget, helpcontext(0x00010000)]
		Window* _Default(
			[in]VARIANT Index);
[id(0x000008c6), helpcontext(0x000108c6)]
		VARIANT_BOOL CompareSideBySideWith(
			[in]VARIANT WindowName);
[id(0x000008c8), helpcontext(0x000108c8)]
		VARIANT_BOOL BreakSideBySide();
[id(0x000008c9), propget, helpcontext(0x000108c9)]
		VARIANT_BOOL SyncScrollingSideBySide();
[id(0x000008c9), propput, helpcontext(0x000108c9)]
		void SyncScrollingSideBySide(
			[in]VARIANT_BOOL arg1);
[id(0x000008ca), helpcontext(0x000108ca)]
		void ResetPositionsSideBySide();
};
'!
!ExcelWindows categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelWindows methodsFor!

_default: index
	"Answer the <ExcelWindow> value of the '_Default' property of the receiver.
		Window* _Default"

	^ExcelWindow attachInterface: (self getPropertyId: 0 item: index)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

arrange
	"Answer the <VARIANT> result of invoking the Arrange() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 arrange: 1
		 activeWorkbook: VARIANT unspecified
		 syncHorizontal: VARIANT unspecified
		 syncVertical: VARIANT unspecified!

arrange: arrangeStyle activeWorkbook: activeWorkbook syncHorizontal: syncHorizontal syncVertical: syncVertical
	"Answer the <VARIANT> result of invoking the Arrange() method of the COM object."

	^(self invokeId: 638 withArguments:
			((Array new: 4)
				basicAt: 1 put: arrangeStyle;
				basicAt: 2 put: activeWorkbook;
				basicAt: 3 put: syncHorizontal;
				basicAt: 4 put: syncVertical;
				yourself))
!

breakSideBySide
	"Answer the <VARIANT_BOOL> result of invoking the BreakSideBySide() method of the COM object."

	^(self invokeId: 2248)
!

compareSideBySideWith: windowName
	"Answer the <VARIANT_BOOL> result of invoking the CompareSideBySideWith() method of the COM object."

	^(self invokeId: 2246 with: windowName)
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
	"Answer the <ExcelWindow> value of the 'Item' property of the receiver.
		Window* Item"

	^ExcelWindow attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

resetPositionsSideBySide
	"Invoke the ResetPositionsSideBySide() method of the COM object."

	(self invokeId: 2250)
!

syncScrollingSideBySide
	"Answer the <varbool> value of the 'SyncScrollingSideBySide' property of the receiver.
		VARIANT_BOOL SyncScrollingSideBySide"

	^(self getPropertyId: 2249)
!

syncScrollingSideBySide: arg1
	"Set the 'SyncScrollingSideBySide' property of the receiver to the <varbool> value of the argument.
		void SyncScrollingSideBySide"

	self setPropertyId: 2249 value: arg1
! !
!ExcelWindows categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelWindows categoriesFor: #application!**auto generated**!properties!public! !
!ExcelWindows categoriesFor: #arrange!**auto generated**!methods!public! !
!ExcelWindows categoriesFor: #arrange:activeWorkbook:syncHorizontal:syncVertical:!**auto generated**!methods!public! !
!ExcelWindows categoriesFor: #breakSideBySide!**auto generated**!methods!public! !
!ExcelWindows categoriesFor: #compareSideBySideWith:!**auto generated**!methods!public! !
!ExcelWindows categoriesFor: #count!**auto generated**!properties!public! !
!ExcelWindows categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelWindows categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelWindows categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelWindows categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelWindows categoriesFor: #resetPositionsSideBySide!**auto generated**!methods!public! !
!ExcelWindows categoriesFor: #syncScrollingSideBySide!**auto generated**!properties!public! !
!ExcelWindows categoriesFor: #syncScrollingSideBySide:!**auto generated**!properties!public! !

!ExcelWindows class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelWindows initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelWindows class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

