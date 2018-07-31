"Filed out from Dolphin Smalltalk 7"!

UMLExecutionSnapshot subclass: #UMLImplementationExecutionSnapshot
	instanceVariableNames: 'sequenceReceiver receiverInstanceVariables sequenceArguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLImplementationExecutionSnapshot guid: (GUID fromString: '{157f2f69-b497-4d60-84c1-1af41145bf67}')!
UMLImplementationExecutionSnapshot comment: ''!
!UMLImplementationExecutionSnapshot categoriesForClass!Unclassified! !
!UMLImplementationExecutionSnapshot methodsFor!

activateSnapshotWith: anUMLImplementation receiver: anUMLObject arguments: arguments virtualMachine: anUMLVirtualMachine

	sequenceTemporaries := LookupTable new.
	virtualMachine := anUMLVirtualMachine.
	sequence := anUMLImplementation.

	self sequenceReceiver: anUMLObject.

	anUMLImplementation isVirtualMachineImplementation 
	ifFalse: [anUMLImplementation arguments keysAndValuesDo: [:eachKey :eachValue | 
		sequenceArguments at: eachValue name put: (arguments at: eachKey)]]
	ifTrue: [sequenceArguments := arguments].

	anUMLImplementation temporaries do: [:each | sequenceTemporaries at: each put: nil].!

addObject: anUMLObject named: name

	((receiverInstanceVariables includesKey: name) or: [receiverInstanceVariables includesKey: name asSymbol]) 
	ifTrue: [^self assignObject: anUMLObject toInstanceVariable: name].

	^self assignObject: anUMLObject toTemporary: name.!

asDebuggerSnapshot

	^UMLImplementationDebugerSnapshot snapshot: self!

assignObject: anUMLObject toInstanceVariable: aSymbol

	^sequenceReceiver atVariableName: aSymbol put: anUMLObject snapshot: self!

getObjectNamed: aName
	"Answer anObject for the name <aString>.1- receiver's variables 2- implementation arguments 3- implementation temporaries 4- globals"

	aName ifNil: [^virtualMachine nilObject].
	aName isUMLInstance ifTrue: [^aName].

	((aName = 'self') or:[aName = 'super']) ifTrue: [^self receiverObject].
	aName first isUppercase ifTrue: [(virtualMachine getAnyClassNamed: aName) ifNotNil: [:systemClass | ^systemClass] ].
	^temporaries at: aName ifAbsent: [
		receiverInstanceVariables at: aName asSymbol ifAbsent: [
			sequenceArguments at: aName ifAbsent: [
				sequenceTemporaries at: aName ifAbsent: [
					self defaultVirtualMachine getAnyClassNamed: aName ifAbsent: [self getBasicObjectNamed: aName]] ] ] ]!

hasReceiver

	^true!

initialize

	super initialize.

	sequenceArguments := LookupTable new.!

printName

	^sequence className, '.', sequence name!

printOn: aStream

	"super printOn: aStream."

	aStream
		nextPutAll: 'anExecutionSnapshot';
		nextPut: $<;
		nextPutAll: self printName;
		nextPut: $>.!

printReceiverClass

	^sequenceReceiver className!

printSequenceClassName

	^sequence className!

processAssignment: aStAssignmentNode messageReceiver: anUMLInstance arguments: anArray
	"The receiver process the assigment <anUMLAssigmentNode> with arguments <anArray> in the context of <anUMLInstance>.
	<anUMLInstance> is the receiver of the message send of <anUMLAssigmentNode>, <sequenceReceiver> is the receiver of the assigment"

	aStAssignmentNode hasUMLBlock ifTrue: [^self processBlockAssignment: aStAssignmentNode messageReceiver: anUMLInstance arguments: anArray].
	"we evaluate the message send of the assigment to obtain the result"
	lastResult := aStAssignmentNode hasSelector "to check if the message is a simple assignment (var := 25, var := 'hello world' - etc)"
			ifTrue: [ "| arguments |
				arguments := aStAssignmentNode value arguments."
				self processMessageNode: aStAssignmentNode value context: anUMLInstance parameters: #().
				"self processMessageSend: aStAssignmentNode value messageReceiver: anUMLInstance arguments: arguments."] "we process the message send of the assigment"
			ifFalse: [aStAssignmentNode value isCascade
				ifFalse: [self processSimpleAssingment: aStAssignmentNode messageReceiver: anUMLInstance arguments: anArray"we process the simple message send" ] 
				ifTrue: [self processCascadeAssignmentNode: aStAssignmentNode context: anUMLInstance parameteres: anArray]]. 

	(sequenceReceiver hasVariableNamed: aStAssignmentNode variableName)  
	ifTrue: [^sequenceReceiver atVariableName: aStAssignmentNode variableName put: lastResult snapshot: self] "we store the result of the message send in <sequenceReceiver>"
	ifFalse: [self assignObject: lastResult toTemporary: aStAssignmentNode variableName.]. "we store the result in the temporaries of the receiver "

	^lastResult!

