"Filed out from Dolphin Smalltalk 7"!

DataBaseObject subclass: #BBDBForeignKey
	instanceVariableNames: 'table localName attributes foreignAttribute relatedTable'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBDBForeignKey guid: (GUID fromString: '{daba16a6-b142-4f70-8a44-320e0c7d9eed}')!
BBDBForeignKey comment: ''!
!BBDBForeignKey categoriesForClass!Unclassified! !
!BBDBForeignKey methodsFor!

addAttribute: aBBDBAttribute

	^attributes at: aBBDBAttribute name put: aBBDBAttribute!

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

copyAttributesToClipboard
	"The receive copy all attributes of the related table to clipboard to be paste in a Excel application"

	^relatedTable copyAttributesToClipboard!

foreignAttribute
	^foreignAttribute!

foreignAttribute: anObject
	foreignAttribute := anObject!

hasBadDefinition
	"If the receiver is composed by more than one attribute, then these attributes are all nullable or all are not nullable at all"

	(attributes size = 1) ifTrue: [^false].

	^((attributes allSatisfy: [:each | each nullable]) or: [(attributes allSatisfy: [:each | each nullable not])]) not!

icon

	self isNullable ifFalse: [^self class icon].

	^self class nullableIcon!

includesAttribute: aBBDBAttribute

	^attributes includes: aBBDBAttribute!

includesAttributeNamed: aString

	^attributes includesKey: aString!

initialize
	super initialize.

	localName := ''.
	attributes := LookupTable new.!

isEqualTo: aBBDBForeignKey

	^self tableName = aBBDBForeignKey tableName 
		and: [self relatedTableName = aBBDBForeignKey relatedTableName
		and: [self attributesNames size = aBBDBForeignKey attributesNames size
		and: [((self attributesNames difference: aBBDBForeignKey attributesNames) isEmpty)]]]!

isNullable
	"Answer whether the receiver is nullable or not"

	^attributes anySatisfy: [:each | each nullable]!

localName
	^localName!

localName: anObject
	localName := anObject!

printAttributeName
	| attributesString |

	attributes isEmpty ifTrue: [^''].

	attributesString := ''.
	attributes do: [:each | attributesString := attributesString, each name, ', '].

	^attributesString allButLast: 2!

printForeignTreeName

	^relatedTable name!

printRelatedTableName

	^relatedTable name!

relatedTable
	^relatedTable!

relatedTable: anObject
	relatedTable := anObject!

relatedTableName

	^relatedTable name!

removeAttribute: aBBDBAttribute

	^attributes removeKey: aBBDBAttribute name!

removeAttributeNamed: aString

	^attributes removeKey: aString!

table
	^table!

table: anObject
	table := anObject!

tableName

	^table name! !
!BBDBForeignKey categoriesFor: #addAttribute:!public! !
!BBDBForeignKey categoriesFor: #asTreeWrapper!public! !
!BBDBForeignKey categoriesFor: #attributes!accessing!private! !
!BBDBForeignKey categoriesFor: #attributes:!accessing!private! !
!BBDBForeignKey categoriesFor: #attributesAsSortedCollection!public! !
!BBDBForeignKey categoriesFor: #attributesNames!public! !
!BBDBForeignKey categoriesFor: #copyAttributesToClipboard!public! !
!BBDBForeignKey categoriesFor: #foreignAttribute!accessing!private! !
!BBDBForeignKey categoriesFor: #foreignAttribute:!accessing!private! !
!BBDBForeignKey categoriesFor: #hasBadDefinition!public! !
!BBDBForeignKey categoriesFor: #icon!public! !
!BBDBForeignKey categoriesFor: #includesAttribute:!public! !
!BBDBForeignKey categoriesFor: #includesAttributeNamed:!public! !
!BBDBForeignKey categoriesFor: #initialize!public! !
!BBDBForeignKey categoriesFor: #isEqualTo:!public! !
!BBDBForeignKey categoriesFor: #isNullable!public! !
!BBDBForeignKey categoriesFor: #localName!accessing!private! !
!BBDBForeignKey categoriesFor: #localName:!accessing!private! !
!BBDBForeignKey categoriesFor: #printAttributeName!public! !
!BBDBForeignKey categoriesFor: #printForeignTreeName!public! !
!BBDBForeignKey categoriesFor: #printRelatedTableName!public! !
!BBDBForeignKey categoriesFor: #relatedTable!accessing!private! !
!BBDBForeignKey categoriesFor: #relatedTable:!accessing!private! !
!BBDBForeignKey categoriesFor: #relatedTableName!public! !
!BBDBForeignKey categoriesFor: #removeAttribute:!public! !
!BBDBForeignKey categoriesFor: #removeAttributeNamed:!public! !
!BBDBForeignKey categoriesFor: #table!accessing!private! !
!BBDBForeignKey categoriesFor: #table:!accessing!private! !
!BBDBForeignKey categoriesFor: #tableName!public! !

