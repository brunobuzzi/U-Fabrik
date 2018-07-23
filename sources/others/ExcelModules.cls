"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelModules
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelModules guid: (IID fromString: '{000208AE-0000-0000-C000-000000000046}')!
ExcelModules comment: '<ExcelModules> is a wrapper class generated for the dispatch interface ''Excel.Modules'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208AE-0000-0000-C000-000000000046), 
	helpcontext(0x0002006e), 
	hidden
]
dispinterface Modules {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		Module* Add(
			[in, optional]VARIANT Before,
			[in, optional]VARIANT After,
			[in, optional]VARIANT Count);
[id(0x00000227), helpcontext(0x00010227)]
		void Copy(
			[in, optional]VARIANT Before,
			[in, optional]VARIANT After);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00010007), hidden, restricted]
		void _Dummy7();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		IDispatch* Item(
			[in]VARIANT Index);
[id(0x0000027d), helpcontext(0x0001027d)]
		void Move(
			[in, optional]VARIANT Before,
			[in, optional]VARIANT After);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x00000389), hidden, helpcontext(0x00010389)]
		void __PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate);
[id(0x0001000c), hidden, restricted]
		void _Dummy12();
[id(0x000000eb), helpcontext(0x000100eb)]
		void Select(
			[in, optional]VARIANT Replace);
[id(0x0000058a), propget, helpcontext(0x0001058a)]
		HPageBreaks* HPageBreaks();
[id(0x0000058b), propget, helpcontext(0x0001058b)]
		VPageBreaks* VPageBreaks();
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		VARIANT Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]VARIANT arg1);
[id(0000000000), propget, helpcontext(0x00010000)]
		IDispatch* _Default(
			[in]VARIANT Index);
[id(0x000006ec), hidden, helpcontext(0x000106ec)]
		void _PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in, optional]VARIANT PrToFileName);
[id(0x00000939), helpcontext(0x00010939)]
		void PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in, optional]VARIANT PrToFileName,
			[in, optional]VARIANT IgnorePrintAreas);
};
'!
!ExcelModules categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelModules methodsFor!

__printOut
	"Invoke the __PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 __printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified!

__printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate
	"Invoke the __PrintOut() method of the COM object."

	(self invokeId: 905 withArguments:
			((Array new: 7)
				basicAt: 1 put: from;
				basicAt: 2 put: to;
				basicAt: 3 put: copies;
				basicAt: 4 put: preview;
				basicAt: 5 put: activePrinter;
				basicAt: 6 put: printToFile;
				basicAt: 7 put: collate;
				yourself))
!

_default: index
	"Answer the <IDispatch> value of the '_Default' property of the receiver.
		IDispatch* _Default"

	^IDispatch attachInterface: (self getPropertyId: 0 item: index)
!

_dummy12
	"Invoke the _Dummy12() method of the COM object."

	(self invokeId: 65548)
!

_dummy7
	"Invoke the _Dummy7() method of the COM object."

	(self invokeId: 65543)
!

_printOut
	"Invoke the _PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 _printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 prToFileName: VARIANT unspecified!

_printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName
	"Invoke the _PrintOut() method of the COM object."

	(self invokeId: 1772 withArguments:
			((Array new: 8)
				basicAt: 1 put: from;
				basicAt: 2 put: to;
				basicAt: 3 put: copies;
				basicAt: 4 put: preview;
				basicAt: 5 put: activePrinter;
				basicAt: 6 put: printToFile;
				basicAt: 7 put: collate;
				basicAt: 8 put: prToFileName;
				yourself))
!

add
	"Answer the <ExcelModule> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: VARIANT unspecified
		 after: VARIANT unspecified
		 count: VARIANT unspecified!

add: before after: after count: count
	"Answer the <ExcelModule> result of invoking the Add() method of the COM object."

	^ExcelModule attachInterface: (self invokeId: 181 withArguments:
			((Array new: 3)
				basicAt: 1 put: before;
				basicAt: 2 put: after;
				basicAt: 3 put: count;
				yourself))
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

copy
	"Invoke the Copy() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 copy: VARIANT unspecified
		 after: VARIANT unspecified!

copy: before after: after
	"Invoke the Copy() method of the COM object."

	(self invokeId: 551 with: before with: after)
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

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

hPageBreaks
	"Answer the <ExcelHPageBreaks> value of the 'HPageBreaks' property of the receiver.
		HPageBreaks* HPageBreaks"

	^ExcelHPageBreaks attachInterface: (self getPropertyId: 1418)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <IDispatch> value of the 'Item' property of the receiver.
		IDispatch* Item"

	^IDispatch attachInterface: (self getPropertyId: 170 item: index)
!

move
	"Invoke the Move() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 move: VARIANT unspecified
		 after: VARIANT unspecified!

move: before after: after
	"Invoke the Move() method of the COM object."

	(self invokeId: 637 with: before with: after)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

printOut
	"Invoke the PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 prToFileName: VARIANT unspecified
		 ignorePrintAreas: VARIANT unspecified!

printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName ignorePrintAreas: ignorePrintAreas
	"Invoke the PrintOut() method of the COM object."

	(self invokeId: 2361 withArguments:
			((Array new: 9)
				basicAt: 1 put: from;
				basicAt: 2 put: to;
				basicAt: 3 put: copies;
				basicAt: 4 put: preview;
				basicAt: 5 put: activePrinter;
				basicAt: 6 put: printToFile;
				basicAt: 7 put: collate;
				basicAt: 8 put: prToFileName;
				basicAt: 9 put: ignorePrintAreas;
				yourself))
!

select
	"Invoke the Select() method of the COM object.
	Default values are passed for all optional parameters."

	self select: VARIANT unspecified!

select: replace
	"Invoke the Select() method of the COM object."

	(self invokeId: 235 with: replace)
!

visible
	"Answer the <variant> value of the 'Visible' property of the receiver.
		VARIANT Visible"

	^(self getPropertyId: 558)
!

visible: arg1
	"Set the 'Visible' property of the receiver to the <variant> value of the argument.
		void Visible"

	self setPropertyId: 558 value: arg1
!

vPageBreaks
	"Answer the <ExcelVPageBreaks> value of the 'VPageBreaks' property of the receiver.
		VPageBreaks* VPageBreaks"

	^ExcelVPageBreaks attachInterface: (self getPropertyId: 1419)
! !
!ExcelModules categoriesFor: #__printOut!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #__printOut:to:copies:preview:activePrinter:printToFile:collate:!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelModules categoriesFor: #_dummy12!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #_dummy7!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #_printOut!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #_printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #add!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #add:after:count:!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #application!**auto generated**!properties!public! !
!ExcelModules categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #copy:after:!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #count!**auto generated**!properties!public! !
!ExcelModules categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelModules categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #hPageBreaks!**auto generated**!properties!public! !
!ExcelModules categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelModules categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelModules categoriesFor: #move!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #move:after:!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelModules categoriesFor: #printOut!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:ignorePrintAreas:!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #select!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelModules categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelModules categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelModules categoriesFor: #vPageBreaks!**auto generated**!properties!public! !

!ExcelModules class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelModules initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelModules class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

