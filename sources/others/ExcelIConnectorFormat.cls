"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIConnectorFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIConnectorFormat guid: (IID fromString: '{0002443E-0001-0000-C000-000000000046}')!
ExcelIConnectorFormat comment: '<ExcelIConnectorFormat> is a wrapper class for the COM interface ''Excel.IConnectorFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002443E-0001-0000-C000-000000000046), 
	helpcontext(0x000200d4), 
	hidden
]
interface IConnectorFormat : IDispatch
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
	[id(0x000006d6), helpcontext(0x000106d6)]
	HRESULT __stdcall BeginConnect(
		[in]Shape* ConnectedShape,
		[in]long ConnectionSite);
	[id(0x000006d9), helpcontext(0x000106d9)]
	HRESULT __stdcall BeginDisconnect();
	[id(0x000006da), helpcontext(0x000106da)]
	HRESULT __stdcall EndConnect(
		[in]Shape* ConnectedShape,
		[in]long ConnectionSite);
	[id(0x000006db), helpcontext(0x000106db)]
	HRESULT __stdcall EndDisconnect();
	[id(0x000006dc), propget, helpcontext(0x000106dc)]
	HRESULT __stdcall BeginConnected(
		[out, retval]MsoTriState* RHS);
	[id(0x000006dd), propget, helpcontext(0x000106dd)]
	HRESULT __stdcall BeginConnectedShape(
		[out, retval]Shape** RHS);
	[id(0x000006de), propget, helpcontext(0x000106de)]
	HRESULT __stdcall BeginConnectionSite(
		[out, retval]long* RHS);
	[id(0x000006df), propget, helpcontext(0x000106df)]
	HRESULT __stdcall EndConnected(
		[out, retval]MsoTriState* RHS);
	[id(0x000006e0), propget, helpcontext(0x000106e0)]
	HRESULT __stdcall EndConnectedShape(
		[out, retval]Shape** RHS);
	[id(0x000006e1), propget, helpcontext(0x000106e1)]
	HRESULT __stdcall EndConnectionSite(
		[out, retval]long* RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]MsoConnectorType* RHS);
	[id(0x0000006c), propput, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[in]MsoConnectorType RHS);
};
'!
!ExcelIConnectorFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIConnectorFormat methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

beginConnect: connectedShape connectionSite: connectionSite
	"Invoke the BeginConnect() method of the COM object."

	^self
		BeginConnect: connectedShape
		connectionSite: connectionSite
!

BeginConnect: connectedShape connectionSite: connectionSite
	"Private - Invoke the BeginConnect() method of the COM object.

		HRESULT __stdcall BeginConnect(
			[in]Shape* ConnectedShape,
			[in]long ConnectionSite);"

	<virtual stdcall: hresult 11 ExcelShape* sdword>
	^self invalidCall!

beginConnected
	"Answer the <sdword> value of the 'BeginConnected' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BeginConnected: answer.
	^answer asObject
!

beginConnectedShape
	"Answer the <ExcelShape> value of the 'BeginConnectedShape' property of the receiver."

	| answer |
	answer := ExcelShape newPointer.
	self get_BeginConnectedShape: answer.
	^answer asObject
!

beginConnectionSite
	"Answer the <sdword> value of the 'BeginConnectionSite' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BeginConnectionSite: answer.
	^answer asObject
!

beginDisconnect
	"Invoke the BeginDisconnect() method of the COM object."

	^self BeginDisconnect
!

BeginDisconnect
	"Private - Invoke the BeginDisconnect() method of the COM object.

		HRESULT __stdcall BeginDisconnect();"

	<virtual stdcall: hresult 12>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

endConnect: connectedShape connectionSite: connectionSite
	"Invoke the EndConnect() method of the COM object."

	^self
		EndConnect: connectedShape
		connectionSite: connectionSite
!

EndConnect: connectedShape connectionSite: connectionSite
	"Private - Invoke the EndConnect() method of the COM object.

		HRESULT __stdcall EndConnect(
			[in]Shape* ConnectedShape,
			[in]long ConnectionSite);"

	<virtual stdcall: hresult 13 ExcelShape* sdword>
	^self invalidCall!

endConnected
	"Answer the <sdword> value of the 'EndConnected' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_EndConnected: answer.
	^answer asObject
!

endConnectedShape
	"Answer the <ExcelShape> value of the 'EndConnectedShape' property of the receiver."

	| answer |
	answer := ExcelShape newPointer.
	self get_EndConnectedShape: answer.
	^answer asObject
!

endConnectionSite
	"Answer the <sdword> value of the 'EndConnectionSite' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_EndConnectionSite: answer.
	^answer asObject
