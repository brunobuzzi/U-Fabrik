"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelConditionValue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelConditionValue guid: (IID fromString: '{00024492-0000-0000-C000-000000000046}')!
ExcelConditionValue comment: '<ExcelConditionValue> is a wrapper class generated for the dispatch interface ''Excel.ConditionValue'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024492-0000-0000-C000-000000000046), 
	helpcontext(0x00020128)
]
dispinterface ConditionValue {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000062d), helpcontext(0x0001062d)]
		void Modify(
			[in]XlConditionValueTypes newtype,
			[in, optional]VARIANT newvalue);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		XlConditionValueTypes Type();
[id(0x00000006), propget, helpcontext(0x00010006)]
		VARIANT Value();
};
'!
!ExcelConditionValue categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelConditionValue methodsFor!

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

modify: newtype
	"Invoke the Modify() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 modify: newtype
		 newvalue: VARIANT unspecified!

modify: newtype newvalue: newvalue
	"Invoke the Modify() method of the COM object."

	(self invokeId: 1581 with: newtype with: newvalue)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		XlConditionValueTypes Type"

	^(self getPropertyId: 108)
!

value
	"Answer the <variant> value of the 'Value' property of the receiver.
		VARIANT Value"

	^(self getPropertyId: 6)
! !
!ExcelConditionValue categoriesFor: #application!**auto generated**!properties!public! !
!ExcelConditionValue categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelConditionValue categoriesFor: #modify:!**auto generated**!methods!public! !
!ExcelConditionValue categoriesFor: #modify:newvalue:!**auto generated**!methods!public! !
!ExcelConditionValue categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelConditionValue categoriesFor: #type!**auto generated**!properties!public! !
!ExcelConditionValue categoriesFor: #value!**auto generated**!properties!public! !

!ExcelConditionValue class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelConditionValue initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelConditionValue class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