processBlockAssignment: aStAssignmentNode messageReceiver: anUMLInstance arguments: anArray 
	"The receiver process the assigment <anUMLAssigmentNode> (the assignment is aBlock) with arguments <anArray> in the context of <anUMLInstance>. 
	If <anUMLInstance> has a varible named <variableName> then store the result on <anUMLInstance>, if NOT store the result in the temporary stack of the receiver"
	| umlBlock |

	umlBlock := self createBlockFrom: aStAssignmentNode value. "we create the instance og UML class <Block>"
	(sequenceReceiver hasVariableNamed: aStAssignmentNode variableName)  
	ifTrue: [sequenceReceiver atVariableName: aStAssignmentNode variableName put: umlBlock snapshot: self] "we store the Block in the instance variable of <anUMLInstance>" 
	ifFalse: [self assignObject: umlBlock toTemporary: aStAssignmentNode variableName.]. "we store the Block in the temporaries of the receiver "
	sequenceArguments keysAndValuesDo: [:eachKey :eachValue | temporaries at: eachKey put: eachValue]. "we store message arguments in the receiver "
	^lastResult := umlBlock!

processSimpleAssingment: aStAssignmentNode messageReceiver: anUMLInstance arguments: arguments 

	^lastResult := aStAssignmentNode value isVariable "is a simple assignment (without message) of a variable ?"
				ifTrue: [(anUMLInstance hasVariableNamed: aStAssignmentNode value name asSymbol) "the variable is an instVar of <anUMLInstance>"
					ifTrue: [anUMLInstance atVariableName: aStAssignmentNode value name asSymbol] "we get the valur of the instVar of <anUMLInstance> "
					ifFalse: [self getObjectFromProgramNode: aStAssignmentNode].] "if is a temporary variable we get it"
				ifFalse: [aStAssignmentNode value asUMLObject: virtualMachine] "if is a simple object we convert it"
!

receiverInstanceVariables
	^receiverInstanceVariables!

receiverInstanceVariables: anObject
	receiverInstanceVariables := anObject!

receiverObject

	^sequenceReceiver!

selector

	^self parsedCode selector!

sequenceArguments
	^sequenceArguments!

sequenceArguments: anObject
	sequenceArguments := anObject!

sequenceReceiver
	^sequenceReceiver!

sequenceReceiver: anUMLObject

	sequenceReceiver := anUMLObject.
	receiverInstanceVariables := anUMLObject instancesVariables.! !
!UMLImplementationExecutionSnapshot categoriesFor: #activateSnapshotWith:receiver:arguments:virtualMachine:!public!smalltalk parser! !
!UMLImplementationExecutionSnapshot categoriesFor: #addObject:named:!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #asDebuggerSnapshot!debug process!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #assignObject:toInstanceVariable:!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #getObjectNamed:!processesing!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #hasReceiver!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #initialize!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #printName!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #printOn:!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #printReceiverClass!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #printSequenceClassName!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #processAssignment:messageReceiver:arguments:!processesing!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #processBlockAssignment:messageReceiver:arguments:!processesing!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #processSimpleAssingment:messageReceiver:arguments:!processesing!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #receiverInstanceVariables!accessing!private! !
!UMLImplementationExecutionSnapshot categoriesFor: #receiverInstanceVariables:!accessing!private! !
!UMLImplementationExecutionSnapshot categoriesFor: #receiverObject!private!processesing! !
!UMLImplementationExecutionSnapshot categoriesFor: #selector!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #sequenceArguments!accessing!private! !
!UMLImplementationExecutionSnapshot categoriesFor: #sequenceArguments:!accessing!private! !
!UMLImplementationExecutionSnapshot categoriesFor: #sequenceReceiver!accessing!private! !
!UMLImplementationExecutionSnapshot categoriesFor: #sequenceReceiver:!accessing!public! !