!BBDBForeignKey class methodsFor!

forTable: aBBDBTable 

	^super new initialize
		table: aBBDBTable;
		yourself.
!

icon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'foreignkey.png'.
	"
	^InternalIcon fromBytes: #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 32 0 0 0 32 8 6 0 0 0 115 122 122 244 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 32 99 72 82 77 0 0 122 38 0 0 128 132 0 0 250 0 0 0 128 232 0 0 117 48 0 0 234 96 0 0 58 152 0 0 23 112 156 186 81 60 0 0 2 89 73 68 65 84 88 71 197 151 205 75 84 81 24 198 79 212 34 24 49 107 136 22 129 17 153 48 83 51 12 73 84 4 145 210 86 90 20 134 145 27 55 209 202 97 192 92 140 40 180 105 163 5 209 199 34 104 215 66 23 226 31 208 162 141 74 160 65 203 6 41 117 242 163 54 37 131 186 146 199 247 220 153 123 230 126 156 123 239 57 206 153 219 129 11 23 230 114 223 223 60 239 243 126 220 35 11 223 128 211 73 198 46 156 101 255 231 204 19 64 102 0 24 127 7 252 221 65 236 135 241 136 15 199 0 214 6 28 191 2 60 121 6 124 95 137 143 195 2 248 186 76 0 29 116 93 166 235 92 29 164 20 3 136 5 192 79 250 62 5 239 164 27 198 192 50 241 129 8 128 183 211 213 160 28 192 190 226 0 17 0 219 21 32 121 155 98 167 221 16 50 69 126 252 50 231 17 1 192 95 89 120 65 0 237 126 0 175 34 137 171 192 208 115 192 4 136 11 96 185 12 28 203 17 68 54 24 194 82 164 102 86 19 32 46 0 174 194 221 2 1 156 15 7 16 138 212 64 90 26 80 196 7 240 121 145 0 46 170 1 152 0 241 1 112 21 114 253 250 16 135 77 141 20 224 195 172 191 36 157 229 25 117 175 227 17 41 192 206 30 112 230 14 65 164 244 82 225 5 179 65 132 71 214 253 229 43 5 224 143 21 223 132 151 100 148 10 174 134 230 48 235 240 4 80 222 170 131 4 2 172 109 2 173 55 8 130 218 178 78 176 176 103 109 69 78 92 7 158 78 18 200 111 122 117 88 79 235 126 92 29 82 166 0 68 213 208 204 97 45 100 246 71 33 0 63 41 95 137 107 77 80 128 58 173 80 224 79 8 192 200 43 243 30 224 129 149 60 80 217 165 53 173 71 62 152 116 210 225 204 185 55 176 157 122 169 7 222 207 152 233 3 66 106 135 235 189 158 147 2 100 31 212 151 19 237 127 236 204 113 72 224 64 5 62 125 209 119 190 138 212 65 213 230 83 160 55 175 63 13 101 230 82 93 89 92 0 165 85 224 40 237 2 170 251 128 74 142 163 64 92 0 121 106 147 222 189 208 215 82 53 115 172 12 240 143 118 194 83 183 8 224 146 100 39 172 245 242 70 164 142 244 192 235 41 201 86 220 196 192 190 42 72 221 171 151 30 87 129 167 194 68 142 149 82 176 84 170 150 30 95 201 121 224 147 52 5 173 105 165 80 199 81 1 162 126 183 76 216 87 164 192 244 109 152 188 9 140 210 12 216 160 33 17 215 97 115 244 117 220 53 8 188 252 8 236 199 21 213 17 231 0 39 237 100 120 0 195 160 199 0 0 0 0 73 69 78 68 174 66 96 130]!

