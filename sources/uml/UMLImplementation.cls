"Filed out from Dolphin Smalltalk 7"!

UMLBehaviorDescriptor subclass: #UMLImplementation
	instanceVariableNames: 'methodName methodClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLImplementation guid: (GUID fromString: '{966d918f-644f-4760-878b-a15cec2c4367}')!
UMLImplementation comment: 'This class represent the behavior of the UMLModel.

The behavior is fetched by the Virtual Machine when someone send a message to an object.

The Virtual Machine get the meta object of the receiver and look for an implementation with the same name in the receiver meta object or it''s superclasses.

Instances Variables:

methodName 		- aSymbol with the name of the implementation.
messages 		- anOrderedCollection of UMLVirtualMachineMessages to execute when the implementation is activated.
comments			- aString with the commets of the implementation.'!
!UMLImplementation categoriesForClass!Unclassified! !
!UMLImplementation methodsFor!

allMessageNodes
	^OrderedCollection new!

arguments
	^#()!

asParsedImplementation

	^UMLParsedImplementation new
		methodName: methodName; 
		comments: comments;
		"temporaries: temporaries;"
		"arguments: arguments; "
		"byteCodes: byteCodes;"
		yourself.!

className

	^methodClass name!

getInitialClassObjectNames

	^(self arguments, self temporaries) collect: [:each | each name]!

hasState

	^true!

initialize

	super initialize.

	methodName := ''.!

isMeta

	^methodClass isMetaclass!

largeName

	^methodClass name, '.', self name!

messagesCollect: aMonadicValuable 
	^self subclassResponsibility!

methodClass
	^methodClass!

methodClass: anObject
	methodClass := anObject!

methodName
	^methodName!

methodName: anObject
	methodName := anObject!

name

	^methodName!

printOn: aStream

	super printOn: aStream.

	aStream
		nextPut: $<;
		nextPutAll: methodName printString;
		nextPut: $>.!

temporaries

	^#()!

umlModel

	^methodClass umlModel!

umlModelName

	^self umlModel name!

uninstall

	methodClass := nil.! !
!UMLImplementation categoriesFor: #allMessageNodes!public! !
!UMLImplementation categoriesFor: #arguments!accessing!public! !
!UMLImplementation categoriesFor: #asParsedImplementation!public! !
!UMLImplementation categoriesFor: #className!public! !
!UMLImplementation categoriesFor: #getInitialClassObjectNames!public! !
!UMLImplementation categoriesFor: #hasState!public! !
!UMLImplementation categoriesFor: #initialize!public! !
!UMLImplementation categoriesFor: #isMeta!public! !
!UMLImplementation categoriesFor: #largeName!public! !
!UMLImplementation categoriesFor: #messagesCollect:!evaluating messages!public! !
!UMLImplementation categoriesFor: #methodClass!accessing!private! !
!UMLImplementation categoriesFor: #methodClass:!accessing!private! !
!UMLImplementation categoriesFor: #methodName!accessing!private! !
!UMLImplementation categoriesFor: #methodName:!accessing!private! !
!UMLImplementation categoriesFor: #name!public! !
!UMLImplementation categoriesFor: #printOn:!public! !
!UMLImplementation categoriesFor: #temporaries!public! !
!UMLImplementation categoriesFor: #umlModel!public! !
!UMLImplementation categoriesFor: #umlModelName!public! !
!UMLImplementation categoriesFor: #uninstall!public! !

!UMLImplementation class methodsFor!

newNamed: aSymbol

	^super new initialize
		methodName: aSymbol;
		yourself.! !
!UMLImplementation class categoriesFor: #newNamed:!public! !

