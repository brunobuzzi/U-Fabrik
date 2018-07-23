"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelListObjects
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelListObjects guid: (IID fromString: '{00024470-0000-0000-C000-000000000046}')!
ExcelListObjects comment: '<ExcelListObjects> is a wrapper class generated for the dispatch interface ''Excel.ListObjects'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024470-0000-0000-C000-000000000046), 
	helpcontext(0x00020106)
]
dispinterface ListObjects {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000825), hidden, helpcontext(0x00010825)]
		ListObject* _Add(
			[in, defaultvalue(1)]XlListObjectSourceType SourceType,
			[in, optional]VARIANT Source,
			[in, optional]VARIANT LinkSource,
			[in, defaultvalue(0)]XlYesNoGuess XlListObjectHasHeaders,
			[in, optional]VARIANT Destination);
[id(0000000000), propget, helpcontext(0x00010000)]
		ListObject* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		ListObject* Item(
			[in]VARIANT Index);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000b5), helpcontext(0x000100b5)]
		ListObject* Add(
			[in, defaultvalue(1)]XlListObjectSourceType SourceType,
			[in, optional]VARIANT Source,
			[in, optional]VARIANT LinkSource,
			[in, defaultvalue(0)]XlYesNoGuess XlListObjectHasHeaders,
			[in, optional]VARIANT Destination,
			[in, optional]VARIANT TableStyleName);
};
'!
!ExcelListObjects categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelListObjects methodsFor!

_add
	"Answer the <ExcelListObject> result of invoking the _Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _add: 1
		 source: VARIANT unspecified
		 linkSource: VARIANT unspecified
		 xlListObjectHasHeaders: 0
		 destination: VARIANT unspecified!

_add: sourceType source: source linkSource: linkSource xlListObjectHasHeaders: xlListObjectHasHeaders destination: destination
	"Answer the <ExcelListObject> result of invoking the _Add() method of the COM object."

	^ExcelListObject attachInterface: (self invokeId: 2085 withArguments:
			((Array new: 5)
				basicAt: 1 put: sourceType;
				basicAt: 2 put: source;
				basicAt: 3 put: linkSource;
				basicAt: 4 put: xlListObjectHasHeaders;
				basicAt: 5 put: destination;
				yourself))
!

_default: index
	"Answer the <ExcelListObject> value of the '_Default' property of the receiver.
		ListObject* _Default"

	^ExcelListObject attachInterface: (self getPropertyId: 0 item: index)
!

add
	"Answer the <ExcelListObject> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: 1
		 source: VARIANT unspecified
		 linkSource: VARIANT unspecified
		 xlListObjectHasHeaders: 0
		 destination: VARIANT unspecified
		 tableStyleName: VARIANT unspecified!

add: sourceType source: source linkSource: linkSource xlListObjectHasHeaders: xlListObjectHasHeaders destination: destination tableStyleName: tableStyleName
	"Answer the <ExcelListObject> result of invoking the Add() method of the COM object."

	^ExcelListObject attachInterface: (self invokeId: 181 withArguments:
			((Array new: 6)
				basicAt: 1 put: sourceType;
				basicAt: 2 put: source;
				basicAt: 3 put: linkSource;
				basicAt: 4 put: xlListObjectHasHeaders;
				basicAt: 5 put: destination;
				basicAt: 6 put: tableStyleName;
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
	"Answer the <ExcelListObject> value of the 'Item' property of the receiver.
		ListObject* Item"

	^ExcelListObject attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelListObjects categoriesFor: #_add!**auto generated**!methods!public! !
!ExcelListObjects categoriesFor: #_add:source:linkSource:xlListObjectHasHeaders:destination:!**auto generated**!methods!public! !
!ExcelListObjects categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelListObjects categoriesFor: #add!**auto generated**!methods!public! !
!ExcelListObjects categoriesFor: #add:source:linkSource:xlListObjectHasHeaders:destination:tableStyleName:!**auto generated**!methods!public! !
!ExcelListObjects categoriesFor: #application!**auto generated**!properties!public! !
!ExcelListObjects categoriesFor: #count!**auto generated**!properties!public! !
!ExcelListObjects categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelListObjects categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelListObjects categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelListObjects categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelListObjects class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelListObjects initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelListObjects class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

