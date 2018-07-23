"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelAllowEditRange
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelAllowEditRange guid: (IID fromString: '{0002446B-0000-0000-C000-000000000046}')!
ExcelAllowEditRange comment: '<ExcelAllowEditRange> is a wrapper class generated for the dispatch interface ''Excel.AllowEditRange'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002446B-0000-0000-C000-000000000046), 
	helpcontext(0x00020101)
]
dispinterface AllowEditRange {
	properties:
	methods:
[id(0x000000c7), propget, helpcontext(0x000100c7)]
		BSTR Title();
[id(0x000000c7), propput, helpcontext(0x000100c7)]
		void Title(
			[in]BSTR arg1);
[id(0x000000c5), propget, helpcontext(0x000100c5)]
		Range* Range();
[id(0x000000c5), propputref, helpcontext(0x000100c5)]
		void Range(
			[in]Range* arg1);
[id(0x000008bd), helpcontext(0x000108bd)]
		void ChangePassword(
			[in]BSTR Password);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x0000011d), helpcontext(0x0001011d)]
		void Unprotect(
			[in, optional]VARIANT Password);
[id(0x000008be), propget, helpcontext(0x000108be)]
		UserAccessList* Users();
};
'!
!ExcelAllowEditRange categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelAllowEditRange methodsFor!

changePassword: password
	"Invoke the ChangePassword() method of the COM object."

	(self invokeId: 2237 with: password)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver.
		Range* Range"

	^ExcelRange attachInterface: (self getPropertyId: 197)
!

setRange: arg1
	"Set the 'Range' property of the receiver to the <ExcelRange*> value of the argument.
		void Range"

	self setPropertyId: 197 value: arg1
!

title
	"Answer the <bstr> value of the 'Title' property of the receiver.
		BSTR Title"

	^(self getPropertyId: 199)
!

title: arg1
	"Set the 'Title' property of the receiver to the <bstr> value of the argument.
		void Title"

	self setPropertyId: 199 value: arg1
!

unprotect
	"Invoke the Unprotect() method of the COM object.
	Default values are passed for all optional parameters."

	self unprotect: VARIANT unspecified!

unprotect: password
	"Invoke the Unprotect() method of the COM object."

	(self invokeId: 285 with: password)
!

users
	"Answer the <ExcelUserAccessList> value of the 'Users' property of the receiver.
		UserAccessList* Users"

	^ExcelUserAccessList attachInterface: (self getPropertyId: 2238)
! !
!ExcelAllowEditRange categoriesFor: #changePassword:!**auto generated**!methods!public! !
!ExcelAllowEditRange categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelAllowEditRange categoriesFor: #range!**auto generated**!properties!public! !
!ExcelAllowEditRange categoriesFor: #setRange:!**auto generated**!properties!public! !
!ExcelAllowEditRange categoriesFor: #title!**auto generated**!properties!public! !
!ExcelAllowEditRange categoriesFor: #title:!**auto generated**!properties!public! !
!ExcelAllowEditRange categoriesFor: #unprotect!**auto generated**!methods!public! !
!ExcelAllowEditRange categoriesFor: #unprotect:!**auto generated**!methods!public! !
!ExcelAllowEditRange categoriesFor: #users!**auto generated**!properties!public! !

!ExcelAllowEditRange class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelAllowEditRange initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelAllowEditRange class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

