"Filed out from Dolphin Smalltalk 7"!

BBDataBaseXMLReader subclass: #OracleXMLRowImport
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OracleXMLRowImport guid: (GUID fromString: '{40d49233-fc21-4447-8e8c-6ed9053bbf93}')!
OracleXMLRowImport comment: ''!
!OracleXMLRowImport categoriesForClass!Unclassified! !
!OracleXMLRowImport methodsFor!

generateActDemFrom: anBBDBTable
	| dbRows rows |

	dbRows := OrderedCollection new.
	rows := xmlDocument selectNodes: '//row'.

	rows do: [:each | | databaseRow field |
		databaseRow := BBDBRow for: anBBDBTable.
		field := each selectSingleNode: 'FICHA'.
		databaseRow  addValue: field text toField: 'FICHA'.
		field := each selectSingleNode: 'PARTE'.
		databaseRow  addValue: field text toField: 'PARTE'.
		field := each selectSingleNode: 'DOMRE'.
		databaseRow  addValue: field text toField: 'DOMRE'.
		field := each selectSingleNode: 'DOMCO'.
		databaseRow  addValue: field text toField: 'DOMCO'.
		field := each selectSingleNode: 'PRIAPEL'.
		databaseRow  addValue: field text toField: 'PRIAPEL'.
		field := each selectSingleNode: 'SEGAPEL'.
		databaseRow  addValue: field text toField: 'SEGAPEL'.
		field := each selectSingleNode: 'PRINOM'.
		databaseRow  addValue: field text toField: 'PRINOM'.
		field := each selectSingleNode: 'SEGNOM'.
		databaseRow  addValue: field text toField: 'SEGNOM'.
		field := each selectSingleNode: 'REP'.
		databaseRow  addValue: field text toField: 'REP'.
		field := each selectSingleNode: 'DOMRE2'.
		databaseRow  addValue: field text toField: 'DOMRE2'.
		field := each selectSingleNode: 'SDJPRIMARIOFILAID'.
		databaseRow  addValue: field text toField: 'SDJPRIMARIOFILAID'.
		dbRows add: databaseRow].

	^dbRows!

generateCaraEspFrom: anBBDBTable
	| dbRows rows |

	dbRows := OrderedCollection new.
	rows := xmlDocument selectNodes: '//row'.

	rows do: [:each | | databaseRow field |
		databaseRow := BBDBRow for: anBBDBTable.
		field := each selectSingleNode: 'ASUNTO1'.
		databaseRow  addValue: field text toField: 'ASUNTO1'.
		field := each selectSingleNode: 'ASUNTO2'.
		databaseRow  addValue: field text toField: 'ASUNTO2'.
		field := each selectSingleNode: 'ASUNTO3'.
		databaseRow  addValue: field text toField: 'ASUNTO3'.
		field := each selectSingleNode: 'CARA1'.
		databaseRow  addValue: field text toField: 'CARA1'.
		field := each selectSingleNode: 'CARA2'.
		databaseRow  addValue: field text toField: 'CARA2'.
		field := each selectSingleNode: 'CARA3'.
		databaseRow  addValue: field text toField: 'CARA3'.
		field := each selectSingleNode: 'CARA4'.
		databaseRow  addValue: field text toField: 'CARA4'.
		field := each selectSingleNode: 'FECHAING'.
		databaseRow  addValue: field text toField: 'FECHAING'.
		field := each selectSingleNode: 'FICHA'.
		databaseRow  addValue: field text toField: 'FICHA'.
		field := each selectSingleNode: 'SDJPRIMARIOFILAID'.
		databaseRow  addValue: field text toField: 'SDJPRIMARIOFILAID'.
		dbRows add: databaseRow].

	^dbRows!

