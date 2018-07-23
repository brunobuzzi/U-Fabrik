"Filed out from Dolphin Smalltalk 7"!

DataBaseObject subclass: #BBDataBaseModel
	instanceVariableNames: 'name tables mainTables parametricTables'
	classVariableNames: 'DatabaseCache'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBDataBaseModel guid: (GUID fromString: '{6f1de9e7-a166-4353-b729-657f4cecab17}')!
BBDataBaseModel comment: ''!
!BBDataBaseModel categoriesForClass!Unclassified! !
!BBDataBaseModel methodsFor!

addAllTables: anOrderedCollection

	anOrderedCollection do: [:each | tables at: each name put: each].
	^anOrderedCollection!

addTable: aBBDBTable

	aBBDBTable databaseModel:self.
	^tables at: aBBDBTable name put: aBBDBTable!

addToCache

	^self class databaseCache at: name put: self!

allAttributes
	| allAttributes |

	allAttributes := OrderedCollection new.
	tables do: [:each | allAttributes addAll: each attributes asOrderedCollection].

	^allAttributes asSortedCollection: [:a :b | a name <= b name]
!

allAttributesOf: aString 

	^self allAttributes select: [:each | aString asUppercase match: each tableName asUppercase]

!

allAttributesTypes
	| allAttributes |

	allAttributes := OrderedCollection new.
	tables do: [:each | allAttributes addAll: each attributes asOrderedCollection].

	^(allAttributes collect: [:each | each type value]) asSortedCollection copyWithoutDuplicates
!

asTreeModel
	| treeModel |

	treeModel := TreeModel withRoots: (OrderedCollection with: self).

	(tables asSortedCollection: [:a :b | a name <= b name]) do: [:each | treeModel add: each asChildOf: self ].

	^treeModel!

basicTables
	"The receiver answer anOrderedCollection with tables that do NOT have foreign keys"

	^tables select: [:each | each foreignKeys isEmpty]!

colorForPrimaryKey
	^Color black!

foreingKeyWithBadDefinitions
	"Answer all foreign keys with bad definition (FK with composed attributes with some attributes nullables and others not)"
	| badForeignkeys |

	badForeignkeys := OrderedCollection new.

	tables do: [:each | badForeignkeys addAll: each foreingKeyWithBadDefinitions].

	^badForeignkeys!

generateInsertChain
	"The receiver answer aTreeModel that represent the chain to be followed to insert data in receiver's model.
	The root of the TreeModel are the tables that do NOT have foreign keys"
	| addedTables lastSize step stepsCollection |

	addedTables := Set withAll: self basicTables.
	stepsCollection := LookupTable new.
	step := 1.
	stepsCollection at: step put: (Set withAll: addedTables).
	lastSize := 0.

	[(addedTables size <= tables size) and:[addedTables size ~= lastSize]] whileTrue: [ | tableToSearchIn |
		lastSize := addedTables size.
		step := step + 1.
		tableToSearchIn := OrderedCollection withAll: tables asOrderedCollection.
		tableToSearchIn removeAll: addedTables.
		tableToSearchIn do: [:eachTable |
			(eachTable hasAllForeignKeysIncludesIn: addedTables) 
			ifTrue: [addedTables add: eachTable.
				(stepsCollection includesKey: step) ifFalse: [stepsCollection at: step put: Set new].
				(stepsCollection at: step) add: eachTable]].].

	stepsCollection at: 'cyclic' put: (tables asOrderedCollection difference: addedTables). "tables with cyclic references"

	^stepsCollection!

getAttributeNamed: aString 
	"The receiver a collection of basic attributes named <aString>"
	| basicAttributes |

	basicAttributes := OrderedCollection new.

	self allAttributes do: [:each | (aString match: each name) ifTrue: [basicAttributes add: each] ].

	^basicAttributes!

getBasicAttributeNamed: aString 
	"The receiver a collection of basic attributes named <aString>"
	| basicAttributes |

	basicAttributes := OrderedCollection new.

	tables do: [:each | basicAttributes addAll: (each matchBasicAttributeNamed: aString)].

	^basicAttributes!

