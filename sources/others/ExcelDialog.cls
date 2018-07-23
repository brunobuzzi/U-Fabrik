"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDialog guid: (IID fromString: '{0002087A-0000-0000-C000-000000000046}')!
ExcelDialog comment: '<ExcelDialog> is a wrapper class generated for the dispatch interface ''Excel.Dialog'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002087A-0000-0000-C000-000000000046), 
	helpcontext(0x0002003a)
]
dispinterface Dialog {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000001f0), helpcontext(0x000101f0)]
		VARIANT_BOOL Show(
			[in, optional]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30);
};
'!
!ExcelDialog categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelDialog methodsFor!

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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

show
	"Answer the <VARIANT_BOOL> result of invoking the Show() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 show: VARIANT unspecified
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

show: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <VARIANT_BOOL> result of invoking the Show() method of the COM object."

	^(self invokeId: 496 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
! !
!ExcelDialog categoriesFor: #application!**auto generated**!properties!public! !
!ExcelDialog categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelDialog categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDialog categoriesFor: #show!**auto generated**!methods!public! !
!ExcelDialog categoriesFor: #show:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !

!ExcelDialog class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDialog initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDialog class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

