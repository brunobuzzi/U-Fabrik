"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelCubeField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelCubeField guid: (IID fromString: '{0002444C-0000-0000-C000-000000000046}')!
ExcelCubeField comment: '<ExcelCubeField> is a wrapper class for the COM interface ''Excel.CubeField'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002444C-0000-0000-C000-000000000046), 
	helpcontext(0x000200e2), 
	nonextensible, 
	dual
]
interface CubeField : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** RHS);
	[id(0x0000077e), propget, helpcontext(0x0001077e)]
	HRESULT __stdcall CubeFieldType(
		[out, retval]XlCubeFieldType* RHS);
	[id(0x00000a6b), hidden, propget, helpcontext(0x00010a6b)]
	HRESULT __stdcall _Caption(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]BSTR* RHS);
	[id(0x00000086), propget, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[out, retval]XlPivotFieldOrientation* RHS);
	[id(0x00000086), propput, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[in]XlPivotFieldOrientation RHS);
	[id(0x00000085), propget, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[out, retval]long* RHS);
	[id(0x00000085), propput, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[in]long RHS);
	[id(0x0000077f), propget, helpcontext(0x0001077f)]
	HRESULT __stdcall TreeviewControl(
		[out, retval]TreeviewControl** RHS);
	[id(0x000005e4), propget, helpcontext(0x000105e4)]
	HRESULT __stdcall DragToColumn(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005e4), propput, helpcontext(0x000105e4)]
	HRESULT __stdcall DragToColumn(
		[in]VARIANT_BOOL RHS);
	[id(0x000005e5), propget, helpcontext(0x000105e5)]
	HRESULT __stdcall DragToHide(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005e5), propput, helpcontext(0x000105e5)]
	HRESULT __stdcall DragToHide(
		[in]VARIANT_BOOL RHS);
	[id(0x000005e6), propget, helpcontext(0x000105e6)]
	HRESULT __stdcall DragToPage(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005e6), propput, helpcontext(0x000105e6)]
	HRESULT __stdcall DragToPage(
		[in]VARIANT_BOOL RHS);
	[id(0x000005e7), propget, helpcontext(0x000105e7)]
	HRESULT __stdcall DragToRow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005e7), propput, helpcontext(0x000105e7)]
	HRESULT __stdcall DragToRow(
		[in]VARIANT_BOOL RHS);
	[id(0x00000734), propget, helpcontext(0x00010734)]
	HRESULT __stdcall DragToData(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000734), propput, helpcontext(0x00010734)]
	HRESULT __stdcall DragToData(
		[in]VARIANT_BOOL RHS);
	[id(0x00000780), hidden, propget, helpcontext(0x00010780)]
	HRESULT __stdcall HiddenLevels(
		[out, retval]long* RHS);
	[id(0x00000780), hidden, propput, helpcontext(0x00010780)]
	HRESULT __stdcall HiddenLevels(
		[in]long RHS);
	[id(0x00000885), propget, helpcontext(0x00010885)]
	HRESULT __stdcall HasMemberProperties(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000738), propget, helpcontext(0x00010738)]
	HRESULT __stdcall LayoutForm(
		[out, retval]XlLayoutFormType* RHS);
	[id(0x00000738), propput, helpcontext(0x00010738)]
	HRESULT __stdcall LayoutForm(
		[in]XlLayoutFormType RHS);
	[id(0x000002ce), propget, helpcontext(0x000102ce)]
	HRESULT __stdcall PivotFields(
		[out, retval]PivotFields** RHS);
	[id(0x00000886), hidden, helpcontext(0x00010886)]
	HRESULT __stdcall _AddMemberPropertyField(
		[in]BSTR Property,
		[in, optional]VARIANT PropertyOrder);
	[id(0x00000888), propget, helpcontext(0x00010888)]
	HRESULT __stdcall EnableMultiplePageItems(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000888), propput, helpcontext(0x00010888)]
	HRESULT __stdcall EnableMultiplePageItems(
		[in]VARIANT_BOOL RHS);
	[id(0x00000736), propget, helpcontext(0x00010736)]
	HRESULT __stdcall LayoutSubtotalLocation(
		[out, retval]XlSubtototalLocationType* RHS);
	[id(0x00000736), propput, helpcontext(0x00010736)]
	HRESULT __stdcall LayoutSubtotalLocation(
		[in]XlSubtototalLocationType RHS);
	[id(0x00000889), propget, helpcontext(0x00010889)]
	HRESULT __stdcall ShowInFieldList(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000889), propput, helpcontext(0x00010889)]
	HRESULT __stdcall ShowInFieldList(
		[in]VARIANT_BOOL RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000a6c), helpcontext(0x00010a6c)]
	HRESULT __stdcall AddMemberPropertyField(
		[in]BSTR Property,
		[in, optional]VARIANT PropertyOrder,
		[in, optional]VARIANT PropertyDisplayedIn);
	[id(0x00000a1b), propget, helpcontext(0x00010a1b)]
	HRESULT __stdcall IncludeNewItemsInFilter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a1b), propput, helpcontext(0x00010a1b)]
	HRESULT __stdcall IncludeNewItemsInFilter(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a6e), propget, helpcontext(0x00010a6e)]
	HRESULT __stdcall CubeFieldSubType(
		[out, retval]XlCubeFieldSubType* RHS);
	[id(0x00000a21), propget, helpcontext(0x00010a21)]
	HRESULT __stdcall AllItemsVisible(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a22), helpcontext(0x00010a22)]
	HRESULT __stdcall ClearManualFilter();
	[id(0x00000a6f), helpcontext(0x00010a6f)]
	HRESULT __stdcall CreatePivotFields();
	[id(0x0000073c), propget, helpcontext(0x0001073c)]
	HRESULT __stdcall CurrentPageName(
		[out, retval]BSTR* RHS);
	[id(0x0000073c), propput, helpcontext(0x0001073c)]
	HRESULT __stdcall CurrentPageName(
		[in]BSTR RHS);
	[id(0x00000a70), propget, helpcontext(0x00010a70)]
	HRESULT __stdcall IsDate(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000008b), propget, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[out, retval]BSTR* RHS);
	[id(0x0000008b), propput, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[in]BSTR RHS);
};
'!
!ExcelCubeField categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelCubeField methodsFor!

