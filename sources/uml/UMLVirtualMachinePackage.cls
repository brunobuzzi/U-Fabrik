"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLVirtualMachinePackage
	instanceVariableNames: 'name classes traits'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachinePackage guid: (GUID fromString: '{4745b4fd-7568-4964-b822-664d78bc7542}')!
UMLVirtualMachinePackage comment: ''!
!UMLVirtualMachinePackage categoriesForClass!Unclassified! !
!UMLVirtualMachinePackage methodsFor!

addClass: anUMLVirtualMachineClass

	anUMLVirtualMachineClass belongToVirtualMachine ifFalse: [^anUMLVirtualMachineClass].

	^classes at: anUMLVirtualMachineClass name put: anUMLVirtualMachineClass!

addTrait: anUMLTrait 

	^traits add: anUMLTrait!

canBeRemoved
	^classes isEmpty!

classes
	^classes!

classes: anObject
	classes := anObject!

fileOutAsXmlTo: aStream


	aStream nextPutAll: '<VMPackageNamed>', name, '</VMPackageNamed>'.

	aStream nextPutAll: '<Classes>'.	
		classes do: [:each | 
			aStream nextPutAll: '<Class>'.
			each fileOutAsXmlTo: aStream.
			aStream nextPutAll: '</Class>'.].
	aStream nextPutAll: '</Classes>'.	

	aStream nextPutAll: '<Metaclasses>'.	
		(classes collect: [:each | each metaclass]) do: [:each | 
			aStream nextPutAll: '<Metalass>'.
			each fileOutAsXmlTo: aStream.
			aStream nextPutAll: '</Metalass>'.].
	aStream nextPutAll: '</Metaclasses>'.

	aStream nextPutAll: '<Traits>'.	
		traits do: [:eachTrait | eachTrait name].
	aStream nextPutAll: '</Traits>'.	!

getClassNamed: aString ifNone: aBlock

	^classes at: aString ifAbsent: aBlock
	!

hasClassNamed: aString

	^classes includesKey: aString!

includesTrait: anUMLTrait

	^traits includes: anUMLTrait!

initialize

	super initialize.

	name := ''.
	classes := LookupTable new.
	traits := OrderedCollection new.!

name
	^name!

name: anObject
	name := anObject!

printOn: target

	super printOn: target.

	target nextPutAll: '[', name, ']'!

removeClass: anUMLVirtualMachineClass

	^classes removeKey: anUMLVirtualMachineClass name ifAbsent: []!

removeTrait: anUMLTrait 

	^traits remove: anUMLTrait!

traits
	^traits!

traits: anObject
	traits := anObject! !
!UMLVirtualMachinePackage categoriesFor: #addClass:!public! !
!UMLVirtualMachinePackage categoriesFor: #addTrait:!public! !
!UMLVirtualMachinePackage categoriesFor: #canBeRemoved!public! !
!UMLVirtualMachinePackage categoriesFor: #classes!accessing!private! !
!UMLVirtualMachinePackage categoriesFor: #classes:!accessing!private! !
!UMLVirtualMachinePackage categoriesFor: #fileOutAsXmlTo:!binary filing!public! !
!UMLVirtualMachinePackage categoriesFor: #getClassNamed:ifNone:!public! !
!UMLVirtualMachinePackage categoriesFor: #hasClassNamed:!public! !
!UMLVirtualMachinePackage categoriesFor: #includesTrait:!public! !
!UMLVirtualMachinePackage categoriesFor: #initialize!public! !
!UMLVirtualMachinePackage categoriesFor: #name!accessing!private! !
!UMLVirtualMachinePackage categoriesFor: #name:!accessing!private! !
!UMLVirtualMachinePackage categoriesFor: #printOn:!public! !
!UMLVirtualMachinePackage categoriesFor: #removeClass:!public! !
!UMLVirtualMachinePackage categoriesFor: #removeTrait:!public! !
!UMLVirtualMachinePackage categoriesFor: #traits!accessing!private! !
!UMLVirtualMachinePackage categoriesFor: #traits:!accessing!private! !

!UMLVirtualMachinePackage class methodsFor!

icon

	^Icon fromId: 'Package.ico'! !
!UMLVirtualMachinePackage class categoriesFor: #icon!public! !