newNamed: aString

	^super new initialize
		localName: aString;
		yourself.!

newNamed: aString for: aBBDBTable 

	^super new initialize
		localName: aString;
		table: aBBDBTable;
		yourself.
!

nullableIcon

	^InternalIcon fromBytes: #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 32 0 0 0 32 8 6 0 0 0 115 122 122 244 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 32 99 72 82 77 0 0 122 38 0 0 128 132 0 0 250 0 0 0 128 232 0 0 117 48 0 0 234 96 0 0 58 152 0 0 23 112 156 186 81 60 0 0 2 79 73 68 65 84 88 71 99 60 126 241 255 127 81 97 6 6 101 105 134 129 1 199 128 14 208 141 253 255 191 126 250 255 255 239 191 254 167 59 96 0 217 24 85 247 255 63 131 192 255 255 28 70 255 255 103 54 253 255 127 243 1 253 220 1 118 192 185 59 64 7 168 0 177 14 16 203 35 28 114 139 14 14 1 59 0 4 180 66 128 150 171 1 49 8 234 210 207 33 112 7 76 91 5 177 20 236 0 24 164 131 67 224 14 248 248 249 255 127 97 7 160 3 180 208 28 129 37 68 238 61 161 94 26 129 59 0 100 100 81 31 208 114 57 44 14 64 11 17 110 211 255 255 243 219 255 255 167 134 67 80 28 112 231 241 255 255 44 6 64 7 232 225 113 4 200 49 208 196 74 13 135 160 56 0 20 10 254 69 64 203 21 9 56 0 22 34 80 135 240 80 16 34 24 14 56 112 6 104 185 42 145 14 160 130 67 48 28 0 10 5 131 72 50 28 65 102 212 96 117 192 188 13 88 178 36 106 6 197 207 35 33 141 96 117 192 215 239 255 255 139 187 0 29 161 73 98 84 160 59 11 61 141 60 197 204 190 88 29 0 82 86 61 149 64 150 36 35 68 64 137 181 180 231 255 255 199 47 16 14 193 233 128 71 207 255 255 231 179 4 58 2 84 26 82 11 66 67 132 223 226 255 255 178 94 160 67 94 130 204 198 3 28 211 161 149 20 181 28 0 51 7 84 231 240 0 19 123 12 30 7 220 7 198 23 183 57 13 66 0 88 210 194 67 224 21 30 7 148 79 162 126 26 0 89 76 84 26 248 252 13 216 76 115 194 81 49 145 18 29 72 113 142 110 49 44 230 177 166 129 217 235 168 83 14 192 131 26 41 213 163 39 57 172 14 208 11 71 106 156 144 234 99 228 56 198 99 49 206 16 216 115 146 140 148 79 68 80 227 202 108 24 33 224 91 64 122 109 136 45 113 17 219 100 65 113 192 173 135 255 255 51 131 218 2 68 182 7 136 137 99 66 14 65 113 64 1 176 152 196 104 23 34 167 1 80 80 147 24 199 68 59 224 3 176 77 40 100 7 180 64 27 75 209 75 65 28 19 237 128 41 43 177 248 158 134 22 99 228 2 205 96 164 172 7 10 5 96 19 157 26 113 76 84 8 156 189 5 205 122 160 38 57 208 98 65 96 45 8 174 173 136 200 199 132 44 32 36 15 78 132 97 213 64 139 129 125 67 97 235 255 255 107 128 117 192 51 96 37 65 47 192 112 20 216 59 54 78 250 255 191 127 233 255 255 127 233 101 43 146 61 0 42 220 100 120 94 61 245 63 0 0 0 0 73 69 78 68 174 66 96 130]! !
!BBDBForeignKey class categoriesFor: #forTable:!public! !
!BBDBForeignKey class categoriesFor: #icon!constants!public! !
!BBDBForeignKey class categoriesFor: #newNamed:!public! !
!BBDBForeignKey class categoriesFor: #newNamed:for:!public! !
!BBDBForeignKey class categoriesFor: #nullableIcon!public! !

