"Filed out from Dolphin Smalltalk 7"!

DataBaseObject subclass: #BBDBTable
	instanceVariableNames: 'name attributes primaryKey foreignKeys databaseModel description'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBDBTable guid: (GUID fromString: '{899547b6-1dc1-439d-a242-a4eb84d51164}')!
BBDBTable comment: ''!
!BBDBTable categoriesForClass!Unclassified! !
!BBDBTable methodsFor!

addAttribute: aBBDBAttribute

	^attributes at: aBBDBAttribute name put: aBBDBAttribute!

addForeignKey: aBBDBForeignKey

	^foreignKeys at: aBBDBForeignKey localName put: aBBDBForeignKey!

anyForeingKeyReferenceTo: aBBDBTable 
	"Answer whether or not the receiver has a foreign key referencing <aBBDBTable>"

	^(foreignKeys collect: [:each | each relatedTable]) includes: aBBDBTable!

asTableWrapper

	^BBDBTableWrapper table: self!

asTreeWrapper

	^BBFKTreeWrapper treeObject: self!

attributes
	^attributes!

attributes: anObject
	attributes := anObject!

attributesAsSortedCollection

	^attributes asSortedCollection: [:a :b | a name <= b name]!

attributesNames

	^(attributes collect: [:each | each name]) asSortedCollection!

collectCascadeTablesIn: aTreeModel processedTables: processedTables 
	"Answer anOrderedCollection where the first key has a collection of tables that has a FK to the receiver. 
	The sucesive keys has a collection of tables that hast a FK  to the previous level"
	| collectionLevel |

	(processedTables includes: self) ifTrue: [^aTreeModel] ifFalse: [processedTables add: self].

	collectionLevel := (databaseModel tables select: [:each | each anyForeingKeyReferenceTo: self]) asOrderedCollection.

	collectionLevel isEmpty ifTrue: [^aTreeModel].

	collectionLevel do: [:each | aTreeModel add: each asChildOf: self].

	collectionLevel allButFirst do: [:each | each collectCascadeTablesIn: aTreeModel processedTables: processedTables].

	^aTreeModel

	
	!

collectForeignTables
	"Answer a collection with the tables that the receiver points with it's foreign keys "

	^(foreignKeys collect: [:each | each relatedTable]) asOrderedCollection!

colorForPrimaryKey

	^self hasPrimaryKey ifTrue: [Color black] ifFalse: [Color darkRed]!

copyAttributesToClipboard
	"The receive copy all attributes to clipboard to be paste in a Excel application"
	| clipboardString |

	clipboardString := ''.
	(attributes asSortedCollection:[:a :b | a name <= b name]) do: [:each | clipboardString := clipboardString, each name, String tab, each printType, String tab, each printNullable,String lineDelimiter].

	Clipboard current setText: clipboardString allButLast format: #String.

	^clipboardString allButLast!

databaseModel
	^databaseModel!

databaseModel: anObject
	databaseModel := anObject!

dependentTables
	"The receiver answer a collection of BBDBTable with all tables that has a foreign key (FK) pointing to the receiver "

	^databaseModel tables select: [:each | each anyForeingKeyReferenceTo: self ]
!

description
	^description!

description: anObject
	description := anObject!

foreignKeyAttributes
	| foreignKeyAttributes |

	foreignKeyAttributes := OrderedCollection new.

	foreignKeys collect: [:each | foreignKeyAttributes addAll: each attributes].

	^foreignKeyAttributes!

foreignKeyEqualNameTo: aBBDBForeignKey 

	^foreignKeys detect: [:each | each localName = aBBDBForeignKey localName] ifNone: []!

foreignKeyEqualTo: aBBDBForeignKey 

	^foreignKeys detect: [:each | each isEqualTo: aBBDBForeignKey] ifNone: []!

foreignKeys
	^foreignKeys!

foreignKeys: anObject
	foreignKeys := anObject!

foreignKeysAsTreeModel: anOrderedCollection
	"The receiver answer aTreeModel that represent the reference from the receiver to another tables"
	| treeModel |

	treeModel := TreeModel withRoots: (OrderedCollection with: self).
	anOrderedCollection add: self.

	foreignKeys do: [:each | | treeObjectWrapper |
			treeObjectWrapper := each asTreeWrapper.
			treeModel add: treeObjectWrapper asChildOf: self.
			"anOrderedCollection add: each relatedTable."
			(anOrderedCollection includes: each relatedTable) 
			ifFalse: [treeModel addTree: (each relatedTable foreignKeysAsTreeModel: anOrderedCollection) asChildOf: treeObjectWrapper]].

	^treeModel!