!UMLImplementationExecutionSnapshot class methodsFor!

activateSnapshotWith: anUMLImplementation receiver: anUMLObject arguments: arguments virtualMachine: anUMLVirtualMachine

	^super new initialize activateSnapshotWith: anUMLImplementation receiver: anUMLObject arguments: arguments virtualMachine: anUMLVirtualMachine!

icon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'snapshot02.png'.
	"
	^InternalIcon fromBytes: #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 32 0 0 0 32 8 6 0 0 0 115 122 122 244 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 32 99 72 82 77 0 0 122 38 0 0 128 132 0 0 250 0 0 0 128 232 0 0 117 48 0 0 234 96 0 0 58 152 0 0 23 112 156 186 81 60 0 0 11 125 73 68 65 84 88 71 165 151 235 115 147 231 153 198 21 250 177 59 59 153 233 254 71 251 105 103 103 118 167 157 182 108 211 116 105 26 2 9 4 82 66 18 32 64 137 195 193 216 198 96 240 249 108 217 178 37 203 146 108 201 146 44 89 178 36 235 124 62 249 32 124 182 229 243 1 10 129 6 106 108 255 246 150 28 72 211 73 119 63 236 51 163 209 171 87 239 251 60 215 115 223 215 125 221 215 243 22 50 20 50 190 251 42 92 254 232 40 252 255 214 91 111 21 255 123 125 13 7 114 239 136 130 3 20 71 126 114 68 145 95 92 85 252 244 159 126 170 248 217 191 188 93 124 238 201 147 111 20 111 191 253 207 138 131 131 125 197 145 35 63 121 179 198 235 121 94 79 86 192 240 255 30 11 243 171 84 221 109 230 218 181 187 12 217 125 24 205 35 116 247 246 147 155 153 253 95 231 46 160 42 142 131 131 131 55 159 127 244 198 100 238 33 126 127 0 171 213 74 40 28 98 125 99 173 248 104 54 51 73 125 173 18 101 187 129 139 151 239 113 252 244 53 58 123 109 36 115 139 212 181 169 176 56 92 111 166 60 56 216 147 117 246 37 104 7 197 123 2 96 191 120 177 187 183 251 230 161 165 252 10 209 68 10 79 32 72 191 101 136 100 102 12 181 118 0 173 222 74 48 50 134 47 152 196 238 26 165 173 75 141 211 227 167 165 173 135 112 104 140 233 220 10 75 75 91 204 45 174 241 112 126 25 103 32 73 122 110 27 189 61 138 222 104 229 213 171 194 26 47 4 192 11 94 9 144 34 128 3 94 125 191 240 242 10 26 141 158 1 163 13 235 240 40 35 190 24 150 145 32 118 79 152 22 165 158 110 205 48 222 64 142 72 114 138 145 209 24 119 170 154 105 106 213 144 74 79 179 178 188 195 198 250 99 1 176 206 204 92 158 236 212 60 195 254 56 6 71 130 64 246 17 202 94 55 234 94 211 247 145 56 220 119 1 192 33 146 204 216 4 181 141 237 120 60 49 210 217 89 86 214 159 51 62 189 45 19 109 147 206 173 19 78 45 209 103 10 49 26 154 39 150 93 70 109 112 211 215 239 101 106 118 155 173 237 23 108 111 61 99 113 97 133 220 212 50 153 201 60 161 244 20 209 241 37 116 182 36 93 198 20 102 111 158 154 38 29 122 157 145 85 217 232 235 81 228 192 230 206 14 165 21 85 196 83 15 153 156 90 193 225 74 224 28 205 146 24 219 196 96 77 162 210 249 232 210 7 81 15 36 233 232 13 83 175 116 160 212 122 49 14 37 176 58 162 184 125 25 98 201 105 102 102 215 152 16 208 161 116 30 95 124 22 131 45 74 187 214 39 81 152 66 231 26 35 255 232 91 50 217 12 253 58 13 131 198 1 73 201 43 20 223 190 124 129 195 227 65 173 183 96 180 250 8 198 38 100 151 99 12 12 133 209 13 70 233 210 6 105 85 251 169 239 146 143 50 76 117 171 143 219 213 102 58 244 49 186 77 89 186 101 119 221 134 56 29 26 175 16 207 131 113 56 131 63 181 134 209 145 162 185 199 73 159 57 67 171 38 76 112 98 137 167 187 223 197 93 162 30 8 133 8 135 35 40 54 182 183 132 80 110 102 243 235 184 3 89 92 129 40 78 95 156 33 87 18 211 112 154 158 254 8 173 189 17 26 186 99 2 34 73 85 75 24 147 107 133 161 208 38 253 254 53 6 252 235 152 188 107 88 252 155 152 220 171 168 140 89 26 187 221 52 171 71 232 147 232 117 233 162 52 117 6 36 146 89 194 137 89 214 54 254 204 211 103 187 108 60 222 199 62 236 65 177 188 186 129 201 17 163 89 101 193 23 153 198 60 28 194 234 142 225 73 204 209 170 11 112 167 117 132 22 109 142 122 213 36 141 234 73 110 215 121 41 173 31 161 86 29 160 78 237 162 73 23 162 197 144 146 60 79 160 234 31 167 215 58 133 114 32 197 131 14 15 237 186 24 117 93 110 42 26 204 104 77 105 33 239 154 84 208 52 217 201 77 230 215 145 77 70 81 44 44 174 162 54 37 57 119 77 24 221 110 166 164 180 141 235 149 29 52 245 142 112 177 92 195 201 47 59 185 219 154 148 40 76 115 227 190 131 11 215 187 139 19 118 26 188 2 52 138 35 148 195 48 156 69 169 15 211 164 242 82 213 234 226 78 147 91 192 38 232 232 207 210 162 11 115 163 70 71 157 210 41 68 94 39 155 123 68 32 190 76 124 242 41 206 224 56 138 116 122 18 221 80 134 196 244 115 124 97 33 142 37 73 99 231 48 95 223 213 240 229 237 94 206 92 237 230 244 197 14 78 125 222 200 167 151 27 168 110 208 99 178 250 69 39 38 216 124 244 148 245 157 191 144 155 219 193 27 207 203 238 83 180 244 69 100 247 94 106 58 67 12 184 242 12 120 230 36 34 81 74 31 232 37 197 243 178 251 29 162 233 13 130 153 71 56 133 107 2 96 2 205 96 156 96 246 49 161 68 30 139 115 66 210 225 166 244 254 0 151 75 123 57 254 199 58 142 157 42 163 86 162 227 9 77 17 140 78 18 75 140 17 138 36 176 57 60 184 61 65 198 39 23 72 140 47 99 11 205 210 102 136 80 86 63 196 149 114 3 117 170 48 131 222 37 172 254 69 170 219 236 152 236 25 137 192 14 241 236 38 33 1 48 236 207 160 200 100 11 0 18 248 229 134 63 58 207 144 123 130 182 158 81 202 171 77 156 249 162 158 107 101 93 100 102 86 133 19 211 52 117 91 169 168 87 81 217 208 73 167 222 134 55 241 144 212 216 67 6 6 134 24 114 70 177 7 167 208 216 210 212 75 213 220 170 25 226 226 173 62 116 142 57 108 193 21 116 214 12 90 99 184 24 129 196 216 54 193 244 14 67 222 36 138 112 56 73 183 48 221 147 216 196 31 155 195 226 73 211 169 29 229 218 173 110 42 107 122 153 94 220 162 178 94 205 123 159 220 224 131 11 149 156 46 105 228 248 213 90 254 253 196 117 254 243 248 45 154 186 44 44 45 110 160 51 56 232 50 248 80 154 34 52 106 252 194 27 119 17 192 253 14 63 246 208 58 253 246 9 180 3 97 82 227 91 36 178 91 248 146 91 152 93 49 20 62 127 84 106 58 136 59 38 121 137 207 99 25 77 211 174 113 82 122 87 69 230 225 50 23 190 170 225 253 79 111 81 169 52 211 61 156 162 55 48 135 42 184 196 3 251 28 23 155 252 252 226 68 41 151 174 183 8 171 255 34 58 48 68 85 179 137 59 141 54 110 215 218 57 118 230 129 144 91 137 51 182 69 143 16 93 109 8 16 203 172 18 73 111 226 138 108 136 86 136 14 4 36 151 109 82 110 30 1 16 142 45 98 243 76 208 208 62 40 249 30 163 69 237 228 157 83 21 212 232 71 177 102 230 240 136 152 4 22 30 97 28 95 161 81 194 90 57 188 68 105 79 148 159 159 173 231 74 141 133 249 252 166 40 106 7 55 239 14 114 227 142 153 79 174 116 242 238 233 10 122 237 57 41 201 8 29 90 87 81 210 195 153 77 28 145 109 81 74 1 144 155 153 71 101 138 49 18 22 100 223 1 232 236 117 50 26 206 241 241 165 106 74 106 6 176 38 23 137 46 109 147 92 121 130 53 155 167 39 150 167 214 187 64 133 45 71 133 8 205 87 29 65 254 227 84 21 131 78 233 146 238 4 159 94 109 228 79 183 251 56 255 149 154 223 156 188 83 36 99 117 135 83 202 212 70 68 0 132 82 27 56 194 91 82 254 94 20 51 11 121 218 36 5 142 208 114 49 2 67 162 217 6 75 8 149 222 205 135 23 171 80 218 38 113 202 162 9 105 179 35 19 203 12 229 54 209 9 137 154 131 203 84 57 198 40 215 249 185 161 142 242 97 217 32 31 95 105 97 76 250 65 73 101 43 159 93 107 229 99 41 223 163 199 171 68 188 220 220 170 238 167 93 180 37 154 89 38 40 0 134 69 73 149 186 17 20 83 179 75 212 117 187 24 137 172 74 121 73 25 58 50 82 46 34 187 146 243 115 55 91 208 10 176 216 194 14 193 220 2 142 137 85 44 15 31 163 145 28 54 7 132 7 142 113 42 12 126 174 117 7 56 215 224 229 215 103 107 100 158 135 40 13 118 254 112 182 156 15 62 109 224 191 78 220 231 106 133 89 52 69 133 118 48 36 28 88 38 34 36 180 138 140 119 234 156 40 214 54 119 80 73 211 113 74 10 10 0 6 237 41 6 135 227 162 251 22 206 221 110 67 29 206 179 240 228 37 193 113 145 105 233 114 134 137 71 244 8 128 70 169 237 123 214 73 137 128 143 171 61 126 254 216 26 224 232 231 205 52 168 237 197 74 58 118 186 148 227 231 106 248 237 71 247 56 95 210 67 201 221 62 81 190 233 98 4 66 34 68 131 158 101 233 148 195 40 214 183 118 104 149 178 115 8 169 162 34 145 86 103 6 163 77 122 131 152 143 243 21 74 58 252 243 44 61 253 22 87 60 131 38 152 163 35 188 72 91 104 145 122 215 12 119 77 227 148 105 253 92 145 186 63 213 228 225 87 151 90 69 118 213 140 198 102 57 113 174 146 247 206 86 241 206 71 21 146 202 70 52 150 12 238 72 193 75 172 17 72 74 3 115 231 165 203 14 161 248 230 217 115 186 36 55 78 255 42 254 184 132 70 208 15 152 253 104 68 235 175 86 245 113 111 48 203 244 227 151 56 82 194 100 111 154 22 239 56 205 18 161 22 115 136 251 133 252 107 130 124 38 36 252 160 202 206 47 191 108 231 70 149 74 124 197 44 103 62 191 195 111 142 223 228 87 39 42 105 208 38 37 231 115 216 253 51 210 3 30 225 75 108 49 56 178 64 103 143 169 224 9 165 43 57 195 226 118 68 165 102 159 50 18 28 163 223 228 166 223 28 160 164 90 207 229 22 39 241 149 111 112 230 242 84 217 18 66 188 12 181 182 20 53 70 145 92 241 10 151 84 17 62 108 240 115 236 142 157 95 92 108 167 180 86 79 44 53 47 0 202 57 250 251 43 52 245 4 241 196 55 25 9 76 138 208 205 51 57 247 140 76 238 207 226 142 204 34 231 34 197 5 111 250 228 155 231 180 170 52 98 62 140 98 74 220 212 212 117 210 63 232 165 73 218 237 213 186 65 84 238 113 2 82 130 165 166 12 55 205 19 220 48 102 40 233 139 243 69 103 152 211 173 81 254 251 129 143 119 43 108 28 189 220 69 179 104 138 59 60 197 187 199 47 240 187 247 191 160 177 85 71 71 151 137 142 78 29 61 226 9 251 7 108 116 170 140 40 187 244 98 78 139 158 240 112 236 138 75 157 93 92 96 121 121 77 244 32 89 124 88 39 229 88 167 114 113 185 166 159 193 241 85 154 125 11 92 236 73 114 81 147 226 156 184 163 143 154 67 252 190 54 200 209 114 7 239 124 173 231 212 173 94 105 72 51 24 237 97 254 245 223 126 141 107 52 204 203 151 47 217 217 126 68 126 105 153 84 42 75 32 16 38 39 246 254 7 158 240 240 199 107 187 116 248 203 104 182 139 13 119 160 19 145 42 111 49 242 167 134 126 212 193 121 74 251 178 156 105 28 229 84 163 135 247 238 143 240 78 197 48 199 202 172 252 246 66 147 152 15 135 200 247 26 87 74 42 40 191 91 93 156 231 224 160 224 186 95 111 243 205 186 114 113 232 198 223 28 76 138 235 239 201 113 97 119 151 131 253 61 150 87 215 104 239 208 74 167 11 22 125 125 105 67 31 159 149 105 40 235 142 114 94 12 199 201 106 27 239 223 27 230 119 165 102 142 94 82 82 222 100 33 228 31 199 227 10 112 246 147 243 60 123 254 156 125 89 124 111 255 133 124 255 181 24 238 34 160 226 194 178 6 47 127 8 160 112 50 146 39 57 216 219 103 111 239 16 93 60 46 158 176 91 143 217 22 146 54 61 46 117 27 224 243 50 21 167 111 116 112 242 186 146 63 92 107 227 100 73 59 245 125 210 241 188 99 226 120 231 184 241 245 77 50 233 116 241 253 189 253 221 34 136 195 211 208 235 147 151 156 138 138 135 146 239 14 38 175 131 242 183 71 179 194 245 254 254 97 74 92 46 39 237 237 58 44 82 1 35 190 28 54 255 36 218 225 4 74 99 80 154 76 92 20 77 118 29 158 20 141 159 150 131 74 3 54 219 112 241 189 194 251 127 63 231 143 29 255 126 120 54 44 158 216 14 99 181 183 183 199 174 164 163 48 66 193 24 109 173 189 244 234 134 176 185 196 59 72 163 242 37 102 240 139 73 25 141 140 75 25 139 81 45 187 135 209 100 46 62 95 240 251 133 207 225 130 5 30 252 237 217 243 240 247 235 241 61 7 190 191 247 163 87 187 127 221 37 24 136 8 39 44 244 168 251 233 236 238 67 163 53 160 237 147 110 105 181 9 211 119 254 143 25 126 252 239 255 1 253 174 221 143 226 43 215 44 0 0 0 0 73 69 78 68 174 66 96 130]! !
!UMLImplementationExecutionSnapshot class categoriesFor: #activateSnapshotWith:receiver:arguments:virtualMachine:!public! !
!UMLImplementationExecutionSnapshot class categoriesFor: #icon!constants!public! !

