"Filed out from Dolphin Smalltalk 7"!

BBDataBaseXMLReader subclass: #GeneXusReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GeneXusReader guid: (GUID fromString: '{9115c6e9-0543-476b-9458-277862d342db}')!
GeneXusReader comment: ''!
!GeneXusReader categoriesForClass!Unclassified! !
!GeneXusReader methodsFor!

getAllTableNames

	^self getAllTableNodes collect: [:each | (each selectSingleNode: 'Table/TableName') innerXML]!

getAllTableNodes

	^xmlDocument selectNodes: '//TableList'

!

getDescriptionOfAttributeNamed: attributeName inTable: tableName
	| xmlNode |

	xmlNode := (self getNodeForAttributeNamed: attributeName inTable: tableName) ifNotNil: [:value | value] ifNil: [^''].
	xmlNode := (xmlNode selectSingleNode: 'AttriDesc') ifNotNil: [:value | value] 
		ifNil: [(xmlNode selectSingleNode: 'AttriSuper/Attribute/AttriDesc') 
			ifNotNil: [:value | value] ifNil: [(xmlNode selectSingleNode: 'Domain/Attribute/AttriDesc')] ] .
	^xmlNode innerXML


!

getNodeForAttribiteNamed: attributeName inTable: tableName
	| node |

	node := (self getNodeForTableNamed: tableName) ifNotNil: [:value | value] ifNil: [^nil].

	^(node selectNodes: 'TblAtts/TblAtt/Attribute') detect: [:each | ((each selectSingleNode: 'AttriName') innerXML) = attributeName] ifNone: [nil]
!

getNodeForAttributeNamed: attributeName inTable: tableName
	| node |

	node := (self getNodeForTableNamed: tableName) ifNotNil: [:value | value] ifNil: [^nil].

	^(node selectNodes: 'TblAtts/TblAtt/Attribute') detect: [:each | ((each selectSingleNode: 'AttriName') innerXML asUppercase) = attributeName asUppercase] ifNone: [nil]
!

getNodeForTableNamed: aString 

	^self getAllTableNodes detect: [:each | (each selectSingleNode: 'Table/TableName') innerXML asUppercase = aString asUppercase] ifNone: [nil]
!

setAttributeDescriptionTo: aBBDataBaseModel 
	"The receiver set the description of each attribute in <aBBDataBaseModel>"

	aBBDataBaseModel allAttributes do: [:each | | desc |
		desc := self getDescriptionOfAttributeNamed: each name inTable: each table name.
		each description: desc].!

setTableDescriptionTo: aBBDataBaseModel 
	"The receiver set the description of each table in <aBBDataBaseModel>"

	aBBDataBaseModel tables do: [:each | | desc node |
		node := self getNodeForTableNamed: each name.
		desc := node ifNil: [''] ifNotNil: [:value | (value selectSingleNode: 'Table/TableDesc') innerXML].
		each description: desc].! !
!GeneXusReader categoriesFor: #getAllTableNames!public! !
!GeneXusReader categoriesFor: #getAllTableNodes!public! !
!GeneXusReader categoriesFor: #getDescriptionOfAttributeNamed:inTable:!public! !
!GeneXusReader categoriesFor: #getNodeForAttribiteNamed:inTable:!public! !
!GeneXusReader categoriesFor: #getNodeForAttributeNamed:inTable:!public! !
!GeneXusReader categoriesFor: #getNodeForTableNamed:!public! !
!GeneXusReader categoriesFor: #setAttributeDescriptionTo:!public! !
!GeneXusReader categoriesFor: #setTableDescriptionTo:!public! !

