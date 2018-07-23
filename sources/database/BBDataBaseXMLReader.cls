"Filed out from Dolphin Smalltalk 7"!

DataBaseObject subclass: #BBDataBaseXMLReader
	instanceVariableNames: 'xmlDocument databaseModel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBDataBaseXMLReader guid: (GUID fromString: '{fe0319a3-4d94-4df1-ad56-844c7e23551c}')!
BBDataBaseXMLReader comment: ''!
!BBDataBaseXMLReader categoriesForClass!Unclassified! !
!BBDataBaseXMLReader methodsFor!

createDataBaseStructure
!

databaseModel
	^databaseModel!

databaseModel: anObject
	databaseModel := anObject!

initialize

	super initialize.

	xmlDocument := IXMLDOMDocument new.!

newFrom: aString 

	xmlDocument := IXMLDOMDocument new loadText: aString.!

xmlDocument
	^xmlDocument!

xmlDocument: anObject
	xmlDocument := anObject! !
!BBDataBaseXMLReader categoriesFor: #createDataBaseStructure!public! !
!BBDataBaseXMLReader categoriesFor: #databaseModel!accessing!private! !
!BBDataBaseXMLReader categoriesFor: #databaseModel:!accessing!private! !
!BBDataBaseXMLReader categoriesFor: #initialize!public! !
!BBDataBaseXMLReader categoriesFor: #newFrom:!public! !
!BBDataBaseXMLReader categoriesFor: #xmlDocument!accessing!private! !
!BBDataBaseXMLReader categoriesFor: #xmlDocument:!accessing!private! !

!BBDataBaseXMLReader class methodsFor!

exampleFile

	^'<?xml version=''1.0''  ?>
