"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelConnectorFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelConnectorFormat guid: (IID fromString: '{0002443E-0000-0000-C000-000000000046}')!
ExcelConnectorFormat comment: '<ExcelConnectorFormat> is a wrapper class generated for the dispatch interface ''Excel.ConnectorFormat'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002443E-0000-0000-C000-000000000046), 
	helpcontext(0x000200d4)
]
dispinterface ConnectorFormat {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000006d6), helpcontext(0x000106d6)]
		void BeginConnect(
			[in]Shape* ConnectedShape,
			[in]long ConnectionSite);
[id(0x000006d9), helpcontext(0x000106d9)]
		void BeginDisconnect();
[id(0x000006da), helpcontext(0x000106da)]
		void EndConnect(
			[in]Shape* ConnectedShape,
			[in]long ConnectionSite);
[id(0x000006db), helpcontext(0x000106db)]
		void EndDisconnect();
[id(0x000006dc), propget, helpcontext(0x000106dc)]
		MsoTriState BeginConnected();
[id(0x000006dd), propget, helpcontext(0x000106dd)]
		Shape* BeginConnectedShape();
[id(0x000006de), propget, helpcontext(0x000106de)]
		long BeginConnectionSite();
[id(0x000006df), propget, helpcontext(0x000106df)]
		MsoTriState EndConnected();
[id(0x000006e0), propget, helpcontext(0x000106e0)]
		Shape* EndConnectedShape();
[id(0x000006e1), propget, helpcontext(0x000106e1)]
		long EndConnectionSite();
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		MsoConnectorType Type();
[id(0x0000006c), propput, helpcontext(0x0001006c)]
		void Type(
			[in]MsoConnectorType arg1);
};
'!
!ExcelConnectorFormat categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelConnectorFormat methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

beginConnect: connectedShape connectionSite: connectionSite
	"Invoke the BeginConnect() method of the COM object."

	(self invokeId: 1750 with: connectedShape with: connectionSite)
!

beginConnected
	"Answer the <sdword> value of the 'BeginConnected' property of the receiver.
		MsoTriState BeginConnected"

	^(self getPropertyId: 1756)
!

beginConnectedShape
	"Answer the <ExcelShape> value of the 'BeginConnectedShape' property of the receiver.
		Shape* BeginConnectedShape"

	^ExcelShape attachInterface: (self getPropertyId: 1757)
!

beginConnectionSite
	"Answer the <sdword> value of the 'BeginConnectionSite' property of the receiver.
		long BeginConnectionSite"

	^(self getPropertyId: 1758)
!

beginDisconnect
	"Invoke the BeginDisconnect() method of the COM object."

	(self invokeId: 1753)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

endConnect: connectedShape connectionSite: connectionSite
	"Invoke the EndConnect() method of the COM object."

	(self invokeId: 1754 with: connectedShape with: connectionSite)
!

endConnected
	"Answer the <sdword> value of the 'EndConnected' property of the receiver.
		MsoTriState EndConnected"

	^(self getPropertyId: 1759)
!

endConnectedShape
	"Answer the <ExcelShape> value of the 'EndConnectedShape' property of the receiver.
		Shape* EndConnectedShape"

	^ExcelShape attachInterface: (self getPropertyId: 1760)
!

endConnectionSite
	"Answer the <sdword> value of the 'EndConnectionSite' property of the receiver.
		long EndConnectionSite"

	^(self getPropertyId: 1761)
!

endDisconnect
	"Invoke the EndDisconnect() method of the COM object."

	(self invokeId: 1755)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		MsoConnectorType Type"

	^(self getPropertyId: 108)
!

type: arg1
	"Set the 'Type' property of the receiver to the <sdword> value of the argument.
		void Type"

	self setPropertyId: 108 value: arg1
! !
!ExcelConnectorFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelConnectorFormat categoriesFor: #beginConnect:connectionSite:!**auto generated**!methods!public! !
!ExcelConnectorFormat categoriesFor: #beginConnected!**auto generated**!properties!public! !
!ExcelConnectorFormat categoriesFor: #beginConnectedShape!**auto generated**!properties!public! !
!ExcelConnectorFormat categoriesFor: #beginConnectionSite!**auto generated**!properties!public! !
!ExcelConnectorFormat categoriesFor: #beginDisconnect!**auto generated**!methods!public! !
!ExcelConnectorFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelConnectorFormat categoriesFor: #endConnect:connectionSite:!**auto generated**!methods!public! !
!ExcelConnectorFormat categoriesFor: #endConnected!**auto generated**!properties!public! !
!ExcelConnectorFormat categoriesFor: #endConnectedShape!**auto generated**!properties!public! !
!ExcelConnectorFormat categoriesFor: #endConnectionSite!**auto generated**!properties!public! !
!ExcelConnectorFormat categoriesFor: #endDisconnect!**auto generated**!methods!public! !
!ExcelConnectorFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelConnectorFormat categoriesFor: #type!**auto generated**!properties!public! !
!ExcelConnectorFormat categoriesFor: #type:!**auto generated**!properties!public! !

!ExcelConnectorFormat class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelConnectorFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelConnectorFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

