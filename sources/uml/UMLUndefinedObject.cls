"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLUndefinedObject
	instanceVariableNames: ''
	classVariableNames: 'Default'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLUndefinedObject guid: (GUID fromString: '{33147ed0-1957-4fbc-856b-893c8323b600}')!
UMLUndefinedObject comment: ''!
!UMLUndefinedObject categoriesForClass!Unclassified! !
!UMLUndefinedObject methodsFor!

asTreeModel

	^TreeModel withRoots: (OrderedCollection with: self)!

isUndefined

	^true!

name

	^'UML nil'!

resourceIdentifier

	^self defaultVirtualMachine resourceIdentifierFor: self! !
!UMLUndefinedObject categoriesFor: #asTreeModel!public! !
!UMLUndefinedObject categoriesFor: #isUndefined!public! !
!UMLUndefinedObject categoriesFor: #name!public! !
!UMLUndefinedObject categoriesFor: #resourceIdentifier!public! !

!UMLUndefinedObject class methodsFor!

default

	Default ifNil: [Default := self new initialize].

	^Default!

icon

	^Icon fromId: 'UndefinedObject.ico'! !
!UMLUndefinedObject class categoriesFor: #default!public! !
!UMLUndefinedObject class categoriesFor: #icon!public! !