getTableNamed: aString

	^self getTableNamed: aString ifAbsent: []!

getTableNamed: aString ifAbsent: aBlock

	^tables at: aString ifAbsent: aBlock!

getTableNamedIgnoreCase: aString

	^tables at: aString ifAbsent:[tables at: aString asUppercase ifAbsent:[tables at: aString asLowercase]]!

getTablesMatching: aString

	^tables select: [:each | aString match: each name ]!

includesTableNamed: aString

	^tables includesKey: aString!

initialize

	super initialize.

	name := ''.
	tables := LookupTable new.
	parametricTables := OrderedCollection new. "is a subset of <tables>"
	mainTables := OrderedCollection new. "is a subset of <tables>"!

mainTables
	^mainTables!

mainTables: anObject
	mainTables := anObject!

name
	^name!

name: anObject
	name := anObject!

neededTablesForMainTables
	| neededTables |
 
	neededTables := Set new.
	mainTables do: [:each | | all |
		all := (each foreignKeysAsTreeModel: OrderedCollection new) asOrderedCollection.
		neededTables addAll: (all select: [:eachO | eachO isDBTable]).].

	^neededTables asOrderedCollection!

numberOfAttributes

	^tables inject: 0 into: [:number :each | number + each attributes size]!

parametricTables
	^parametricTables!

parametricTables: anObject
	parametricTables := anObject!

printCaptionName
	^'<', name, '>'!

printForeignTreeName

	^name!

printOn: aStream
	"Append the ASCII representation of the receiver
	 to aStream."

	super printOn: aStream.

	aStream
		nextPutAll: '[', name, ']'.
!

printTreeName

	^name, ' - ', tables size printString, ' tables '!

removeFromCache

	^self class databaseCache removeKey: name!

removeTable: aBBDBTable

	^tables removeKey: aBBDBTable name!

removeTableNamed: aString

	^tables removeKey: aString!

save

	^DatabaseCache at: name put: self!

tables
	^tables!

tables: anObject
	tables := anObject!

tablesAsSortedCollection

	^tables asSortedCollection: [:a :b | a name <= b name]!

tablesNames

	^(tables collect: [:each | each name]) asSortedCollection!

tablesWithAttributeNamed: aString 
	"The receiver select the tables which has an attribute named <aString>"

	^tables select: [:each | each matchAttributeNamed: aString]!

tablesWithAttributeWithType: aString 
	"The receiver answer anOrderedCollection of attributes with type <aString>"

	^self allAttributes select: [:each | each typeMatchWith: aString]
!

tablesWithForeignKeys

	^tables reject: [:each | each foreignKeys isEmpty]! !