foreignTablesReferences
	" The receiver answer anOrderedCollection with all tables that are referenced by it's foreign keys "

	^(self foreignKeys collect: [:each | each relatedTable]) asOrderedCollection!

foreingKeyWithBadDefinitions
	"Answer all foreign keys with bad definition (FK with composed attributes with some attributes nullables and others not)"

	^foreignKeys select: [:each | each hasBadDefinition]!

getAttributeNamed: aString

	^attributes at: aString ifAbsent: [nil]!

getAttributeNamed: aString ifAbsent: aBlock

	^attributes at: aString ifAbsent: aBlock!

getAttributeNamedIgnoreCase: aString

	^attributes at: aString ifAbsent: [attributes at: aString asUppercase ifAbsent: [attributes at: aString asLowercase ifAbsent: []]]!

getAttributeNamedIgnoreCase: aString ifAbsent: aBlock

	^attributes at: aString ifAbsent: [attributes at: aString asUppercase ifAbsent: [attributes at: aString asLowercase ifAbsent: aBlock]]!

getAttributeWithDescription: aString 
	"The receiver a collection of basic attributes named <aString>"
	| basicAttributes |

	basicAttributes := OrderedCollection new.

	attributes do: [:each | (aString match: each description asString) ifTrue: [basicAttributes add: each] ].

	^basicAttributes!

getBasicAttributes
	"Answer a collection of basic attributes "

	^attributes reject: [:each | (self isPrimary: each) or: [self isForeignKey: each ]]!

hasAllForeignKeysIncludesIn: anOrderedCollection
	"Answer whether the receiver has (or not) all foreing keys defined in the tables of <anOrderedCollection> or has a cyclic reference with the related table"

	^(self foreignKeys collect: [:each | each relatedTable]) allSatisfy: [:each | (anOrderedCollection includes: each) or: [self hasCyclicFKReferenceWith: each] ]!

hasCyclicFKReferenceWith: aBBDBTable 
	"Answer whether the receiver has a cyclic reference with table <aBBDBTable>"

	^(self anyForeingKeyReferenceTo: aBBDBTable) and: [aBBDBTable anyForeingKeyReferenceTo: self]!

hasPrimaryKey

	^primaryKey notEmpty!

icon

	self foreignKeys isEmpty ifTrue: [^self class icon].
	^self tableFKIcon!

includesAttributeNamed: aString

	^attributes includesKey: aString!

initialize

	super initialize.

	name := ''.
	description := ''.
	attributes := LookupTable new.
	primaryKey := BBDBPrimaryKey new.
	foreignKeys := LookupTable new.!

isDBTable

	^true!

isForeignKey: aBBDBAttribute 

	^foreignKeys anySatisfy: [:each | each attributes includes: aBBDBAttribute]!

isPrimary: aBBDBAttribute 

	^primaryKey includesKey: aBBDBAttribute!

matchAttributeNamed: aString 
	"Answer a collection of attributes matching the string <aString>"

	^attributes anySatisfy: [:each | aString match: each name]!

matchBasicAttributeNamed: aString 
	"Answer a collection of basic attributes matching the string <aString>"

	^self getBasicAttributes select: [:each | aString match: each name ]!

modelName

	^databaseModel name!

name
	^name!

name: anObject
	name := anObject!

primaryKey
	^primaryKey!

primaryKey: anObject
	primaryKey := anObject!

primaryKeyAsAttributeNamed: aString 
	^Error notYetImplemented!

primaryKeyAttributes
	^primaryKey keyAttributes!

printCaptionName

	^databaseModel printCaptionName, ' - Table named <', name, '>'
!

printForeignTreeName

	^name!

printOn: aStream
	"Append the ASCII representation of the receiver
	 to aStream."

	super printOn: aStream.

	aStream
		nextPutAll: '[', name, ']'.
!

printPrimaryKey
	| primaryString |

	self hasPrimaryKey ifFalse: [^''].

	primaryString := ''.
	primaryKey keyAttributes do: [:each | primaryString := primaryString, ', ', each name].

	^'(', (primaryString allButFirst: 2), ')'!

