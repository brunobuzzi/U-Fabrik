"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSpeech
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSpeech guid: (IID fromString: '{00024466-0000-0000-C000-000000000046}')!
ExcelSpeech comment: '<ExcelSpeech> is a wrapper class generated for the dispatch interface ''Excel.Speech'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024466-0000-0000-C000-000000000046), 
	helpcontext(0x000200fc)
]
dispinterface Speech {
	properties:
	methods:
[id(0x000007e1), helpcontext(0x000107e1)]
		void Speak(
			[in]BSTR Text,
			[in, optional]VARIANT SpeakAsync,
			[in, optional]VARIANT SpeakXML,
			[in, optional]VARIANT Purge);
[id(0x000000a8), propget, helpcontext(0x000100a8)]
		XlSpeakDirection Direction();
[id(0x000000a8), propput, helpcontext(0x000100a8)]
		void Direction(
			[in]XlSpeakDirection arg1);
[id(0x000008bb), propget, helpcontext(0x000108bb)]
		VARIANT_BOOL SpeakCellOnEnter();
[id(0x000008bb), propput, helpcontext(0x000108bb)]
		void SpeakCellOnEnter(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelSpeech categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSpeech methodsFor!

direction
	"Answer the <sdword> value of the 'Direction' property of the receiver.
		XlSpeakDirection Direction"

	^(self getPropertyId: 168)
!

direction: arg1
	"Set the 'Direction' property of the receiver to the <sdword> value of the argument.
		void Direction"

	self setPropertyId: 168 value: arg1
!

speak: text
	"Invoke the Speak() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 speak: text
		 speakAsync: VARIANT unspecified
		 speakXML: VARIANT unspecified
		 purge: VARIANT unspecified!

speak: text speakAsync: speakAsync speakXML: speakXML purge: purge
	"Invoke the Speak() method of the COM object."

	(self invokeId: 2017 withArguments:
			((Array new: 4)
				basicAt: 1 put: text;
				basicAt: 2 put: speakAsync;
				basicAt: 3 put: speakXML;
				basicAt: 4 put: purge;
				yourself))
!

speakCellOnEnter
	"Answer the <varbool> value of the 'SpeakCellOnEnter' property of the receiver.
		VARIANT_BOOL SpeakCellOnEnter"

	^(self getPropertyId: 2235)
!

speakCellOnEnter: arg1
	"Set the 'SpeakCellOnEnter' property of the receiver to the <varbool> value of the argument.
		void SpeakCellOnEnter"

	self setPropertyId: 2235 value: arg1
! !
!ExcelSpeech categoriesFor: #direction!**auto generated**!properties!public! !
!ExcelSpeech categoriesFor: #direction:!**auto generated**!properties!public! !
!ExcelSpeech categoriesFor: #speak:!**auto generated**!methods!public! !
!ExcelSpeech categoriesFor: #speak:speakAsync:speakXML:purge:!**auto generated**!methods!public! !
!ExcelSpeech categoriesFor: #speakCellOnEnter!**auto generated**!properties!public! !
!ExcelSpeech categoriesFor: #speakCellOnEnter:!**auto generated**!properties!public! !

!ExcelSpeech class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSpeech initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSpeech class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

