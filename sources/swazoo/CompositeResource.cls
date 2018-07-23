"Filed out from Dolphin Smalltalk 7"!

SwazooResource subclass: #CompositeResource
	instanceVariableNames: 'children'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CompositeResource guid: (GUID fromString: '{c86f3ee4-318c-4b58-a43c-3f78f11b4916}')!
CompositeResource comment: ''!
!CompositeResource categoriesForClass!Unclassified! !
!CompositeResource methodsFor!

addResource: aResource
	self children add: aResource.
	aResource parent: self.
	aResource onResourceCreated.
	^aResource!

addResources: anOrderedCollection
	anOrderedCollection do: [ :each |
		self addResource: each].
	^anOrderedCollection!

children
	children isNil ifTrue: [self initChildren].
	^children!

currentUrl
	| string |
	string := super currentUrl.
	^string last = $/
		ifTrue: [string]
		ifFalse: [string , '/']!

hasNoResources
	^self children isEmpty!

helpResolve: aResolution 
	^aResolution resolveCompositeResource: self!

includesResource: aResource
	^self children includes: aResource.!

initChildren
	children := OrderedCollection new.!

initialize
	super initialize.
	self initChildren!

isRootPath
	^self uriPattern = '/'!

printUrlOn: aWriteStream 
	super printUrlOn: aWriteStream.
	self isRootPath ifFalse: [aWriteStream nextPut: $/]!

removeResource: aResource
	self children remove: aResource ifAbsent: [nil]! !
!CompositeResource categoriesFor: #addResource:!adding/removing!public! !
!CompositeResource categoriesFor: #addResources:!adding/removing!public! !
!CompositeResource categoriesFor: #children!accessing!public! !
!CompositeResource categoriesFor: #currentUrl!accessing!public! !
!CompositeResource categoriesFor: #hasNoResources!public!testing! !
!CompositeResource categoriesFor: #helpResolve:!accessing!public! !
!CompositeResource categoriesFor: #includesResource:!public!testing! !
!CompositeResource categoriesFor: #initChildren!initialize-release!public! !
!CompositeResource categoriesFor: #initialize!initialize-release!public! !
!CompositeResource categoriesFor: #isRootPath!public!testing! !
!CompositeResource categoriesFor: #printUrlOn:!accessing!public! !
!CompositeResource categoriesFor: #removeResource:!adding/removing!public! !

