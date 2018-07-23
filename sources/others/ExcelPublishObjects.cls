"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPublishObjects
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPublishObjects guid: (IID fromString: '{00024443-0000-0000-C000-000000000046}')!
ExcelPublishObjects comment: '<ExcelPublishObjects> is a wrapper class generated for the dispatch interface ''Excel.PublishObjects'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024443-0000-0000-C000-000000000046), 
	helpcontext(0x000200d9)
]
dispinterface PublishObjects {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		PublishObject* Add(
			[in]XlSourceType SourceType,
			[in]BSTR Filename,
			[in, optional]VARIANT Sheet,
			[in, optional]VARIANT Source,
			[in, optional]VARIANT HtmlType,
			[in, optional]VARIANT DivID,
			[in, optional]VARIANT Title);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		PublishObject* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		PublishObject* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000767), helpcontext(0x00010767)]
		void Publish();
};
'!
!ExcelPublishObjects categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPublishObjects methodsFor!

_default: index
	"Answer the <ExcelPublishObject> value of the '_Default' property of the receiver.
		PublishObject* _Default"

	^ExcelPublishObject attachInterface: (self getPropertyId: 0 item: index)
!

add: sourceType filename: filename
	"Answer the <ExcelPublishObject> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: sourceType
		 filename: filename
		 sheet: VARIANT unspecified
		 source: VARIANT unspecified
		 htmlType: VARIANT unspecified
		 divID: VARIANT unspecified
		 title: VARIANT unspecified!

add: sourceType filename: filename sheet: sheet source: source htmlType: htmlType divID: divID title: title
	"Answer the <ExcelPublishObject> result of invoking the Add() method of the COM object."

	^ExcelPublishObject attachInterface: (self invokeId: 181 withArguments:
			((Array new: 7)
				basicAt: 1 put: sourceType;
				basicAt: 2 put: filename;
				basicAt: 3 put: sheet;
				basicAt: 4 put: source;
				basicAt: 5 put: htmlType;
				basicAt: 6 put: divID;
				basicAt: 7 put: title;
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

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelPublishObject> value of the 'Item' property of the receiver.
		PublishObject* Item"

	^ExcelPublishObject attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

publish
	"Invoke the Publish() method of the COM object."

	(self invokeId: 1895)
! !
!ExcelPublishObjects categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPublishObjects categoriesFor: #add:filename:!**auto generated**!methods!public! !
!ExcelPublishObjects categoriesFor: #add:filename:sheet:source:htmlType:divID:title:!**auto generated**!methods!public! !
!ExcelPublishObjects categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPublishObjects categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPublishObjects categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPublishObjects categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelPublishObjects categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPublishObjects categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelPublishObjects categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPublishObjects categoriesFor: #publish!**auto generated**!methods!public! !

!ExcelPublishObjects class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPublishObjects initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPublishObjects class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

