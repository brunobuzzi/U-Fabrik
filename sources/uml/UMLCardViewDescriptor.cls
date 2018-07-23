"Filed out from Dolphin Smalltalk 7"!

UMLComponentAgrupationDescriptor subclass: #UMLCardViewDescriptor
	instanceVariableNames: 'label iconLabel components type'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLCardViewDescriptor guid: (GUID fromString: '{8350d933-6b34-40cd-bfa2-5afa01ed7b40}')!
UMLCardViewDescriptor comment: ''!
!UMLCardViewDescriptor categoriesForClass!Unclassified! !
!UMLCardViewDescriptor methodsFor!

addComponent: anUMLViewComponentDescriptor

	^components add: anUMLViewComponentDescriptor!

aspectName
	^nil!

components
	^components!

components: anObject
	components := anObject!

componentsIsEmpty

	^components isEmpty!

defaultClassPresenter

	components isEmpty ifTrue: [^Presenter].

	^components last defaultClassPresenter!

displayDescriptorString

	^label!

icon

	iconLabel ifNil: [^super icon].

	^iconLabel!

iconLabel
	^iconLabel!

iconLabel: anObject
	iconLabel := anObject!

initialize
	super initialize.
	label := ''.
	components := OrderedCollection new.!

label
	^label!

label: anObject
	label := anObject!

printOn: aStream

	super printOn: aStream.

	aStream
		nextPut: $<;
		nextPutAll: label;
		nextPut: $>.!

removeComponent: anUMLViewComponentDescriptor

	^components remove: anUMLViewComponentDescriptor!

type
	^type!

type: anObject
	type := anObject! !
!UMLCardViewDescriptor categoriesFor: #addComponent:!public! !
!UMLCardViewDescriptor categoriesFor: #aspectName!public! !
!UMLCardViewDescriptor categoriesFor: #components!accessing!private! !
!UMLCardViewDescriptor categoriesFor: #components:!accessing!private! !
!UMLCardViewDescriptor categoriesFor: #componentsIsEmpty!public! !
!UMLCardViewDescriptor categoriesFor: #defaultClassPresenter!public! !
!UMLCardViewDescriptor categoriesFor: #displayDescriptorString!public! !
!UMLCardViewDescriptor categoriesFor: #icon!public! !
!UMLCardViewDescriptor categoriesFor: #iconLabel!accessing!private! !
!UMLCardViewDescriptor categoriesFor: #iconLabel:!accessing!private! !
!UMLCardViewDescriptor categoriesFor: #initialize!public! !
!UMLCardViewDescriptor categoriesFor: #label!accessing!private! !
!UMLCardViewDescriptor categoriesFor: #label:!accessing!private! !
!UMLCardViewDescriptor categoriesFor: #printOn:!public! !
!UMLCardViewDescriptor categoriesFor: #removeComponent:!public! !
!UMLCardViewDescriptor categoriesFor: #type!accessing!private! !
!UMLCardViewDescriptor categoriesFor: #type:!accessing!private! !

!UMLCardViewDescriptor class methodsFor!

icon

	^Icon fromId: 'AbstractCardContainer.ico'! !
!UMLCardViewDescriptor class categoriesFor: #icon!public! !

