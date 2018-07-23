"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSortField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSortField guid: (IID fromString: '{000244A9-0000-0000-C000-000000000046}')!
ExcelSortField comment: '<ExcelSortField> is a wrapper class generated for the dispatch interface ''Excel.SortField'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244A9-0000-0000-C000-000000000046), 
	helpcontext(0x0002013f)
]
dispinterface SortField {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000ab5), propget, helpcontext(0x00010ab5)]
		XlSortOn SortOn();
[id(0x00000ab5), propput, helpcontext(0x00010ab5)]
		void SortOn(
			[in]XlSortOn arg1);
[id(0x00000ab6), propget, helpcontext(0x00010ab6)]
		IDispatch* SortOnValue();
[id(0x0000009b), propget, helpcontext(0x0001009b)]
		Range* Key();
[id(0x000000c0), propget, helpcontext(0x000100c0)]
		XlSortOrder Order();
[id(0x000000c0), propput, helpcontext(0x000100c0)]
		void Order(
			[in]XlSortOrder arg1);
[id(0x00000ab7), propget, helpcontext(0x00010ab7)]
		VARIANT CustomOrder();
[id(0x00000ab7), propput, helpcontext(0x00010ab7)]
		void CustomOrder(
			[in]VARIANT arg1);
[id(0x00000ab8), propget, helpcontext(0x00010ab8)]
		XlSortDataOption DataOption();
[id(0x00000ab8), propput, helpcontext(0x00010ab8)]
		void DataOption(
			[in]XlSortDataOption arg1);
[id(0x000003d9), propget, helpcontext(0x000103d9)]
		long Priority();
[id(0x000003d9), propput, helpcontext(0x000103d9)]
		void Priority(
			[in]long arg1);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000ab9), helpcontext(0x00010ab9)]
		void ModifyKey(
			[in]Range* Key);
[id(0x00000aba), helpcontext(0x00010aba)]
		void SetIcon(
			[in]Icon* Icon);
};
'!
!ExcelSortField categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSortField methodsFor!

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

customOrder
	"Answer the <variant> value of the 'CustomOrder' property of the receiver.
		VARIANT CustomOrder"

	^(self getPropertyId: 2743)
!

customOrder: arg1
	"Set the 'CustomOrder' property of the receiver to the <variant> value of the argument.
		void CustomOrder"

	self setPropertyId: 2743 value: arg1
!

dataOption
	"Answer the <sdword> value of the 'DataOption' property of the receiver.
		XlSortDataOption DataOption"

	^(self getPropertyId: 2744)
!

dataOption: arg1
	"Set the 'DataOption' property of the receiver to the <sdword> value of the argument.
		void DataOption"

	self setPropertyId: 2744 value: arg1
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

key
	"Answer the <ExcelRange> value of the 'Key' property of the receiver.
		Range* Key"

	^ExcelRange attachInterface: (self getPropertyId: 155)
!

modifyKey: key
	"Invoke the ModifyKey() method of the COM object."

	(self invokeId: 2745 with: key)
!

order
	"Answer the <sdword> value of the 'Order' property of the receiver.
		XlSortOrder Order"

	^(self getPropertyId: 192)
!

order: arg1
	"Set the 'Order' property of the receiver to the <sdword> value of the argument.
		void Order"

	self setPropertyId: 192 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

priority
	"Answer the <sdword> value of the 'Priority' property of the receiver.
		long Priority"

	^(self getPropertyId: 985)
!

priority: arg1
	"Set the 'Priority' property of the receiver to the <sdword> value of the argument.
		void Priority"

	self setPropertyId: 985 value: arg1
!

setIcon: icon
	"Invoke the SetIcon() method of the COM object."

	(self invokeId: 2746 with: icon)
!

sortOn
	"Answer the <sdword> value of the 'SortOn' property of the receiver.
		XlSortOn SortOn"

	^(self getPropertyId: 2741)
!

sortOn: arg1
	"Set the 'SortOn' property of the receiver to the <sdword> value of the argument.
		void SortOn"

	self setPropertyId: 2741 value: arg1
!

sortOnValue
	"Answer the <IDispatch> value of the 'SortOnValue' property of the receiver.
		IDispatch* SortOnValue"

	^IDispatch attachInterface: (self getPropertyId: 2742)
! !
!ExcelSortField categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #customOrder!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #customOrder:!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #dataOption!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #dataOption:!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelSortField categoriesFor: #key!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #modifyKey:!**auto generated**!methods!public! !
!ExcelSortField categoriesFor: #order!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #order:!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #priority!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #priority:!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #setIcon:!**auto generated**!methods!public! !
!ExcelSortField categoriesFor: #sortOn!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #sortOn:!**auto generated**!properties!public! !
!ExcelSortField categoriesFor: #sortOnValue!**auto generated**!properties!public! !

!ExcelSortField class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSortField initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSortField class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

