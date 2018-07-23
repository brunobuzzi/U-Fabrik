"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIDocEvents
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIDocEvents guid: (IID fromString: '{00024411-0001-0000-C000-000000000046}')!
ExcelIDocEvents comment: '<ExcelIDocEvents> is a wrapper class for the COM interface ''Excel.IDocEvents'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024411-0001-0000-C000-000000000046), 
	helpcontext(0x000200a7), 
	hidden
]
interface IDocEvents : IDispatch
 {
	[id(0x00000607), helpcontext(0x00010607)]
	HRESULT __stdcall SelectionChange(
		[in]Range* Target);
	[id(0x00000601), helpcontext(0x00010601)]
	HRESULT __stdcall BeforeDoubleClick(
		[in]Range* Target,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x000005fe), helpcontext(0x000105fe)]
	HRESULT __stdcall BeforeRightClick(
		[in]Range* Target,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x00000130), helpcontext(0x00010130)]
	HRESULT __stdcall Activate();
	[id(0x000005fa), helpcontext(0x000105fa)]
	HRESULT __stdcall Deactivate();
	[id(0x00000117), helpcontext(0x00010117)]
	HRESULT __stdcall Calculate();
	[id(0x00000609), helpcontext(0x00010609)]
	HRESULT __stdcall Change(
		[in]Range* Target);
	[id(0x000005be), helpcontext(0x000105be)]
	HRESULT __stdcall FollowHyperlink(
		[in]Hyperlink* Target);
	[id(0x0000086c), helpcontext(0x0001086c)]
	HRESULT __stdcall PivotTableUpdate(
		[in]PivotTable* Target);
};
'!
!ExcelIDocEvents categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIDocEvents methodsFor!

activate
	"Invoke the Activate() method of the COM object."

	^self Activate
!

Activate
	"Private - Invoke the Activate() method of the COM object.

		HRESULT __stdcall Activate();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

beforeDoubleClick: target cancel: cancel
	"Invoke the BeforeDoubleClick() method of the COM object."

	^self
		BeforeDoubleClick: target
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