<results>
	<row>
		<TABLE_NAME><!![CDATA[BPRUEBA]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[BPRUEBA_ID]]></COLUMN_NAME>
		<Type><!![CDATA[Number(22)]]></Type>
		<Nullable><!![CDATA[N]]></Nullable>
		<PK_Constraint_Name><!![CDATA[BPRUEBA_PK]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[BPRUEBA_ID, OTRO1]]></PK_Columns>
		<Status><!![CDATA[Enabled]]></Status>
		<FK_Constraint_Name><!![CDATA[]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[]]></FK_Columns>
		<FK_Related_Table><!![CDATA[]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[BPRUEBA]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[OTRO1]]></COLUMN_NAME>
		<Type><!![CDATA[Number(22)]]></Type>
		<Nullable><!![CDATA[N]]></Nullable>
		<PK_Constraint_Name><!![CDATA[BPRUEBA_PK]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[BPRUEBA_ID, OTRO1]]></PK_Columns>
		<Status><!![CDATA[Enabled]]></Status>
		<FK_Constraint_Name><!![CDATA[]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[]]></FK_Columns>
		<FK_Related_Table><!![CDATA[]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[BPRUEBA]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[OTRO2]]></COLUMN_NAME>
		<Type><!![CDATA[Number(22)]]></Type>
		<Nullable><!![CDATA[Y]]></Nullable>
		<PK_Constraint_Name><!![CDATA[BPRUEBA_PK]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[BPRUEBA_ID, OTRO1]]></PK_Columns>
		<Status><!![CDATA[Enabled]]></Status>
		<FK_Constraint_Name><!![CDATA[]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[]]></FK_Columns>
		<FK_Related_Table><!![CDATA[]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[APRUEBA]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[APRUEBA_ID]]></COLUMN_NAME>
		<Type><!![CDATA[Number(22)]]></Type>
		<Nullable><!![CDATA[N]]></Nullable>
		<PK_Constraint_Name><!![CDATA[APRUEBA_PK]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[APRUEBA_ID]]></PK_Columns>
		<Status><!![CDATA[Enabled]]></Status>
		<FK_Constraint_Name><!![CDATA[]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[]]></FK_Columns>
		<FK_Related_Table><!![CDATA[]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[APRUEBA]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[BPRUEBA_ID]]></COLUMN_NAME>
		<Type><!![CDATA[Number(22)]]></Type>
		<Nullable><!![CDATA[Y]]></Nullable>
		<PK_Constraint_Name><!![CDATA[APRUEBA_PK]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[APRUEBA_ID]]></PK_Columns>
		<Status><!![CDATA[Enabled]]></Status>
		<FK_Constraint_Name><!![CDATA[]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[]]></FK_Columns>
		<FK_Related_Table><!![CDATA[]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[CPRUEBA]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[CPRUEBA_ID]]></COLUMN_NAME>
		<Type><!![CDATA[Number(22)]]></Type>
		<Nullable><!![CDATA[Y]]></Nullable>
		<PK_Constraint_Name><!![CDATA[]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[]]></PK_Columns>
		<Status><!![CDATA[]]></Status>
		<FK_Constraint_Name><!![CDATA[CPRUEBA_APRUEBA_FK1]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[APRUEBA_ID]]></FK_Columns>
		<FK_Related_Table><!![CDATA[APRUEBA]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[APRUEBA_PK]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[CPRUEBA]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[APRUEBA_ID]]></COLUMN_NAME>
		<Type><!![CDATA[Number(22)]]></Type>
		<Nullable><!![CDATA[Y]]></Nullable>
		<PK_Constraint_Name><!![CDATA[]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[]]></PK_Columns>
		<Status><!![CDATA[]]></Status>
		<FK_Constraint_Name><!![CDATA[CPRUEBA_APRUEBA_FK1]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[APRUEBA_ID]]></FK_Columns>
		<FK_Related_Table><!![CDATA[APRUEBA]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[APRUEBA_PK]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[CPRUEBA]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[BPRUEBA_ID]]></COLUMN_NAME>
		<Type><!![CDATA[Varchar2(20)]]></Type>
		<Nullable><!![CDATA[Y]]></Nullable>
		<PK_Constraint_Name><!![CDATA[]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[]]></PK_Columns>
		<Status><!![CDATA[]]></Status>
		<FK_Constraint_Name><!![CDATA[CPRUEBA_APRUEBA_FK1]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[APRUEBA_ID]]></FK_Columns>
		<FK_Related_Table><!![CDATA[APRUEBA]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[APRUEBA_PK]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[CPRUEBA]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[OTRO1]]></COLUMN_NAME>
		<Type><!![CDATA[Number(22)]]></Type>
		<Nullable><!![CDATA[Y]]></Nullable>
		<PK_Constraint_Name><!![CDATA[]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[]]></PK_Columns>
		<Status><!![CDATA[]]></Status>
		<FK_Constraint_Name><!![CDATA[CPRUEBA_APRUEBA_FK1]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[APRUEBA_ID]]></FK_Columns>
		<FK_Related_Table><!![CDATA[APRUEBA]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[APRUEBA_PK]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[SGORDA_CONFIG_RELCION]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[TABLA_ORIGEN]]></COLUMN_NAME>
		<Type><!![CDATA[Varchar2(50)]]></Type>
		<Nullable><!![CDATA[Y]]></Nullable>
		<PK_Constraint_Name><!![CDATA[]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[]]></PK_Columns>
		<Status><!![CDATA[]]></Status>
		<FK_Constraint_Name><!![CDATA[]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[]]></FK_Columns>
		<FK_Related_Table><!![CDATA[]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[SGORDA_CONFIG_RELCION]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[ATRIBUTOS_ORIGEN_FK]]></COLUMN_NAME>
		<Type><!![CDATA[Varchar2(255)]]></Type>
		<Nullable><!![CDATA[Y]]></Nullable>
		<PK_Constraint_Name><!![CDATA[]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[]]></PK_Columns>
		<Status><!![CDATA[]]></Status>
		<FK_Constraint_Name><!![CDATA[]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[]]></FK_Columns>
		<FK_Related_Table><!![CDATA[]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[SGORDA_CONFIG_RELCION]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[TABLA_DESTINO]]></COLUMN_NAME>
		<Type><!![CDATA[Varchar2(50)]]></Type>
		<Nullable><!![CDATA[Y]]></Nullable>
		<PK_Constraint_Name><!![CDATA[]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[]]></PK_Columns>
		<Status><!![CDATA[]]></Status>
		<FK_Constraint_Name><!![CDATA[]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[]]></FK_Columns>
		<FK_Related_Table><!![CDATA[]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[SGORDA_CONFIG_RELCION]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[ATRIBUTOS_DESTINO_FK]]></COLUMN_NAME>
		<Type><!![CDATA[Varchar2(255)]]></Type>
		<Nullable><!![CDATA[Y]]></Nullable>
		<PK_Constraint_Name><!![CDATA[]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[]]></PK_Columns>
		<Status><!![CDATA[]]></Status>
		<FK_Constraint_Name><!![CDATA[]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[]]></FK_Columns>
		<FK_Related_Table><!![CDATA[]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[ABOGADOS]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[COLUMN1]]></COLUMN_NAME>
		<Type><!![CDATA[Varchar2(20)]]></Type>
		<Nullable><!![CDATA[Y]]></Nullable>
		<PK_Constraint_Name><!![CDATA[]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[]]></PK_Columns>
		<Status><!![CDATA[]]></Status>
		<FK_Constraint_Name><!![CDATA[]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[]]></FK_Columns>
		<FK_Related_Table><!![CDATA[]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[]]></FK_Related_Constraint>
	</row>
	<row>
		<TABLE_NAME><!![CDATA[SGORDA_RELACION]]></TABLE_NAME>
		<COLUMN_NAME><!![CDATA[COLUMN1]]></COLUMN_NAME>
		<Type><!![CDATA[Varchar2(20)]]></Type>
		<Nullable><!![CDATA[Y]]></Nullable>
		<PK_Constraint_Name><!![CDATA[]]></PK_Constraint_Name>
		<PK_Columns><!![CDATA[]]></PK_Columns>
		<Status><!![CDATA[]]></Status>
		<FK_Constraint_Name><!![CDATA[]]></FK_Constraint_Name>
		<FK_Columns><!![CDATA[]]></FK_Columns>
		<FK_Related_Table><!![CDATA[]]></FK_Related_Table>
		<FK_Related_Constraint><!![CDATA[]]></FK_Related_Constraint>
	</row>
</results>'!

newForExample
	^self newFrom: self exampleFile!

newFrom: xmlString

	^super new initialize
		newFrom: xmlString;
		createDataBaseStructure.!

readContentsFromFile: pathFile 
	| file contents |

	file := FileStream read: pathFile text: true.
	contents := file contents.
	file close.
	^contents!

readFromFile: pathFile 

	^self newFrom: (self readContentsFromFile: pathFile)! !
!BBDataBaseXMLReader class categoriesFor: #exampleFile!public! !
!BBDataBaseXMLReader class categoriesFor: #newForExample!public! !
!BBDataBaseXMLReader class categoriesFor: #newFrom:!public! !
!BBDataBaseXMLReader class categoriesFor: #readContentsFromFile:!public! !
!BBDataBaseXMLReader class categoriesFor: #readFromFile:!public! !