printTreeName

	^name, '  (', attributes size printString,')'!

removeAttribute: aBBDBAttribute

	^attributes removeKey: aBBDBAttribute name!

removeAttributeNamed: aString

	^attributes removeKey: aString!

removeForeignKey: aBBDBForeignKey

	^foreignKeys removeKey: aBBDBForeignKey localName!

removeForeignKeyNamed: aString

	^foreignKeys removeKey: aString!

tableFKIcon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'databasetablefk.png'.
	"^InternalIcon fromBytes: #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 32 0 0 0 32 8 6 0 0 0 115 122 122 244 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 32 99 72 82 77 0 0 122 38 0 0 128 132 0 0 250 0 0 0 128 232 0 0 117 48 0 0 234 96 0 0 58 152 0 0 23 112 156 186 81 60 0 0 7 116 73 68 65 84 88 71 197 87 105 84 205 105 24 255 243 101 140 249 48 194 156 33 223 124 24 142 68 219 85 73 183 44 81 218 180 209 166 238 116 181 112 20 149 144 125 13 69 101 107 83 74 150 144 16 101 169 203 181 111 217 195 241 205 57 142 229 3 103 134 100 169 227 120 230 247 60 127 247 86 150 49 103 166 153 113 206 123 46 207 251 60 239 251 123 150 223 239 253 235 146 156 172 167 94 189 158 41 86 86 22 74 83 211 123 197 194 226 123 197 214 182 183 242 254 61 41 68 138 242 248 241 239 202 189 123 79 148 230 230 86 165 127 255 222 202 192 129 63 43 221 187 127 167 60 122 196 246 167 202 155 55 173 138 165 229 143 216 251 73 233 213 235 7 229 195 7 69 233 218 181 11 252 223 201 254 195 135 191 41 61 122 116 87 6 15 238 171 244 237 219 67 236 28 223 208 240 0 127 111 81 20 189 62 136 146 147 29 169 180 212 139 114 114 60 168 188 220 159 238 221 211 211 237 219 49 116 235 86 12 213 212 4 208 170 85 26 154 55 207 154 182 110 29 77 151 47 79 166 59 119 244 116 228 72 32 101 102 14 163 69 139 134 
	82 81 145 59 25 141 147 168 177 81 141 105 108 212 211 133 11 17 98 79 79 183 134 159 35 29 63 30 36 246 139 23 35 228 236 194 66 45 173 93 235 72 74 108 108 40 77 159 238 76 155 55 123 226 162 177 84 80 224 15 39 29 157 59 23 77 103 207 70 211 222 189 190 180 100 137 61 205 154 101 5 159 145 100 48 132 227 112 29 236 126 180 124 185 3 205 157 59 132 214 175 215 210 225 195 193 230 152 243 231 117 184 48 20 118 87 74 77 181 162 21 43 52 84 85 53 129 216 94 87 23 42 126 185 185 174 180 114 165 70 5 16 31 239 72 89 89 30 180 112 161 7 101 103 251 194 41 28 25 134 201 218 186 213 83 46 73 74 26 0 159 17 116 224 64 48 29 59 22 46 21 155 63 223 6 213 27 68 171 87 59 211 174 93 126 116 244 168 26 199 191 251 246 5 34 33 39 74 76 252 69 252 182 109 243 150 184 170 170 32 248 132 99 207 153 22 44 176 37 37 46 46 28 0 156 81 38 6 48 150 214 173 243 21 199 154 154 48 89 37 37 42 128 196 196 1 240 113 193 1 193 114 64 73 137 23 218 162 2 224 195 118 238 244 163 218 90 53 142 127 247 238 53 1 24 32 126 101 101 222 98 175 172 12 130 79 56 101 100 124 4 16 31 31 129 195 93 104 227 70 47 148 202 147 54 109 10 160 211 167 163 233 228 201 104 58 113 34 90 14 94 180 200 1 165 28 76 27 54 140 148 203 141 70 157 100 188 116 169 134 230 204 25 138 217 209 10 48 83 12 239 215 212 132 162 154 90 74 73 25 44 126 187 119 79 144 56 182 179 31 239 45 95 62 140 148 169 83 35 224 164 165 226 98 95 100 239 141 146 7 211 181 107 113 116 229 74 44 6 46 150 14 30 12 6 218 225 200 194 142 182 108 25 71 103 206 232 168 161 33 14 246 16 90 179 198 133 22 47 118 192 220 140 65 207 195 205 49 188 111 52 70 81 126 254 24 12 161 157 84 238 240 225 137 18 199 118 62 59 47 111 52 134 208 133 1 68 98 192 220 208 83 127 12 141 15 88 16 130 41 77 160 27 55 226 233 250 245 120 32 158 136 139 70 160 61 14 210 247 139 23 99 232 230 205 4 216 39 225 0 87 100 55 12 192 198 162 90 145 230 24 222 63 119 78 7 22 140 69 159 29 144 152 43 218 26 42 113 108 231 179 139 138 60 80 57 215 142 21 200 206 246 198 37 193 184 56 14 104 99 5 41 87 96 213 170 225 24 164 142 21 168 174 254 188 2 166 152 171 87 219 42 192 149 107 95 129 83 167 162 228 236 252 252 143 21 72 72 224 25 24 129 222 143 199 69 94 40 103 0 232 18 131 57 248 85 22 247 142 179 156 61 123 8 104 56 26 12 137 68 27 98 96 15 160 101 203 28 49 160 54 168 156 59 85 87 79 132 93 141 225 125 102 2 219 211 210 134 96 182 28 133 21 38 59 251 228 228 184 129 134 208 129 248 248 112 154 54 109 56 120 57 14 7 122 98 24 121 88 162 168 190 94 93 219 183 251 162 140 246 152 118 43 248 184 203 148 27 12 209 176 243 112 106 208 190 33 104 133 86 166 219 96 80 99 120 191 186 90 109 209 204 153 86 50 39 187 118 249 155 237 236 147 153 233 10 125 129 14 252 83 0 156 225 223 1 144 149 197 243 3 0 106 11 152 134 227 81 18 47 76 103 128 12 202 169 83 234 170 168 240 71 6 156 169 53 124 70 97 218 35 218 181 70 109 1 87 134 89 113 250 180 26 195 37 102 65 226 50 167 166 90 163 178 195 160 11 76 111 213 206 126 217 217 110 210 26 161 225 204 153 174 232 189 15 166 221 27 19 29 136 225 99 45 143 145 181 111 95 0 248 234 40 124 103 90 157 60 57 25 76 208 131 247 129 0 204 98 98 135 249 25 5 145 153 36 12 225 24 222 175 175 143 0 224 145 152 157 161 160 177 19 20 52 72 236 6 67 132 248 240 30 43 168 0 72 78 214 226 98 95 148 210 7 10 23 4 29 96 13 152 34 107 255 254 32 185 40 61 221 86 104 197 34 213 198 14 23 161 103 94 222 24 208 44 12 118 53 134 247 25 40 115 125 238 92 91 92 52 156 14 29 10 17 187 209 56 89 252 120 160 153 29 223 4 192 200 191 6 96 245 106 85 136 184 50 127 6 96 205 154 142 0 24 36 131 203 202 2 0 158 1 110 65 97 161 15 16 121 67 17 131 192 211 41 82 46 83 169 87 172 112 146 94 23 20 120 8 67 46 93 82 43 195 10 185 112 161 189 100 115 228 72 40 236 106 12 239 27 12 145 210 154 57 115 108 228 173 96 61 97 59 11 22 251 240 30 3 19 0 73 73 170 14 100 100 140 71 54 172 3 60 72 234 218 189 219 95 232 146 150 102 45 65 117 117 17 194 247 61 123 38 136 14 164 167 219 96 70 2 49 164 185 34 211 28 195 251 71 143 134 97 56 221 100 120 89 243 43 43 3 204 118 246 251 130 14 120 194 81 213 1 86 43 230 52 47 214 1 206 50 37 69 213 129 218 218 48 121 164 118 236 240 19 118 48 13 215 173 211 146 78 87 74 125 250 60 195 191 183 200 254 161 67 170 14 176 126 44 89 226 32 108 50 217 249 92 51 13 77 58 144 147 99 18 34 127 25 148 250 122 117 149 151 251 200 164 167 164 12 18 212 252 154 153 128 241 43 201 25 242 69 149 149 129 164 209 220 194 71 28 9 144 164 164 60 249 126 224 231 122 241 98 123 121 61 57 142 21 147 207 205 204 28 33 192 58 232 64 70 134 151 180 192 164 3 234 179 171 234 0 183 128 117 224 216 49 85 7 42 42 88 162 153 158 54 0 230 14 154 133 96 205 160 158 61 95 8 8 94 61 123 62 37 79 207 5 210 130 246 58 192 90 209 78 7 34 133 134 69 69 237 159 227 54 26 126 141 5 252 101 196 44 248 148 134 249 249 89 102 0 38 32 22 22 79 104 198 140 205 102 122 50 11 204 52 228 33 76 75 115 199 39 211 4 100 232 135 222 78 162 187 119 167 226 227 50 65 22 11 12 235 54 87 161 172 108 60 120 174 199 199 229 84 12 89 168 244 158 7 177 184 120 156 180 141 159 113 142 137 140 60 241 25 8 6 99 105 249 28 175 106 177 248 241 19 158 155 171 37 197 206 174 242 139 206 38 244 255 198 111 191 126 207 73 175 95 139 132 221 72 177 182 174 248 207 1 180 205 200 19 82 52 154 3 255 11 0 39 167 58 124 230 133 242 255 126 58 255 79 105 169 202 130 47 45 157 142 232 193 131 182 59 59 29 0 31 222 173 219 231 151 127 122 177 9 66 167 2 120 251 150 200 201 169 227 229 95 187 216 12 160 185 249 21 53 55 191 164 183 111 155 232 205 155 38 252 190 162 214 86 94 205 242 251 238 29 219 95 208 235 215 47 176 247 242 227 222 231 246 150 150 87 120 251 91 205 101 143 138 106 165 251 247 95 73 28 199 183 180 52 73 44 251 241 217 124 22 219 59 173 2 70 163 154 249 183 50 254 116 226 58 5 192 211 167 132 231 186 227 112 253 213 209 254 3 108 220 179 206 38 33 132 81 0 0 0 0 73 69 78 68 174 66 96 130]
