"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelShapeNodes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelShapeNodes guid: (IID fromString: '{000C0319-0000-0000-C000-000000000046}')!
ExcelShapeNodes comment: '<ExcelShapeNodes> is a wrapper class for the COM interface ''Excel.ShapeNodes'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C0319-0000-0000-C000-000000000046), 
	helpcontext(0x0001b580), 
	nonextensible, 
	dual
]
interface ShapeNodes : _IMsoDispObj
 {
	[id(0x00000001), propget, helpcontext(0x0001b581)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0x00000002), propget, helpcontext(0x0001b582)]
	HRESULT __stdcall Count(
		[out, retval]int* Count);
	[id(0000000000), helpcontext(0x0001b583)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]ShapeNode** Item);
	[id(0xfffffffc), propget, helpcontext(0x0001b19c)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** _NewEnum);
	[id(0x0000000b), helpcontext(0x0001b587)]
	HRESULT __stdcall Delete(
		[in]int Index);
	[id(0x0000000c), helpcontext(0x0001b588)]
	HRESULT __stdcall Insert(
		[in]int Index,
		[in]MsoSegmentType SegmentType,
		[in]MsoEditingType EditingType,
		[in]float X1,
		[in]float Y1,
		[in, defaultvalue(0.0)]float X2,
		[in, defaultvalue(0.0)]float Y2,
		[in, defaultvalue(0.0)]float X3,
		[in, defaultvalue(0.0)]float Y3);
	[id(0x0000000d), helpcontext(0x0001b589)]
	HRESULT __stdcall SetEditingType(
		[in]int Index,
		[in]MsoEditingType EditingType);
	[id(0x0000000e), helpcontext(0x0001b58a)]
	HRESULT __stdcall SetPosition(
		[in]int Index,
		[in]float X1,
		[in]float Y1);
	[id(0x0000000f), helpcontext(0x0001b58b)]
	HRESULT __stdcall SetSegmentType(
		[in]int Index,
		[in]MsoSegmentType SegmentType);
};
'!
!ExcelShapeNodes categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelShapeNodes methodsFor!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

delete: index
	"Invoke the Delete() method of the COM object."

	^self Delete: index
!

Delete: index
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete(
			[in]int Index);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

get__NewEnum: _newEnum
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** _NewEnum);"

	<virtual stdcall: hresult 13 IUnknown**>
	^self invalidCall!

get_Count: count
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]int* Count);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

insert: index segmentType: segmentType editingType: editingType x1: x1 y1: y1
	"Invoke the Insert() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 insert: index
		 segmentType: segmentType
		 editingType: editingType
		 x1: x1
		 y1: y1
		 x2: 0.0
		 y2: 0.0
		 x3: 0.0
		 y3: 0.0!

insert: index segmentType: segmentType editingType: editingType x1: x1 y1: y1 x2: x2 y2: y2 x3: x3 y3: y3
	"Invoke the Insert() method of the COM object."

	^self
		Insert: index
		segmentType: segmentType
		editingType: editingType
		x1: x1
		y1: y1
		x2: x2
		y2: y2
		x3: x3
		y3: y3
!

Insert: index segmentType: segmentType editingType: editingType x1: x1 y1: y1 x2: x2 y2: y2 x3: x3 y3: y3
	"Private - Invoke the Insert() method of the COM object.

		HRESULT __stdcall Insert(
			[in]int Index,
			[in]MsoSegmentType SegmentType,
			[in]MsoEditingType EditingType,
			[in]float X1,
			[in]float Y1,
			[in, defaultvalue(0.0)]float X2,
			[in, defaultvalue(0.0)]float Y2,
			[in, defaultvalue(0.0)]float X3,
			[in, defaultvalue(0.0)]float Y3);"

	<virtual stdcall: hresult 15 sdword sdword sdword float float float float float float>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelShapeNode> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelShapeNode newPointer.
	self
		Item: index asVariant
		item: answer.
	^answer asObject
!

Item: index item: item
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]ShapeNode** Item);"

	<virtual stdcall: hresult 12 variant ExcelShapeNode**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

setEditingType: index editingType: editingType
	"Invoke the SetEditingType() method of the COM object."

	^self
		SetEditingType: index
		editingType: editingType
!

