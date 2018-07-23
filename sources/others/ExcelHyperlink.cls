"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelHyperlink
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelHyperlink guid: (IID fromString: '{00024431-0000-0000-C000-000000000046}')!
ExcelHyperlink comment: '<ExcelHyperlink> is a wrapper class generated for the dispatch interface ''Excel.Hyperlink'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024431-0000-0000-C000-000000000046), 
	helpcontext(0x000200c7)
]
dispinterface Hyperlink {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x000000c5), propget, helpcontext(0x000100c5)]
		Range* Range();
[id(0x0000062e), propget, helpcontext(0x0001062e)]
		Shape* Shape();
[id(0x000005bf), propget, helpcontext(0x000105bf)]
		BSTR SubAddress();
[id(0x000005bf), propput, helpcontext(0x000105bf)]
		void SubAddress(
			[in]BSTR arg1);
[id(0x000000ec), propget, helpcontext(0x000100ec)]
		BSTR Address();
[id(0x000000ec), propput, helpcontext(0x000100ec)]
		void Address(
			[in]BSTR arg1);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		long Type();
[id(0x000005c4), helpcontext(0x000105c4)]
		void AddToFavorites();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000650), helpcontext(0x00010650)]
		void Follow(
			[in, optional]VARIANT NewWindow,
			[in, optional]VARIANT AddHistory,
			[in, optional]VARIANT ExtraInfo,
			[in, optional]VARIANT Method,
			[in, optional]VARIANT HeaderInfo);
[id(0x0000075b), propget, helpcontext(0x0001075b)]
		BSTR EmailSubject();
[id(0x0000075b), propput, helpcontext(0x0001075b)]
		void EmailSubject(
			[in]BSTR arg1);
[id(0x00000759), propget, helpcontext(0x00010759)]
		BSTR ScreenTip();
[id(0x00000759), propput, helpcontext(0x00010759)]
		void ScreenTip(
			[in]BSTR arg1);
[id(0x0000075a), propget, helpcontext(0x0001075a)]
		BSTR TextToDisplay();
[id(0x0000075a), propput, helpcontext(0x0001075a)]
		void TextToDisplay(
			[in]BSTR arg1);
[id(0x0000075c), helpcontext(0x0001075c)]
		void CreateNewDocument(
			[in]BSTR Filename,
			[in]VARIANT_BOOL EditNow,
			[in]VARIANT_BOOL Overwrite);
};
'!
!ExcelHyperlink categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelHyperlink methodsFor!

address
	"Answer the <bstr> value of the 'Address' property of the receiver.
		BSTR Address"

	^(self getPropertyId: 236)
!

address: arg1
	"Set the 'Address' property of the receiver to the <bstr> value of the argument.
		void Address"

	self setPropertyId: 236 value: arg1
!

addToFavorites
	"Invoke the AddToFavorites() method of the COM object."

	(self invokeId: 1476)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

createNewDocument: filename editNow: editNow overwrite: overwrite
	"Invoke the CreateNewDocument() method of the COM object."

	(self invokeId: 1884 withArguments:
			((Array new: 3)
				basicAt: 1 put: filename;
				basicAt: 2 put: editNow;
				basicAt: 3 put: overwrite;
				yourself))
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

emailSubject
	"Answer the <bstr> value of the 'EmailSubject' property of the receiver.
		BSTR EmailSubject"

	^(self getPropertyId: 1883)
!

emailSubject: arg1
	"Set the 'EmailSubject' property of the receiver to the <bstr> value of the argument.
		void EmailSubject"

	self setPropertyId: 1883 value: arg1
!

follow
	"Invoke the Follow() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 follow: VARIANT unspecified
		 addHistory: VARIANT unspecified
		 extraInfo: VARIANT unspecified
		 method: VARIANT unspecified
		 headerInfo: VARIANT unspecified!

follow: newWindow addHistory: addHistory extraInfo: extraInfo method: method headerInfo: headerInfo
	"Invoke the Follow() method of the COM object."

	(self invokeId: 1616 withArguments:
			((Array new: 5)
				basicAt: 1 put: newWindow;
				basicAt: 2 put: addHistory;
				basicAt: 3 put: extraInfo;
				basicAt: 4 put: method;
				basicAt: 5 put: headerInfo;
				yourself))
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver.
		Range* Range"

	^ExcelRange attachInterface: (self getPropertyId: 197)
!

screenTip
	"Answer the <bstr> value of the 'ScreenTip' property of the receiver.
		BSTR ScreenTip"

	^(self getPropertyId: 1881)
!

screenTip: arg1
	"Set the 'ScreenTip' property of the receiver to the <bstr> value of the argument.
		void ScreenTip"

	self setPropertyId: 1881 value: arg1
!

shape
	"Answer the <ExcelShape> value of the 'Shape' property of the receiver.
		Shape* Shape"

	^ExcelShape attachInterface: (self getPropertyId: 1582)
!

subAddress
	"Answer the <bstr> value of the 'SubAddress' property of the receiver.
		BSTR SubAddress"

	^(self getPropertyId: 1471)
!

subAddress: arg1
	"Set the 'SubAddress' property of the receiver to the <bstr> value of the argument.
		void SubAddress"

	self setPropertyId: 1471 value: arg1
!

textToDisplay
	"Answer the <bstr> value of the 'TextToDisplay' property of the receiver.
		BSTR TextToDisplay"

	^(self getPropertyId: 1882)
!

textToDisplay: arg1
	"Set the 'TextToDisplay' property of the receiver to the <bstr> value of the argument.
		void TextToDisplay"

	self setPropertyId: 1882 value: arg1
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		long Type"

	^(self getPropertyId: 108)
! !
!ExcelHyperlink categoriesFor: #address!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #address:!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #addToFavorites!**auto generated**!methods!public! !
!ExcelHyperlink categoriesFor: #application!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #createNewDocument:editNow:overwrite:!**auto generated**!methods!public! !
!ExcelHyperlink categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelHyperlink categoriesFor: #emailSubject!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #emailSubject:!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #follow!**auto generated**!methods!public! !
!ExcelHyperlink categoriesFor: #follow:addHistory:extraInfo:method:headerInfo:!**auto generated**!methods!public! !
!ExcelHyperlink categoriesFor: #name!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #range!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #screenTip!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #screenTip:!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #shape!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #subAddress!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #subAddress:!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #textToDisplay!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #textToDisplay:!**auto generated**!properties!public! !
!ExcelHyperlink categoriesFor: #type!**auto generated**!properties!public! !

!ExcelHyperlink class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelHyperlink initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelHyperlink class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

