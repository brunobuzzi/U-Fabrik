"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSoundNote
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSoundNote guid: (IID fromString: '{0002087B-0000-0000-C000-000000000046}')!
ExcelSoundNote comment: '<ExcelSoundNote> is a wrapper class generated for the dispatch interface ''Excel.SoundNote'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002087B-0000-0000-C000-000000000046), 
	helpcontext(0x0002003b)
]
dispinterface SoundNote {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x00000395), helpcontext(0x00010395)]
		VARIANT Import(
			[in]BSTR Filename);
[id(0x00000396), helpcontext(0x00010396)]
		VARIANT Play();
[id(0x00000397), helpcontext(0x00010397)]
		VARIANT Record();
};
'!
!ExcelSoundNote categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSoundNote methodsFor!

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

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

import: filename
	"Answer the <VARIANT> result of invoking the Import() method of the COM object."

	^(self invokeId: 917 with: filename)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

play
	"Answer the <VARIANT> result of invoking the Play() method of the COM object."

	^(self invokeId: 918)
!

record
	"Answer the <VARIANT> result of invoking the Record() method of the COM object."

	^(self invokeId: 919)
! !
!ExcelSoundNote categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSoundNote categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSoundNote categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelSoundNote categoriesFor: #import:!**auto generated**!methods!public! !
!ExcelSoundNote categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelSoundNote categoriesFor: #play!**auto generated**!methods!public! !
!ExcelSoundNote categoriesFor: #record!**auto generated**!methods!public! !

!ExcelSoundNote class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSoundNote initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSoundNote class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