_addMemberPropertyField: property
	"Invoke the _AddMemberPropertyField() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _addMemberPropertyField: property
		 propertyOrder: VARIANT unspecified!

_addMemberPropertyField: property propertyOrder: propertyOrder
	"Invoke the _AddMemberPropertyField() method of the COM object."

	^self
		_AddMemberPropertyField: property
		propertyOrder: propertyOrder asVariant
!

_AddMemberPropertyField: property propertyOrder: propertyOrder
	"Private - Invoke the _AddMemberPropertyField() method of the COM object.

		HRESULT __stdcall _AddMemberPropertyField(
			[in]BSTR Property,
			[in, optional]VARIANT PropertyOrder);"

	<virtual stdcall: hresult 36 bstr variant>
	^self invalidCall!

_caption
	"Answer the <bstr> value of the '_Caption' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Caption: answer.
	^answer asObject
!

addMemberPropertyField: property
	"Invoke the AddMemberPropertyField() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addMemberPropertyField: property
		 propertyOrder: VARIANT unspecified
		 propertyDisplayedIn: VARIANT unspecified!

addMemberPropertyField: property propertyOrder: propertyOrder propertyDisplayedIn: propertyDisplayedIn
	"Invoke the AddMemberPropertyField() method of the COM object."

	^self
		AddMemberPropertyField: property
		propertyOrder: propertyOrder asVariant
		propertyDisplayedIn: propertyDisplayedIn asVariant
!

AddMemberPropertyField: property propertyOrder: propertyOrder propertyDisplayedIn: propertyDisplayedIn
	"Private - Invoke the AddMemberPropertyField() method of the COM object.

		HRESULT __stdcall AddMemberPropertyField(
			[in]BSTR Property,
			[in, optional]VARIANT PropertyOrder,
			[in, optional]VARIANT PropertyDisplayedIn);"

	<virtual stdcall: hresult 44 bstr variant variant>
	^self invalidCall!

