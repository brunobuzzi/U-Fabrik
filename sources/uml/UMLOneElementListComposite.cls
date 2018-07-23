"Filed out from Dolphin Smalltalk 7"!

UMLListComposite subclass: #UMLOneElementListComposite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLOneElementListComposite guid: (GUID fromString: '{b2970314-22f5-4ccc-b721-fa8be7f718a2}')!
UMLOneElementListComposite comment: ''!
!UMLOneElementListComposite categoriesForClass!Unclassified! !
!UMLOneElementListComposite methodsFor!

addNewObject
	| mainObject relatedObjectClass selectedObject |
	objectListPresenter model size = 1 
		ifTrue: 
			[^MessageBox notify: 'This is 1-x relation, only one object can added to this relation.'
				caption: self applicationName].
	mainObject := self topShell getModel.
	relatedObjectClass := mainObject getRelatedClassForInstVarNamed: view name
				ifAbsent: [self selectClassForTheNewInstance].	"self selectedInstVar instVarName"
	relatedObjectClass hasSubclasses 
		ifTrue: 
			[relatedObjectClass := (DetalleDeOpciones 
						listaCon: relatedObjectClass allSubclasses
						para: 'UMLClasses view'
						titulo: 'Select the class to instance') ifNil: [^self] ifNotNil: [:value | value last]].
	selectedObject := relatedObjectClass newInstance.
	selectedObject runBehaviorInitialize.
	self addNewObject: selectedObject!

addNewObject: anUMLInstance
	| mainObject collection mainLink relatedLink relation removedObject |

	mainObject := self topShell getModel.
	relation := mainObject relationForInstVarNamed: view name.
	mainLink := relation getSymbolToLinkWith: mainObject umlClass.

	removedObject := mainObject getVariableNamed: view name.
	removedObject smalltalkObject ifNotNil: [:value | 
			value vmPerform: (relation getSymbolToBreakLinkWith: removedObject umlClass)
				withArguments: (Array with: mainObject)].

	mainObject vmPerform: mainLink withArguments: (Array with: anUMLInstance).

	(relation relation isNavigable: anUMLInstance umlClass)
	ifTrue: [relatedLink := relation getSymbolToLinkWith: anUMLInstance umlClass.
		anUMLInstance vmPerform: relatedLink withArguments: (Array with: mainObject).].

	collection := (mainObject getVariableNamed: view name) smalltalkObject.
	collection class == UMLInstance ifTrue: [collection := OrderedCollection with: collection].
	(collection size = 1 and: [listPresenterCreated not])
		ifTrue: [collection last createListViewFor: self].
	objectListPresenter model: (ListModel on: collection)!

addObject
	| mainObject relatedObjectClass setupObjects selectedObject relation mainLink relatedLink |
	objectListPresenter model size = 1 
		ifTrue: 
			[^MessageBox notify: 'This is 1-x relation, only one object can added to this relation.'
				caption: self applicationName].
	mainObject := self topShell getModel.
	relatedObjectClass := mainObject getRelatedClassForInstVarNamed: view name.
	setupObjects := (mainObject virtualMachine umlModelOf: mainObject umlClass) 
				getAnyStoreObjectOf: relatedObjectClass.
	selectedObject := (DetalleDeOpciones listaUMLDinamicaCon: setupObjects titulo: 'Seleccione Objeto') 
				ifNil: [^self]
				ifNotNil: [:value | value last].
	"(selectedObject class == UMLInstance) ifFalse: [^self]."
	relation := mainObject relationForInstVarNamed: view name.
	mainLink := relation getSymbolToLinkWith: mainObject umlClass.
	mainObject vmPerform: mainLink withArguments: (Array with: selectedObject).
	(relation relation isNavigable: selectedObject umlClass) 
		ifTrue: 
			[relatedLink := relation getSymbolToLinkWith: selectedObject umlClass.
			selectedObject vmPerform: relatedLink withArguments: (Array with: mainObject)].
	objectListPresenter model add: selectedObject!

