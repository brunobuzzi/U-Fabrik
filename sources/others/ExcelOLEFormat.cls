"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelOLEFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelOLEFormat guid: (IID fromString: '{00024441-0000-0000-C000-000000000046}')!
ExcelOLEFormat comment: '<ExcelOLEFormat> is a wrapper class generated for the dispatch interface ''Excel.OLEFormat'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024441-0000-0000-C000-000000000046), 
	helpcontext(0x000200d7)
]
dispinterface OLEFormat {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000130), helpcontext(0x00010130)]
		void Activate();
[id(0x00000419), propget, helpcontext(0x00010419)]
		IDispatch* Object();
[id(0x000005f3), propget, helpcontext(0x000105f3)]
		BSTR progID();
[id(0x0000025e), helpcontext(0x0001025e)]
		void Verb(
			[in, optional]VARIANT Verb);
};
'!
!ExcelOLEFormat categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelOLEFormat methodsFor!

activate
	"Invoke the Activate() method of the COM object."

	(self invokeId: 304)
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

object
	"Answer the <IDispatch> value of the 'Object' property of the receiver.
		IDispatch* Object"

	^IDispatch attachInterface: (self getPropertyId: 1049)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

progID
	"Answer the <bstr> value of the 'progID' property of the receiver.
		BSTR progID"

	^(self getPropertyId: 1523)
!

verb
	"Invoke the Verb() method of the COM object.
	Default values are passed for all optional parameters."

	self verb: VARIANT unspecified!

verb: verb
	"Invoke the Verb() method of the COM object."

	(self invokeId: 606 with: verb)
! !
!ExcelOLEFormat categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelOLEFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelOLEFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelOLEFormat categoriesFor: #object!**auto generated**!properties!public! !
!ExcelOLEFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelOLEFormat categoriesFor: #progID!**auto generated**!properties!public! !
!ExcelOLEFormat categoriesFor: #verb!**auto generated**!methods!public! !
!ExcelOLEFormat categoriesFor: #verb:!**auto generated**!methods!public! !

!ExcelOLEFormat class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelOLEFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelOLEFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

