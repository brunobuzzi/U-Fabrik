"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelWalls
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelWalls guid: (IID fromString: '{000208C8-0000-0000-C000-000000000046}')!
ExcelWalls comment: '<ExcelWalls> is a wrapper class generated for the dispatch interface ''Excel.Walls'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208C8-0000-0000-C000-000000000046), 
	helpcontext(0x00020088)
]
dispinterface Walls {
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
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000070), helpcontext(0x00010070)]
		VARIANT ClearFormats();
[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x0000067f), hidden, propget, helpcontext(0x0001067f)]
		ChartFillFormat* Fill();
[id(0x000000a1), propget, helpcontext(0x000100a1)]
		VARIANT PictureType();
[id(0x000000a1), propput, helpcontext(0x000100a1)]
		void PictureType(
			[in]VARIANT arg1);
[id(0x000000d3), helpcontext(0x000100d3)]
		void Paste();
[id(0x000000a2), propget, helpcontext(0x000100a2)]
		VARIANT PictureUnit();
[id(0x000000a2), propput, helpcontext(0x000100a2)]
		void PictureUnit(
			[in]VARIANT arg1);
[id(0x00000a5c), propget, helpcontext(0x00010a5c)]
		long Thickness();
[id(0x00000a5c), propput, helpcontext(0x00010a5c)]
		void Thickness(
			[in]long arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelWalls categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelWalls methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
!

clearFormats
	"Answer the <VARIANT> result of invoking the ClearFormats() method of the COM object."

	^(self invokeId: 112)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

fill
	"Answer the <ExcelChartFillFormat> value of the 'Fill' property of the receiver.
		ChartFillFormat* Fill"

	^ExcelChartFillFormat attachInterface: (self getPropertyId: 1663)
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver.
		ChartFormat* Format"

	^ExcelChartFormat attachInterface: (self getPropertyId: 116)
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
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

paste
	"Invoke the Paste() method of the COM object."

	(self invokeId: 211)
!

pictureType
	"Answer the <variant> value of the 'PictureType' property of the receiver.
		VARIANT PictureType"

	^(self getPropertyId: 161)
!

pictureType: arg1
	"Set the 'PictureType' property of the receiver to the <variant> value of the argument.
		void PictureType"

	self setPropertyId: 161 value: arg1
!

pictureUnit
	"Answer the <variant> value of the 'PictureUnit' property of the receiver.
		VARIANT PictureUnit"

	^(self getPropertyId: 162)
!

pictureUnit: arg1
	"Set the 'PictureUnit' property of the receiver to the <variant> value of the argument.
		void PictureUnit"

	self setPropertyId: 162 value: arg1
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
!

thickness
	"Answer the <sdword> value of the 'Thickness' property of the receiver.
		long Thickness"

	^(self getPropertyId: 2652)
!

thickness: arg1
	"Set the 'Thickness' property of the receiver to the <sdword> value of the argument.
		void Thickness"

	self setPropertyId: 2652 value: arg1
! !
!ExcelWalls categoriesFor: #application!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #border!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelWalls categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #format!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #name!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #paste!**auto generated**!methods!public! !
!ExcelWalls categoriesFor: #pictureType!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #pictureType:!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #pictureUnit!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #pictureUnit:!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #select!**auto generated**!methods!public! !
!ExcelWalls categoriesFor: #thickness!**auto generated**!properties!public! !
!ExcelWalls categoriesFor: #thickness:!**auto generated**!properties!public! !

!ExcelWalls class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelWalls initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelWalls class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