onDropOverList: aDragDropSession 
	| relation newInstance |
	relation := self topShell model relationFor: aDragDropSession suggestedSource umlClass.
	relation 
		ifNil: 
			[^MessageBox notify: 'Drag and drop does not match between objects.' caption: self applicationName].
	relation isAssociationClass ifFalse: [^self addNewObject: aDragDropSession suggestedSource].
	newInstance := (relation relation classToCreateInstanceLinkedTo: aDragDropSession suggestedSource) 
				vmPerform: #newInstance.
	newInstance vmPerform: #initialize.
	(newInstance hasVariableNamed: aDragDropSession suggestedSource umlClass nameForRelation asSymbol) 
		ifTrue: 
			[newInstance atVariableName: aDragDropSession suggestedSource umlClass nameForRelation asSymbol
				put: aDragDropSession suggestedSource.
			self addNewObject: newInstance]
		ifFalse: [self halt]!

relatedObjectLinkSymbol

	^#setDirectRelationWith:!

removeObject
	| mainObject selectedObject relation  relatedLink |

	objectListPresenter hasSelection ifFalse: [^self].
	(MessageBox confirm: 'Do you want to remove the selected object ?' caption: 'UML Virtual Environment') ifFalse: [^nil].

	mainObject := self topShell getModel.
	selectedObject := self selection.
	objectListPresenter model remove: selectedObject.
	mainObject vmPerform: (view name , ':') asSymbol
		withArguments: (Array with: self defaultVirtualMachine nilObject).
	relation := mainObject relationForInstVarNamed: view name.
	"mainLink := relation getSymbolToBreakLinkWith: mainObject umlClass."

	(relation relation isNavigable: selectedObject umlClass)
	ifTrue: [relatedLink := relation getSymbolToBreakLinkWith: selectedObject umlClass.
		selectedObject vmPerform: relatedLink withArguments: (Array with: mainObject)].! !
!UMLOneElementListComposite categoriesFor: #addNewObject!abm!public! !
!UMLOneElementListComposite categoriesFor: #addNewObject:!abm!public! !
!UMLOneElementListComposite categoriesFor: #addObject!abm!public! !
!UMLOneElementListComposite categoriesFor: #onDropOverList:!public! !
!UMLOneElementListComposite categoriesFor: #relatedObjectLinkSymbol!public! !
!UMLOneElementListComposite categoriesFor: #removeObject!abm!public! !

!UMLOneElementListComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 517 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 592 0 0 0 5 0 0 0 592 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.Toolbar)  98 25 0 592 98 2 8 1409288972 131137 688 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 517 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 688 770 800 8 4294902547 234 256 544 234 256 98 6 59431 1115910 ##(Smalltalk.ToolbarIconButton)  59431 0 688 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #addObject 8 'Add Existing Object' 1 1 786694 ##(Smalltalk.InternalIcon)  852742 ##(Smalltalk.GdiplusBitmap)  0 16 2097670 ##(Smalltalk.GdiplusImageFromBytesInitializer)  0 8 #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 32 0 0 0 32 8 6 0 0 0 115 122 122 244 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 32 99 72 82 77 0 0 122 38 0 0 128 132 0 0 250 0 0 0 128 232 0 0 117 48 0 0 234 96 0 0 58 152 0 0 23 112 156 186 81 60 0 0 0 110 73 68 65 84 88 71 237 150 65 10 192 32 12 4 211 255 127 54 63 176 173 71 177 221 46 66 131 48 66 78 81 118 29 76 204 145 153 45 42 215 109 160 50 162 82 188 211 223 206 64 68 187 222 204 115 184 23 178 9 96 0 2 16 248 133 128 18 89 201 143 125 98 218 7 86 4 212 89 12 64 0 2 159 8 188 253 233 110 153 169 249 128 121 0 2 16 216 143 128 170 107 55 111 19 112 5 212 126 12 156 58 81 143 237 141 247 167 47 0 0 0 0 73 69 78 68 174 66 96 130] 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 898 33 33 1 59433 1010 59433 0 688 1 1042 8 #addNewObject 8 'Add New Object' 1 1 1106 1138 0 16 1170 0 8 #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 32 0 0 0 32 8 6 0 0 0 115 122 122 244 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 32 99 72 82 77 0 0 122 38 0 0 128 132 0 0 250 0 0 0 128 232 0 0 117 48 0 0 234 96 0 0 58 152 0 0 23 112 156 186 81 60 0 0 4 103 73 68 65 84 88 71 237 87 251 79 155 101 24 93 212 104 140 154 24 5 6 155 180 220 239 133 10 133 82 6 101 220 10 31 3 217 184 140 219 102 199 109 194 24 148 114 31 46 102 211 25 167 206 232 186 76 19 55 51 21 212 40 138 178 139 184 117 23 220 196 93 116 48 100 44 225 63 49 154 112 124 206 11 18 183 44 164 77 172 241 135 145 60 249 154 126 239 247 158 243 156 247 156 167 31 107 214 60 248 123 160 128 151 10 216 103 28 79 183 205 245 229 116 204 13 218 118 207 246 107 45 211 14 173 250 106 139 86 50 89 167 229 185 43 45 139 139 139 143 1 120 200 203 109 61 95 222 50 227 204 233 184 61 128 206 249 61 104 159 235 67 195 205 14 84 76 53 160 224 124 21 44 167 138 255 16 2 6 169 167 60 223 209 203 149 45 51 93 182 93 191 245 9 120 63 118 222 234 70 221 245 151 80 124 169 22 150 51 197 72 249 42 15 2 222 32 21 236 229 182 158 47 111 16 201 9 44 74 192 254 75 59 182 92 177 35 251 108 25 76 163 249 72 252 36 75 212 199 160 16 136 240 124 71 47 87 146 64 227 116 39 236 191 182 163 250 106 51 138 46 86 35 253 100 17 140 35 217 136 63 158 225 123 2 52 29 207 189 254 122 43 54 95 121 17 57 231 182 32 117 172 64 186 183 34 225 163 13 190 39 208 58 219 163 53 222 236 68 237 181 157 40 253 177 30 217 63 148 41 2 198 207 54 42 21 124 126 4 36 208 52 237 88 33 176 241 236 102 152 229 8 82 191 41 64 218 183 182 127 135 128 196 107 159 99 126 232 144 243 206 94 87 207 114 57 239 12 185 58 231 7 93 187 102 123 220 84 64 178 143 146 201 122 117 4 27 190 223 164 82 144 57 81 138 2 119 229 159 165 151 183 143 87 77 53 185 106 175 181 184 100 157 75 142 202 85 120 190 218 101 157 40 45 23 134 79 74 61 188 170 245 24 51 1 67 215 252 16 28 146 247 206 219 131 216 45 177 107 155 237 69 179 116 191 237 70 155 202 126 241 165 26 228 158 43 71 214 196 11 170 248 89 147 239 152 140 173 63 55 169 162 79 10 47 108 21 114 37 72 27 179 77 11 184 145 36 86 37 64 151 51 102 172 230 233 46 53 108 24 185 109 55 90 81 35 157 151 255 180 3 155 38 235 100 248 84 170 8 178 243 44 41 30 7 7 18 231 2 239 107 23 107 148 66 76 73 242 23 57 48 124 156 201 57 81 41 229 191 42 129 42 97 94 57 213 136 10 1 42 187 188 125 105 51 233 140 145 43 188 80 173 64 114 221 229 176 138 1 41 127 250 105 77 129 164 159 210 96 57 93 172 142 131 87 122 130 192 76 71 244 209 84 68 190 151 76 143 236 144 10 92 149 64 190 187 66 117 198 141 210 190 43 132 73 12 102 250 58 95 220 110 131 121 188 232 46 16 243 248 210 125 2 49 5 28 70 134 19 153 136 63 150 129 152 247 211 16 249 110 50 66 15 38 66 247 90 28 130 95 141 243 140 0 129 24 171 4 25 44 220 36 234 136 73 117 16 255 161 5 73 195 86 53 114 185 134 29 114 2 170 33 116 204 130 40 151 9 225 135 140 8 57 104 128 238 64 60 130 247 199 98 221 222 40 4 238 137 192 218 129 48 4 201 213 35 5 216 65 244 145 84 132 190 153 168 88 115 35 253 235 9 136 144 110 226 132 4 1 9 76 85 158 255 60 71 77 64 222 35 168 2 28 12 199 218 254 48 4 244 134 192 191 91 15 63 167 94 93 249 157 71 4 164 235 17 1 255 253 185 125 49 8 26 138 192 186 151 35 133 72 44 194 223 49 46 17 16 117 8 254 119 247 84 41 228 13 131 90 71 80 63 167 14 126 93 58 60 187 92 252 236 223 19 34 74 132 223 242 200 132 52 137 44 44 90 102 75 211 172 148 225 68 214 48 143 128 242 115 248 36 125 106 85 210 235 68 41 202 44 207 29 151 234 190 223 179 4 247 40 134 178 232 81 89 252 12 137 220 91 201 95 230 217 105 76 186 158 4 104 58 26 141 106 5 244 133 146 192 126 41 243 253 158 101 252 60 26 68 171 69 196 52 86 160 49 118 28 191 84 130 110 15 123 59 73 157 61 229 247 249 111 129 249 140 166 17 156 30 96 247 74 126 137 24 141 199 115 246 61 129 147 154 150 50 154 167 192 25 205 127 154 143 78 247 57 1 211 104 174 118 23 184 146 62 116 37 106 62 39 96 28 177 106 177 31 152 17 250 86 34 214 191 18 173 178 205 156 51 106 255 137 7 98 134 179 130 162 14 167 12 232 15 196 187 3 135 34 22 2 122 245 11 254 78 221 130 127 143 126 65 98 56 233 243 151 82 145 248 17 1 89 47 149 193 89 113 79 229 249 252 181 156 17 93 38 241 248 114 166 249 130 161 74 192 159 240 249 63 38 94 190 68 255 255 151 255 5 129 122 192 61 219 140 93 122 0 0 0 0 73 69 78 68 174 66 96 130] 1218 0 16 0 0 0 0 3 898 33 33 1 59435 1010 59435 0 688 1 1042 8 #removeObject 8 'Remove Object' 1 1 1106 1138 0 16 1170 0 8 #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 32 0 0 0 32 8 6 0 0 0 115 122 122 244 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 32 99 72 82 77 0 0 122 38 0 0 128 132 0 0 250 0 0 0 128 232 0 0 117 48 0 0 234 96 0 0 58 152 0 0 23 112 156 186 81 60 0 0 2 83 73 68 65 84 88 71 237 148 201 107 19 113 28 197 11 66 15 38 105 48 77 154 218 197 54 86 212 42 214 180 77 104 213 46 164 155 73 107 138 74 93 160 7 119 69 92 16 61 20 21 4 171 85 177 104 173 91 253 3 122 87 219 90 148 234 193 82 176 110 212 133 30 220 80 20 20 4 21 179 205 76 15 121 126 191 147 52 154 28 132 153 131 120 248 5 30 129 97 230 251 121 239 205 252 190 105 105 226 39 26 16 13 136 6 68 3 255 115 3 202 165 102 40 125 126 76 93 107 197 84 95 43 148 43 171 160 92 110 129 122 253 162 47 89 189 62 200 61 77 144 207 214 33 114 162 10 225 195 229 8 238 95 132 192 142 185 253 0 178 73 233 154 179 42 189 222 24 240 106 28 76 80 249 194 202 24 232 124 138 206 53 170 112 233 100 53 194 71 220 42 252 231 118 7 190 180 231 203 209 104 212 75 178 104 54 32 119 55 196 64 61 4 101 64 119 61 164 51 30 72 167 107 33 157 74 81 87 13 34 199 151 19 220 165 194 127 108 115 224 211 198 124 188 94 147 67 225 177 153 91 208 108 128 211 72 52 152 21 233 92 129 200 177 74 132 143 186 85 8 87 156 164 142 50 132 14 149 32 184 103 1 190 109 41 196 135 245 121 152 244 103 99 194 107 211 111 32 1 235 40 69 232 32 13 223 87 140 224 238 249 8 236 154 151 162 34 126 215 248 190 213 129 207 237 115 240 118 109 14 158 251 178 48 94 151 137 177 90 139 126 3 161 3 139 17 220 187 16 129 157 69 106 42 30 254 113 67 30 165 203 197 251 117 201 122 215 150 139 87 171 103 227 101 139 29 143 26 172 24 173 158 133 123 203 204 184 91 105 214 111 128 83 125 221 84 160 66 121 248 139 102 59 158 54 217 240 164 209 138 199 4 153 22 3 31 214 91 241 192 147 153 0 223 118 153 112 171 204 136 225 114 147 126 3 156 248 205 31 117 222 175 250 157 138 147 77 107 164 194 140 145 138 12 220 113 103 168 192 161 82 35 6 150 26 112 147 52 68 38 116 127 132 12 159 240 102 97 172 198 66 0 115 98 248 32 1 6 157 201 26 112 26 18 208 27 37 6 92 95 50 19 252 207 45 232 54 48 233 183 247 143 123 44 50 191 75 78 198 16 30 250 119 49 56 6 231 251 135 93 166 103 180 3 218 72 54 205 199 144 207 46 47 145 120 2 62 203 154 197 112 122 206 73 50 234 49 144 206 27 44 190 74 121 157 106 22 39 103 56 105 134 102 3 226 1 209 128 104 64 52 240 47 26 248 5 158 50 102 216 50 176 1 1 0 0 0 0 73 69 78 68 174 66 96 130] 1218 0 16 0 0 0 0 3 898 33 33 1 98 3 1024 1264 1424 234 240 98 6 1552 5 1232 1 1392 3 0 1 0 898 33 33 898 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 898 1 1 898 1331 51 688 1762 8 #updateSize 544 688 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 153 2 0 0 25 0 0 0] 98 0 898 193 193 0 27 0 0 0 410 8 ##(Smalltalk.ListView)  98 30 0 592 98 2 8 1140920397 1025 1968 590662 2 ##(Smalltalk.ListModel)  202 208 544 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  196934 1 ##(Smalltalk.RGB)  28306427 0 29 265030 4 ##(Smalltalk.Menu)  0 16 98 5 984134 2 ##(Smalltalk.CommandMenuItem)  1 1042 8 #initializeObject 8 'Initialize Object' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 2210 1 1042 8 #inspectObjectForDesignGUI 8 'Inspect Object for Design GUI' 1 1 0 0 0 2290 4097 2210 1 1042 8 #inspectGlobalObject 8 'Inspect Global Object' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 1968 0 8 4294902039 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Column 1' 201 8 #left 2498 2528 2544 8 ##(Smalltalk.SortedCollection)  0 0 1968 0 1 0 0 8 #report 544 0 131169 0 0 1698 202 208 98 3 1762 1792 98 2 898 1 51 898 1331 231 1968 1762 8 #contextMenu: 98 1 2176 1968 1762 8 #text: 98 1 8 'Column 1' 1968 1890 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 153 2 0 0 140 0 0 0] 98 0 1952 0 27 234 256 98 4 1968 8 'objectList' 688 8 'addRemoveToolbar' 0 1698 202 208 98 1 1762 1792 98 2 898 1 1 898 1331 281 592 1890 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 153 2 0 0 140 0 0 0] 98 2 688 1968 1952 0 27 8 'listContainer' 0 1698 202 208 98 1 1762 1792 98 2 898 2879 21 898 1331 281 416 1890 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 56 8 0 0 150 0 0 0] 98 1 592 1952 0 27 )! !
!UMLOneElementListComposite class categoriesFor: #resource_Default_view!public!resources-views! !

