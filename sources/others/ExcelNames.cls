"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelNames
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelNames guid: (IID fromString: '{000208B8-0000-0000-C000-000000000046}')!
ExcelNames comment: '<ExcelNames> is a wrapper class generated for the dispatch interface ''Excel.Names'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208B8-0000-0000-C000-000000000046), 
	helpcontext(0x00020078)
]
dispinterface Names {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		Name* Add(
			[in, optional]VARIANT Name,
			[in, optional]VARIANT RefersTo,
			[in, optional]VARIANT Visible,
			[in, optional]VARIANT MacroType,
			[in, optional]VARIANT ShortcutKey,
			[in, optional]VARIANT Category,
			[in, optional]VARIANT NameLocal,
			[in, optional]VARIANT RefersToLocal,
			[in, optional]VARIANT CategoryLocal,
			[in, optional]VARIANT RefersToR1C1,
			[in, optional]VARIANT RefersToR1C1Local);
[id(0x000000aa), helpcontext(0x000100aa)]
		Name* Item(
			[in, optional]VARIANT Index,
			[in, optional]VARIANT IndexLocal,
			[in, optional]VARIANT RefersTo);
[id(0000000000), helpcontext(0x00010000)]
		Name* _Default(
			[in, optional]VARIANT Index,
			[in, optional]VARIANT IndexLocal,
			[in, optional]VARIANT RefersTo);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelNames categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelNames methodsFor!

_default
	"Answer the <ExcelName> result of invoking the _Default() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _default: VARIANT unspecified
		 indexLocal: VARIANT unspecified
		 refersTo: VARIANT unspecified!

_default: index indexLocal: indexLocal refersTo: refersTo
	"Answer the <ExcelName> result of invoking the _Default() method of the COM object."

	^ExcelName attachInterface: (self invokeId: 0 withArguments:
			((Array new: 3)
				basicAt: 1 put: index;
				basicAt: 2 put: indexLocal;
				basicAt: 3 put: refersTo;
				yourself))
!

add
	"Answer the <ExcelName> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: VARIANT unspecified
		 refersTo: VARIANT unspecified
		 visible: VARIANT unspecified
		 macroType: VARIANT unspecified
		 shortcutKey: VARIANT unspecified
		 category: VARIANT unspecified
		 nameLocal: VARIANT unspecified
		 refersToLocal: VARIANT unspecified
		 categoryLocal: VARIANT unspecified
		 refersToR1C1: VARIANT unspecified
		 refersToR1C1Local: VARIANT unspecified!

add: name refersTo: refersTo visible: visible macroType: macroType shortcutKey: shortcutKey category: category nameLocal: nameLocal refersToLocal: refersToLocal categoryLocal: categoryLocal refersToR1C1: refersToR1C1 refersToR1C1Local: refersToR1C1Local
	"Answer the <ExcelName> result of invoking the Add() method of the COM object."

	^ExcelName attachInterface: (self invokeId: 181 withArguments:
			((Array new: 11)
				basicAt: 1 put: name;
				basicAt: 2 put: refersTo;
				basicAt: 3 put: visible;
				basicAt: 4 put: macroType;
				basicAt: 5 put: shortcutKey;
				basicAt: 6 put: category;
				basicAt: 7 put: nameLocal;
				basicAt: 8 put: refersToLocal;
				basicAt: 9 put: categoryLocal;
				basicAt: 10 put: refersToR1C1;
				basicAt: 11 put: refersToR1C1Local;
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

item
	"Answer the <ExcelName> result of invoking the Item() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 item: VARIANT unspecified
		 indexLocal: VARIANT unspecified
		 refersTo: VARIANT unspecified!

item: index indexLocal: indexLocal refersTo: refersTo
	"Answer the <ExcelName> result of invoking the Item() method of the COM object."

	^ExcelName attachInterface: (self invokeId: 170 withArguments:
			((Array new: 3)
				basicAt: 1 put: index;
				basicAt: 2 put: indexLocal;
				basicAt: 3 put: refersTo;
				yourself))
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelNames categoriesFor: #_default!**auto generated**!methods!public! !
!ExcelNames categoriesFor: #_default:indexLocal:refersTo:!**auto generated**!methods!public! !
!ExcelNames categoriesFor: #add!**auto generated**!methods!public! !
!ExcelNames categoriesFor: #add:refersTo:visible:macroType:shortcutKey:category:nameLocal:refersToLocal:categoryLocal:refersToR1C1:refersToR1C1Local:!**auto generated**!methods!public! !
!ExcelNames categoriesFor: #application!**auto generated**!properties!public! !
!ExcelNames categoriesFor: #count!**auto generated**!properties!public! !
!ExcelNames categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelNames categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelNames categoriesFor: #item!**auto generated**!methods!public! !
!ExcelNames categoriesFor: #item:indexLocal:refersTo:!**auto generated**!methods!public! !
!ExcelNames categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelNames class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelNames initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelNames class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

