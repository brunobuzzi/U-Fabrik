"Filed out from Dolphin Smalltalk 7"!

UMLViewComponentDescriptor subclass: #UMLAspectComponentDescriptor
	instanceVariableNames: 'instance aspectName isReadOnly'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAspectComponentDescriptor guid: (GUID fromString: '{bb0d69be-b8c6-4abe-85e0-50c3199f438f}')!
UMLAspectComponentDescriptor comment: ''!
!UMLAspectComponentDescriptor categoriesForClass!Unclassified! !
!UMLAspectComponentDescriptor methodsFor!

aspectName
	^aspectName!

aspectName: anObject
	aspectName := anObject!

displayDescriptorString

	^aspectName!

hasInstance

	^true!

initialize

	super initialize.

	isReadOnly := false!

instance
	^instance!

instance: anObject
	instance := anObject!

isEnabled

	^(instance umlClass atVariableName: aspectName ifAbsent: [^false]) isEnabled!

isReadOnly
	^isReadOnly!

isReadOnly: anObject
	isReadOnly := anObject!

printOn: aStream

	super printOn: aStream.

	aStream
		nextPut: $<;
		nextPutAll: aspectName;
		nextPut: $>.! !
!UMLAspectComponentDescriptor categoriesFor: #aspectName!accessing!private! !
!UMLAspectComponentDescriptor categoriesFor: #aspectName:!accessing!private! !
!UMLAspectComponentDescriptor categoriesFor: #displayDescriptorString!public! !
!UMLAspectComponentDescriptor categoriesFor: #hasInstance!public! !
!UMLAspectComponentDescriptor categoriesFor: #initialize!public! !
!UMLAspectComponentDescriptor categoriesFor: #instance!accessing!private! !
!UMLAspectComponentDescriptor categoriesFor: #instance:!accessing!private! !
!UMLAspectComponentDescriptor categoriesFor: #isEnabled!public! !
!UMLAspectComponentDescriptor categoriesFor: #isReadOnly!accessing!private! !
!UMLAspectComponentDescriptor categoriesFor: #isReadOnly:!accessing!private! !
!UMLAspectComponentDescriptor categoriesFor: #printOn:!public! !