allItemsVisible
	"Answer the <varbool> value of the 'AllItemsVisible' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllItemsVisible: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Caption: answer.
	^answer asObject
!

caption: rhs
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument."

	self put_Caption: rhs
!

clearManualFilter
	"Invoke the ClearManualFilter() method of the COM object."

	^self ClearManualFilter
!

ClearManualFilter
	"Private - Invoke the ClearManualFilter() method of the COM object.

		HRESULT __stdcall ClearManualFilter();"

	<virtual stdcall: hresult 49>
	^self invalidCall!

createPivotFields
	"Invoke the CreatePivotFields() method of the COM object."

	^self CreatePivotFields
!

CreatePivotFields
	"Private - Invoke the CreatePivotFields() method of the COM object.

		HRESULT __stdcall CreatePivotFields();"

	<virtual stdcall: hresult 50>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

cubeFieldSubType
	"Answer the <sdword> value of the 'CubeFieldSubType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CubeFieldSubType: answer.
	^answer asObject
!

cubeFieldType
	"Answer the <sdword> value of the 'CubeFieldType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CubeFieldType: answer.
	^answer asObject
!

currentPageName
	"Answer the <bstr> value of the 'CurrentPageName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_CurrentPageName: answer.
	^answer asObject
!

currentPageName: rhs
	"Set the 'CurrentPageName' property of the receiver to the <bstr> value of the argument."

	self put_CurrentPageName: rhs
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 43>
	^self invalidCall!

dragToColumn
	"Answer the <varbool> value of the 'DragToColumn' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DragToColumn: answer.
	^answer asObject
!

dragToColumn: rhs
	"Set the 'DragToColumn' property of the receiver to the <varbool> value of the argument."

	self put_DragToColumn: rhs
!

dragToData
	"Answer the <varbool> value of the 'DragToData' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DragToData: answer.
	^answer asObject
!

dragToData: rhs
	"Set the 'DragToData' property of the receiver to the <varbool> value of the argument."

	self put_DragToData: rhs
!

dragToHide
	"Answer the <varbool> value of the 'DragToHide' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DragToHide: answer.
	^answer asObject
!

dragToHide: rhs
	"Set the 'DragToHide' property of the receiver to the <varbool> value of the argument."

	self put_DragToHide: rhs
!

dragToPage
	"Answer the <varbool> value of the 'DragToPage' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DragToPage: answer.
	^answer asObject
!

dragToPage: rhs
	"Set the 'DragToPage' property of the receiver to the <varbool> value of the argument."

	self put_DragToPage: rhs
!

dragToRow
	"Answer the <varbool> value of the 'DragToRow' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DragToRow: answer.
	^answer asObject
!

dragToRow: rhs
	"Set the 'DragToRow' property of the receiver to the <varbool> value of the argument."

	self put_DragToRow: rhs
!

enableMultiplePageItems
	"Answer the <varbool> value of the 'EnableMultiplePageItems' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableMultiplePageItems: answer.
	^answer asObject
!

enableMultiplePageItems: rhs
	"Set the 'EnableMultiplePageItems' property of the receiver to the <varbool> value of the argument."

	self put_EnableMultiplePageItems: rhs
!