! !
!BBDBTable categoriesFor: #addAttribute:!public! !
!BBDBTable categoriesFor: #addForeignKey:!public! !
!BBDBTable categoriesFor: #anyForeingKeyReferenceTo:!foreing keys references!public! !
!BBDBTable categoriesFor: #asTableWrapper!public! !
!BBDBTable categoriesFor: #asTreeWrapper!public! !
!BBDBTable categoriesFor: #attributes!accessing!private! !
!BBDBTable categoriesFor: #attributes:!accessing!private! !
!BBDBTable categoriesFor: #attributesAsSortedCollection!public! !
!BBDBTable categoriesFor: #attributesNames!public! !
!BBDBTable categoriesFor: #collectCascadeTablesIn:processedTables:!public! !
!BBDBTable categoriesFor: #collectForeignTables!public! !
!BBDBTable categoriesFor: #colorForPrimaryKey!public! !
!BBDBTable categoriesFor: #copyAttributesToClipboard!public! !
!BBDBTable categoriesFor: #databaseModel!accessing!private! !
!BBDBTable categoriesFor: #databaseModel:!accessing!private! !
!BBDBTable categoriesFor: #dependentTables!public! !
!BBDBTable categoriesFor: #description!accessing!private! !
!BBDBTable categoriesFor: #description:!accessing!private! !
!BBDBTable categoriesFor: #foreignKeyAttributes!public! !
!BBDBTable categoriesFor: #foreignKeyEqualNameTo:!public! !
!BBDBTable categoriesFor: #foreignKeyEqualTo:!public! !
!BBDBTable categoriesFor: #foreignKeys!accessing!private! !
!BBDBTable categoriesFor: #foreignKeys:!accessing!private! !
!BBDBTable categoriesFor: #foreignKeysAsTreeModel:!foreing keys references!public! !
!BBDBTable categoriesFor: #foreignTablesReferences!foreing keys references!public! !
!BBDBTable categoriesFor: #foreingKeyWithBadDefinitions!public! !
!BBDBTable categoriesFor: #getAttributeNamed:!public! !
!BBDBTable categoriesFor: #getAttributeNamed:ifAbsent:!public! !
!BBDBTable categoriesFor: #getAttributeNamedIgnoreCase:!public! !
!BBDBTable categoriesFor: #getAttributeNamedIgnoreCase:ifAbsent:!public! !
!BBDBTable categoriesFor: #getAttributeWithDescription:!public! !
!BBDBTable categoriesFor: #getBasicAttributes!public! !
!BBDBTable categoriesFor: #hasAllForeignKeysIncludesIn:!foreing keys references!public! !
!BBDBTable categoriesFor: #hasCyclicFKReferenceWith:!foreing keys references!public! !
!BBDBTable categoriesFor: #hasPrimaryKey!public! !
!BBDBTable categoriesFor: #icon!public! !
!BBDBTable categoriesFor: #includesAttributeNamed:!public! !
!BBDBTable categoriesFor: #initialize!public! !
!BBDBTable categoriesFor: #isDBTable!public! !
!BBDBTable categoriesFor: #isForeignKey:!public! !
!BBDBTable categoriesFor: #isPrimary:!public! !
!BBDBTable categoriesFor: #matchAttributeNamed:!public! !
!BBDBTable categoriesFor: #matchBasicAttributeNamed:!public! !
!BBDBTable categoriesFor: #modelName!public! !
!BBDBTable categoriesFor: #name!accessing!private! !
!BBDBTable categoriesFor: #name:!accessing!private! !
!BBDBTable categoriesFor: #primaryKey!accessing!private! !
!BBDBTable categoriesFor: #primaryKey:!accessing!private! !
!BBDBTable categoriesFor: #primaryKeyAsAttributeNamed:!public! !
!BBDBTable categoriesFor: #primaryKeyAttributes!public! !
!BBDBTable categoriesFor: #printCaptionName!public! !
!BBDBTable categoriesFor: #printForeignTreeName!public! !
!BBDBTable categoriesFor: #printOn:!public! !
!BBDBTable categoriesFor: #printPrimaryKey!public! !
!BBDBTable categoriesFor: #printTreeName!public! !
!BBDBTable categoriesFor: #removeAttribute:!public! !
!BBDBTable categoriesFor: #removeAttributeNamed:!public! !
!BBDBTable categoriesFor: #removeForeignKey:!public! !
!BBDBTable categoriesFor: #removeForeignKeyNamed:!public! !
!BBDBTable categoriesFor: #tableFKIcon!public! !

