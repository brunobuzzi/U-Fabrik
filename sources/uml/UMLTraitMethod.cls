"Filed out from Dolphin Smalltalk 7"!

UMLBehaviorDescriptor subclass: #UMLTraitMethod
	instanceVariableNames: 'methodName trait parsedCode'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTraitMethod guid: (GUID fromString: '{9e3b60af-f040-49bf-9c68-6b3b6c1d5eb2}')!
UMLTraitMethod comment: ''!
!UMLTraitMethod categoriesForClass!Unclassified! !
!UMLTraitMethod methodsFor!

allMessageNodes
	| orderedNodes allNodes trackableNodes nodeTree |

	orderedNodes := OrderedCollection new.
	nodeTree := LookupTable new.
	allNodes := self allNodes select: [:each | each isMessage].

	trackableNodes := allNodes reject: [:each | self notTrackableSelectors includes: each selector].

	trackableNodes do: [:each | nodeTree at: each put: (MessageNodeCollector messagesSentBy: each)].

	^trackableNodes!

allNodes
	parsedCode ifNil: [^OrderedCollection new].

	^parsedCode allNodes!

argumentAt: index 

	^parsedCode argumentNames at: index ifAbsent: ['arg']!

arguments

	^parsedCode arguments!

className
	^'Trait: <', trait name, '.', methodName, '>'!

getInitialClassObjectNames

	^(self arguments, self temporaries) collect: [:each | each name]!

getNodeAt: index
	"The receiver answer anUMLSequence node at <index> order "

	^parsedCode getNodeAt: index!

getNodes

	^parsedCode nodes!

hasArgumentNamed: aString 

	^parsedCode hasArgumentNamed: aString !

hasReferencesToClassName: className

	^parsedCode references: className

!

hasReferenceTo: implementationName

	^parsedCode hasReferenceTo: implementationName!

hasState

	^false!

hideShowMessage
	^nil!

isTrait

	^true!

methodClass
	^trait!

methodName
	^methodName!

methodName: anObject
	methodName := anObject!

name

	^methodName!

nodes

	^parsedCode nodes!

parsedCode
	^parsedCode!

parsedCode: anObject
	parsedCode := anObject!

printMessage

	parsedCode ifNil: [^''].

	^parsedCode printString
!

printOn: aStream

	super printOn: aStream.

	aStream
		nextPut: $<;
		nextPutAll: methodName printString;
		nextPut: $>.!

printParsedCode
	^parsedCode formattedCode!

temporaries

	^parsedCode temporaryVariables!

trait
	^trait!

trait: anObject
	trait := anObject!

umlModelName
	^trait name! !
!UMLTraitMethod categoriesFor: #allMessageNodes!public! !
!UMLTraitMethod categoriesFor: #allNodes!public! !
!UMLTraitMethod categoriesFor: #argumentAt:!public! !
!UMLTraitMethod categoriesFor: #arguments!public! !
!UMLTraitMethod categoriesFor: #className!public! !
!UMLTraitMethod categoriesFor: #getInitialClassObjectNames!public! !
!UMLTraitMethod categoriesFor: #getNodeAt:!public! !
!UMLTraitMethod categoriesFor: #getNodes!public! !
!UMLTraitMethod categoriesFor: #hasArgumentNamed:!public! !
!UMLTraitMethod categoriesFor: #hasReferencesToClassName:!public! !
!UMLTraitMethod categoriesFor: #hasReferenceTo:!public! !
!UMLTraitMethod categoriesFor: #hasState!public! !
!UMLTraitMethod categoriesFor: #hideShowMessage!public! !
!UMLTraitMethod categoriesFor: #isTrait!public! !
!UMLTraitMethod categoriesFor: #methodClass!public! !
!UMLTraitMethod categoriesFor: #methodName!accessing!public! !
!UMLTraitMethod categoriesFor: #methodName:!accessing!private! !
!UMLTraitMethod categoriesFor: #name!public! !
!UMLTraitMethod categoriesFor: #nodes!public! !
!UMLTraitMethod categoriesFor: #parsedCode!accessing!private! !
!UMLTraitMethod categoriesFor: #parsedCode:!accessing!private! !
!UMLTraitMethod categoriesFor: #printMessage!public! !
!UMLTraitMethod categoriesFor: #printOn:!public! !
!UMLTraitMethod categoriesFor: #printParsedCode!public! !
!UMLTraitMethod categoriesFor: #temporaries!public! !
!UMLTraitMethod categoriesFor: #trait!accessing!private! !
!UMLTraitMethod categoriesFor: #trait:!accessing!private! !
!UMLTraitMethod categoriesFor: #umlModelName!public! !

!UMLTraitMethod class methodsFor!

icon

	^UMLTrait icon!

newNamed: aSymbol

	^super new initialize
		methodName: aSymbol;
		yourself.! !
!UMLTraitMethod class categoriesFor: #icon!public! !
!UMLTraitMethod class categoriesFor: #newNamed:!public! !