get__Caption: rhs
	"Private - Get the value of the '_Caption' property of the receiver.

		HRESULT __stdcall _Caption(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

get_AllItemsVisible: rhs
	"Private - Get the value of the 'AllItemsVisible' property of the receiver.

		HRESULT __stdcall AllItemsVisible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 48 varbool*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Caption: rhs
	"Private - Get the value of the 'Caption' property of the receiver.

		HRESULT __stdcall Caption(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 54 bstr*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_CubeFieldSubType: rhs
	"Private - Get the value of the 'CubeFieldSubType' property of the receiver.

		HRESULT __stdcall CubeFieldSubType(
			[out, retval]XlCubeFieldSubType* RHS);"

	<virtual stdcall: hresult 47 sdword*>
	^self invalidCall!

get_CubeFieldType: rhs
	"Private - Get the value of the 'CubeFieldType' property of the receiver.

		HRESULT __stdcall CubeFieldType(
			[out, retval]XlCubeFieldType* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_CurrentPageName: rhs
	"Private - Get the value of the 'CurrentPageName' property of the receiver.

		HRESULT __stdcall CurrentPageName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 51 bstr*>
	^self invalidCall!

get_DragToColumn: rhs
	"Private - Get the value of the 'DragToColumn' property of the receiver.

		HRESULT __stdcall DragToColumn(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 20 varbool*>
	^self invalidCall!

get_DragToData: rhs
	"Private - Get the value of the 'DragToData' property of the receiver.

		HRESULT __stdcall DragToData(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 28 varbool*>
	^self invalidCall!

get_DragToHide: rhs
	"Private - Get the value of the 'DragToHide' property of the receiver.

		HRESULT __stdcall DragToHide(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 22 varbool*>
	^self invalidCall!

get_DragToPage: rhs
	"Private - Get the value of the 'DragToPage' property of the receiver.

		HRESULT __stdcall DragToPage(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 24 varbool*>
	^self invalidCall!

get_DragToRow: rhs
	"Private - Get the value of the 'DragToRow' property of the receiver.

		HRESULT __stdcall DragToRow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 26 varbool*>
	^self invalidCall!

get_EnableMultiplePageItems: rhs
	"Private - Get the value of the 'EnableMultiplePageItems' property of the receiver.

		HRESULT __stdcall EnableMultiplePageItems(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 37 varbool*>
	^self invalidCall!

get_HasMemberProperties: rhs
	"Private - Get the value of the 'HasMemberProperties' property of the receiver.

		HRESULT __stdcall HasMemberProperties(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 32 varbool*>
	^self invalidCall!

get_HiddenLevels: rhs
	"Private - Get the value of the 'HiddenLevels' property of the receiver.

		HRESULT __stdcall HiddenLevels(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 30 sdword*>
	^self invalidCall!

get_IncludeNewItemsInFilter: rhs
	"Private - Get the value of the 'IncludeNewItemsInFilter' property of the receiver.

		HRESULT __stdcall IncludeNewItemsInFilter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 45 varbool*>
	^self invalidCall!

get_IsDate: rhs
	"Private - Get the value of the 'IsDate' property of the receiver.

		HRESULT __stdcall IsDate(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 53 varbool*>
	^self invalidCall!

get_LayoutForm: rhs
	"Private - Get the value of the 'LayoutForm' property of the receiver.

		HRESULT __stdcall LayoutForm(
			[out, retval]XlLayoutFormType* RHS);"

	<virtual stdcall: hresult 33 sdword*>
	^self invalidCall!

get_LayoutSubtotalLocation: rhs
	"Private - Get the value of the 'LayoutSubtotalLocation' property of the receiver.

		HRESULT __stdcall LayoutSubtotalLocation(
			[out, retval]XlSubtototalLocationType* RHS);"

	<virtual stdcall: hresult 39 sdword*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_Orientation: rhs
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]XlPivotFieldOrientation* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PivotFields: rhs
	"Private - Get the value of the 'PivotFields' property of the receiver.

		HRESULT __stdcall PivotFields(
			[out, retval]PivotFields** RHS);"

	<virtual stdcall: hresult 35 ExcelPivotFields**>
	^self invalidCall!

get_Position: rhs
	"Private - Get the value of the 'Position' property of the receiver.

		HRESULT __stdcall Position(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_ShowInFieldList: rhs
	"Private - Get the value of the 'ShowInFieldList' property of the receiver.

		HRESULT __stdcall ShowInFieldList(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 41 varbool*>
	^self invalidCall!

get_TreeviewControl: rhs
	"Private - Get the value of the 'TreeviewControl' property of the receiver.

		HRESULT __stdcall TreeviewControl(
			[out, retval]TreeviewControl** RHS);"

	<virtual stdcall: hresult 19 ExcelTreeviewControl**>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

hasMemberProperties
	"Answer the <varbool> value of the 'HasMemberProperties' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasMemberProperties: answer.
	^answer asObject
!

hiddenLevels
	"Answer the <sdword> value of the 'HiddenLevels' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HiddenLevels: answer.
	^answer asObject
!

hiddenLevels: rhs
	"Set the 'HiddenLevels' property of the receiver to the <sdword> value of the argument."

	self put_HiddenLevels: rhs
!

includeNewItemsInFilter
	"Answer the <varbool> value of the 'IncludeNewItemsInFilter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IncludeNewItemsInFilter: answer.
	^answer asObject
!

includeNewItemsInFilter: rhs
	"Set the 'IncludeNewItemsInFilter' property of the receiver to the <varbool> value of the argument."

	self put_IncludeNewItemsInFilter: rhs
!

isDate
	"Answer the <varbool> value of the 'IsDate' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IsDate: answer.
	^answer asObject
!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

layoutForm
	"Answer the <sdword> value of the 'LayoutForm' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_LayoutForm: answer.
	^answer asObject
!

layoutForm: rhs
	"Set the 'LayoutForm' property of the receiver to the <sdword> value of the argument."

	self put_LayoutForm: rhs
!

layoutSubtotalLocation
	"Answer the <sdword> value of the 'LayoutSubtotalLocation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_LayoutSubtotalLocation: answer.
	^answer asObject
!

layoutSubtotalLocation: rhs
	"Set the 'LayoutSubtotalLocation' property of the receiver to the <sdword> value of the argument."

	self put_LayoutSubtotalLocation: rhs
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Orientation: answer.
	^answer asObject
!

orientation: rhs
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument."

	self put_Orientation: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pivotFields
	"Answer the <ExcelPivotFields> value of the 'PivotFields' property of the receiver."

	| answer |
	answer := ExcelPivotFields newPointer.
	self get_PivotFields: answer.
	^answer asObject
!

position
	"Answer the <sdword> value of the 'Position' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Position: answer.
	^answer asObject
!

position: rhs
	"Set the 'Position' property of the receiver to the <sdword> value of the argument."

	self put_Position: rhs
!

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Caption(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 55 bstr>
	^self invalidCall!

put_CurrentPageName: rhs
	"Private - Set the value of the 'CurrentPageName' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall CurrentPageName(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 52 bstr>
	^self invalidCall!

put_DragToColumn: rhs
	"Private - Set the value of the 'DragToColumn' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DragToColumn(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 21 varbool>
	^self invalidCall!

put_DragToData: rhs
	"Private - Set the value of the 'DragToData' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DragToData(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 29 varbool>
	^self invalidCall!

put_DragToHide: rhs
	"Private - Set the value of the 'DragToHide' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DragToHide(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 23 varbool>
	^self invalidCall!

put_DragToPage: rhs
	"Private - Set the value of the 'DragToPage' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DragToPage(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 25 varbool>
	^self invalidCall!

put_DragToRow: rhs
	"Private - Set the value of the 'DragToRow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DragToRow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 27 varbool>
	^self invalidCall!

put_EnableMultiplePageItems: rhs
	"Private - Set the value of the 'EnableMultiplePageItems' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableMultiplePageItems(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 38 varbool>
	^self invalidCall!

put_HiddenLevels: rhs
	"Private - Set the value of the 'HiddenLevels' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall HiddenLevels(
			[in]long RHS);"

	<virtual stdcall: hresult 31 sdword>
	^self invalidCall!

put_IncludeNewItemsInFilter: rhs
	"Private - Set the value of the 'IncludeNewItemsInFilter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IncludeNewItemsInFilter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 46 varbool>
	^self invalidCall!

put_LayoutForm: rhs
	"Private - Set the value of the 'LayoutForm' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall LayoutForm(
			[in]XlLayoutFormType RHS);"

	<virtual stdcall: hresult 34 sdword>
	^self invalidCall!

put_LayoutSubtotalLocation: rhs
	"Private - Set the value of the 'LayoutSubtotalLocation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall LayoutSubtotalLocation(
			[in]XlSubtototalLocationType RHS);"

	<virtual stdcall: hresult 40 sdword>
	^self invalidCall!

put_Orientation: rhs
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Orientation(
			[in]XlPivotFieldOrientation RHS);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

put_Position: rhs
	"Private - Set the value of the 'Position' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Position(
			[in]long RHS);"

	<virtual stdcall: hresult 18 sdword>
	^self invalidCall!

put_ShowInFieldList: rhs
	"Private - Set the value of the 'ShowInFieldList' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowInFieldList(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 42 varbool>
	^self invalidCall!

showInFieldList
	"Answer the <varbool> value of the 'ShowInFieldList' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowInFieldList: answer.
	^answer asObject
!

showInFieldList: rhs
	"Set the 'ShowInFieldList' property of the receiver to the <varbool> value of the argument."

	self put_ShowInFieldList: rhs
!

treeviewControl
	"Answer the <ExcelTreeviewControl> value of the 'TreeviewControl' property of the receiver."

	| answer |
	answer := ExcelTreeviewControl newPointer.
	self get_TreeviewControl: answer.
	^answer asObject
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Value: answer.
	^answer asObject
! !
!ExcelCubeField categoriesFor: #_addMemberPropertyField:!**auto generated**!methods!public! !
!ExcelCubeField categoriesFor: #_addMemberPropertyField:propertyOrder:!**auto generated**!methods!public! !
!ExcelCubeField categoriesFor: #_AddMemberPropertyField:propertyOrder:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #_caption!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #addMemberPropertyField:!**auto generated**!methods!public! !
!ExcelCubeField categoriesFor: #addMemberPropertyField:propertyOrder:propertyDisplayedIn:!**auto generated**!methods!public! !
!ExcelCubeField categoriesFor: #AddMemberPropertyField:propertyOrder:propertyDisplayedIn:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #allItemsVisible!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #application!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #clearManualFilter!**auto generated**!methods!public! !
!ExcelCubeField categoriesFor: #ClearManualFilter!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #createPivotFields!**auto generated**!methods!public! !
!ExcelCubeField categoriesFor: #CreatePivotFields!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #cubeFieldSubType!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #cubeFieldType!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #currentPageName!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #currentPageName:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelCubeField categoriesFor: #Delete!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #dragToColumn!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #dragToColumn:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #dragToData!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #dragToData:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #dragToHide!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #dragToHide:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #dragToPage!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #dragToPage:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #dragToRow!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #dragToRow:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #enableMultiplePageItems!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #enableMultiplePageItems:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #get__Caption:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_AllItemsVisible:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_Application:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_CubeFieldSubType:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_CubeFieldType:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_CurrentPageName:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_DragToColumn:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_DragToData:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_DragToHide:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_DragToPage:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_DragToRow:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_EnableMultiplePageItems:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_HasMemberProperties:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_HiddenLevels:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_IncludeNewItemsInFilter:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_IsDate:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_LayoutForm:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_LayoutSubtotalLocation:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_Name:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_PivotFields:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_Position:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_ShowInFieldList:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_TreeviewControl:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #get_Value:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #hasMemberProperties!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #hiddenLevels!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #hiddenLevels:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #includeNewItemsInFilter!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #includeNewItemsInFilter:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #isDate!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelCubeField categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelCubeField categoriesFor: #layoutForm!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #layoutForm:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #layoutSubtotalLocation!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #layoutSubtotalLocation:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #name!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #pivotFields!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #position!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_CurrentPageName:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_DragToColumn:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_DragToData:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_DragToHide:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_DragToPage:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_DragToRow:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_EnableMultiplePageItems:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_HiddenLevels:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_IncludeNewItemsInFilter:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_LayoutForm:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_LayoutSubtotalLocation:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_Position:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #put_ShowInFieldList:!**auto generated**!COM Interfaces-CubeField!private! !
!ExcelCubeField categoriesFor: #showInFieldList!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #showInFieldList:!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #treeviewControl!**auto generated**!properties!public! !
!ExcelCubeField categoriesFor: #value!**auto generated**!properties!public! !

!ExcelCubeField class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.CubeField'
		ExcelCubeField defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_CubeFieldType:
			argumentTypes: 'sdword*';
		defineFunction: #get__Caption:
			argumentTypes: 'bstr*';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get_Value:
			argumentTypes: 'bstr*';
		defineFunction: #get_Orientation:
			argumentTypes: 'sdword*';
		defineFunction: #put_Orientation:
			argumentTypes: 'sdword';
		defineFunction: #get_Position:
			argumentTypes: 'sdword*';
		defineFunction: #put_Position:
			argumentTypes: 'sdword';
		defineFunction: #get_TreeviewControl:
			argumentTypes: 'ExcelTreeviewControl**';
		defineFunction: #get_DragToColumn:
			argumentTypes: 'varbool*';
		defineFunction: #put_DragToColumn:
			argumentTypes: 'varbool';
		defineFunction: #get_DragToHide:
			argumentTypes: 'varbool*';
		defineFunction: #put_DragToHide:
			argumentTypes: 'varbool';
		defineFunction: #get_DragToPage:
			argumentTypes: 'varbool*';
		defineFunction: #put_DragToPage:
			argumentTypes: 'varbool';
		defineFunction: #get_DragToRow:
			argumentTypes: 'varbool*';
		defineFunction: #put_DragToRow:
			argumentTypes: 'varbool';
		defineFunction: #get_DragToData:
			argumentTypes: 'varbool*';
		defineFunction: #put_DragToData:
			argumentTypes: 'varbool';
		defineFunction: #get_HiddenLevels:
			argumentTypes: 'sdword*';
		defineFunction: #put_HiddenLevels:
			argumentTypes: 'sdword';
		defineFunction: #get_HasMemberProperties:
			argumentTypes: 'varbool*';
		defineFunction: #get_LayoutForm:
			argumentTypes: 'sdword*';
		defineFunction: #put_LayoutForm:
			argumentTypes: 'sdword';
		defineFunction: #get_PivotFields:
			argumentTypes: 'ExcelPivotFields**';
		defineFunction: #_AddMemberPropertyField:propertyOrder:
			argumentTypes: 'bstr variant';
		defineFunction: #get_EnableMultiplePageItems:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableMultiplePageItems:
			argumentTypes: 'varbool';
		defineFunction: #get_LayoutSubtotalLocation:
			argumentTypes: 'sdword*';
		defineFunction: #put_LayoutSubtotalLocation:
			argumentTypes: 'sdword';
		defineFunction: #get_ShowInFieldList:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowInFieldList:
			argumentTypes: 'varbool';
		defineFunction: #Delete;
		defineFunction: #AddMemberPropertyField:propertyOrder:propertyDisplayedIn:
			argumentTypes: 'bstr variant variant';
		defineFunction: #get_IncludeNewItemsInFilter:
			argumentTypes: 'varbool*';
		defineFunction: #put_IncludeNewItemsInFilter:
			argumentTypes: 'varbool';
		defineFunction: #get_CubeFieldSubType:
			argumentTypes: 'sdword*';
		defineFunction: #get_AllItemsVisible:
			argumentTypes: 'varbool*';
		defineFunction: #ClearManualFilter;
		defineFunction: #CreatePivotFields;
		defineFunction: #get_CurrentPageName:
			argumentTypes: 'bstr*';
		defineFunction: #put_CurrentPageName:
			argumentTypes: 'bstr';
		defineFunction: #get_IsDate:
			argumentTypes: 'varbool*';
		defineFunction: #get_Caption:
			argumentTypes: 'bstr*';
		defineFunction: #put_Caption:
			argumentTypes: 'bstr'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelCubeField initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelCubeField class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelCubeField class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