BeforeDoubleClick: target cancel: cancel
	"Private - Invoke the BeforeDoubleClick() method of the COM object.

		HRESULT __stdcall BeforeDoubleClick(
			[in]Range* Target,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 9 ExcelRange* varbool*>
	^self invalidCall!

beforeRightClick: target cancel: cancel
	"Invoke the BeforeRightClick() method of the COM object."

	^self
		BeforeRightClick: target
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

BeforeRightClick: target cancel: cancel
	"Private - Invoke the BeforeRightClick() method of the COM object.

		HRESULT __stdcall BeforeRightClick(
			[in]Range* Target,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 10 ExcelRange* varbool*>
	^self invalidCall!

calculate
	"Invoke the Calculate() method of the COM object."

	^self Calculate
!

Calculate
	"Private - Invoke the Calculate() method of the COM object.

		HRESULT __stdcall Calculate();"

	<virtual stdcall: hresult 13>
	^self invalidCall!

change: target
	"Invoke the Change() method of the COM object."

	^self Change: target
!

Change: target
	"Private - Invoke the Change() method of the COM object.

		HRESULT __stdcall Change(
			[in]Range* Target);"

	<virtual stdcall: hresult 14 ExcelRange*>
	^self invalidCall!

deactivate
	"Invoke the Deactivate() method of the COM object."

	^self Deactivate
!

Deactivate
	"Private - Invoke the Deactivate() method of the COM object.

		HRESULT __stdcall Deactivate();"

	<virtual stdcall: hresult 12>
	^self invalidCall!

followHyperlink: target
	"Invoke the FollowHyperlink() method of the COM object."

	^self FollowHyperlink: target
!

FollowHyperlink: target
	"Private - Invoke the FollowHyperlink() method of the COM object.

		HRESULT __stdcall FollowHyperlink(
			[in]Hyperlink* Target);"

	<virtual stdcall: hresult 15 ExcelHyperlink*>
	^self invalidCall!

pivotTableUpdate: target
	"Invoke the PivotTableUpdate() method of the COM object."

	^self PivotTableUpdate: target
!

PivotTableUpdate: target
	"Private - Invoke the PivotTableUpdate() method of the COM object.

		HRESULT __stdcall PivotTableUpdate(
			[in]PivotTable* Target);"

	<virtual stdcall: hresult 16 ExcelPivotTable*>
	^self invalidCall!

selectionChange: target
	"Invoke the SelectionChange() method of the COM object."

	^self SelectionChange: target
!

SelectionChange: target
	"Private - Invoke the SelectionChange() method of the COM object.

		HRESULT __stdcall SelectionChange(
			[in]Range* Target);"

	<virtual stdcall: hresult 8 ExcelRange*>
	^self invalidCall! !
!ExcelIDocEvents categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelIDocEvents categoriesFor: #Activate!**auto generated**!COM Interfaces-IDocEvents!private! !
!ExcelIDocEvents categoriesFor: #beforeDoubleClick:cancel:!**auto generated**!methods!public! !
!ExcelIDocEvents categoriesFor: #BeforeDoubleClick:cancel:!**auto generated**!COM Interfaces-IDocEvents!private! !
!ExcelIDocEvents categoriesFor: #beforeRightClick:cancel:!**auto generated**!methods!public! !
!ExcelIDocEvents categoriesFor: #BeforeRightClick:cancel:!**auto generated**!COM Interfaces-IDocEvents!private! !
!ExcelIDocEvents categoriesFor: #calculate!**auto generated**!methods!public! !
!ExcelIDocEvents categoriesFor: #Calculate!**auto generated**!COM Interfaces-IDocEvents!private! !
!ExcelIDocEvents categoriesFor: #change:!**auto generated**!methods!public! !
!ExcelIDocEvents categoriesFor: #Change:!**auto generated**!COM Interfaces-IDocEvents!private! !
!ExcelIDocEvents categoriesFor: #deactivate!**auto generated**!methods!public! !
!ExcelIDocEvents categoriesFor: #Deactivate!**auto generated**!COM Interfaces-IDocEvents!private! !
!ExcelIDocEvents categoriesFor: #followHyperlink:!**auto generated**!methods!public! !
!ExcelIDocEvents categoriesFor: #FollowHyperlink:!**auto generated**!COM Interfaces-IDocEvents!private! !
!ExcelIDocEvents categoriesFor: #pivotTableUpdate:!**auto generated**!methods!public! !
!ExcelIDocEvents categoriesFor: #PivotTableUpdate:!**auto generated**!COM Interfaces-IDocEvents!private! !
!ExcelIDocEvents categoriesFor: #selectionChange:!**auto generated**!methods!public! !
!ExcelIDocEvents categoriesFor: #SelectionChange:!**auto generated**!COM Interfaces-IDocEvents!private! !

!ExcelIDocEvents class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IDocEvents'
		ExcelIDocEvents defineTemplate"

	self
		defineFunction: #SelectionChange:
			argumentTypes: 'ExcelRange*';
		defineFunction: #BeforeDoubleClick:cancel:
			argumentTypes: 'ExcelRange* varbool*';
		defineFunction: #BeforeRightClick:cancel:
			argumentTypes: 'ExcelRange* varbool*';
		defineFunction: #Activate;
		defineFunction: #Deactivate;
		defineFunction: #Calculate;
		defineFunction: #Change:
			argumentTypes: 'ExcelRange*';
		defineFunction: #FollowHyperlink:
			argumentTypes: 'ExcelHyperlink*';
		defineFunction: #PivotTableUpdate:
			argumentTypes: 'ExcelPivotTable*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIDocEvents initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIDocEvents class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIDocEvents class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

