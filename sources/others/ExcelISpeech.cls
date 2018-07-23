"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISpeech
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISpeech guid: (IID fromString: '{00024466-0001-0000-C000-000000000046}')!
ExcelISpeech comment: '<ExcelISpeech> is a wrapper class for the COM interface ''Excel.ISpeech'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024466-0001-0000-C000-000000000046), 
	helpcontext(0x000200fc), 
	hidden
]
interface ISpeech : IDispatch
 {
	[id(0x000007e1), helpcontext(0x000107e1)]
	HRESULT __stdcall Speak(
		[in]BSTR Text,
		[in, optional]VARIANT SpeakAsync,
		[in, optional]VARIANT SpeakXML,
		[in, optional]VARIANT Purge);
	[id(0x000000a8), propget, helpcontext(0x000100a8)]
	HRESULT __stdcall Direction(
		[out, retval]XlSpeakDirection* RHS);
	[id(0x000000a8), propput, helpcontext(0x000100a8)]
	HRESULT __stdcall Direction(
		[in]XlSpeakDirection RHS);
	[id(0x000008bb), propget, helpcontext(0x000108bb)]
	HRESULT __stdcall SpeakCellOnEnter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008bb), propput, helpcontext(0x000108bb)]
	HRESULT __stdcall SpeakCellOnEnter(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelISpeech categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISpeech methodsFor!

direction
	"Answer the <sdword> value of the 'Direction' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Direction: answer.
	^answer asObject
!

direction: rhs
	"Set the 'Direction' property of the receiver to the <sdword> value of the argument."

	self put_Direction: rhs
!

get_Direction: rhs
	"Private - Get the value of the 'Direction' property of the receiver.

		HRESULT __stdcall Direction(
			[out, retval]XlSpeakDirection* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_SpeakCellOnEnter: rhs
	"Private - Get the value of the 'SpeakCellOnEnter' property of the receiver.

		HRESULT __stdcall SpeakCellOnEnter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

put_Direction: rhs
	"Private - Set the value of the 'Direction' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Direction(
			[in]XlSpeakDirection RHS);"

	<virtual stdcall: hresult 10 sdword>
	^self invalidCall!

put_SpeakCellOnEnter: rhs
	"Private - Set the value of the 'SpeakCellOnEnter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SpeakCellOnEnter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

speak: text
	"Invoke the Speak() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 speak: text
		 speakAsync: VARIANT unspecified
		 speakXML: VARIANT unspecified
		 purge: VARIANT unspecified!

speak: text speakAsync: speakAsync speakXML: speakXML purge: purge
	"Invoke the Speak() method of the COM object."

	^self
		Speak: text
		speakAsync: speakAsync asVariant
		speakXML: speakXML asVariant
		purge: purge asVariant
!

Speak: text speakAsync: speakAsync speakXML: speakXML purge: purge
	"Private - Invoke the Speak() method of the COM object.

		HRESULT __stdcall Speak(
			[in]BSTR Text,
			[in, optional]VARIANT SpeakAsync,
			[in, optional]VARIANT SpeakXML,
			[in, optional]VARIANT Purge);"

	<virtual stdcall: hresult 8 bstr variant variant variant>
	^self invalidCall!

speakCellOnEnter
	"Answer the <varbool> value of the 'SpeakCellOnEnter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_SpeakCellOnEnter: answer.
	^answer asObject
!

speakCellOnEnter: rhs
	"Set the 'SpeakCellOnEnter' property of the receiver to the <varbool> value of the argument."

	self put_SpeakCellOnEnter: rhs
! !
!ExcelISpeech categoriesFor: #direction!**auto generated**!properties!public! !
!ExcelISpeech categoriesFor: #direction:!**auto generated**!properties!public! !
!ExcelISpeech categoriesFor: #get_Direction:!**auto generated**!COM Interfaces-ISpeech!private! !
!ExcelISpeech categoriesFor: #get_SpeakCellOnEnter:!**auto generated**!COM Interfaces-ISpeech!private! !
!ExcelISpeech categoriesFor: #put_Direction:!**auto generated**!COM Interfaces-ISpeech!private! !
!ExcelISpeech categoriesFor: #put_SpeakCellOnEnter:!**auto generated**!COM Interfaces-ISpeech!private! !
!ExcelISpeech categoriesFor: #speak:!**auto generated**!methods!public! !
!ExcelISpeech categoriesFor: #speak:speakAsync:speakXML:purge:!**auto generated**!methods!public! !
!ExcelISpeech categoriesFor: #Speak:speakAsync:speakXML:purge:!**auto generated**!COM Interfaces-ISpeech!private! !
!ExcelISpeech categoriesFor: #speakCellOnEnter!**auto generated**!properties!public! !
!ExcelISpeech categoriesFor: #speakCellOnEnter:!**auto generated**!properties!public! !

!ExcelISpeech class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISpeech'
		ExcelISpeech defineTemplate"

	self
		defineFunction: #Speak:speakAsync:speakXML:purge:
			argumentTypes: 'bstr variant variant variant';
		defineFunction: #get_Direction:
			argumentTypes: 'sdword*';
		defineFunction: #put_Direction:
			argumentTypes: 'sdword';
		defineFunction: #get_SpeakCellOnEnter:
			argumentTypes: 'varbool*';
		defineFunction: #put_SpeakCellOnEnter:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISpeech initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISpeech class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISpeech class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

