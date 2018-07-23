"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelShapeNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelShapeNode guid: (IID fromString: '{000C0318-0000-0000-C000-000000000046}')!
ExcelShapeNode comment: '<ExcelShapeNode> is a wrapper class for the COM interface ''Excel.ShapeNode'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C0318-0000-0000-C000-000000000046), 
	helpcontext(0x0001b198), 
	nonextensible, 
	dual
]
interface ShapeNode : _IMsoDispObj
 {
	[id(0x00000001), propget, helpcontext(0x0001b199)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0x00000064), propget, helpcontext(0x0001b19b)]
	HRESULT __stdcall EditingType(
		[out, retval]MsoEditingType* EditingType);
	[id(0x00000065), propget, helpcontext(0x0001b19c)]
	HRESULT __stdcall Points(
		[out, retval]VARIANT* Points);
	[id(0x00000066), propget, helpcontext(0x0001b19d)]
	HRESULT __stdcall SegmentType(
		[out, retval]MsoSegmentType* SegmentType);
};
'!
!ExcelShapeNode categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelShapeNode methodsFor!

editingType
	"Answer the <sdword> value of the 'EditingType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_EditingType: answer.
	^answer asObject
!

get_EditingType: editingType
	"Private - Get the value of the 'EditingType' property of the receiver.

		HRESULT __stdcall EditingType(
			[out, retval]MsoEditingType* EditingType);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Points: points
	"Private - Get the value of the 'Points' property of the receiver.

		HRESULT __stdcall Points(
			[out, retval]VARIANT* Points);"

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall!

get_SegmentType: segmentType
	"Private - Get the value of the 'SegmentType' property of the receiver.

		HRESULT __stdcall SegmentType(
			[out, retval]MsoSegmentType* SegmentType);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

points
	"Answer the <variant> value of the 'Points' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Points: answer.
	^answer asObject
!

segmentType
	"Answer the <sdword> value of the 'SegmentType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SegmentType: answer.
	^answer asObject
! !
!ExcelShapeNode categoriesFor: #editingType!**auto generated**!properties!public! !
!ExcelShapeNode categoriesFor: #get_EditingType:!**auto generated**!COM Interfaces-ShapeNode!private! !
!ExcelShapeNode categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ShapeNode!private! !
!ExcelShapeNode categoriesFor: #get_Points:!**auto generated**!COM Interfaces-ShapeNode!private! !
!ExcelShapeNode categoriesFor: #get_SegmentType:!**auto generated**!COM Interfaces-ShapeNode!private! !
!ExcelShapeNode categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelShapeNode categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelShapeNode categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelShapeNode categoriesFor: #points!**auto generated**!properties!public! !
!ExcelShapeNode categoriesFor: #segmentType!**auto generated**!properties!public! !

!ExcelShapeNode class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ShapeNode'
		ExcelShapeNode defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_EditingType:
			argumentTypes: 'sdword*';
		defineFunction: #get_Points:
			argumentTypes: 'variant*';
		defineFunction: #get_SegmentType:
			argumentTypes: 'sdword*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelShapeNode initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelShapeNode class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelShapeNode class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