!BBDataBaseModel categoriesFor: #addAllTables:!private! !
!BBDataBaseModel categoriesFor: #addTable:!public! !
!BBDataBaseModel categoriesFor: #addToCache!public! !
!BBDataBaseModel categoriesFor: #allAttributes!public! !
!BBDataBaseModel categoriesFor: #allAttributesOf:!public! !
!BBDataBaseModel categoriesFor: #allAttributesTypes!public! !
!BBDataBaseModel categoriesFor: #asTreeModel!public! !
!BBDataBaseModel categoriesFor: #basicTables!public! !
!BBDataBaseModel categoriesFor: #colorForPrimaryKey!public! !
!BBDataBaseModel categoriesFor: #foreingKeyWithBadDefinitions!public! !
!BBDataBaseModel categoriesFor: #generateInsertChain!public! !
!BBDataBaseModel categoriesFor: #getAttributeNamed:!public! !
!BBDataBaseModel categoriesFor: #getBasicAttributeNamed:!public! !
!BBDataBaseModel categoriesFor: #getTableNamed:!public! !
!BBDataBaseModel categoriesFor: #getTableNamed:ifAbsent:!public! !
!BBDataBaseModel categoriesFor: #getTableNamedIgnoreCase:!public! !
!BBDataBaseModel categoriesFor: #getTablesMatching:!public! !
!BBDataBaseModel categoriesFor: #includesTableNamed:!public! !
!BBDataBaseModel categoriesFor: #initialize!public! !
!BBDataBaseModel categoriesFor: #mainTables!accessing!private! !
!BBDataBaseModel categoriesFor: #mainTables:!accessing!private! !
!BBDataBaseModel categoriesFor: #name!accessing!private! !
!BBDataBaseModel categoriesFor: #name:!accessing!private! !
!BBDataBaseModel categoriesFor: #neededTablesForMainTables!public! !
!BBDataBaseModel categoriesFor: #numberOfAttributes!public! !
!BBDataBaseModel categoriesFor: #parametricTables!accessing!private! !
!BBDataBaseModel categoriesFor: #parametricTables:!accessing!private! !
!BBDataBaseModel categoriesFor: #printCaptionName!public! !
!BBDataBaseModel categoriesFor: #printForeignTreeName!public! !
!BBDataBaseModel categoriesFor: #printOn:!public! !
!BBDataBaseModel categoriesFor: #printTreeName!public! !
!BBDataBaseModel categoriesFor: #removeFromCache!public! !
!BBDataBaseModel categoriesFor: #removeTable:!public! !
!BBDataBaseModel categoriesFor: #removeTableNamed:!public! !
!BBDataBaseModel categoriesFor: #save!public! !
!BBDataBaseModel categoriesFor: #tables!accessing!private! !
!BBDataBaseModel categoriesFor: #tables:!accessing!private! !
!BBDataBaseModel categoriesFor: #tablesAsSortedCollection!public! !
!BBDataBaseModel categoriesFor: #tablesNames!public! !
!BBDataBaseModel categoriesFor: #tablesWithAttributeNamed:!public! !
!BBDataBaseModel categoriesFor: #tablesWithAttributeWithType:!public! !
!BBDataBaseModel categoriesFor: #tablesWithForeignKeys!public! !

!BBDataBaseModel class methodsFor!

databaseCache

	DatabaseCache ifNil: [DatabaseCache := LookupTable new].

	^DatabaseCache!

databaseCacheAsSortedCollection

	^self databaseCache asSortedCollection:[:a :b | a name <= b name]!