SetEditingType: index editingType: editingType
	"Private - Invoke the SetEditingType() method of the COM object.

		HRESULT __stdcall SetEditingType(
			[in]int Index,
			[in]MsoEditingType EditingType);"

	<virtual stdcall: hresult 16 sdword sdword>
	^self invalidCall!

setPosition: index x1: x1 y1: y1
	"Invoke the SetPosition() method of the COM object."

	^self
		SetPosition: index
		x1: x1
		y1: y1
!

SetPosition: index x1: x1 y1: y1
	"Private - Invoke the SetPosition() method of the COM object.

		HRESULT __stdcall SetPosition(
			[in]int Index,
			[in]float X1,
			[in]float Y1);"

	<virtual stdcall: hresult 17 sdword float float>
	^self invalidCall!

setSegmentType: index segmentType: segmentType
	"Invoke the SetSegmentType() method of the COM object."

	^self
		SetSegmentType: index
		segmentType: segmentType
!

SetSegmentType: index segmentType: segmentType
	"Private - Invoke the SetSegmentType() method of the COM object.

		HRESULT __stdcall SetSegmentType(
			[in]int Index,
			[in]MsoSegmentType SegmentType);"

	<virtual stdcall: hresult 18 sdword sdword>
	^self invalidCall!

value: index
	"Set the 'Item' property of the receiver to the <ExcelShapeNode**> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self item: index
! !
!ExcelShapeNodes categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelShapeNodes categoriesFor: #count!**auto generated**!properties!public! !
!ExcelShapeNodes categoriesFor: #delete:!**auto generated**!methods!public! !
!ExcelShapeNodes categoriesFor: #Delete:!**auto generated**!COM Interfaces-ShapeNodes!private! !
!ExcelShapeNodes categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-ShapeNodes!private! !
!ExcelShapeNodes categoriesFor: #get_Count:!**auto generated**!COM Interfaces-ShapeNodes!private! !
!ExcelShapeNodes categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ShapeNodes!private! !
!ExcelShapeNodes categoriesFor: #insert:segmentType:editingType:x1:y1:!**auto generated**!methods!public! !
!ExcelShapeNodes categoriesFor: #insert:segmentType:editingType:x1:y1:x2:y2:x3:y3:!**auto generated**!methods!public! !
!ExcelShapeNodes categoriesFor: #Insert:segmentType:editingType:x1:y1:x2:y2:x3:y3:!**auto generated**!COM Interfaces-ShapeNodes!private! !
!ExcelShapeNodes categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelShapeNodes categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelShapeNodes categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelShapeNodes categoriesFor: #Item:item:!**auto generated**!COM Interfaces-ShapeNodes!private! !
!ExcelShapeNodes categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelShapeNodes categoriesFor: #setEditingType:editingType:!**auto generated**!methods!public! !
!ExcelShapeNodes categoriesFor: #SetEditingType:editingType:!**auto generated**!COM Interfaces-ShapeNodes!private! !
!ExcelShapeNodes categoriesFor: #setPosition:x1:y1:!**auto generated**!methods!public! !
!ExcelShapeNodes categoriesFor: #SetPosition:x1:y1:!**auto generated**!COM Interfaces-ShapeNodes!private! !
!ExcelShapeNodes categoriesFor: #setSegmentType:segmentType:!**auto generated**!methods!public! !
!ExcelShapeNodes categoriesFor: #SetSegmentType:segmentType:!**auto generated**!COM Interfaces-ShapeNodes!private! !
!ExcelShapeNodes categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelShapeNodes class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ShapeNodes'
		ExcelShapeNodes defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Item:item:
			argumentTypes: 'variant ExcelShapeNode**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #Delete:
			argumentTypes: 'sdword';
		defineFunction: #Insert:segmentType:editingType:x1:y1:x2:y2:x3:y3:
			argumentTypes: 'sdword sdword sdword float float float float float float';
		defineFunction: #SetEditingType:editingType:
			argumentTypes: 'sdword sdword';
		defineFunction: #SetPosition:x1:y1:
			argumentTypes: 'sdword float float';
		defineFunction: #SetSegmentType:segmentType:
			argumentTypes: 'sdword sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelShapeNodes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelShapeNodes class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelShapeNodes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