!

endDisconnect
	"Invoke the EndDisconnect() method of the COM object."

	^self EndDisconnect
!

EndDisconnect
	"Private - Invoke the EndDisconnect() method of the COM object.

		HRESULT __stdcall EndDisconnect();"

	<virtual stdcall: hresult 14>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_BeginConnected: rhs
	"Private - Get the value of the 'BeginConnected' property of the receiver.

		HRESULT __stdcall BeginConnected(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_BeginConnectedShape: rhs
	"Private - Get the value of the 'BeginConnectedShape' property of the receiver.

		HRESULT __stdcall BeginConnectedShape(
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 16 ExcelShape**>
	^self invalidCall!

get_BeginConnectionSite: rhs
	"Private - Get the value of the 'BeginConnectionSite' property of the receiver.

		HRESULT __stdcall BeginConnectionSite(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_EndConnected: rhs
	"Private - Get the value of the 'EndConnected' property of the receiver.

		HRESULT __stdcall EndConnected(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_EndConnectedShape: rhs
	"Private - Get the value of the 'EndConnectedShape' property of the receiver.

		HRESULT __stdcall EndConnectedShape(
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 19 ExcelShape**>
	^self invalidCall!

get_EndConnectionSite: rhs
	"Private - Get the value of the 'EndConnectionSite' property of the receiver.

		HRESULT __stdcall EndConnectionSite(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 20 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]MsoConnectorType* RHS);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Type: rhs
	"Private - Set the value of the 'Type' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Type(
			[in]MsoConnectorType RHS);"

	<virtual stdcall: hresult 22 sdword>
	^self invalidCall!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

type: rhs
	"Set the 'Type' property of the receiver to the <sdword> value of the argument."

	self put_Type: rhs
! !
!ExcelIConnectorFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIConnectorFormat categoriesFor: #beginConnect:connectionSite:!**auto generated**!methods!public! !
!ExcelIConnectorFormat categoriesFor: #BeginConnect:connectionSite:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #beginConnected!**auto generated**!properties!public! !
!ExcelIConnectorFormat categoriesFor: #beginConnectedShape!**auto generated**!properties!public! !
!ExcelIConnectorFormat categoriesFor: #beginConnectionSite!**auto generated**!properties!public! !
!ExcelIConnectorFormat categoriesFor: #beginDisconnect!**auto generated**!methods!public! !
!ExcelIConnectorFormat categoriesFor: #BeginDisconnect!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIConnectorFormat categoriesFor: #endConnect:connectionSite:!**auto generated**!methods!public! !
!ExcelIConnectorFormat categoriesFor: #EndConnect:connectionSite:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #endConnected!**auto generated**!properties!public! !
!ExcelIConnectorFormat categoriesFor: #endConnectedShape!**auto generated**!properties!public! !
!ExcelIConnectorFormat categoriesFor: #endConnectionSite!**auto generated**!properties!public! !
!ExcelIConnectorFormat categoriesFor: #endDisconnect!**auto generated**!methods!public! !
!ExcelIConnectorFormat categoriesFor: #EndDisconnect!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #get_BeginConnected:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #get_BeginConnectedShape:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #get_BeginConnectionSite:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #get_EndConnected:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #get_EndConnectedShape:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #get_EndConnectionSite:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIConnectorFormat categoriesFor: #put_Type:!**auto generated**!COM Interfaces-IConnectorFormat!private! !
!ExcelIConnectorFormat categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIConnectorFormat categoriesFor: #type:!**auto generated**!properties!public! !

!ExcelIConnectorFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IConnectorFormat'
		ExcelIConnectorFormat defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #BeginConnect:connectionSite:
			argumentTypes: 'ExcelShape* sdword';
		defineFunction: #BeginDisconnect;
		defineFunction: #EndConnect:connectionSite:
			argumentTypes: 'ExcelShape* sdword';
		defineFunction: #EndDisconnect;
		defineFunction: #get_BeginConnected:
			argumentTypes: 'sdword*';
		defineFunction: #get_BeginConnectedShape:
			argumentTypes: 'ExcelShape**';
		defineFunction: #get_BeginConnectionSite:
			argumentTypes: 'sdword*';
		defineFunction: #get_EndConnected:
			argumentTypes: 'sdword*';
		defineFunction: #get_EndConnectedShape:
			argumentTypes: 'ExcelShape**';
		defineFunction: #get_EndConnectionSite:
			argumentTypes: 'sdword*';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #put_Type:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIConnectorFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIConnectorFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIConnectorFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

