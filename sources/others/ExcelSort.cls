"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSort
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSort guid: (IID fromString: '{000244AB-0000-0000-C000-000000000046}')!
ExcelSort comment: '<ExcelSort> is a wrapper class generated for the dispatch interface ''Excel.Sort'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244AB-0000-0000-C000-000000000046), 
	helpcontext(0x00020141)
]
dispinterface Sort {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000abc), propget, helpcontext(0x00010abc)]
		Range* Rng();
[id(0x0000037f), propget, helpcontext(0x0001037f)]
		XlYesNoGuess Header();
[id(0x0000037f), propput, helpcontext(0x0001037f)]
		void Header(
			[in]XlYesNoGuess arg1);
[id(0x000001aa), propget, helpcontext(0x000101aa)]
		VARIANT_BOOL MatchCase();
[id(0x000001aa), propput, helpcontext(0x000101aa)]
		void MatchCase(
			[in]VARIANT_BOOL arg1);
[id(0x00000086), propget, helpcontext(0x00010086)]
		XlSortOrientation Orientation();
[id(0x00000086), propput, helpcontext(0x00010086)]
		void Orientation(
			[in]XlSortOrientation arg1);
[id(0x00000381), propget, helpcontext(0x00010381)]
		XlSortMethod SortMethod();
[id(0x00000381), propput, helpcontext(0x00010381)]
		void SortMethod(
			[in]XlSortMethod arg1);
[id(0x00000abd), propget, helpcontext(0x00010abd)]
		SortFields* SortFields();
[id(0x00000abe), helpcontext(0x00010abe)]
		void SetRange(
			[in]Range* Rng);
[id(0x0000068b), helpcontext(0x0001068b)]
		void Apply();
};
'!
!ExcelSort categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSort methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

apply
	"Invoke the Apply() method of the COM object."

	(self invokeId: 1675)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

header
	"Answer the <sdword> value of the 'Header' property of the receiver.
		XlYesNoGuess Header"

	^(self getPropertyId: 895)
!

header: arg1
	"Set the 'Header' property of the receiver to the <sdword> value of the argument.
		void Header"

	self setPropertyId: 895 value: arg1
!

matchCase
	"Answer the <varbool> value of the 'MatchCase' property of the receiver.
		VARIANT_BOOL MatchCase"

	^(self getPropertyId: 426)
!

matchCase: arg1
	"Set the 'MatchCase' property of the receiver to the <varbool> value of the argument.
		void MatchCase"

	self setPropertyId: 426 value: arg1
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver.
		XlSortOrientation Orientation"

	^(self getPropertyId: 134)
!

orientation: arg1
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument.
		void Orientation"

	self setPropertyId: 134 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

rng
	"Answer the <ExcelRange> value of the 'Rng' property of the receiver.
		Range* Rng"

	^ExcelRange attachInterface: (self getPropertyId: 2748)
!

setRange: rng
	"Invoke the SetRange() method of the COM object."

	(self invokeId: 2750 with: rng)
!

sortFields
	"Answer the <ExcelSortFields> value of the 'SortFields' property of the receiver.
		SortFields* SortFields"

	^ExcelSortFields attachInterface: (self getPropertyId: 2749)
!

sortMethod
	"Answer the <sdword> value of the 'SortMethod' property of the receiver.
		XlSortMethod SortMethod"

	^(self getPropertyId: 897)
!

sortMethod: arg1
	"Set the 'SortMethod' property of the receiver to the <sdword> value of the argument.
		void SortMethod"

	self setPropertyId: 897 value: arg1
! !
!ExcelSort categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSort categoriesFor: #apply!**auto generated**!methods!public! !
!ExcelSort categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSort categoriesFor: #header!**auto generated**!properties!public! !
!ExcelSort categoriesFor: #header:!**auto generated**!properties!public! !
!ExcelSort categoriesFor: #matchCase!**auto generated**!properties!public! !
!ExcelSort categoriesFor: #matchCase:!**auto generated**!properties!public! !
!ExcelSort categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelSort categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelSort categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelSort categoriesFor: #rng!**auto generated**!properties!public! !
!ExcelSort categoriesFor: #setRange:!**auto generated**!methods!public! !
!ExcelSort categoriesFor: #sortFields!**auto generated**!properties!public! !
!ExcelSort categoriesFor: #sortMethod!**auto generated**!properties!public! !
!ExcelSort categoriesFor: #sortMethod:!**auto generated**!properties!public! !

!ExcelSort class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSort initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSort class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

