"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelCharacters
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelCharacters guid: (IID fromString: '{00020878-0000-0000-C000-000000000046}')!
ExcelCharacters comment: '<ExcelCharacters> is a wrapper class generated for the dispatch interface ''Excel.Characters'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020878-0000-0000-C000-000000000046), 
	helpcontext(0x00020038)
]
dispinterface Characters {
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
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x000000fc), helpcontext(0x000100fc)]
		VARIANT Insert(
			[in]BSTR String);
[id(0x0000008a), propget, helpcontext(0x0001008a)]
		BSTR Text();
[id(0x0000008a), propput, helpcontext(0x0001008a)]
		void Text(
			[in]BSTR arg1);
[id(0x000005f2), propget, helpcontext(0x000105f2)]
		BSTR PhoneticCharacters();
[id(0x000005f2), propput, helpcontext(0x000105f2)]
		void PhoneticCharacters(
			[in]BSTR arg1);
};
'!
!ExcelCharacters categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelCharacters methodsFor!

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
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
!

insert: string
	"Answer the <VARIANT> result of invoking the Insert() method of the COM object."

	^(self invokeId: 252 with: string)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

phoneticCharacters
	"Answer the <bstr> value of the 'PhoneticCharacters' property of the receiver.
		BSTR PhoneticCharacters"

	^(self getPropertyId: 1522)
!

phoneticCharacters: arg1
	"Set the 'PhoneticCharacters' property of the receiver to the <bstr> value of the argument.
		void PhoneticCharacters"

	self setPropertyId: 1522 value: arg1
!

text
	"Answer the <bstr> value of the 'Text' property of the receiver.
		BSTR Text"

	^(self getPropertyId: 138)
!

text: arg1
	"Set the 'Text' property of the receiver to the <bstr> value of the argument.
		void Text"

	self setPropertyId: 138 value: arg1
! !
!ExcelCharacters categoriesFor: #application!**auto generated**!properties!public! !
!ExcelCharacters categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelCharacters categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelCharacters categoriesFor: #count!**auto generated**!properties!public! !
!ExcelCharacters categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelCharacters categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelCharacters categoriesFor: #font!**auto generated**!properties!public! !
!ExcelCharacters categoriesFor: #insert:!**auto generated**!methods!public! !
!ExcelCharacters categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelCharacters categoriesFor: #phoneticCharacters!**auto generated**!properties!public! !
!ExcelCharacters categoriesFor: #phoneticCharacters:!**auto generated**!properties!public! !
!ExcelCharacters categoriesFor: #text!**auto generated**!properties!public! !
!ExcelCharacters categoriesFor: #text:!**auto generated**!properties!public! !

!ExcelCharacters class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelCharacters initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelCharacters class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