generateCaratulaFrom: anBBDBTable
	| dbRows rows |

	dbRows := OrderedCollection new.
	rows := xmlDocument selectNodes: '//row'.

	rows do: [:each | | databaseRow field |
		databaseRow := BBDBRow for: anBBDBTable.
		field := each selectSingleNode: 'ASUNTO'.
		databaseRow  addValue: field text toField: 'ASUNTO'.
		field := each selectSingleNode: 'ASUNTO2'.
		databaseRow  addValue: field text toField: 'ASUNTO2'.
		field := each selectSingleNode: 'ASUNTO3'.
		databaseRow  addValue: field text toField: 'ASUNTO3'.
		field := each selectSingleNode: 'CARA1'.
		databaseRow  addValue: field text toField: 'CARA1'.
		field := each selectSingleNode: 'CARA2'.
		databaseRow  addValue: field text toField: 'CARA2'.
		field := each selectSingleNode: 'CARA3'.
		databaseRow  addValue: field text toField: 'CARA3'.
		field := each selectSingleNode: 'CARA4'.
		databaseRow  addValue: field text toField: 'CARA4'.
		field := each selectSingleNode: 'CARA5'.
		databaseRow  addValue: field text toField: 'CARA5'.
		field := each selectSingleNode: 'ESTADO'.
		databaseRow  addValue: field text toField: 'ESTADO'.
		field := each selectSingleNode: 'FECHAING'.
		databaseRow  addValue: field text toField: 'FECHAING'.
		field := each selectSingleNode: 'FICHA'.
		databaseRow  addValue: field text toField: 'FICHA'.
		field := each selectSingleNode: 'FICHANT'.
		databaseRow  addValue: field text toField: 'FICHANT'.
		field := each selectSingleNode: 'NROARCH'.
		databaseRow  addValue: field text toField: 'NROARCH'.
		field := each selectSingleNode: 'ORIGEN'.
		databaseRow  addValue: field text toField: 'ORIGEN'.
		field := each selectSingleNode: 'SEDID'.
		databaseRow  addValue: field text toField: 'SEDID'.
		field := each selectSingleNode: 'SDJPRIMARIOFILAID'.
		databaseRow  addValue: field text toField: 'SDJPRIMARIOFILAID'.
		dbRows add: databaseRow].

	^dbRows!

generateDecretosFrom: anBBDBTable
	| dbRows rows |

	dbRows := OrderedCollection new.
	rows := xmlDocument selectNodes: '//row'.

	rows do: [:each | | databaseRow field |
		databaseRow := BBDBRow for: anBBDBTable.
		field := each selectSingleNode: 'FICHA'.
		databaseRow  addValue: field text toField: 'FICHA'.
		field := each selectSingleNode: 'ORDEN'.
		databaseRow  addValue: field text toField: 'ORDEN'.
		field := each selectSingleNode: 'DECRETO'.
		databaseRow  addValue: field text toField: 'DECRETO'.
		field := each selectSingleNode: 'TEXTO'.
		databaseRow  addValue: field text toField: 'TEXTO'.
		field := each selectSingleNode: 'FECHA'.
		databaseRow  addValue: field text toField: 'FECHA'.
		field := each selectSingleNode: 'RESERVADO'.
		databaseRow  addValue: field text toField: 'RESERVADO'.
		field := each selectSingleNode: 'FECHAING'.
		databaseRow  addValue: field text toField: 'FECHAING'.
		field := each selectSingleNode: 'HORAING'.
		databaseRow  addValue: field text toField: 'HORAING'.
		field := each selectSingleNode: 'SDJPRIMARIOFILAID'.
		databaseRow  addValue: field text toField: 'SDJPRIMARIOFILAID'.
		dbRows add: databaseRow].

	^dbRows! !
!OracleXMLRowImport categoriesFor: #generateActDemFrom:!public! !
!OracleXMLRowImport categoriesFor: #generateCaraEspFrom:!public! !
!OracleXMLRowImport categoriesFor: #generateCaratulaFrom:!public! !
!OracleXMLRowImport categoriesFor: #generateDecretosFrom:!public! !

!OracleXMLRowImport class methodsFor!

icon

	^OracleXMLReader icon! !
!OracleXMLRowImport class categoriesFor: #icon!public! !