!BBDBTable class methodsFor!

icon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'databasetable.png'.
	"
	^InternalIcon fromBytes: #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 32 0 0 0 32 8 6 0 0 0 115 122 122 244 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 32 99 72 82 77 0 0 122 38 0 0 128 132 0 0 250 0 0 0 128 232 0 0 117 48 0 0 234 96 0 0 58 152 0 0 23 112 156 186 81 60 0 0 8 4 73 68 65 84 88 71 197 87 121 83 211 87 20 77 191 76 157 145 226 6 136 128 4 168 130 97 141 16 144 144 160 80 18 8 196 101 0 69 160 21 181 85 81 65 193 110 42 212 5 173 85 11 90 69 113 37 130 27 138 75 55 237 98 199 25 107 167 95 160 42 104 209 58 183 231 220 103 34 76 181 237 180 127 152 153 55 153 185 239 222 247 238 187 247 156 243 222 239 53 193 207 242 42 127 76 224 85 254 44 195 195 67 242 232 209 3 121 252 120 72 70 70 134 244 255 233 211 135 161 241 228 201 144 252 254 251 3 248 220 215 185 63 254 24 214 185 39 79 134 67 246 145 145 7 33 123 48 150 126 180 51 142 241 244 231 92 48 158 115 180 91 170 170 60 178 122 117 150 28 58 84 36 187 118 185 229 200 17 175 252 250 107 157 252 252 115 173 220 185 83 43 23 46 148 73 91 91 134 108 220 152 2 31 151 252 248 99 149 252 242 75 157 12 12 248 228 147 79 178 228 253 247 109 210 213 149 47 95 126 185 64 238 222 53 49 119 239 214 201 119 223 85 74 103 103 190 108 216 144 44 219 182 217 101 112 176 92 227 190 255 190 82 215 238 236 156 35 59 118 216 197 226 241 56 164 170 42 90 118 238 76 149 214 214 100 217 189 219 46 63 252 224 145 27 55 74 228 219 111 75 164 167 39 91 214 174 141 146 183 223 14 71 192 12 185 114 101 46 22 247 200 241 227 57 210 212 52 85 150 47 159 40 237 237 137 210 223 159 47 55 111 154 152 155 55 61 114 233 146 91 237 245 245 225 240 139 150 83 167 28 106 191 124 217 173 107 183 181 89 145 92 180 88 74 75 157 178 96 65 140 124 252 177 13 27 165 200 214 173 118 56 21 203 197 139 69 56 125 17 50 205 148 149 43 35 100 201 146 48 248 36 73 32 224 194 226 197 176 103 201 170 85 145 82 87 55 1 85 176 202 209 163 185 161 152 129 129 98 108 232 132 61 94 22 47 14 67 133 163 228 224 193 217 168 90 177 156 62 237 84 191 77 155 226 101 205 154 40 147 128 207 23 45 205 205 201 210 208 144 44 45 45 153 112 114 225 132 5 58 118 236 176 233 38 139 22 141 131 207 116 180 33 87 78 158 116 105 197 222 121 103 18 170 55 94 214 173 139 145 189 123 179 228 196 9 19 199 255 3 7 114 112 160 105 178 112 225 235 234 183 107 87 186 198 29 60 232 128 143 11 115 49 178 108 217 100 177 148 149 185 144 64 12 202 196 4 82 208 235 76 117 236 233 41 208 177 125 187 73 96 225 194 113 240 137 195 2 185 186 192 246 237 169 104 139 73 128 139 125 246 89 150 28 59 102 226 248 223 217 25 76 96 156 250 117 116 164 171 189 171 203 1 31 151 52 54 62 75 192 231 115 99 241 56 249 240 195 84 148 202 38 31 125 148 45 231 206 21 73 95 95 145 156 57 83 164 11 47 95 30 137 82 190 33 31 124 144 164 155 247 247 23 235 137 223 125 55 74 106 107 39 2 59 86 77 44 24 195 249 158 30 39 170 105 149 234 234 55 212 111 255 254 217 26 71 59 253 56 183 106 213 84 177 84 84 184 225 100 5 82 51 113 250 116 148 60 23 136 46 147 171 87 75 1 184 82 57 124 56 23 217 198 226 20 83 128 250 89 114 254 124 177 92 187 86 6 123 158 172 95 31 39 43 86 68 2 55 51 209 115 87 40 134 243 253 253 243 100 203 150 153 0 225 20 173 220 209 163 115 52 142 118 174 189 121 243 12 128 48 142 9 20 2 96 9 232 169 29 160 201 0 11 242 128 210 114 249 250 107 159 124 245 149 15 25 207 193 70 211 209 158 72 237 251 229 203 37 242 205 55 229 176 147 98 241 56 221 84 36 150 130 106 21 134 98 56 127 241 98 49 88 144 130 62 71 226 96 241 104 171 83 227 104 231 218 237 237 201 168 92 252 216 10 180 180 164 99 147 92 108 92 134 108 75 53 83 86 96 237 218 88 0 105 108 5 186 187 255 90 129 96 204 245 235 207 43 192 202 141 174 192 217 179 243 116 237 45 91 158 85 160 188 156 24 152 142 222 167 97 163 84 148 51 27 116 41 1 14 222 210 193 222 241 148 75 151 78 0 13 103 128 33 133 104 67 9 236 217 242 222 123 209 0 232 36 84 46 81 186 187 231 192 110 98 56 79 38 208 94 83 51 1 216 138 86 86 4 237 244 105 109 77 0 13 161 3 62 159 75 252 254 88 240 114 22 22 180 1 140 4 203 60 233 237 53 227 211 79 51 81 198 8 160 61 12 62 137 138 242 64 160 8 118 130 51 10 237 155 128 86 88 21 221 129 128 137 225 124 119 183 105 81 101 101 152 226 100 239 94 123 200 78 159 166 166 120 232 11 116 224 255 38 192 19 254 151 4 154 155 137 31 36 96 90 64 26 166 161 36 169 64 103 182 2 229 236 89 51 246 237 179 227 4 60 105 56 124 222 4 218 221 163 90 99 90 192 202 144 21 231 206 153 24 150 152 130 196 50 47 94 28 142 202 78 133 46 144 222 198 78 191 150 150 4 109 141 210 176 178 50 30 189 207 0 218 211 129 232 28 128 143 90 94 162 227 192 129 108 240 53 90 249 78 90 245 245 205 5 19 60 224 125 14 18 166 152 76 1 126 222 132 200 228 43 67 24 195 249 222 94 55 18 78 2 118 38 130 198 211 160 160 14 181 7 2 110 245 225 28 21 84 19 168 170 178 98 227 76 148 50 3 10 231 128 14 80 3 188 58 190 248 194 161 27 213 215 79 86 90 81 164 158 179 35 78 233 185 121 243 76 208 172 0 118 19 195 121 38 74 174 215 213 77 198 70 177 184 101 243 212 222 223 63 87 253 8 104 178 227 31 19 96 230 47 75 96 221 58 35 68 172 204 223 37 176 126 253 216 4 152 36 147 107 110 70 2 196 0 91 192 59 191 169 41 29 138 232 0 79 189 90 174 96 169 87 175 158 166 189 222 186 53 89 25 50 56 104 42 67 133 108 104 136 208 211 28 63 238 132 221 196 112 62 16 40 212 214 212 214 78 210 187 130 122 66 59 5 139 62 156 99 98 154 192 162 69 70 7 26 27 211 112 26 234 0 129 100 198 254 253 118 165 75 77 77 184 6 157 62 237 86 190 127 254 249 108 213 129 250 250 160 14 228 169 76 51 134 243 39 78 20 0 156 9 10 94 106 126 87 87 118 200 78 191 23 232 128 13 142 70 7 168 86 228 52 7 117 128 167 172 174 54 58 112 236 88 129 94 82 123 246 100 41 59 72 195 141 27 173 0 171 3 118 19 195 249 35 71 140 14 80 63 86 174 140 84 54 5 237 244 9 209 48 168 3 173 173 65 33 178 43 80 122 123 205 216 189 59 67 145 94 93 61 94 179 230 109 22 76 140 183 36 79 200 141 186 186 114 96 55 49 156 167 50 242 253 192 235 122 197 138 8 189 61 131 118 250 52 53 77 215 196 198 232 64 99 99 170 182 32 168 3 230 218 53 58 192 22 80 7 78 158 52 58 176 111 31 37 154 244 156 132 196 18 65 179 177 58 192 74 5 117 128 45 24 173 3 212 138 81 58 80 168 52 108 111 31 125 29 63 167 225 203 88 192 151 17 89 240 111 104 56 154 5 164 39 89 16 162 33 65 88 83 147 136 39 211 108 156 48 11 189 205 199 203 181 2 143 203 114 29 20 24 234 54 171 208 209 145 134 96 15 30 151 21 0 153 83 123 79 32 110 219 54 75 219 198 107 156 49 55 110 84 64 108 222 210 247 67 67 67 148 62 62 78 157 42 208 56 218 233 199 43 124 211 38 171 88 188 222 124 148 49 9 47 159 28 112 211 14 212 59 229 246 237 249 120 126 251 241 58 246 235 35 146 247 57 117 123 207 158 52 92 213 165 242 211 79 243 209 107 162 220 170 55 90 71 135 77 31 154 183 110 153 152 91 183 230 131 202 30 92 237 54 101 16 31 173 125 125 110 181 95 191 238 209 181 119 238 156 133 3 39 136 197 237 206 2 192 98 97 72 199 130 105 0 157 3 139 120 145 165 23 15 8 207 179 103 121 4 128 24 166 207 242 193 193 185 56 137 23 188 207 70 101 162 80 153 112 125 126 247 245 229 135 98 56 63 48 224 134 182 36 226 37 21 6 48 70 1 59 124 150 123 81 129 66 245 107 107 75 192 193 240 36 243 251 231 65 175 83 80 146 92 128 38 15 155 176 71 126 56 250 177 72 5 4 199 9 33 73 64 41 163 225 147 129 82 83 164 252 0 93 1 18 72 68 101 98 0 220 84 36 84 20 138 225 124 32 224 81 251 178 101 124 113 39 129 150 110 141 59 115 134 247 140 31 213 182 129 61 137 98 25 26 122 32 67 67 247 244 19 234 225 195 251 207 62 211 204 167 218 227 199 252 124 162 253 55 25 30 254 13 115 247 212 246 34 59 63 181 130 49 156 55 159 101 247 52 142 241 35 35 252 180 51 118 250 113 142 118 203 171 252 48 213 47 243 87 157 192 159 159 254 217 228 179 206 112 130 0 0 0 0 73 69 78 68 174 66 96 130]!

newNamed: aString

	^super new initialize
		name: aString;
		yourself.! !
!BBDBTable class categoriesFor: #icon!constants!public! !
!BBDBTable class categoriesFor: #newNamed:!public! !