icon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'database.png'.
	"
	^InternalIcon fromBytes: #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 32 0 0 0 32 8 6 0 0 0 115 122 122 244 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 32 99 72 82 77 0 0 122 38 0 0 128 132 0 0 250 0 0 0 128 232 0 0 117 48 0 0 234 96 0 0 58 152 0 0 23 112 156 186 81 60 0 0 0 9 112 72 89 115 0 0 13 126 0 0 14 194 1 73 200 131 19 0 0 9 188 73 68 65 84 88 71 197 151 9 84 213 85 30 199 181 102 44 179 69 69 8 81 217 31 111 133 247 80 22 5 33 83 203 5 119 235 184 100 139 105 154 142 154 162 142 86 99 67 102 150 51 106 110 137 158 209 153 20 5 45 4 204 13 114 203 13 212 20 21 151 220 55 54 69 118 30 160 188 247 248 204 239 255 30 24 150 86 103 230 156 153 123 206 239 220 251 238 251 223 223 239 123 127 251 109 140 140 70 50 234 38 101 217 168 113 227 198 246 249 191 25 13 249 61 138 143 93 78 109 109 173 130 225 255 54 238 3 80 128 212 211 195 208 252 252 191 223 251 189 242 157 205 102 187 207 251 231 231 30 10 160 225 71 13 215 13 25 41 235 134 212 80 147 143 58 255 243 125 187 249 235 15 254 218 161 255 212 62 191 5 228 145 0 234 111 90 47 88 97 84 89 89 73 81 81 17 185 185 185 92 191 126 157 43 87 174 112 233 210 37 59 41 235 27 55 110 144 151 151 103 255 166 186 186 218 174 242 250 161 240 179 90 173 191 48 195 111 106 192 108 54 115 241 226 69 210 211 211 217 189 123 55 169 169 169 108 221 186 149 237 219 183 179 99 199 14 59 41 123 202 92 191 151 150 150 198 222 189 123 201 200 200 224 194 133 11 148 149 149 221 55 213 239 54 129 130 76 17 158 145 145 206 166 77 137 36 37 37 57 40 57 153 148 148 205 178 78 38 89 214 201 201 142 125 101 86 126 167 164 164 144 178 57 197 177 47 148 184 105 19 105 105 223 145 147 157 253 107 78 104 179 107 170 214 38 81 160 80 173 69 200 70 113 113 9 95 111 76 36 110 205 122 82 146 82 216 156 146 196 166 196 13 108 220 16 71 66 66 60 241 241 27 136 95 191 129 117 235 226 89 191 46 129 132 248 141 124 157 240 13 137 27 146 217 180 113 27 155 147 182 202 185 68 249 126 61 199 51 79 98 181 243 86 100 212 201 170 181 218 229 54 170 197 177 112 0 80 214 213 66 22 209 64 37 115 231 206 37 42 42 138 81 111 143 228 163 89 31 176 120 241 223 89 181 122 57 107 215 254 83 4 199 9 128 117 118 74 136 95 47 243 90 226 227 86 240 213 234 149 196 46 89 193 231 179 63 103 194 184 177 140 27 255 22 123 246 239 166 150 187 2 192 12 54 139 8 43 151 223 21 138 84 37 10 148 9 172 178 176 32 161 101 135 8 119 171 139 152 55 47 154 224 224 0 116 90 127 52 218 96 244 198 78 116 8 139 228 133 238 93 233 217 171 59 125 251 246 98 224 160 126 12 24 208 135 168 190 189 233 218 187 7 157 186 134 210 33 92 77 251 16 29 193 65 157 24 54 124 40 135 14 239 18 150 22 145 113 23 139 220 92 174 39 126 81 83 167 129 58 0 246 63 106 107 228 15 101 227 30 53 53 89 28 58 50 141 169 209 106 194 130 159 71 231 173 67 227 29 138 159 159 65 200 15 141 74 135 214 79 143 198 79 135 78 173 183 131 84 107 59 160 214 132 97 208 134 19 168 15 160 103 119 61 11 22 190 65 118 94 186 0 16 222 118 16 10 20 37 57 57 98 164 145 93 235 202 149 149 155 43 107 209 144 162 166 202 202 51 108 221 242 54 169 219 34 73 219 17 193 162 133 30 188 59 218 133 254 47 187 16 25 226 78 80 128 183 8 241 192 164 115 183 207 193 70 15 94 232 232 70 191 158 238 140 27 211 150 165 75 85 236 248 206 196 246 157 61 57 127 97 187 240 191 43 84 42 188 239 201 44 230 166 178 206 4 34 215 86 91 76 101 85 2 149 230 57 148 150 127 72 105 197 2 170 170 19 68 232 32 162 94 106 71 244 148 118 172 221 216 150 93 251 213 28 60 20 201 222 239 35 216 177 199 159 111 211 52 164 236 80 179 57 85 195 182 93 6 246 124 111 228 64 186 129 157 251 125 88 155 224 203 228 41 110 140 25 99 228 248 241 111 229 66 89 220 41 94 72 105 105 12 149 229 11 49 215 36 218 253 160 145 114 115 139 245 2 5 133 227 184 125 187 61 249 69 1 220 41 31 64 185 121 33 177 43 223 161 115 55 35 122 127 63 180 26 79 66 59 56 211 167 103 51 222 124 189 41 19 198 63 195 244 104 103 102 78 127 158 25 209 173 152 252 167 230 140 122 221 137 193 125 156 137 232 228 38 102 240 20 31 8 101 244 59 35 56 125 102 47 85 119 147 41 40 239 65 65 137 145 130 130 80 110 149 77 146 139 223 22 39 180 74 28 216 174 81 82 54 139 138 242 33 148 85 12 165 164 242 77 142 100 206 96 194 164 65 68 118 9 34 36 200 136 78 236 174 242 246 193 79 165 65 165 54 224 35 118 247 149 181 143 151 55 42 47 79 116 190 126 152 212 65 4 25 194 8 52 6 11 25 136 232 168 103 252 216 33 156 206 58 202 157 146 127 144 115 187 55 229 165 163 37 83 14 167 188 58 218 30 21 2 64 76 111 203 167 196 60 157 162 146 110 18 255 253 41 175 120 151 179 167 150 51 125 226 36 194 66 140 4 25 77 232 197 225 252 84 94 104 117 190 232 77 90 116 129 6 180 6 35 42 113 74 149 159 22 189 65 75 96 160 81 188 223 136 41 72 143 41 80 69 100 167 0 38 142 235 69 202 150 201 36 38 117 99 243 150 54 164 110 111 195 161 67 94 20 150 204 16 0 149 2 192 238 3 5 148 86 79 161 184 60 130 242 162 183 40 202 153 74 201 173 121 156 59 51 139 133 11 250 242 98 164 14 95 111 111 124 253 60 4 128 55 6 127 141 144 30 189 46 80 34 194 40 154 80 163 209 139 6 2 3 49 6 153 8 144 16 244 55 249 138 201 12 188 59 178 43 71 143 15 230 226 53 19 103 178 84 100 166 155 216 189 45 64 234 71 140 68 66 149 18 5 54 73 149 89 164 31 125 91 80 189 202 205 235 3 200 190 50 144 236 155 221 185 116 189 131 28 236 47 201 68 139 107 235 167 105 231 229 34 97 231 135 94 221 1 173 218 95 64 181 195 203 227 57 84 170 102 104 181 207 160 211 180 17 80 42 2 68 59 250 0 53 6 131 55 3 162 2 57 127 118 34 85 149 35 40 184 221 81 200 64 113 193 48 14 238 139 161 90 10 156 189 28 159 59 147 197 160 190 93 249 236 147 94 156 253 49 74 42 91 4 87 175 5 115 51 207 72 238 237 112 166 76 81 209 188 69 83 220 220 91 226 235 227 133 94 21 44 0 124 233 218 189 37 19 223 115 102 254 124 111 150 125 225 199 172 25 174 12 238 231 132 191 222 13 141 70 124 69 227 197 192 193 26 142 159 120 149 234 170 81 88 197 238 54 203 120 169 152 111 18 251 229 104 137 186 114 5 128 133 220 236 60 134 12 30 65 159 40 127 78 157 30 75 205 189 15 37 84 166 114 183 106 2 37 133 175 49 101 124 24 79 53 115 198 213 221 9 79 207 86 168 125 212 4 24 91 243 209 28 31 50 50 253 164 90 182 36 125 95 115 50 143 61 197 174 52 61 93 34 90 209 174 173 59 30 226 180 51 223 127 133 115 167 39 176 239 128 154 3 7 60 57 114 204 151 172 243 157 56 117 114 3 22 203 61 5 128 35 37 153 43 205 92 190 150 42 245 126 188 132 201 139 20 220 233 194 173 252 30 148 22 140 101 214 159 123 208 164 73 83 154 53 111 142 171 235 179 248 248 60 47 89 207 137 73 239 181 229 96 134 23 167 178 92 200 60 222 130 203 151 157 216 190 203 9 67 192 147 60 217 180 25 206 206 174 76 156 16 40 251 93 200 190 214 153 204 253 93 56 113 164 61 183 242 70 74 127 144 87 159 138 29 141 131 189 127 168 205 163 170 98 62 217 87 95 228 226 153 112 110 94 237 43 161 57 156 191 198 132 8 128 199 105 242 196 179 184 56 187 224 233 238 41 182 246 97 218 52 61 177 177 110 44 158 215 138 229 243 188 88 52 183 13 43 87 24 8 13 214 137 198 156 104 219 166 53 175 13 211 219 19 148 217 170 162 202 26 64 181 45 144 27 185 175 144 155 115 88 156 208 90 215 146 137 112 115 69 185 168 48 129 19 153 35 40 42 124 137 252 219 38 242 11 77 84 89 134 179 228 203 158 52 107 214 148 199 30 123 154 86 45 93 132 177 59 62 222 110 68 79 245 36 227 176 158 195 7 140 236 75 237 192 201 99 237 73 219 109 18 251 55 39 34 178 51 171 86 173 98 212 27 175 209 63 202 131 213 255 10 98 223 193 222 28 56 210 143 101 203 251 113 244 232 94 209 130 229 167 158 48 47 39 143 37 11 62 229 219 228 201 212 88 62 150 194 49 78 74 67 52 231 206 207 96 210 196 222 108 221 156 202 7 51 103 19 209 57 28 79 175 214 18 146 46 162 94 13 75 150 180 98 197 151 79 176 102 117 19 150 126 241 7 22 45 246 98 93 92 44 185 249 217 148 150 148 242 233 156 57 60 215 226 143 18 45 45 8 15 213 18 218 177 29 221 94 14 146 250 240 163 189 63 184 223 148 230 231 231 49 123 246 76 134 13 139 224 243 185 99 88 185 108 26 49 239 15 149 88 118 167 75 120 36 21 37 102 251 129 10 115 153 228 246 83 204 250 203 76 230 47 10 224 114 142 196 246 73 39 73 46 206 146 114 61 57 118 162 27 63 158 59 96 55 169 213 98 19 127 42 96 105 236 82 186 117 235 78 128 191 78 0 132 50 247 179 197 146 240 202 30 244 129 59 133 119 136 153 19 67 59 79 79 92 221 156 113 113 18 123 55 111 65 72 251 16 182 36 111 19 102 85 216 172 37 74 231 64 97 97 49 115 231 124 76 84 143 231 88 243 149 139 132 177 55 215 111 180 21 243 185 242 222 164 199 89 182 232 111 118 176 150 154 26 172 53 14 31 43 47 171 228 218 149 75 162 153 27 162 97 165 236 59 156 255 190 6 172 146 144 174 92 189 193 226 165 203 153 56 41 154 153 51 63 36 46 110 13 57 57 57 142 135 133 77 58 26 165 171 145 117 81 241 29 230 47 248 132 176 112 31 122 245 118 101 200 80 103 222 24 233 204 192 1 173 8 9 118 38 233 155 77 117 142 45 221 176 148 118 197 217 236 93 143 125 72 211 163 180 62 247 91 178 186 23 145 3 209 195 159 105 142 110 214 17 41 118 51 84 152 89 190 60 22 127 163 150 144 78 122 58 70 168 165 83 114 199 96 106 43 89 208 135 163 63 164 215 1 80 206 89 27 188 140 234 121 56 248 60 160 129 135 189 116 30 245 164 178 73 5 189 124 233 42 147 39 79 23 143 215 75 114 242 144 130 228 67 228 11 97 172 141 251 170 78 160 67 200 131 0 126 122 254 253 2 64 195 183 223 195 214 15 219 171 170 170 230 236 217 243 236 220 185 71 90 248 31 40 41 46 189 127 179 122 109 41 189 207 163 94 72 15 104 160 222 66 255 235 249 223 170 29 0 238 60 248 67 23 0 0 0 0 73 69 78 68 174 66 96 130]!

newNamed: aString

	^super new initialize
		name: aString;
		yourself.! !
!BBDataBaseModel class categoriesFor: #databaseCache!public! !
!BBDataBaseModel class categoriesFor: #databaseCacheAsSortedCollection!public! !
!BBDataBaseModel class categoriesFor: #icon!constants!public! !
!BBDataBaseModel class categoriesFor: #newNamed:!public! !

